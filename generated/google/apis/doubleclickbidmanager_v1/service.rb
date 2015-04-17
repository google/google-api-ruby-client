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

require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module DoubleclickbidmanagerV1
      # DoubleClick Bid Manager API
      #
      # API for viewing and managing your reports in DoubleClick Bid Manager.
      #
      # @example
      #    require 'google/apis/doubleclickbidmanager_v1'
      #
      #    Doubleclickbidmanager = Google::Apis::DoubleclickbidmanagerV1 # Alias the module
      #    service = Doubleclickbidmanager::DoubleClickBidManagerService.new
      #
      # @see https://developers.google.com/bid-manager/
      class DoubleClickBidManagerService < Google::Apis::Core::BaseService

        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        #  Overrides userIp if both are provided.
        attr_accessor :quota_user

        # @return [String]
        #  IP address of the site where the request originates. Use this if you want to
        #  enforce per-user limits.
        attr_accessor :user_ip

        def initialize
          super('https://www.googleapis.com/', '/doubleclickbidmanager/v1/')
        end

        # Retrieves line items in CSV format.
        # @param [Google::Apis::DoubleclickbidmanagerV1::DownloadLineItemsRequest] download_line_items_request_obj
        #   
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DoubleclickbidmanagerV1::DownloadLineItemsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DoubleclickbidmanagerV1::DownloadLineItemsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def downloadlineitems_lineitem(download_line_items_request_obj, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'lineitems/downloadlineitems'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::DoubleclickbidmanagerV1::DownloadLineItemsRequestRepresentation
          command.request_object = download_line_items_request_obj
          command.response_representation = Google::Apis::DoubleclickbidmanagerV1::DownloadLineItemsResponseRepresentation
          command.response_class = Google::Apis::DoubleclickbidmanagerV1::DownloadLineItemsResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Uploads line items in CSV format.
        # @param [Google::Apis::DoubleclickbidmanagerV1::UploadLineItemsRequest] upload_line_items_request_obj
        #   
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DoubleclickbidmanagerV1::UploadLineItemsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DoubleclickbidmanagerV1::UploadLineItemsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def uploadlineitems_lineitem(upload_line_items_request_obj, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'lineitems/uploadlineitems'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::DoubleclickbidmanagerV1::UploadLineItemsRequestRepresentation
          command.request_object = upload_line_items_request_obj
          command.response_representation = Google::Apis::DoubleclickbidmanagerV1::UploadLineItemsResponseRepresentation
          command.response_class = Google::Apis::DoubleclickbidmanagerV1::UploadLineItemsResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Creates a query.
        # @param [Google::Apis::DoubleclickbidmanagerV1::Query] query_obj
        #   
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DoubleclickbidmanagerV1::Query] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DoubleclickbidmanagerV1::Query]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def createquery_query(query_obj, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'query'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::DoubleclickbidmanagerV1::QueryRepresentation
          command.request_object = query_obj
          command.response_representation = Google::Apis::DoubleclickbidmanagerV1::QueryRepresentation
          command.response_class = Google::Apis::DoubleclickbidmanagerV1::Query
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Deletes a stored query as well as the associated stored reports.
        # @param [String] query_id
        #   Query ID to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def deletequery_query(query_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'query/{queryId}'
          command =  make_simple_command(:delete, path, options)
          command.params['queryId'] = query_id unless query_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Retrieves a stored query.
        # @param [String] query_id
        #   Query ID to retrieve.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DoubleclickbidmanagerV1::Query] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DoubleclickbidmanagerV1::Query]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def getquery_query(query_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'query/{queryId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::DoubleclickbidmanagerV1::QueryRepresentation
          command.response_class = Google::Apis::DoubleclickbidmanagerV1::Query
          command.params['queryId'] = query_id unless query_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Retrieves stored queries.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DoubleclickbidmanagerV1::ListQueriesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DoubleclickbidmanagerV1::ListQueriesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def listqueries_query(fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'queries'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::DoubleclickbidmanagerV1::ListQueriesResponseRepresentation
          command.response_class = Google::Apis::DoubleclickbidmanagerV1::ListQueriesResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Runs a stored query to generate a report.
        # @param [Google::Apis::DoubleclickbidmanagerV1::RunQueryRequest] run_query_request_obj
        #   
        # @param [String] query_id
        #   Query ID to run.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def runquery_query(run_query_request_obj, query_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'query/{queryId}'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::DoubleclickbidmanagerV1::RunQueryRequestRepresentation
          command.request_object = run_query_request_obj
          command.params['queryId'] = query_id unless query_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Retrieves stored reports.
        # @param [String] query_id
        #   Query ID with which the reports are associated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DoubleclickbidmanagerV1::ListReportsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DoubleclickbidmanagerV1::ListReportsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def listreports_report(query_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'queries/{queryId}/reports'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::DoubleclickbidmanagerV1::ListReportsResponseRepresentation
          command.response_class = Google::Apis::DoubleclickbidmanagerV1::ListReportsResponse
          command.params['queryId'] = query_id unless query_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        protected

        def apply_command_defaults(command)
          command.query['key'] = key unless key.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
        end
      end
    end
  end
end
