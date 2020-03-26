# Copyright 2010 Google Inc.
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


module Google
  class APIClient
    ##
    # This class wraps a result returned by an API call.
    class Result
      extend Forwardable
      
      ##
      # Init the result
      #
      # @param [Google::APIClient::Request] request
      #   The original request
      # @param [Faraday::Response] response
      #   Raw HTTP Response
      def initialize(request, response)
        @request = request
        @response = response
        @media_upload = reference if reference.kind_of?(ResumableUpload)
      end

      # @return [Google::APIClient::Request] Original request object
      attr_reader :request
      # @return [Faraday::Response] HTTP response
      attr_reader :response
      # @!attribute [r] reference
      #   @return [Google::APIClient::Request] Original request object
      #   @deprecated See {#request}
      alias_method :reference, :request # For compatibility with pre-beta clients

      # @!attribute [r] status
      #   @return [Fixnum] HTTP status code
      # @!attribute [r] headers
      #   @return [Hash] HTTP response headers
      # @!attribute [r] body
      #   @return [String] HTTP response body
      def_delegators :@response, :status, :headers, :body

      # @!attribute [r] resumable_upload
      # @return [Google::APIClient::ResumableUpload] For resuming media uploads
      def resumable_upload        
        @media_upload ||= (
          options = self.reference.to_hash.merge(
            :uri => self.headers['location'],
            :media => self.reference.media
          )
          Google::APIClient::ResumableUpload.new(options)
        )
      end
      
      ##
      # Get the content type of the response
      # @!attribute [r] media_type
      # @return [String]
      #  Value of content-type header
      def media_type
        _, content_type = self.headers.detect do |h, v|
          h.downcase == 'Content-Type'.downcase
        end
        if content_type
          return content_type[/^([^;]*);?.*$/, 1].strip.downcase
        else
          return nil
        end
      end
      
      ##
      # Check if request failed
      #
      # @!attribute [r] error?
      # @return [TrueClass, FalseClass]
      #   true if result of operation is an error
      def error?
        return self.response.status >= 400
      end

      ##
      # Check if request was successful
      #
      # @!attribute [r] success?
      # @return [TrueClass, FalseClass]
      #   true if result of operation was successful
      def success?
        return !self.error?
      end
      
      ##
      # Extracts error messages from the response body
      #
      # @!attribute [r] error_message
      # @return [String]
      #   error message, if available
      def error_message
        if self.data?
          if self.data.respond_to?(:error) &&
             self.data.error.respond_to?(:message)
            # You're going to get a terrible error message if the response isn't
            # parsed successfully as an error.
            return self.data.error.message
          elsif self.data['error'] && self.data['error']['message']
            return self.data['error']['message']
          end
        end
        return self.body
      end

      ##
      # Check for parsable data in response
      #
      # @!attribute [r] data?
      # @return [TrueClass, FalseClass]
      #   true if body can be parsed
      def data?
        !(self.body.nil? || self.body.empty?)
      end
      
      ##
      # Return parsed version of the response body.
      #
      # @!attribute [r] data
      # @return [Object, Hash, String]
      #   Object if body parsable from API schema, Hash if JSON, raw body if unable to parse
      def data
        return @data ||= (begin
          if self.data?
            media_type = self.media_type
            data = self.body
            case media_type
            when 'application/json', 'text/html'
              data = MultiJson.load(data)
              # Strip data wrapper, if present
              data = data['data'] if data.has_key?('data')
            else
              raise ArgumentError,
                "Content-Type not supported for parsing: #{media_type}"
            end
            if @request.api_method && @request.api_method.response_schema
              # Automatically parse using the schema designated for the
              # response of this API method.
              data = @request.api_method.response_schema.new(data)
              data
            else
              # Otherwise, return the raw unparsed value.
              # This value must be indexable like a Hash.
              data
            end
          end
        end)
      end

      ##
      # Get the token used for requesting the next page of data
      #
      # @!attribute [r] next_page_token
      # @return [String]
      #   next page token
      def next_page_token
        if self.data.respond_to?(:next_page_token)
          return self.data.next_page_token
        elsif self.data.respond_to?(:[])
          return self.data["nextPageToken"]
        else
          raise TypeError, "Data object did not respond to #next_page_token."
        end
      end

      ##
      # Build a request for fetching the next page of data
      # 
      # @return [Google::APIClient::Request]
      #   API request for retrieving next page, nil if no page token available
      def next_page
        return nil unless self.next_page_token
        merged_parameters = Hash[self.reference.parameters].merge({
          self.page_token_param => self.next_page_token
        })
        # Because Requests can be coerced to Hashes, we can merge them,
        # preserving all context except the API method parameters that we're
        # using for pagination.
        return Google::APIClient::Request.new(
          Hash[self.reference].merge(:parameters => merged_parameters)
        )
      end

      ##
      # Get the token used for requesting the previous page of data
      #
      # @!attribute [r] prev_page_token
      # @return [String]
      #   previous page token
      def prev_page_token
        if self.data.respond_to?(:prev_page_token)
          return self.data.prev_page_token
        elsif self.data.respond_to?(:[])
          return self.data["prevPageToken"]
        else
          raise TypeError, "Data object did not respond to #next_page_token."
        end
      end

      ##
      # Build a request for fetching the previous page of data
      # 
      # @return [Google::APIClient::Request]
      #   API request for retrieving previous page, nil if no page token available
      def prev_page
        return nil unless self.prev_page_token
        merged_parameters = Hash[self.reference.parameters].merge({
          self.page_token_param => self.prev_page_token
        })
        # Because Requests can be coerced to Hashes, we can merge them,
        # preserving all context except the API method parameters that we're
        # using for pagination.
        return Google::APIClient::Request.new(
          Hash[self.reference].merge(:parameters => merged_parameters)
        )
      end
      
      ##
      # Pagination scheme used by this request/response
      #
      # @!attribute [r] pagination_type
      # @return [Symbol]
      #  currently always :token
      def pagination_type
        return :token
      end

      ##
      # Name of the field that contains the pagination token
      #
      # @!attribute [r] page_token_param
      # @return [String]
      #  currently always 'pageToken'
      def page_token_param
        return "pageToken"
      end

    end
  end
end
