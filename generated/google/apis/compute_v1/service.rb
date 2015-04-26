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
    module ComputeV1
      # Compute Engine API
      #
      # API for the Google Compute Engine service.
      #
      # @example
      #    require 'google/apis/compute_v1'
      #
      #    Compute = Google::Apis::ComputeV1 # Alias the module
      #    service = Compute::ComputeService.new
      #
      # @see https://developers.google.com/compute/docs/reference/latest/
      class ComputeService < Google::Apis::Core::BaseService

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
          super('https://www.googleapis.com/', 'compute/v1/projects/')
        end

        # Retrieves the list of addresses grouped by scope.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] filter
        #   Optional. Filter expression for filtering listed resources.
        # @param [Fixnum] max_results
        #   Optional. Maximum count of results to be returned. Maximum value is 500 and
        #   default value is 500.
        # @param [String] page_token
        #   Optional. Tag returned by a previous list request truncated by maxResults.
        #   Used to continue a previous list request.
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
        # @yieldparam result [Google::Apis::ComputeV1::AddressAggregatedList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::AddressAggregatedList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def aggregated_list_address(project, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/aggregated/addresses'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::AddressAggregatedListRepresentation
          command.response_class = Google::Apis::ComputeV1::AddressAggregatedList
          command.params['project'] = project unless project.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Deletes the specified address resource.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] region
        #   The name of the region for this request.
        # @param [String] address
        #   Name of the address resource to delete.
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
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_address(project, region, address, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/regions/{region}/addresses/{address}'
          command =  make_simple_command(:delete, path, options)
          command.response_representation = Google::Apis::ComputeV1::OperationRepresentation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['region'] = region unless region.nil?
          command.params['address'] = address unless address.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Returns the specified address resource.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] region
        #   The name of the region for this request.
        # @param [String] address
        #   Name of the address resource to return.
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
        # @yieldparam result [Google::Apis::ComputeV1::Address] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Address]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_address(project, region, address, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/regions/{region}/addresses/{address}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::AddressRepresentation
          command.response_class = Google::Apis::ComputeV1::Address
          command.params['project'] = project unless project.nil?
          command.params['region'] = region unless region.nil?
          command.params['address'] = address unless address.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Creates an address resource in the specified project using the data included
        # in the request.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] region
        #   The name of the region for this request.
        # @param [Google::Apis::ComputeV1::Address] address
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
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_address(project, region, address = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/regions/{region}/addresses'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::AddressRepresentation
          command.request_object = address
          command.response_representation = Google::Apis::ComputeV1::OperationRepresentation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['region'] = region unless region.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Retrieves the list of address resources contained within the specified region.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] region
        #   The name of the region for this request.
        # @param [String] filter
        #   Optional. Filter expression for filtering listed resources.
        # @param [Fixnum] max_results
        #   Optional. Maximum count of results to be returned. Maximum value is 500 and
        #   default value is 500.
        # @param [String] page_token
        #   Optional. Tag returned by a previous list request truncated by maxResults.
        #   Used to continue a previous list request.
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
        # @yieldparam result [Google::Apis::ComputeV1::AddressList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::AddressList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_addresses(project, region, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/regions/{region}/addresses'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::AddressListRepresentation
          command.response_class = Google::Apis::ComputeV1::AddressList
          command.params['project'] = project unless project.nil?
          command.params['region'] = region unless region.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Deletes the specified BackendService resource.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] backend_service
        #   Name of the BackendService resource to delete.
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
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_backend_service(project, backend_service, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/backendServices/{backendService}'
          command =  make_simple_command(:delete, path, options)
          command.response_representation = Google::Apis::ComputeV1::OperationRepresentation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['backendService'] = backend_service unless backend_service.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Returns the specified BackendService resource.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] backend_service
        #   Name of the BackendService resource to return.
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
        # @yieldparam result [Google::Apis::ComputeV1::BackendService] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::BackendService]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_backend_service(project, backend_service, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/backendServices/{backendService}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::BackendServiceRepresentation
          command.response_class = Google::Apis::ComputeV1::BackendService
          command.params['project'] = project unless project.nil?
          command.params['backendService'] = backend_service unless backend_service.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Gets the most recent health check results for this BackendService.
        # @param [String] project
        #   
        # @param [String] backend_service
        #   Name of the BackendService resource to which the queried instance belongs.
        # @param [Google::Apis::ComputeV1::ResourceGroupReference] resource_group_reference
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
        # @yieldparam result [Google::Apis::ComputeV1::BackendServiceGroupHealth] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::BackendServiceGroupHealth]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_health_backend_service(project, backend_service, resource_group_reference = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/backendServices/{backendService}/getHealth'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::ResourceGroupReferenceRepresentation
          command.request_object = resource_group_reference
          command.response_representation = Google::Apis::ComputeV1::BackendServiceGroupHealthRepresentation
          command.response_class = Google::Apis::ComputeV1::BackendServiceGroupHealth
          command.params['project'] = project unless project.nil?
          command.params['backendService'] = backend_service unless backend_service.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Creates a BackendService resource in the specified project using the data
        # included in the request.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [Google::Apis::ComputeV1::BackendService] backend_service
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
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_backend_service(project, backend_service = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/backendServices'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::BackendServiceRepresentation
          command.request_object = backend_service
          command.response_representation = Google::Apis::ComputeV1::OperationRepresentation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Retrieves the list of BackendService resources available to the specified
        # project.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] filter
        #   Optional. Filter expression for filtering listed resources.
        # @param [Fixnum] max_results
        #   Optional. Maximum count of results to be returned. Maximum value is 500 and
        #   default value is 500.
        # @param [String] page_token
        #   Optional. Tag returned by a previous list request truncated by maxResults.
        #   Used to continue a previous list request.
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
        # @yieldparam result [Google::Apis::ComputeV1::BackendServiceList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::BackendServiceList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_backend_services(project, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/backendServices'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::BackendServiceListRepresentation
          command.response_class = Google::Apis::ComputeV1::BackendServiceList
          command.params['project'] = project unless project.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Update the entire content of the BackendService resource. This method supports
        # patch semantics.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] backend_service
        #   Name of the BackendService resource to update.
        # @param [Google::Apis::ComputeV1::BackendService] backend_service_object
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
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_backend_service(project, backend_service, backend_service_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/backendServices/{backendService}'
          command =  make_simple_command(:patch, path, options)
          command.request_representation = Google::Apis::ComputeV1::BackendServiceRepresentation
          command.request_object = backend_service_object
          command.response_representation = Google::Apis::ComputeV1::OperationRepresentation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['backendService'] = backend_service unless backend_service.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Update the entire content of the BackendService resource.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] backend_service
        #   Name of the BackendService resource to update.
        # @param [Google::Apis::ComputeV1::BackendService] backend_service_object
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
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_backend_service(project, backend_service, backend_service_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/backendServices/{backendService}'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::ComputeV1::BackendServiceRepresentation
          command.request_object = backend_service_object
          command.response_representation = Google::Apis::ComputeV1::OperationRepresentation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['backendService'] = backend_service unless backend_service.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Retrieves the list of disk type resources grouped by scope.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] filter
        #   Optional. Filter expression for filtering listed resources.
        # @param [Fixnum] max_results
        #   Optional. Maximum count of results to be returned. Maximum value is 500 and
        #   default value is 500.
        # @param [String] page_token
        #   Optional. Tag returned by a previous list request truncated by maxResults.
        #   Used to continue a previous list request.
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
        # @yieldparam result [Google::Apis::ComputeV1::DiskTypeAggregatedList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::DiskTypeAggregatedList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def aggregated_list_disk_type(project, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/aggregated/diskTypes'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::DiskTypeAggregatedListRepresentation
          command.response_class = Google::Apis::ComputeV1::DiskTypeAggregatedList
          command.params['project'] = project unless project.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Returns the specified disk type resource.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] zone
        #   The name of the zone for this request.
        # @param [String] disk_type
        #   Name of the disk type resource to return.
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
        # @yieldparam result [Google::Apis::ComputeV1::DiskType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::DiskType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_disk_type(project, zone, disk_type, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/diskTypes/{diskType}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::DiskTypeRepresentation
          command.response_class = Google::Apis::ComputeV1::DiskType
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['diskType'] = disk_type unless disk_type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Retrieves the list of disk type resources available to the specified project.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] zone
        #   The name of the zone for this request.
        # @param [String] filter
        #   Optional. Filter expression for filtering listed resources.
        # @param [Fixnum] max_results
        #   Optional. Maximum count of results to be returned. Maximum value is 500 and
        #   default value is 500.
        # @param [String] page_token
        #   Optional. Tag returned by a previous list request truncated by maxResults.
        #   Used to continue a previous list request.
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
        # @yieldparam result [Google::Apis::ComputeV1::DiskTypeList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::DiskTypeList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_disk_types(project, zone, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/diskTypes'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::DiskTypeListRepresentation
          command.response_class = Google::Apis::ComputeV1::DiskTypeList
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Retrieves the list of disks grouped by scope.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] filter
        #   Optional. Filter expression for filtering listed resources.
        # @param [Fixnum] max_results
        #   Optional. Maximum count of results to be returned. Maximum value is 500 and
        #   default value is 500.
        # @param [String] page_token
        #   Optional. Tag returned by a previous list request truncated by maxResults.
        #   Used to continue a previous list request.
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
        # @yieldparam result [Google::Apis::ComputeV1::DiskAggregatedList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::DiskAggregatedList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def aggregated_list_disk(project, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/aggregated/disks'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::DiskAggregatedListRepresentation
          command.response_class = Google::Apis::ComputeV1::DiskAggregatedList
          command.params['project'] = project unless project.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Creates a snapshot of this disk.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] zone
        #   The name of the zone for this request.
        # @param [String] disk
        #   Name of the persistent disk to snapshot.
        # @param [Google::Apis::ComputeV1::Snapshot] snapshot
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
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_snapshot_disk(project, zone, disk, snapshot = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/disks/{disk}/createSnapshot'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::SnapshotRepresentation
          command.request_object = snapshot
          command.response_representation = Google::Apis::ComputeV1::OperationRepresentation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['disk'] = disk unless disk.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Deletes the specified persistent disk.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] zone
        #   The name of the zone for this request.
        # @param [String] disk
        #   Name of the persistent disk to delete.
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
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_disk(project, zone, disk, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/disks/{disk}'
          command =  make_simple_command(:delete, path, options)
          command.response_representation = Google::Apis::ComputeV1::OperationRepresentation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['disk'] = disk unless disk.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Returns a specified persistent disk.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] zone
        #   The name of the zone for this request.
        # @param [String] disk
        #   Name of the persistent disk to return.
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
        # @yieldparam result [Google::Apis::ComputeV1::Disk] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Disk]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_disk(project, zone, disk, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/disks/{disk}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::DiskRepresentation
          command.response_class = Google::Apis::ComputeV1::Disk
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['disk'] = disk unless disk.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Creates a persistent disk in the specified project using the data included in
        # the request.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] zone
        #   The name of the zone for this request.
        # @param [Google::Apis::ComputeV1::Disk] disk
        #   
        # @param [String] source_image
        #   Optional. Source image to restore onto a disk.
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
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_disk(project, zone, disk = nil, source_image: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/disks'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::DiskRepresentation
          command.request_object = disk
          command.response_representation = Google::Apis::ComputeV1::OperationRepresentation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.query['sourceImage'] = source_image unless source_image.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Retrieves the list of persistent disks contained within the specified zone.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] zone
        #   The name of the zone for this request.
        # @param [String] filter
        #   Optional. Filter expression for filtering listed resources.
        # @param [Fixnum] max_results
        #   Optional. Maximum count of results to be returned. Maximum value is 500 and
        #   default value is 500.
        # @param [String] page_token
        #   Optional. Tag returned by a previous list request truncated by maxResults.
        #   Used to continue a previous list request.
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
        # @yieldparam result [Google::Apis::ComputeV1::DiskList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::DiskList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_disks(project, zone, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/disks'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::DiskListRepresentation
          command.response_class = Google::Apis::ComputeV1::DiskList
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Deletes the specified firewall resource.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] firewall
        #   Name of the firewall resource to delete.
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
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_firewall(project, firewall, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/firewalls/{firewall}'
          command =  make_simple_command(:delete, path, options)
          command.response_representation = Google::Apis::ComputeV1::OperationRepresentation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['firewall'] = firewall unless firewall.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Returns the specified firewall resource.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] firewall
        #   Name of the firewall resource to return.
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
        # @yieldparam result [Google::Apis::ComputeV1::Firewall] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Firewall]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_firewall(project, firewall, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/firewalls/{firewall}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::FirewallRepresentation
          command.response_class = Google::Apis::ComputeV1::Firewall
          command.params['project'] = project unless project.nil?
          command.params['firewall'] = firewall unless firewall.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Creates a firewall resource in the specified project using the data included
        # in the request.
        # @param [String] project
        #   Project ID for this request.
        # @param [Google::Apis::ComputeV1::Firewall] firewall
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
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_firewall(project, firewall = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/firewalls'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::FirewallRepresentation
          command.request_object = firewall
          command.response_representation = Google::Apis::ComputeV1::OperationRepresentation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Retrieves the list of firewall resources available to the specified project.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] filter
        #   Optional. Filter expression for filtering listed resources.
        # @param [Fixnum] max_results
        #   Optional. Maximum count of results to be returned. Maximum value is 500 and
        #   default value is 500.
        # @param [String] page_token
        #   Optional. Tag returned by a previous list request truncated by maxResults.
        #   Used to continue a previous list request.
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
        # @yieldparam result [Google::Apis::ComputeV1::FirewallList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::FirewallList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_firewalls(project, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/firewalls'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::FirewallListRepresentation
          command.response_class = Google::Apis::ComputeV1::FirewallList
          command.params['project'] = project unless project.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Updates the specified firewall resource with the data included in the request.
        # This method supports patch semantics.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] firewall
        #   Name of the firewall resource to update.
        # @param [Google::Apis::ComputeV1::Firewall] firewall_object
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
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_firewall(project, firewall, firewall_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/firewalls/{firewall}'
          command =  make_simple_command(:patch, path, options)
          command.request_representation = Google::Apis::ComputeV1::FirewallRepresentation
          command.request_object = firewall_object
          command.response_representation = Google::Apis::ComputeV1::OperationRepresentation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['firewall'] = firewall unless firewall.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Updates the specified firewall resource with the data included in the request.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] firewall
        #   Name of the firewall resource to update.
        # @param [Google::Apis::ComputeV1::Firewall] firewall_object
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
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_firewall(project, firewall, firewall_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/firewalls/{firewall}'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::ComputeV1::FirewallRepresentation
          command.request_object = firewall_object
          command.response_representation = Google::Apis::ComputeV1::OperationRepresentation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['firewall'] = firewall unless firewall.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Retrieves the list of forwarding rules grouped by scope.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] filter
        #   Optional. Filter expression for filtering listed resources.
        # @param [Fixnum] max_results
        #   Optional. Maximum count of results to be returned. Maximum value is 500 and
        #   default value is 500.
        # @param [String] page_token
        #   Optional. Tag returned by a previous list request truncated by maxResults.
        #   Used to continue a previous list request.
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
        # @yieldparam result [Google::Apis::ComputeV1::ForwardingRuleAggregatedList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::ForwardingRuleAggregatedList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def aggregated_list_forwarding_rule(project, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/aggregated/forwardingRules'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::ForwardingRuleAggregatedListRepresentation
          command.response_class = Google::Apis::ComputeV1::ForwardingRuleAggregatedList
          command.params['project'] = project unless project.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Deletes the specified ForwardingRule resource.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] region
        #   Name of the region scoping this request.
        # @param [String] forwarding_rule
        #   Name of the ForwardingRule resource to delete.
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
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_forwarding_rule(project, region, forwarding_rule, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/regions/{region}/forwardingRules/{forwardingRule}'
          command =  make_simple_command(:delete, path, options)
          command.response_representation = Google::Apis::ComputeV1::OperationRepresentation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['region'] = region unless region.nil?
          command.params['forwardingRule'] = forwarding_rule unless forwarding_rule.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Returns the specified ForwardingRule resource.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] region
        #   Name of the region scoping this request.
        # @param [String] forwarding_rule
        #   Name of the ForwardingRule resource to return.
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
        # @yieldparam result [Google::Apis::ComputeV1::ForwardingRule] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::ForwardingRule]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_forwarding_rule(project, region, forwarding_rule, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/regions/{region}/forwardingRules/{forwardingRule}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::ForwardingRuleRepresentation
          command.response_class = Google::Apis::ComputeV1::ForwardingRule
          command.params['project'] = project unless project.nil?
          command.params['region'] = region unless region.nil?
          command.params['forwardingRule'] = forwarding_rule unless forwarding_rule.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Creates a ForwardingRule resource in the specified project and region using
        # the data included in the request.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] region
        #   Name of the region scoping this request.
        # @param [Google::Apis::ComputeV1::ForwardingRule] forwarding_rule
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
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_forwarding_rule(project, region, forwarding_rule = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/regions/{region}/forwardingRules'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::ForwardingRuleRepresentation
          command.request_object = forwarding_rule
          command.response_representation = Google::Apis::ComputeV1::OperationRepresentation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['region'] = region unless region.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Retrieves the list of ForwardingRule resources available to the specified
        # project and region.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] region
        #   Name of the region scoping this request.
        # @param [String] filter
        #   Optional. Filter expression for filtering listed resources.
        # @param [Fixnum] max_results
        #   Optional. Maximum count of results to be returned. Maximum value is 500 and
        #   default value is 500.
        # @param [String] page_token
        #   Optional. Tag returned by a previous list request truncated by maxResults.
        #   Used to continue a previous list request.
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
        # @yieldparam result [Google::Apis::ComputeV1::ForwardingRuleList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::ForwardingRuleList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_forwarding_rules(project, region, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/regions/{region}/forwardingRules'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::ForwardingRuleListRepresentation
          command.response_class = Google::Apis::ComputeV1::ForwardingRuleList
          command.params['project'] = project unless project.nil?
          command.params['region'] = region unless region.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Changes target url for forwarding rule.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] region
        #   Name of the region scoping this request.
        # @param [String] forwarding_rule
        #   Name of the ForwardingRule resource in which target is to be set.
        # @param [Google::Apis::ComputeV1::TargetReference] target_reference
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
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_target_forwarding_rule(project, region, forwarding_rule, target_reference = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/regions/{region}/forwardingRules/{forwardingRule}/setTarget'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::TargetReferenceRepresentation
          command.request_object = target_reference
          command.response_representation = Google::Apis::ComputeV1::OperationRepresentation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['region'] = region unless region.nil?
          command.params['forwardingRule'] = forwarding_rule unless forwarding_rule.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Deletes the specified address resource.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] address
        #   Name of the address resource to delete.
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
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_global_address(project, address, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/addresses/{address}'
          command =  make_simple_command(:delete, path, options)
          command.response_representation = Google::Apis::ComputeV1::OperationRepresentation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['address'] = address unless address.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Returns the specified address resource.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] address
        #   Name of the address resource to return.
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
        # @yieldparam result [Google::Apis::ComputeV1::Address] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Address]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_global_address(project, address, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/addresses/{address}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::AddressRepresentation
          command.response_class = Google::Apis::ComputeV1::Address
          command.params['project'] = project unless project.nil?
          command.params['address'] = address unless address.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Creates an address resource in the specified project using the data included
        # in the request.
        # @param [String] project
        #   Project ID for this request.
        # @param [Google::Apis::ComputeV1::Address] address
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
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_global_address(project, address = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/addresses'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::AddressRepresentation
          command.request_object = address
          command.response_representation = Google::Apis::ComputeV1::OperationRepresentation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Retrieves the list of global address resources.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] filter
        #   Optional. Filter expression for filtering listed resources.
        # @param [Fixnum] max_results
        #   Optional. Maximum count of results to be returned. Maximum value is 500 and
        #   default value is 500.
        # @param [String] page_token
        #   Optional. Tag returned by a previous list request truncated by maxResults.
        #   Used to continue a previous list request.
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
        # @yieldparam result [Google::Apis::ComputeV1::AddressList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::AddressList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_global_addresses(project, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/addresses'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::AddressListRepresentation
          command.response_class = Google::Apis::ComputeV1::AddressList
          command.params['project'] = project unless project.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Deletes the specified ForwardingRule resource.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] forwarding_rule
        #   Name of the ForwardingRule resource to delete.
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
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_global_forwarding_rule(project, forwarding_rule, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/forwardingRules/{forwardingRule}'
          command =  make_simple_command(:delete, path, options)
          command.response_representation = Google::Apis::ComputeV1::OperationRepresentation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['forwardingRule'] = forwarding_rule unless forwarding_rule.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Returns the specified ForwardingRule resource.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] forwarding_rule
        #   Name of the ForwardingRule resource to return.
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
        # @yieldparam result [Google::Apis::ComputeV1::ForwardingRule] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::ForwardingRule]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_global_forwarding_rule(project, forwarding_rule, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/forwardingRules/{forwardingRule}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::ForwardingRuleRepresentation
          command.response_class = Google::Apis::ComputeV1::ForwardingRule
          command.params['project'] = project unless project.nil?
          command.params['forwardingRule'] = forwarding_rule unless forwarding_rule.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Creates a ForwardingRule resource in the specified project and region using
        # the data included in the request.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [Google::Apis::ComputeV1::ForwardingRule] forwarding_rule
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
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_global_forwarding_rule(project, forwarding_rule = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/forwardingRules'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::ForwardingRuleRepresentation
          command.request_object = forwarding_rule
          command.response_representation = Google::Apis::ComputeV1::OperationRepresentation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Retrieves the list of ForwardingRule resources available to the specified
        # project.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] filter
        #   Optional. Filter expression for filtering listed resources.
        # @param [Fixnum] max_results
        #   Optional. Maximum count of results to be returned. Maximum value is 500 and
        #   default value is 500.
        # @param [String] page_token
        #   Optional. Tag returned by a previous list request truncated by maxResults.
        #   Used to continue a previous list request.
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
        # @yieldparam result [Google::Apis::ComputeV1::ForwardingRuleList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::ForwardingRuleList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_global_forwarding_rules(project, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/forwardingRules'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::ForwardingRuleListRepresentation
          command.response_class = Google::Apis::ComputeV1::ForwardingRuleList
          command.params['project'] = project unless project.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Changes target url for forwarding rule.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] forwarding_rule
        #   Name of the ForwardingRule resource in which target is to be set.
        # @param [Google::Apis::ComputeV1::TargetReference] target_reference
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
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_target_global_forwarding_rule(project, forwarding_rule, target_reference = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/forwardingRules/{forwardingRule}/setTarget'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::TargetReferenceRepresentation
          command.request_object = target_reference
          command.response_representation = Google::Apis::ComputeV1::OperationRepresentation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['forwardingRule'] = forwarding_rule unless forwarding_rule.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Retrieves the list of all operations grouped by scope.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] filter
        #   Optional. Filter expression for filtering listed resources.
        # @param [Fixnum] max_results
        #   Optional. Maximum count of results to be returned. Maximum value is 500 and
        #   default value is 500.
        # @param [String] page_token
        #   Optional. Tag returned by a previous list request truncated by maxResults.
        #   Used to continue a previous list request.
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
        # @yieldparam result [Google::Apis::ComputeV1::OperationAggregatedList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::OperationAggregatedList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def aggregated_list_global_operation(project, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/aggregated/operations'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::OperationAggregatedListRepresentation
          command.response_class = Google::Apis::ComputeV1::OperationAggregatedList
          command.params['project'] = project unless project.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Deletes the specified operation resource.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] operation
        #   Name of the operation resource to delete.
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
        def delete_global_operation(project, operation, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/operations/{operation}'
          command =  make_simple_command(:delete, path, options)
          command.params['project'] = project unless project.nil?
          command.params['operation'] = operation unless operation.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Retrieves the specified operation resource.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] operation
        #   Name of the operation resource to return.
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
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_global_operation(project, operation, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/operations/{operation}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::OperationRepresentation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['operation'] = operation unless operation.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Retrieves the list of operation resources contained within the specified
        # project.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] filter
        #   Optional. Filter expression for filtering listed resources.
        # @param [Fixnum] max_results
        #   Optional. Maximum count of results to be returned. Maximum value is 500 and
        #   default value is 500.
        # @param [String] page_token
        #   Optional. Tag returned by a previous list request truncated by maxResults.
        #   Used to continue a previous list request.
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
        # @yieldparam result [Google::Apis::ComputeV1::OperationList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::OperationList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_global_operations(project, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/operations'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::OperationListRepresentation
          command.response_class = Google::Apis::ComputeV1::OperationList
          command.params['project'] = project unless project.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Deletes the specified HttpHealthCheck resource.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] http_health_check
        #   Name of the HttpHealthCheck resource to delete.
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
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_http_health_check(project, http_health_check, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/httpHealthChecks/{httpHealthCheck}'
          command =  make_simple_command(:delete, path, options)
          command.response_representation = Google::Apis::ComputeV1::OperationRepresentation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['httpHealthCheck'] = http_health_check unless http_health_check.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Returns the specified HttpHealthCheck resource.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] http_health_check
        #   Name of the HttpHealthCheck resource to return.
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
        # @yieldparam result [Google::Apis::ComputeV1::HttpHealthCheck] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::HttpHealthCheck]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_http_health_check(project, http_health_check, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/httpHealthChecks/{httpHealthCheck}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::HttpHealthCheckRepresentation
          command.response_class = Google::Apis::ComputeV1::HttpHealthCheck
          command.params['project'] = project unless project.nil?
          command.params['httpHealthCheck'] = http_health_check unless http_health_check.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Creates a HttpHealthCheck resource in the specified project using the data
        # included in the request.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [Google::Apis::ComputeV1::HttpHealthCheck] http_health_check
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
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_http_health_check(project, http_health_check = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/httpHealthChecks'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::HttpHealthCheckRepresentation
          command.request_object = http_health_check
          command.response_representation = Google::Apis::ComputeV1::OperationRepresentation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Retrieves the list of HttpHealthCheck resources available to the specified
        # project.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] filter
        #   Optional. Filter expression for filtering listed resources.
        # @param [Fixnum] max_results
        #   Optional. Maximum count of results to be returned. Maximum value is 500 and
        #   default value is 500.
        # @param [String] page_token
        #   Optional. Tag returned by a previous list request truncated by maxResults.
        #   Used to continue a previous list request.
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
        # @yieldparam result [Google::Apis::ComputeV1::HttpHealthCheckList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::HttpHealthCheckList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_http_health_checks(project, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/httpHealthChecks'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::HttpHealthCheckListRepresentation
          command.response_class = Google::Apis::ComputeV1::HttpHealthCheckList
          command.params['project'] = project unless project.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Updates a HttpHealthCheck resource in the specified project using the data
        # included in the request. This method supports patch semantics.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] http_health_check
        #   Name of the HttpHealthCheck resource to update.
        # @param [Google::Apis::ComputeV1::HttpHealthCheck] http_health_check_object
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
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_http_health_check(project, http_health_check, http_health_check_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/httpHealthChecks/{httpHealthCheck}'
          command =  make_simple_command(:patch, path, options)
          command.request_representation = Google::Apis::ComputeV1::HttpHealthCheckRepresentation
          command.request_object = http_health_check_object
          command.response_representation = Google::Apis::ComputeV1::OperationRepresentation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['httpHealthCheck'] = http_health_check unless http_health_check.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Updates a HttpHealthCheck resource in the specified project using the data
        # included in the request.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] http_health_check
        #   Name of the HttpHealthCheck resource to update.
        # @param [Google::Apis::ComputeV1::HttpHealthCheck] http_health_check_object
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
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_http_health_check(project, http_health_check, http_health_check_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/httpHealthChecks/{httpHealthCheck}'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::ComputeV1::HttpHealthCheckRepresentation
          command.request_object = http_health_check_object
          command.response_representation = Google::Apis::ComputeV1::OperationRepresentation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['httpHealthCheck'] = http_health_check unless http_health_check.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Deletes the specified image resource.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] image
        #   Name of the image resource to delete.
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
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_image(project, image, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/images/{image}'
          command =  make_simple_command(:delete, path, options)
          command.response_representation = Google::Apis::ComputeV1::OperationRepresentation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['image'] = image unless image.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Sets the deprecation status of an image.
        # If an empty request body is given, clears the deprecation status instead.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] image
        #   Image name.
        # @param [Google::Apis::ComputeV1::DeprecationStatus] deprecation_status
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
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def deprecate_image(project, image, deprecation_status = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/images/{image}/deprecate'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::DeprecationStatusRepresentation
          command.request_object = deprecation_status
          command.response_representation = Google::Apis::ComputeV1::OperationRepresentation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['image'] = image unless image.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Returns the specified image resource.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] image
        #   Name of the image resource to return.
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
        # @yieldparam result [Google::Apis::ComputeV1::Image] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Image]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_image(project, image, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/images/{image}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::ImageRepresentation
          command.response_class = Google::Apis::ComputeV1::Image
          command.params['project'] = project unless project.nil?
          command.params['image'] = image unless image.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Creates an image resource in the specified project using the data included in
        # the request.
        # @param [String] project
        #   Project ID for this request.
        # @param [Google::Apis::ComputeV1::Image] image
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
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_image(project, image = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/images'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::ImageRepresentation
          command.request_object = image
          command.response_representation = Google::Apis::ComputeV1::OperationRepresentation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Retrieves the list of image resources available to the specified project.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] filter
        #   Optional. Filter expression for filtering listed resources.
        # @param [Fixnum] max_results
        #   Optional. Maximum count of results to be returned. Maximum value is 500 and
        #   default value is 500.
        # @param [String] page_token
        #   Optional. Tag returned by a previous list request truncated by maxResults.
        #   Used to continue a previous list request.
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
        # @yieldparam result [Google::Apis::ComputeV1::ImageList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::ImageList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_images(project, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/images'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::ImageListRepresentation
          command.response_class = Google::Apis::ComputeV1::ImageList
          command.params['project'] = project unless project.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Deletes the specified instance template resource.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] instance_template
        #   Name of the instance template resource to delete.
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
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_instance_template(project, instance_template, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/instanceTemplates/{instanceTemplate}'
          command =  make_simple_command(:delete, path, options)
          command.response_representation = Google::Apis::ComputeV1::OperationRepresentation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['instanceTemplate'] = instance_template unless instance_template.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Returns the specified instance template resource.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] instance_template
        #   Name of the instance template resource to return.
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
        # @yieldparam result [Google::Apis::ComputeV1::InstanceTemplate] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::InstanceTemplate]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_instance_template(project, instance_template, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/instanceTemplates/{instanceTemplate}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::InstanceTemplateRepresentation
          command.response_class = Google::Apis::ComputeV1::InstanceTemplate
          command.params['project'] = project unless project.nil?
          command.params['instanceTemplate'] = instance_template unless instance_template.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Creates an instance template resource in the specified project using the data
        # included in the request.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [Google::Apis::ComputeV1::InstanceTemplate] instance_template
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
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_instance_template(project, instance_template = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/instanceTemplates'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::InstanceTemplateRepresentation
          command.request_object = instance_template
          command.response_representation = Google::Apis::ComputeV1::OperationRepresentation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Retrieves the list of instance template resources contained within the
        # specified project.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] filter
        #   Optional. Filter expression for filtering listed resources.
        # @param [Fixnum] max_results
        #   Optional. Maximum count of results to be returned. Maximum value is 500 and
        #   default value is 500.
        # @param [String] page_token
        #   Optional. Tag returned by a previous list request truncated by maxResults.
        #   Used to continue a previous list request.
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
        # @yieldparam result [Google::Apis::ComputeV1::InstanceTemplateList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::InstanceTemplateList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_instance_templates(project, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/instanceTemplates'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::InstanceTemplateListRepresentation
          command.response_class = Google::Apis::ComputeV1::InstanceTemplateList
          command.params['project'] = project unless project.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Adds an access config to an instance's network interface.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] zone
        #   The name of the zone for this request.
        # @param [String] instance
        #   The instance name for this request.
        # @param [Google::Apis::ComputeV1::AccessConfig] access_config
        #   
        # @param [String] network_interface
        #   The name of the network interface to add to this instance.
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
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def add_access_config_instance(project, zone, instance, access_config = nil, network_interface: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/instances/{instance}/addAccessConfig'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::AccessConfigRepresentation
          command.request_object = access_config
          command.response_representation = Google::Apis::ComputeV1::OperationRepresentation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['networkInterface'] = network_interface unless network_interface.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # 
        # @param [String] project
        #   Project ID for this request.
        # @param [String] filter
        #   Optional. Filter expression for filtering listed resources.
        # @param [Fixnum] max_results
        #   Optional. Maximum count of results to be returned. Maximum value is 500 and
        #   default value is 500.
        # @param [String] page_token
        #   Optional. Tag returned by a previous list request truncated by maxResults.
        #   Used to continue a previous list request.
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
        # @yieldparam result [Google::Apis::ComputeV1::InstanceAggregatedList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::InstanceAggregatedList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def aggregated_list_instance(project, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/aggregated/instances'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::InstanceAggregatedListRepresentation
          command.response_class = Google::Apis::ComputeV1::InstanceAggregatedList
          command.params['project'] = project unless project.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Attaches a Disk resource to an instance.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] zone
        #   The name of the zone for this request.
        # @param [String] instance
        #   Instance name.
        # @param [Google::Apis::ComputeV1::AttachedDisk] attached_disk
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
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def attach_disk_instance(project, zone, instance, attached_disk = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/instances/{instance}/attachDisk'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::AttachedDiskRepresentation
          command.request_object = attached_disk
          command.response_representation = Google::Apis::ComputeV1::OperationRepresentation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Deletes the specified Instance resource. For more information, see Shutting
        # down an instance.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] zone
        #   The name of the zone for this request.
        # @param [String] instance
        #   Name of the instance resource to delete.
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
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_instance(project, zone, instance, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/instances/{instance}'
          command =  make_simple_command(:delete, path, options)
          command.response_representation = Google::Apis::ComputeV1::OperationRepresentation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Deletes an access config from an instance's network interface.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] zone
        #   The name of the zone for this request.
        # @param [String] instance
        #   The instance name for this request.
        # @param [String] access_config
        #   The name of the access config to delete.
        # @param [String] network_interface
        #   The name of the network interface.
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
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_access_config_instance(project, zone, instance, access_config: nil, network_interface: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/instances/{instance}/deleteAccessConfig'
          command =  make_simple_command(:post, path, options)
          command.response_representation = Google::Apis::ComputeV1::OperationRepresentation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['accessConfig'] = access_config unless access_config.nil?
          command.query['networkInterface'] = network_interface unless network_interface.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Detaches a disk from an instance.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] zone
        #   The name of the zone for this request.
        # @param [String] instance
        #   Instance name.
        # @param [String] device_name
        #   Disk device name to detach.
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
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def detach_disk_instance(project, zone, instance, device_name: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/instances/{instance}/detachDisk'
          command =  make_simple_command(:post, path, options)
          command.response_representation = Google::Apis::ComputeV1::OperationRepresentation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['deviceName'] = device_name unless device_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Returns the specified instance resource.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] zone
        #   The name of the The name of the zone for this request..
        # @param [String] instance
        #   Name of the instance resource to return.
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
        # @yieldparam result [Google::Apis::ComputeV1::Instance] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Instance]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_instance(project, zone, instance, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/instances/{instance}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::InstanceRepresentation
          command.response_class = Google::Apis::ComputeV1::Instance
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Returns the specified instance's serial port output.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] zone
        #   The name of the zone for this request.
        # @param [String] instance
        #   Name of the instance scoping this request.
        # @param [Fixnum] port
        #   Which COM port to retrieve data from.
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
        # @yieldparam result [Google::Apis::ComputeV1::SerialPortOutput] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::SerialPortOutput]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_serial_port_output_instance(project, zone, instance, port: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/instances/{instance}/serialPort'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::SerialPortOutputRepresentation
          command.response_class = Google::Apis::ComputeV1::SerialPortOutput
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['port'] = port unless port.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Creates an instance resource in the specified project using the data included
        # in the request.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] zone
        #   The name of the zone for this request.
        # @param [Google::Apis::ComputeV1::Instance] instance
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
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_instance(project, zone, instance = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/instances'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::InstanceRepresentation
          command.request_object = instance
          command.response_representation = Google::Apis::ComputeV1::OperationRepresentation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Retrieves the list of instance resources contained within the specified zone.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] zone
        #   The name of the zone for this request.
        # @param [String] filter
        #   Optional. Filter expression for filtering listed resources.
        # @param [Fixnum] max_results
        #   Optional. Maximum count of results to be returned. Maximum value is 500 and
        #   default value is 500.
        # @param [String] page_token
        #   Optional. Tag returned by a previous list request truncated by maxResults.
        #   Used to continue a previous list request.
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
        # @yieldparam result [Google::Apis::ComputeV1::InstanceList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::InstanceList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_instances(project, zone, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/instances'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::InstanceListRepresentation
          command.response_class = Google::Apis::ComputeV1::InstanceList
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Performs a hard reset on the instance.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] zone
        #   The name of the zone for this request.
        # @param [String] instance
        #   Name of the instance scoping this request.
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
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def reset_instance(project, zone, instance, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/instances/{instance}/reset'
          command =  make_simple_command(:post, path, options)
          command.response_representation = Google::Apis::ComputeV1::OperationRepresentation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Sets the auto-delete flag for a disk attached to an instance.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] zone
        #   The name of the zone for this request.
        # @param [String] instance
        #   The instance name.
        # @param [Boolean] auto_delete
        #   Whether to auto-delete the disk when the instance is deleted.
        # @param [String] device_name
        #   The device name of the disk to modify.
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
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_disk_auto_delete_instance(project, zone, instance, auto_delete: nil, device_name: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/instances/{instance}/setDiskAutoDelete'
          command =  make_simple_command(:post, path, options)
          command.response_representation = Google::Apis::ComputeV1::OperationRepresentation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['autoDelete'] = auto_delete unless auto_delete.nil?
          command.query['deviceName'] = device_name unless device_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Sets metadata for the specified instance to the data included in the request.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] zone
        #   The name of the zone for this request.
        # @param [String] instance
        #   Name of the instance scoping this request.
        # @param [Google::Apis::ComputeV1::Metadata] metadata
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
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_metadata_instance(project, zone, instance, metadata = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/instances/{instance}/setMetadata'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::MetadataRepresentation
          command.request_object = metadata
          command.response_representation = Google::Apis::ComputeV1::OperationRepresentation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Sets an instance's scheduling options.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] zone
        #   The name of the zone for this request.
        # @param [String] instance
        #   Instance name.
        # @param [Google::Apis::ComputeV1::Scheduling] scheduling
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
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_scheduling_instance(project, zone, instance, scheduling = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/instances/{instance}/setScheduling'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::SchedulingRepresentation
          command.request_object = scheduling
          command.response_representation = Google::Apis::ComputeV1::OperationRepresentation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Sets tags for the specified instance to the data included in the request.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] zone
        #   The name of the zone for this request.
        # @param [String] instance
        #   Name of the instance scoping this request.
        # @param [Google::Apis::ComputeV1::Tags] tags
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
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_tags_instance(project, zone, instance, tags = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/instances/{instance}/setTags'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::TagsRepresentation
          command.request_object = tags
          command.response_representation = Google::Apis::ComputeV1::OperationRepresentation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # This method starts an instance that was stopped using the using the instances()
        # .stop method. For more information, see Restart an instance.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] zone
        #   The name of the zone for this request.
        # @param [String] instance
        #   Name of the instance resource to start.
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
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def start_instance(project, zone, instance, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/instances/{instance}/start'
          command =  make_simple_command(:post, path, options)
          command.response_representation = Google::Apis::ComputeV1::OperationRepresentation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # This method stops a running instance, shutting it down cleanly, and allows you
        # to restart the instance at a later time. Stopped instances do not incur per-
        # minute, virtual machine usage charges while they are stopped, but any
        # resources that the virtual machine is using, such as persistent disks and
        # static IP addresses,will continue to be charged until they are deleted. For
        # more information, see Stopping an instance.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] zone
        #   The name of the zone for this request.
        # @param [String] instance
        #   Name of the instance resource to start.
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
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def stop_instance(project, zone, instance, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/instances/{instance}/stop'
          command =  make_simple_command(:post, path, options)
          command.response_representation = Google::Apis::ComputeV1::OperationRepresentation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Returns the specified license resource.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] license
        #   Name of the license resource to return.
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
        # @yieldparam result [Google::Apis::ComputeV1::License] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::License]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_license(project, license, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/licenses/{license}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::LicenseRepresentation
          command.response_class = Google::Apis::ComputeV1::License
          command.params['project'] = project unless project.nil?
          command.params['license'] = license unless license.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Retrieves the list of machine type resources grouped by scope.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] filter
        #   Optional. Filter expression for filtering listed resources.
        # @param [Fixnum] max_results
        #   Optional. Maximum count of results to be returned. Maximum value is 500 and
        #   default value is 500.
        # @param [String] page_token
        #   Optional. Tag returned by a previous list request truncated by maxResults.
        #   Used to continue a previous list request.
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
        # @yieldparam result [Google::Apis::ComputeV1::MachineTypeAggregatedList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::MachineTypeAggregatedList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def aggregated_list_machine_type(project, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/aggregated/machineTypes'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::MachineTypeAggregatedListRepresentation
          command.response_class = Google::Apis::ComputeV1::MachineTypeAggregatedList
          command.params['project'] = project unless project.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Returns the specified machine type resource.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] zone
        #   The name of the zone for this request.
        # @param [String] machine_type
        #   Name of the machine type resource to return.
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
        # @yieldparam result [Google::Apis::ComputeV1::MachineType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::MachineType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_machine_type(project, zone, machine_type, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/machineTypes/{machineType}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::MachineTypeRepresentation
          command.response_class = Google::Apis::ComputeV1::MachineType
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['machineType'] = machine_type unless machine_type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Retrieves the list of machine type resources available to the specified
        # project.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] zone
        #   The name of the zone for this request.
        # @param [String] filter
        #   Optional. Filter expression for filtering listed resources.
        # @param [Fixnum] max_results
        #   Optional. Maximum count of results to be returned. Maximum value is 500 and
        #   default value is 500.
        # @param [String] page_token
        #   Optional. Tag returned by a previous list request truncated by maxResults.
        #   Used to continue a previous list request.
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
        # @yieldparam result [Google::Apis::ComputeV1::MachineTypeList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::MachineTypeList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_machine_types(project, zone, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/machineTypes'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::MachineTypeListRepresentation
          command.response_class = Google::Apis::ComputeV1::MachineTypeList
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Deletes the specified network resource.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] network
        #   Name of the network resource to delete.
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
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_network(project, network, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/networks/{network}'
          command =  make_simple_command(:delete, path, options)
          command.response_representation = Google::Apis::ComputeV1::OperationRepresentation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['network'] = network unless network.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Returns the specified network resource.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] network
        #   Name of the network resource to return.
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
        # @yieldparam result [Google::Apis::ComputeV1::Network] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Network]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_network(project, network, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/networks/{network}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::NetworkRepresentation
          command.response_class = Google::Apis::ComputeV1::Network
          command.params['project'] = project unless project.nil?
          command.params['network'] = network unless network.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Creates a network resource in the specified project using the data included in
        # the request.
        # @param [String] project
        #   Project ID for this request.
        # @param [Google::Apis::ComputeV1::Network] network
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
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_network(project, network = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/networks'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::NetworkRepresentation
          command.request_object = network
          command.response_representation = Google::Apis::ComputeV1::OperationRepresentation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Retrieves the list of network resources available to the specified project.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] filter
        #   Optional. Filter expression for filtering listed resources.
        # @param [Fixnum] max_results
        #   Optional. Maximum count of results to be returned. Maximum value is 500 and
        #   default value is 500.
        # @param [String] page_token
        #   Optional. Tag returned by a previous list request truncated by maxResults.
        #   Used to continue a previous list request.
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
        # @yieldparam result [Google::Apis::ComputeV1::NetworkList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::NetworkList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_networks(project, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/networks'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::NetworkListRepresentation
          command.response_class = Google::Apis::ComputeV1::NetworkList
          command.params['project'] = project unless project.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Returns the specified project resource.
        # @param [String] project
        #   Project ID for this request.
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
        # @yieldparam result [Google::Apis::ComputeV1::Project] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Project]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project(project, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::ProjectRepresentation
          command.response_class = Google::Apis::ComputeV1::Project
          command.params['project'] = project unless project.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Moves a persistent disk from one zone to another.
        # @param [String] project
        #   Project ID for this request.
        # @param [Google::Apis::ComputeV1::DiskMoveRequest] disk_move_request
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
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def move_disk_project(project, disk_move_request = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/moveDisk'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::DiskMoveRequestRepresentation
          command.request_object = disk_move_request
          command.response_representation = Google::Apis::ComputeV1::OperationRepresentation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Moves an instance and its attached persistent disks from one zone to another.
        # @param [String] project
        #   Project ID for this request.
        # @param [Google::Apis::ComputeV1::InstanceMoveRequest] instance_move_request
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
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def move_instance_project(project, instance_move_request = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/moveInstance'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::InstanceMoveRequestRepresentation
          command.request_object = instance_move_request
          command.response_representation = Google::Apis::ComputeV1::OperationRepresentation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Sets metadata common to all instances within the specified project using the
        # data included in the request.
        # @param [String] project
        #   Project ID for this request.
        # @param [Google::Apis::ComputeV1::Metadata] metadata
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
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_common_instance_metadata_project(project, metadata = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/setCommonInstanceMetadata'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::MetadataRepresentation
          command.request_object = metadata
          command.response_representation = Google::Apis::ComputeV1::OperationRepresentation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Enables the usage export feature and sets the usage export bucket where
        # reports are stored. If you provide an empty request body using this method,
        # the usage export feature will be disabled.
        # @param [String] project
        #   Project ID for this request.
        # @param [Google::Apis::ComputeV1::UsageExportLocation] usage_export_location
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
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_usage_export_bucket_project(project, usage_export_location = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/setUsageExportBucket'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::UsageExportLocationRepresentation
          command.request_object = usage_export_location
          command.response_representation = Google::Apis::ComputeV1::OperationRepresentation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Deletes the specified region-specific operation resource.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] region
        #   Name of the region scoping this request.
        # @param [String] operation
        #   Name of the operation resource to delete.
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
        def delete_region_operation(project, region, operation, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/regions/{region}/operations/{operation}'
          command =  make_simple_command(:delete, path, options)
          command.params['project'] = project unless project.nil?
          command.params['region'] = region unless region.nil?
          command.params['operation'] = operation unless operation.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Retrieves the specified region-specific operation resource.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] region
        #   Name of the zone scoping this request.
        # @param [String] operation
        #   Name of the operation resource to return.
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
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_region_operation(project, region, operation, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/regions/{region}/operations/{operation}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::OperationRepresentation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['region'] = region unless region.nil?
          command.params['operation'] = operation unless operation.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Retrieves the list of operation resources contained within the specified
        # region.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] region
        #   Name of the region scoping this request.
        # @param [String] filter
        #   Optional. Filter expression for filtering listed resources.
        # @param [Fixnum] max_results
        #   Optional. Maximum count of results to be returned. Maximum value is 500 and
        #   default value is 500.
        # @param [String] page_token
        #   Optional. Tag returned by a previous list request truncated by maxResults.
        #   Used to continue a previous list request.
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
        # @yieldparam result [Google::Apis::ComputeV1::OperationList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::OperationList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_region_operations(project, region, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/regions/{region}/operations'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::OperationListRepresentation
          command.response_class = Google::Apis::ComputeV1::OperationList
          command.params['project'] = project unless project.nil?
          command.params['region'] = region unless region.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Returns the specified region resource.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] region
        #   Name of the region resource to return.
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
        # @yieldparam result [Google::Apis::ComputeV1::Region] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Region]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_region(project, region, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/regions/{region}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::RegionRepresentation
          command.response_class = Google::Apis::ComputeV1::Region
          command.params['project'] = project unless project.nil?
          command.params['region'] = region unless region.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Retrieves the list of region resources available to the specified project.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] filter
        #   Optional. Filter expression for filtering listed resources.
        # @param [Fixnum] max_results
        #   Optional. Maximum count of results to be returned. Maximum value is 500 and
        #   default value is 500.
        # @param [String] page_token
        #   Optional. Tag returned by a previous list request truncated by maxResults.
        #   Used to continue a previous list request.
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
        # @yieldparam result [Google::Apis::ComputeV1::RegionList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::RegionList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_regions(project, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/regions'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::RegionListRepresentation
          command.response_class = Google::Apis::ComputeV1::RegionList
          command.params['project'] = project unless project.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Deletes the specified route resource.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] route
        #   Name of the route resource to delete.
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
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_route(project, route, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/routes/{route}'
          command =  make_simple_command(:delete, path, options)
          command.response_representation = Google::Apis::ComputeV1::OperationRepresentation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['route'] = route unless route.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Returns the specified route resource.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] route
        #   Name of the route resource to return.
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
        # @yieldparam result [Google::Apis::ComputeV1::Route] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Route]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_route(project, route, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/routes/{route}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::RouteRepresentation
          command.response_class = Google::Apis::ComputeV1::Route
          command.params['project'] = project unless project.nil?
          command.params['route'] = route unless route.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Creates a route resource in the specified project using the data included in
        # the request.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [Google::Apis::ComputeV1::Route] route
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
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_route(project, route = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/routes'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::RouteRepresentation
          command.request_object = route
          command.response_representation = Google::Apis::ComputeV1::OperationRepresentation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Retrieves the list of route resources available to the specified project.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] filter
        #   Optional. Filter expression for filtering listed resources.
        # @param [Fixnum] max_results
        #   Optional. Maximum count of results to be returned. Maximum value is 500 and
        #   default value is 500.
        # @param [String] page_token
        #   Optional. Tag returned by a previous list request truncated by maxResults.
        #   Used to continue a previous list request.
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
        # @yieldparam result [Google::Apis::ComputeV1::RouteList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::RouteList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_routes(project, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/routes'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::RouteListRepresentation
          command.response_class = Google::Apis::ComputeV1::RouteList
          command.params['project'] = project unless project.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Deletes the specified persistent disk snapshot resource.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] snapshot
        #   Name of the persistent disk snapshot resource to delete.
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
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_snapshot(project, snapshot, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/snapshots/{snapshot}'
          command =  make_simple_command(:delete, path, options)
          command.response_representation = Google::Apis::ComputeV1::OperationRepresentation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['snapshot'] = snapshot unless snapshot.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Returns the specified persistent disk snapshot resource.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] snapshot
        #   Name of the persistent disk snapshot resource to return.
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
        # @yieldparam result [Google::Apis::ComputeV1::Snapshot] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Snapshot]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_snapshot(project, snapshot, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/snapshots/{snapshot}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::SnapshotRepresentation
          command.response_class = Google::Apis::ComputeV1::Snapshot
          command.params['project'] = project unless project.nil?
          command.params['snapshot'] = snapshot unless snapshot.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Retrieves the list of persistent disk snapshot resources contained within the
        # specified project.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] filter
        #   Optional. Filter expression for filtering listed resources.
        # @param [Fixnum] max_results
        #   Optional. Maximum count of results to be returned. Maximum value is 500 and
        #   default value is 500.
        # @param [String] page_token
        #   Optional. Tag returned by a previous list request truncated by maxResults.
        #   Used to continue a previous list request.
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
        # @yieldparam result [Google::Apis::ComputeV1::SnapshotList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::SnapshotList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_snapshots(project, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/snapshots'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::SnapshotListRepresentation
          command.response_class = Google::Apis::ComputeV1::SnapshotList
          command.params['project'] = project unless project.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Deletes the specified TargetHttpProxy resource.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] target_http_proxy
        #   Name of the TargetHttpProxy resource to delete.
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
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_target_http_proxy(project, target_http_proxy, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/targetHttpProxies/{targetHttpProxy}'
          command =  make_simple_command(:delete, path, options)
          command.response_representation = Google::Apis::ComputeV1::OperationRepresentation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['targetHttpProxy'] = target_http_proxy unless target_http_proxy.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Returns the specified TargetHttpProxy resource.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] target_http_proxy
        #   Name of the TargetHttpProxy resource to return.
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
        # @yieldparam result [Google::Apis::ComputeV1::TargetHttpProxy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::TargetHttpProxy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_target_http_proxy(project, target_http_proxy, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/targetHttpProxies/{targetHttpProxy}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::TargetHttpProxyRepresentation
          command.response_class = Google::Apis::ComputeV1::TargetHttpProxy
          command.params['project'] = project unless project.nil?
          command.params['targetHttpProxy'] = target_http_proxy unless target_http_proxy.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Creates a TargetHttpProxy resource in the specified project using the data
        # included in the request.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [Google::Apis::ComputeV1::TargetHttpProxy] target_http_proxy
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
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_target_http_proxy(project, target_http_proxy = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/targetHttpProxies'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::TargetHttpProxyRepresentation
          command.request_object = target_http_proxy
          command.response_representation = Google::Apis::ComputeV1::OperationRepresentation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Retrieves the list of TargetHttpProxy resources available to the specified
        # project.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] filter
        #   Optional. Filter expression for filtering listed resources.
        # @param [Fixnum] max_results
        #   Optional. Maximum count of results to be returned. Maximum value is 500 and
        #   default value is 500.
        # @param [String] page_token
        #   Optional. Tag returned by a previous list request truncated by maxResults.
        #   Used to continue a previous list request.
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
        # @yieldparam result [Google::Apis::ComputeV1::TargetHttpProxyList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::TargetHttpProxyList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_target_http_proxies(project, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/targetHttpProxies'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::TargetHttpProxyListRepresentation
          command.response_class = Google::Apis::ComputeV1::TargetHttpProxyList
          command.params['project'] = project unless project.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Changes the URL map for TargetHttpProxy.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] target_http_proxy
        #   Name of the TargetHttpProxy resource whose URL map is to be set.
        # @param [Google::Apis::ComputeV1::UrlMapReference] url_map_reference
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
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_url_map_target_http_proxy(project, target_http_proxy, url_map_reference = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/targetHttpProxies/{targetHttpProxy}/setUrlMap'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::UrlMapReferenceRepresentation
          command.request_object = url_map_reference
          command.response_representation = Google::Apis::ComputeV1::OperationRepresentation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['targetHttpProxy'] = target_http_proxy unless target_http_proxy.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Retrieves the list of target instances grouped by scope.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] filter
        #   Optional. Filter expression for filtering listed resources.
        # @param [Fixnum] max_results
        #   Optional. Maximum count of results to be returned. Maximum value is 500 and
        #   default value is 500.
        # @param [String] page_token
        #   Optional. Tag returned by a previous list request truncated by maxResults.
        #   Used to continue a previous list request.
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
        # @yieldparam result [Google::Apis::ComputeV1::TargetInstanceAggregatedList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::TargetInstanceAggregatedList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def aggregated_list_target_instance(project, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/aggregated/targetInstances'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::TargetInstanceAggregatedListRepresentation
          command.response_class = Google::Apis::ComputeV1::TargetInstanceAggregatedList
          command.params['project'] = project unless project.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Deletes the specified TargetInstance resource.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] zone
        #   Name of the zone scoping this request.
        # @param [String] target_instance
        #   Name of the TargetInstance resource to delete.
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
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_target_instance(project, zone, target_instance, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/targetInstances/{targetInstance}'
          command =  make_simple_command(:delete, path, options)
          command.response_representation = Google::Apis::ComputeV1::OperationRepresentation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['targetInstance'] = target_instance unless target_instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Returns the specified TargetInstance resource.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] zone
        #   Name of the zone scoping this request.
        # @param [String] target_instance
        #   Name of the TargetInstance resource to return.
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
        # @yieldparam result [Google::Apis::ComputeV1::TargetInstance] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::TargetInstance]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_target_instance(project, zone, target_instance, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/targetInstances/{targetInstance}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::TargetInstanceRepresentation
          command.response_class = Google::Apis::ComputeV1::TargetInstance
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['targetInstance'] = target_instance unless target_instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Creates a TargetInstance resource in the specified project and zone using the
        # data included in the request.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] zone
        #   Name of the zone scoping this request.
        # @param [Google::Apis::ComputeV1::TargetInstance] target_instance
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
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_target_instance(project, zone, target_instance = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/targetInstances'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::TargetInstanceRepresentation
          command.request_object = target_instance
          command.response_representation = Google::Apis::ComputeV1::OperationRepresentation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Retrieves the list of TargetInstance resources available to the specified
        # project and zone.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] zone
        #   Name of the zone scoping this request.
        # @param [String] filter
        #   Optional. Filter expression for filtering listed resources.
        # @param [Fixnum] max_results
        #   Optional. Maximum count of results to be returned. Maximum value is 500 and
        #   default value is 500.
        # @param [String] page_token
        #   Optional. Tag returned by a previous list request truncated by maxResults.
        #   Used to continue a previous list request.
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
        # @yieldparam result [Google::Apis::ComputeV1::TargetInstanceList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::TargetInstanceList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_target_instances(project, zone, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/targetInstances'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::TargetInstanceListRepresentation
          command.response_class = Google::Apis::ComputeV1::TargetInstanceList
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Adds health check URL to targetPool.
        # @param [String] project
        #   
        # @param [String] region
        #   Name of the region scoping this request.
        # @param [String] target_pool
        #   Name of the TargetPool resource to which health_check_url is to be added.
        # @param [Google::Apis::ComputeV1::TargetPoolsAddHealthCheckRequest] target_pools_add_health_check_request
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
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def add_health_check_target_pool(project, region, target_pool, target_pools_add_health_check_request = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/regions/{region}/targetPools/{targetPool}/addHealthCheck'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::TargetPoolsAddHealthCheckRequestRepresentation
          command.request_object = target_pools_add_health_check_request
          command.response_representation = Google::Apis::ComputeV1::OperationRepresentation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['region'] = region unless region.nil?
          command.params['targetPool'] = target_pool unless target_pool.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Adds instance url to targetPool.
        # @param [String] project
        #   
        # @param [String] region
        #   Name of the region scoping this request.
        # @param [String] target_pool
        #   Name of the TargetPool resource to which instance_url is to be added.
        # @param [Google::Apis::ComputeV1::TargetPoolsAddInstanceRequest] target_pools_add_instance_request
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
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def add_instance_target_pool(project, region, target_pool, target_pools_add_instance_request = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/regions/{region}/targetPools/{targetPool}/addInstance'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::TargetPoolsAddInstanceRequestRepresentation
          command.request_object = target_pools_add_instance_request
          command.response_representation = Google::Apis::ComputeV1::OperationRepresentation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['region'] = region unless region.nil?
          command.params['targetPool'] = target_pool unless target_pool.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Retrieves the list of target pools grouped by scope.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] filter
        #   Optional. Filter expression for filtering listed resources.
        # @param [Fixnum] max_results
        #   Optional. Maximum count of results to be returned. Maximum value is 500 and
        #   default value is 500.
        # @param [String] page_token
        #   Optional. Tag returned by a previous list request truncated by maxResults.
        #   Used to continue a previous list request.
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
        # @yieldparam result [Google::Apis::ComputeV1::TargetPoolAggregatedList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::TargetPoolAggregatedList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def aggregated_list_target_pool(project, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/aggregated/targetPools'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::TargetPoolAggregatedListRepresentation
          command.response_class = Google::Apis::ComputeV1::TargetPoolAggregatedList
          command.params['project'] = project unless project.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Deletes the specified TargetPool resource.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] region
        #   Name of the region scoping this request.
        # @param [String] target_pool
        #   Name of the TargetPool resource to delete.
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
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_target_pool(project, region, target_pool, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/regions/{region}/targetPools/{targetPool}'
          command =  make_simple_command(:delete, path, options)
          command.response_representation = Google::Apis::ComputeV1::OperationRepresentation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['region'] = region unless region.nil?
          command.params['targetPool'] = target_pool unless target_pool.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Returns the specified TargetPool resource.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] region
        #   Name of the region scoping this request.
        # @param [String] target_pool
        #   Name of the TargetPool resource to return.
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
        # @yieldparam result [Google::Apis::ComputeV1::TargetPool] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::TargetPool]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_target_pool(project, region, target_pool, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/regions/{region}/targetPools/{targetPool}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::TargetPoolRepresentation
          command.response_class = Google::Apis::ComputeV1::TargetPool
          command.params['project'] = project unless project.nil?
          command.params['region'] = region unless region.nil?
          command.params['targetPool'] = target_pool unless target_pool.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Gets the most recent health check results for each IP for the given instance
        # that is referenced by given TargetPool.
        # @param [String] project
        #   
        # @param [String] region
        #   Name of the region scoping this request.
        # @param [String] target_pool
        #   Name of the TargetPool resource to which the queried instance belongs.
        # @param [Google::Apis::ComputeV1::InstanceReference] instance_reference
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
        # @yieldparam result [Google::Apis::ComputeV1::TargetPoolInstanceHealth] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::TargetPoolInstanceHealth]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_health_target_pool(project, region, target_pool, instance_reference = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/regions/{region}/targetPools/{targetPool}/getHealth'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::InstanceReferenceRepresentation
          command.request_object = instance_reference
          command.response_representation = Google::Apis::ComputeV1::TargetPoolInstanceHealthRepresentation
          command.response_class = Google::Apis::ComputeV1::TargetPoolInstanceHealth
          command.params['project'] = project unless project.nil?
          command.params['region'] = region unless region.nil?
          command.params['targetPool'] = target_pool unless target_pool.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Creates a TargetPool resource in the specified project and region using the
        # data included in the request.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] region
        #   Name of the region scoping this request.
        # @param [Google::Apis::ComputeV1::TargetPool] target_pool
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
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_target_pool(project, region, target_pool = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/regions/{region}/targetPools'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::TargetPoolRepresentation
          command.request_object = target_pool
          command.response_representation = Google::Apis::ComputeV1::OperationRepresentation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['region'] = region unless region.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Retrieves the list of TargetPool resources available to the specified project
        # and region.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] region
        #   Name of the region scoping this request.
        # @param [String] filter
        #   Optional. Filter expression for filtering listed resources.
        # @param [Fixnum] max_results
        #   Optional. Maximum count of results to be returned. Maximum value is 500 and
        #   default value is 500.
        # @param [String] page_token
        #   Optional. Tag returned by a previous list request truncated by maxResults.
        #   Used to continue a previous list request.
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
        # @yieldparam result [Google::Apis::ComputeV1::TargetPoolList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::TargetPoolList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_target_pools(project, region, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/regions/{region}/targetPools'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::TargetPoolListRepresentation
          command.response_class = Google::Apis::ComputeV1::TargetPoolList
          command.params['project'] = project unless project.nil?
          command.params['region'] = region unless region.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Removes health check URL from targetPool.
        # @param [String] project
        #   
        # @param [String] region
        #   Name of the region scoping this request.
        # @param [String] target_pool
        #   Name of the TargetPool resource to which health_check_url is to be removed.
        # @param [Google::Apis::ComputeV1::TargetPoolsRemoveHealthCheckRequest] target_pools_remove_health_check_request
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
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def remove_health_check_target_pool(project, region, target_pool, target_pools_remove_health_check_request = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/regions/{region}/targetPools/{targetPool}/removeHealthCheck'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::TargetPoolsRemoveHealthCheckRequestRepresentation
          command.request_object = target_pools_remove_health_check_request
          command.response_representation = Google::Apis::ComputeV1::OperationRepresentation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['region'] = region unless region.nil?
          command.params['targetPool'] = target_pool unless target_pool.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Removes instance URL from targetPool.
        # @param [String] project
        #   
        # @param [String] region
        #   Name of the region scoping this request.
        # @param [String] target_pool
        #   Name of the TargetPool resource to which instance_url is to be removed.
        # @param [Google::Apis::ComputeV1::TargetPoolsRemoveInstanceRequest] target_pools_remove_instance_request
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
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def remove_instance_target_pool(project, region, target_pool, target_pools_remove_instance_request = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/regions/{region}/targetPools/{targetPool}/removeInstance'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::TargetPoolsRemoveInstanceRequestRepresentation
          command.request_object = target_pools_remove_instance_request
          command.response_representation = Google::Apis::ComputeV1::OperationRepresentation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['region'] = region unless region.nil?
          command.params['targetPool'] = target_pool unless target_pool.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Changes backup pool configurations.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] region
        #   Name of the region scoping this request.
        # @param [String] target_pool
        #   Name of the TargetPool resource for which the backup is to be set.
        # @param [Google::Apis::ComputeV1::TargetReference] target_reference
        #   
        # @param [Float] failover_ratio
        #   New failoverRatio value for the containing target pool.
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
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_backup_target_pool(project, region, target_pool, target_reference = nil, failover_ratio: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/regions/{region}/targetPools/{targetPool}/setBackup'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::TargetReferenceRepresentation
          command.request_object = target_reference
          command.response_representation = Google::Apis::ComputeV1::OperationRepresentation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['region'] = region unless region.nil?
          command.params['targetPool'] = target_pool unless target_pool.nil?
          command.query['failoverRatio'] = failover_ratio unless failover_ratio.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Retrieves the list of target VPN gateways grouped by scope.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] filter
        #   Optional. Filter expression for filtering listed resources.
        # @param [Fixnum] max_results
        #   Optional. Maximum count of results to be returned. Maximum value is 500 and
        #   default value is 500.
        # @param [String] page_token
        #   Optional. Tag returned by a previous list request truncated by maxResults.
        #   Used to continue a previous list request.
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
        # @yieldparam result [Google::Apis::ComputeV1::TargetVpnGatewayAggregatedList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::TargetVpnGatewayAggregatedList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def aggregated_list_target_vpn_gateway(project, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/aggregated/targetVpnGateways'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::TargetVpnGatewayAggregatedListRepresentation
          command.response_class = Google::Apis::ComputeV1::TargetVpnGatewayAggregatedList
          command.params['project'] = project unless project.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Deletes the specified TargetVpnGateway resource.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] region
        #   The name of the region for this request.
        # @param [String] target_vpn_gateway
        #   Name of the TargetVpnGateway resource to delete.
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
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_target_vpn_gateway(project, region, target_vpn_gateway, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/regions/{region}/targetVpnGateways/{targetVpnGateway}'
          command =  make_simple_command(:delete, path, options)
          command.response_representation = Google::Apis::ComputeV1::OperationRepresentation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['region'] = region unless region.nil?
          command.params['targetVpnGateway'] = target_vpn_gateway unless target_vpn_gateway.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Returns the specified TargetVpnGateway resource.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] region
        #   The name of the region for this request.
        # @param [String] target_vpn_gateway
        #   Name of the TargetVpnGateway resource to return.
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
        # @yieldparam result [Google::Apis::ComputeV1::TargetVpnGateway] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::TargetVpnGateway]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_target_vpn_gateway(project, region, target_vpn_gateway, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/regions/{region}/targetVpnGateways/{targetVpnGateway}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::TargetVpnGatewayRepresentation
          command.response_class = Google::Apis::ComputeV1::TargetVpnGateway
          command.params['project'] = project unless project.nil?
          command.params['region'] = region unless region.nil?
          command.params['targetVpnGateway'] = target_vpn_gateway unless target_vpn_gateway.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Creates a TargetVpnGateway resource in the specified project and region using
        # the data included in the request.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] region
        #   The name of the region for this request.
        # @param [Google::Apis::ComputeV1::TargetVpnGateway] target_vpn_gateway
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
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_target_vpn_gateway(project, region, target_vpn_gateway = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/regions/{region}/targetVpnGateways'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::TargetVpnGatewayRepresentation
          command.request_object = target_vpn_gateway
          command.response_representation = Google::Apis::ComputeV1::OperationRepresentation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['region'] = region unless region.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Retrieves the list of TargetVpnGateway resources available to the specified
        # project and region.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] region
        #   The name of the region for this request.
        # @param [String] filter
        #   Optional. Filter expression for filtering listed resources.
        # @param [Fixnum] max_results
        #   Optional. Maximum count of results to be returned. Maximum value is 500 and
        #   default value is 500.
        # @param [String] page_token
        #   Optional. Tag returned by a previous list request truncated by maxResults.
        #   Used to continue a previous list request.
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
        # @yieldparam result [Google::Apis::ComputeV1::TargetVpnGatewayList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::TargetVpnGatewayList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_target_vpn_gateways(project, region, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/regions/{region}/targetVpnGateways'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::TargetVpnGatewayListRepresentation
          command.response_class = Google::Apis::ComputeV1::TargetVpnGatewayList
          command.params['project'] = project unless project.nil?
          command.params['region'] = region unless region.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Deletes the specified UrlMap resource.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] url_map
        #   Name of the UrlMap resource to delete.
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
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_url_map(project, url_map, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/urlMaps/{urlMap}'
          command =  make_simple_command(:delete, path, options)
          command.response_representation = Google::Apis::ComputeV1::OperationRepresentation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['urlMap'] = url_map unless url_map.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Returns the specified UrlMap resource.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] url_map
        #   Name of the UrlMap resource to return.
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
        # @yieldparam result [Google::Apis::ComputeV1::UrlMap] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::UrlMap]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_url_map(project, url_map, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/urlMaps/{urlMap}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::UrlMapRepresentation
          command.response_class = Google::Apis::ComputeV1::UrlMap
          command.params['project'] = project unless project.nil?
          command.params['urlMap'] = url_map unless url_map.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Creates a UrlMap resource in the specified project using the data included in
        # the request.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [Google::Apis::ComputeV1::UrlMap] url_map
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
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_url_map(project, url_map = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/urlMaps'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::UrlMapRepresentation
          command.request_object = url_map
          command.response_representation = Google::Apis::ComputeV1::OperationRepresentation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Retrieves the list of UrlMap resources available to the specified project.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] filter
        #   Optional. Filter expression for filtering listed resources.
        # @param [Fixnum] max_results
        #   Optional. Maximum count of results to be returned. Maximum value is 500 and
        #   default value is 500.
        # @param [String] page_token
        #   Optional. Tag returned by a previous list request truncated by maxResults.
        #   Used to continue a previous list request.
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
        # @yieldparam result [Google::Apis::ComputeV1::UrlMapList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::UrlMapList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_url_maps(project, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/urlMaps'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::UrlMapListRepresentation
          command.response_class = Google::Apis::ComputeV1::UrlMapList
          command.params['project'] = project unless project.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Update the entire content of the UrlMap resource. This method supports patch
        # semantics.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] url_map
        #   Name of the UrlMap resource to update.
        # @param [Google::Apis::ComputeV1::UrlMap] url_map_object
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
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_url_map(project, url_map, url_map_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/urlMaps/{urlMap}'
          command =  make_simple_command(:patch, path, options)
          command.request_representation = Google::Apis::ComputeV1::UrlMapRepresentation
          command.request_object = url_map_object
          command.response_representation = Google::Apis::ComputeV1::OperationRepresentation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['urlMap'] = url_map unless url_map.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Update the entire content of the UrlMap resource.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] url_map
        #   Name of the UrlMap resource to update.
        # @param [Google::Apis::ComputeV1::UrlMap] url_map_object
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
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_url_map(project, url_map, url_map_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/urlMaps/{urlMap}'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::ComputeV1::UrlMapRepresentation
          command.request_object = url_map_object
          command.response_representation = Google::Apis::ComputeV1::OperationRepresentation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['urlMap'] = url_map unless url_map.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Run static validation for the UrlMap. In particular, the tests of the provided
        # UrlMap will be run. Calling this method does NOT create the UrlMap.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] url_map
        #   Name of the UrlMap resource to be validated as.
        # @param [Google::Apis::ComputeV1::UrlMapsValidateRequest] url_maps_validate_request
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
        # @yieldparam result [Google::Apis::ComputeV1::UrlMapsValidateResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::UrlMapsValidateResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def validate_url_map(project, url_map, url_maps_validate_request = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/urlMaps/{urlMap}/validate'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::UrlMapsValidateRequestRepresentation
          command.request_object = url_maps_validate_request
          command.response_representation = Google::Apis::ComputeV1::UrlMapsValidateResponseRepresentation
          command.response_class = Google::Apis::ComputeV1::UrlMapsValidateResponse
          command.params['project'] = project unless project.nil?
          command.params['urlMap'] = url_map unless url_map.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Retrieves the list of VPN tunnels grouped by scope.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] filter
        #   Optional. Filter expression for filtering listed resources.
        # @param [Fixnum] max_results
        #   Optional. Maximum count of results to be returned. Maximum value is 500 and
        #   default value is 500.
        # @param [String] page_token
        #   Optional. Tag returned by a previous list request truncated by maxResults.
        #   Used to continue a previous list request.
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
        # @yieldparam result [Google::Apis::ComputeV1::VpnTunnelAggregatedList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::VpnTunnelAggregatedList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def aggregated_list_vpn_tunnel(project, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/aggregated/vpnTunnels'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::VpnTunnelAggregatedListRepresentation
          command.response_class = Google::Apis::ComputeV1::VpnTunnelAggregatedList
          command.params['project'] = project unless project.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Deletes the specified VpnTunnel resource.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] region
        #   The name of the region for this request.
        # @param [String] vpn_tunnel
        #   Name of the VpnTunnel resource to delete.
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
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_vpn_tunnel(project, region, vpn_tunnel, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/regions/{region}/vpnTunnels/{vpnTunnel}'
          command =  make_simple_command(:delete, path, options)
          command.response_representation = Google::Apis::ComputeV1::OperationRepresentation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['region'] = region unless region.nil?
          command.params['vpnTunnel'] = vpn_tunnel unless vpn_tunnel.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Returns the specified VpnTunnel resource.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] region
        #   The name of the region for this request.
        # @param [String] vpn_tunnel
        #   Name of the VpnTunnel resource to return.
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
        # @yieldparam result [Google::Apis::ComputeV1::VpnTunnel] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::VpnTunnel]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_vpn_tunnel(project, region, vpn_tunnel, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/regions/{region}/vpnTunnels/{vpnTunnel}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::VpnTunnelRepresentation
          command.response_class = Google::Apis::ComputeV1::VpnTunnel
          command.params['project'] = project unless project.nil?
          command.params['region'] = region unless region.nil?
          command.params['vpnTunnel'] = vpn_tunnel unless vpn_tunnel.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Creates a VpnTunnel resource in the specified project and region using the
        # data included in the request.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] region
        #   The name of the region for this request.
        # @param [Google::Apis::ComputeV1::VpnTunnel] vpn_tunnel
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
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_vpn_tunnel(project, region, vpn_tunnel = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/regions/{region}/vpnTunnels'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::VpnTunnelRepresentation
          command.request_object = vpn_tunnel
          command.response_representation = Google::Apis::ComputeV1::OperationRepresentation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['region'] = region unless region.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Retrieves the list of VpnTunnel resources contained in the specified project
        # and region.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] region
        #   The name of the region for this request.
        # @param [String] filter
        #   Optional. Filter expression for filtering listed resources.
        # @param [Fixnum] max_results
        #   Optional. Maximum count of results to be returned. Maximum value is 500 and
        #   default value is 500.
        # @param [String] page_token
        #   Optional. Tag returned by a previous list request truncated by maxResults.
        #   Used to continue a previous list request.
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
        # @yieldparam result [Google::Apis::ComputeV1::VpnTunnelList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::VpnTunnelList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_vpn_tunnels(project, region, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/regions/{region}/vpnTunnels'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::VpnTunnelListRepresentation
          command.response_class = Google::Apis::ComputeV1::VpnTunnelList
          command.params['project'] = project unless project.nil?
          command.params['region'] = region unless region.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Deletes the specified zone-specific operation resource.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] zone
        #   Name of the zone scoping this request.
        # @param [String] operation
        #   Name of the operation resource to delete.
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
        def delete_zone_operation(project, zone, operation, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/operations/{operation}'
          command =  make_simple_command(:delete, path, options)
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['operation'] = operation unless operation.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Retrieves the specified zone-specific operation resource.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] zone
        #   Name of the zone scoping this request.
        # @param [String] operation
        #   Name of the operation resource to return.
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
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_zone_operation(project, zone, operation, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/operations/{operation}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::OperationRepresentation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['operation'] = operation unless operation.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Retrieves the list of operation resources contained within the specified zone.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] zone
        #   Name of the zone scoping this request.
        # @param [String] filter
        #   Optional. Filter expression for filtering listed resources.
        # @param [Fixnum] max_results
        #   Optional. Maximum count of results to be returned. Maximum value is 500 and
        #   default value is 500.
        # @param [String] page_token
        #   Optional. Tag returned by a previous list request truncated by maxResults.
        #   Used to continue a previous list request.
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
        # @yieldparam result [Google::Apis::ComputeV1::OperationList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::OperationList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_zone_operations(project, zone, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/operations'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::OperationListRepresentation
          command.response_class = Google::Apis::ComputeV1::OperationList
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Returns the specified zone resource.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] zone
        #   Name of the zone resource to return.
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
        # @yieldparam result [Google::Apis::ComputeV1::Zone] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Zone]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_zone(project, zone, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::ZoneRepresentation
          command.response_class = Google::Apis::ComputeV1::Zone
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Retrieves the list of zone resources available to the specified project.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] filter
        #   Optional. Filter expression for filtering listed resources.
        # @param [Fixnum] max_results
        #   Optional. Maximum count of results to be returned. Maximum value is 500 and
        #   default value is 500.
        # @param [String] page_token
        #   Optional. Tag returned by a previous list request truncated by maxResults.
        #   Used to continue a previous list request.
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
        # @yieldparam result [Google::Apis::ComputeV1::ZoneList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::ZoneList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_zones(project, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::ZoneListRepresentation
          command.response_class = Google::Apis::ComputeV1::ZoneList
          command.params['project'] = project unless project.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
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
