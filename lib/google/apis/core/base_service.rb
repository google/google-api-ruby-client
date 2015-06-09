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

require 'addressable/uri'
require 'addressable/template'
require 'google/apis/version'
require 'google/apis/core/api_command'
require 'google/apis/core/batch'
require 'google/apis/core/upload'
require 'google/apis/core/download'
require 'google/apis/options'
require 'googleauth'
require 'hurley'
require 'hurley/addressable'

module Google
  module Apis
    module Core
      # Base service for all APIs. Not to be used directly.
      #
      class BaseService
        # Root URL (host/port) for the API
        # @return [Addressable::URI]
        attr_accessor :root_url

        # Additional path prefix for all API methods
        # @return [Addressable::URI]
        attr_accessor :base_path

        # Alternate path prefix for media uploads
        # @return [Addressable::URI]
        attr_accessor :upload_path

        # Alternate path prefix for all batch methods
        # @return [Addressable::URI]
        attr_accessor :batch_path

        # HTTP client
        # @return [Hurley::Client]
        attr_accessor :client

        # General settings
        # @return [Google::Apis::ClientOptions]
        attr_accessor :client_options

        # Default options for all requests
        # @return [Google::Apis::RequestOptions]
        attr_accessor :request_options

        # @param [String,Addressable::URI] root_url
        #   Root URL for the API
        # @param [String,Addressable::URI] base_path
        #   Additional path prefix for all API methods
        # @api private
        def initialize(root_url, base_path)
          self.root_url = root_url
          self.base_path = base_path
          self.upload_path = "upload/#{base_path}"
          self.batch_path = 'batch'
          self.client_options = Google::Apis::ClientOptions.default.dup
          self.request_options = Google::Apis::RequestOptions.default.dup
        end

        # @!attribute [rw] authorization
        # @return [Signet::OAuth2::Client]
        #  OAuth2 credentials
        def authorization=(authorization)
          request_options.authorization = authorization
        end

        def authorization
          request_options.authorization
        end

        # TODO: with(options) method

        # Perform a batch request. Calls made within the block are sent in a single network
        # request to the server.
        #
        # @example
        #   service.batch do |service|
        #     service.get_item(id1) do |res, err|
        #       # process response for 1st call
        #     end
        #     # ...
        #     service.get_item(idN) do |res, err|
        #       # process response for Nth call
        #     end
        #   end
        #
        # @param [Hash, Google::Apis::RequestOptions] options
        #  Request-specific options
        # @yield [self]
        # @return [void]
        def batch(options = nil)
          batch_command = BatchCommand.new(:post, Addressable::URI.parse(root_url + batch_path))
          batch_command.options = request_options.merge(options)
          apply_command_defaults(batch_command)
          begin
            Thread.current[:google_api_batch] = batch_command
            yield self
          ensure
            Thread.current[:google_api_batch] = nil
          end
          batch_command.execute(client)
        end

        # Perform a batch upload request. Calls made within the block are sent in a single network
        # request to the server. Batch uploads are useful for uploading multiple small files. For larger
        # files, use single requests which use a resumable upload protocol.
        #
        # @example
        #   service.batch do |service|
        #     service.insert_item(upload_source: 'file1.txt') do |res, err|
        #       # process response for 1st call
        #     end
        #     # ...
        #     service.insert_item(upload_source: 'fileN.txt') do |res, err|
        #       # process response for Nth call
        #     end
        #   end
        #
        # @param [Hash, Google::Apis::RequestOptions] options
        #  Request-specific options
        # @yield [self]
        # @return [void]
        def batch_upload(options = nil)
          batch_command = BatchUploadCommand.new(:put, Addressable::URI.parse(root_url + upload_path))
          batch_command.options = request_options.merge(options)
          apply_command_defaults(batch_command)
          begin
            Thread.current[:google_api_batch] = batch_command
            yield self
          ensure
            Thread.current[:google_api_batch] = nil
          end
          batch_command.execute(client)
        end

        # Get the current HTTP client
        # @return [Hurley::Client]
        def client
          @client ||= new_client
        end

        protected

        # Create a new upload command.
        #
        # @param [symbol] method
        #   HTTP method for uploading (typically :put or :post)
        # @param [String] path
        #  Additional path to upload endpoint, appended to API base path
        # @param [Hash, Google::Apis::RequestOptions] options
        #  Request-specific options
        # @return [Google::Apis::Core::UploadCommand]
        def make_upload_command(method, path, options)
          template = Addressable::Template.new(root_url + upload_path + path)
          if batch?
            command = MultipartUploadCommand.new(method, template)
          else
            command = ResumableUploadCommand.new(method, template)
          end
          command.options = request_options.merge(options)
          apply_command_defaults(command)
          command
        end

        # Create a new download command.
        #
        # @param [symbol] method
        #   HTTP method for uploading (typically :get)
        # @param [String] path
        #  Additional path to download endpoint, appended to API base path
        # @param [Hash, Google::Apis::RequestOptions] options
        #  Request-specific options
        # @return [Google::Apis::Core::DownloadCommand]
        def make_download_command(method, path, options)
          template = Addressable::Template.new(root_url + base_path + path)
          command = DownloadCommand.new(method, template)
          command.options = request_options.merge(options)
          apply_command_defaults(command)
          command
        end

        # Create a new command.
        #
        # @param [symbol] method
        #   HTTP method (:get, :post, :delete, etc...)
        # @param [String] path
        #  Additional path, appended to API base path
        # @param [Hash, Google::Apis::RequestOptions] options
        #  Request-specific options
        # @return [Google::Apis::Core::DownloadCommand]
        def make_simple_command(method, path, options)
          template = Addressable::Template.new(root_url + base_path + path)
          command = ApiCommand.new(method, template)
          command.options = request_options.merge(options)
          apply_command_defaults(command)
          command
        end

        # Execute the request. If a batch is in progress, the request is added to the batch instead.
        #
        # @param [Google::Apis::Core::HttpCommand] command
        #   Command to execute
        # @return [Object] response object if command executed and no callback supplied
        # @yield [result, err] Result & error if block supplied
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def execute_or_queue_command(command, &callback)
          batch_command = current_batch
          if batch_command
            batch_command.add(command, &callback)
            nil
          else
            command.execute(client, &callback)
          end
        end

        # Update commands with service-specific options. To be implemented by subclasses
        # @param [Google::Apis::Core::HttpCommand] _command
        def apply_command_defaults(_command)
        end

        private

        # Get the current batch context
        #
        # @return [Google:Apis::Core::BatchRequest]
        def current_batch
          Thread.current[:google_api_batch]
        end

        # Check if a batch is in progress
        # @return [Boolean]
        def batch?
          !current_batch.nil?
        end

        # Create a new HTTP client
        # @return [Hurley::Client]
        def new_client
          client = Hurley::Client.new
          client.request_options.timeout = request_options.timeout_sec
          client.request_options.proxy = client_options.proxy_url
          client.request_options.query_class = Hurley::Query::Flat
          client.ssl_options.ca_file = File.join(Google::Apis::ROOT, 'lib', 'cacerts.pem')
          client.header[:user_agent] = user_agent
          client
        end

        # Build the user agent header
        # @return [String]
        def user_agent
          sprintf('%s/%s google-api-ruby-client/%s %s (gzip)',
                  client_options.application_name,
                  client_options.application_version,
                  Google::Apis::VERSION,
                  Google::Apis::OS_VERSION)
        end
      end
    end
  end
end
