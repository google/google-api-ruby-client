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

require 'google/apis/core/multipart'
require 'google/apis/core/api_command'
require 'google/apis/errors'
require 'addressable/uri'

module Google
  module Apis
    module Core
      # Streaming/resumable media download support
      class DownloadCommand < ApiCommand
        CONTENT_LOCATION_HEADER = 'content-location'
        RANGE_HEADER = 'range'
        ALT_PARAM = 'alt'
        ALT_MEDIA = 'media'

        # File or IO to write content to
        # @return [String, File, #write]
        attr_accessor :download_dest

        # Ensure the download destination is a writable stream.
        #
        # @return [void]
        def prepare!
          @state = :start
          @download_url = nil
          @offset = 0
          query[ALT_PARAM] = ALT_MEDIA
          if download_dest.respond_to?(:write)
            @download_io = download_dest
          elsif download_dest.is_a?(String)
            @download_io = File.open(download_dest, 'wb')
          else
            @download_io = StringIO.new('', 'wb')
          end
          super
        end

        # Execute the upload request once. Overrides the default implementation to handle streaming/chunking
        # of file content.
        #
        # @private
        # @param [Hurley::Client] client
        #   HTTP client
        # @yield [result, err] Result or error if block supplied
        # @return [Object]
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def execute_once(client, &block)
          client.get(@download_url || url) do |req|
            apply_request_options(req)
            if @offset > 0
              logger.debug { sprintf('Resuming download from offset %d', @offset) }
              req.header[RANGE_HEADER] = range = sprintf('bytes=%d-', @offset)
            end
            req.on_body do |res, chunk|
              check_status(res.status_code, chunk) unless res.status_code.nil?
              if res.header[CONTENT_LOCATION_HEADER]
                @download_url = res.header[CONTENT_LOCATION_HEADER]
                logger.debug { sprintf('Download URL changed: %s', @download_url) }
              end
              logger.debug { sprintf('Writing chunk (%d bytes)', chunk.length) }
              @offset += chunk.length
              @download_io.write(chunk)
              @download_io.flush
            end
          end
          result = @download_io
          success(result, &block)
        rescue => e
          error(e, &block)
        end
      end
    end
  end
end
