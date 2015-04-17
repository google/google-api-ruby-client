# Copyright 2015 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require 'active_support/inflector'
require 'addressable/uri'
require 'addressable/template'
require 'google/apis/core/http_command'
require 'google/apis/errors'
require 'multi_json'
require 'retriable'

module Google
  module Apis
    module Core
      # Command for executing most basic API request with JSON requests/responses
      class ApiCommand < HttpCommand
        JSON_CONTENT_TYPE = 'application/json'
        FIELDS_PARAM = 'fields'
        RATE_LIMIT_ERRORS = %w(rateLimitExceeded userRateLimitExceeded)

        # JSON serializer for request objects
        # @return [Google::Apis::Core::JsonRepresentation]
        attr_accessor :request_representation

        # Request body to serialize
        # @return [Object]
        attr_accessor :request_object

        # JSON serializer for response objects
        # @return [Google::Apis::Core::JsonRepresentation]
        attr_accessor :response_representation

        # Class to instantiate when de-serializing responses
        # @return [Object]
        attr_accessor :response_class

        # Serialize the request body
        #
        # @return [void]
        def prepare!
          query[FIELDS_PARAM] = normalize_fields_param(query[FIELDS_PARAM]) if query.key?(FIELDS_PARAM)
          if request_representation && request_object
            header[:content_type] ||= JSON_CONTENT_TYPE
            self.body = request_representation.new(request_object).to_json(skip_undefined: true)
          end
          super
        end

        # Deserialize the response body if present
        #
        # @param [String] content_type
        #  Content type of body
        # @param [String, #read] body
        #  Response body
        # @return [Object]
        #   Response object
        # noinspection RubyUnusedLocalVariable
        def decode_response_body(content_type, body)
          return super unless response_representation
          return nil unless content_type.start_with?(JSON_CONTENT_TYPE)
          instance = response_class.new
          response_representation.new(instance).from_json(body, unwrap: response_class)
          instance
        end

        # Check the response and raise error if needed
        #
        # @param [Fixnum] status
        #   HTTP status code of response
        # @param [String] body
        #   HTTP response body
        # @return [void]
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def check_status(status, body = nil)
          case status
          when 400, 402...500
            error = parse_error(body)
            if error
              logger.debug { error }
              fail Google::Apis::RateLimitError, error if RATE_LIMIT_ERRORS.include?(error['reason'])
            end
            super(status, error)
          else
            super(status, body)
          end
        end

        private

        # Attempt to parse a JSON error message, returning the first found error
        # @param [String] body
        #  HTTP response body
        # @return [Hash]
        def parse_error(body)
          hash = MultiJson.load(body)
          hash['error']['errors'].first
        rescue
          nil
        end

        # Convert field names from ruby conventions to original names in JSON
        #
        # @param [String] fields
        #   Value of 'fields' param
        # @return [String]
        #   Updated header value
        def normalize_fields_param(fields)
          # TODO: Generate map of parameter names during code gen. Small possibility that camelization fails
          fields.gsub(/:/, '').gsub(/[\w_]+/) { |str| ActiveSupport::Inflector.camelize(str, false) }
        end
      end
    end
  end
end
