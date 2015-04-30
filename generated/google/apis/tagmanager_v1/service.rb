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
    module TagmanagerV1
      # Tag Manager API
      #
      # API for accessing Tag Manager accounts and containers.
      #
      # @example
      #    require 'google/apis/tagmanager_v1'
      #
      #    Tagmanager = Google::Apis::TagmanagerV1 # Alias the module
      #    service = Tagmanager::TagManagerService.new
      #
      # @see https://developers.google.com/tag-manager/api/v1/
      class TagManagerService < Google::Apis::Core::BaseService
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
          super('https://www.googleapis.com/', 'tagmanager/v1/')
        end
        
        # Gets a GTM Account.
        # @param [String] account_id
        #   The GTM Account ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV1::Account] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV1::Account]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account(account_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'accounts/{accountId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::TagmanagerV1::Account::Representation
          command.response_class = Google::Apis::TagmanagerV1::Account
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all GTM Accounts that a user has access to.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV1::ListAccountsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV1::ListAccountsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_accounts(fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'accounts'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::TagmanagerV1::ListAccountsResponse::Representation
          command.response_class = Google::Apis::TagmanagerV1::ListAccountsResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a GTM Account.
        # @param [String] account_id
        #   The GTM Account ID.
        # @param [Google::Apis::TagmanagerV1::Account] account_object
        # @param [String] fingerprint
        #   When provided, this fingerprint must match the fingerprint of the account in
        #   storage.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV1::Account] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV1::Account]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_account(account_id, account_object = nil, fingerprint: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'accounts/{accountId}'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::TagmanagerV1::Account::Representation
          command.request_object = account_object
          command.response_representation = Google::Apis::TagmanagerV1::Account::Representation
          command.response_class = Google::Apis::TagmanagerV1::Account
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['fingerprint'] = fingerprint unless fingerprint.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Container.
        # @param [String] account_id
        #   The GTM Account ID.
        # @param [Google::Apis::TagmanagerV1::Container] container_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV1::Container] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV1::Container]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_account_container(account_id, container_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'accounts/{accountId}/containers'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::TagmanagerV1::Container::Representation
          command.request_object = container_object
          command.response_representation = Google::Apis::TagmanagerV1::Container::Representation
          command.response_class = Google::Apis::TagmanagerV1::Container
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a Container.
        # @param [String] account_id
        #   The GTM Account ID.
        # @param [String] container_id
        #   The GTM Container ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
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
        def delete_account_container(account_id, container_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'accounts/{accountId}/containers/{containerId}'
          command =  make_simple_command(:delete, path, options)
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['containerId'] = container_id unless container_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a Container.
        # @param [String] account_id
        #   The GTM Account ID.
        # @param [String] container_id
        #   The GTM Container ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV1::Container] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV1::Container]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_container(account_id, container_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'accounts/{accountId}/containers/{containerId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::TagmanagerV1::Container::Representation
          command.response_class = Google::Apis::TagmanagerV1::Container
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['containerId'] = container_id unless container_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all Containers that belongs to a GTM Account.
        # @param [String] account_id
        #   The GTM Account ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV1::ListContainersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV1::ListContainersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_containers(account_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'accounts/{accountId}/containers'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::TagmanagerV1::ListContainersResponse::Representation
          command.response_class = Google::Apis::TagmanagerV1::ListContainersResponse
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a Container.
        # @param [String] account_id
        #   The GTM Account ID.
        # @param [String] container_id
        #   The GTM Container ID.
        # @param [Google::Apis::TagmanagerV1::Container] container_object
        # @param [String] fingerprint
        #   When provided, this fingerprint must match the fingerprint of the container in
        #   storage.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV1::Container] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV1::Container]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_account_container(account_id, container_id, container_object = nil, fingerprint: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'accounts/{accountId}/containers/{containerId}'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::TagmanagerV1::Container::Representation
          command.request_object = container_object
          command.response_representation = Google::Apis::TagmanagerV1::Container::Representation
          command.response_class = Google::Apis::TagmanagerV1::Container
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['containerId'] = container_id unless container_id.nil?
          command.query['fingerprint'] = fingerprint unless fingerprint.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a GTM Macro.
        # @param [String] account_id
        #   The GTM Account ID.
        # @param [String] container_id
        #   The GTM Container ID.
        # @param [Google::Apis::TagmanagerV1::Macro] macro_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV1::Macro] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV1::Macro]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_account_container_macro(account_id, container_id, macro_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'accounts/{accountId}/containers/{containerId}/macros'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::TagmanagerV1::Macro::Representation
          command.request_object = macro_object
          command.response_representation = Google::Apis::TagmanagerV1::Macro::Representation
          command.response_class = Google::Apis::TagmanagerV1::Macro
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['containerId'] = container_id unless container_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a GTM Macro.
        # @param [String] account_id
        #   The GTM Account ID.
        # @param [String] container_id
        #   The GTM Container ID.
        # @param [String] macro_id
        #   The GTM Macro ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
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
        def delete_account_container_macro(account_id, container_id, macro_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'accounts/{accountId}/containers/{containerId}/macros/{macroId}'
          command =  make_simple_command(:delete, path, options)
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['containerId'] = container_id unless container_id.nil?
          command.params['macroId'] = macro_id unless macro_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a GTM Macro.
        # @param [String] account_id
        #   The GTM Account ID.
        # @param [String] container_id
        #   The GTM Container ID.
        # @param [String] macro_id
        #   The GTM Macro ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV1::Macro] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV1::Macro]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_container_macro(account_id, container_id, macro_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'accounts/{accountId}/containers/{containerId}/macros/{macroId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::TagmanagerV1::Macro::Representation
          command.response_class = Google::Apis::TagmanagerV1::Macro
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['containerId'] = container_id unless container_id.nil?
          command.params['macroId'] = macro_id unless macro_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all GTM Macros of a Container.
        # @param [String] account_id
        #   The GTM Account ID.
        # @param [String] container_id
        #   The GTM Container ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV1::ListMacrosResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV1::ListMacrosResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_container_macros(account_id, container_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'accounts/{accountId}/containers/{containerId}/macros'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::TagmanagerV1::ListMacrosResponse::Representation
          command.response_class = Google::Apis::TagmanagerV1::ListMacrosResponse
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['containerId'] = container_id unless container_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a GTM Macro.
        # @param [String] account_id
        #   The GTM Account ID.
        # @param [String] container_id
        #   The GTM Container ID.
        # @param [String] macro_id
        #   The GTM Macro ID.
        # @param [Google::Apis::TagmanagerV1::Macro] macro_object
        # @param [String] fingerprint
        #   When provided, this fingerprint must match the fingerprint of the macro in
        #   storage.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV1::Macro] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV1::Macro]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_account_container_macro(account_id, container_id, macro_id, macro_object = nil, fingerprint: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'accounts/{accountId}/containers/{containerId}/macros/{macroId}'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::TagmanagerV1::Macro::Representation
          command.request_object = macro_object
          command.response_representation = Google::Apis::TagmanagerV1::Macro::Representation
          command.response_class = Google::Apis::TagmanagerV1::Macro
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['containerId'] = container_id unless container_id.nil?
          command.params['macroId'] = macro_id unless macro_id.nil?
          command.query['fingerprint'] = fingerprint unless fingerprint.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a GTM Rule.
        # @param [String] account_id
        #   The GTM Account ID.
        # @param [String] container_id
        #   The GTM Container ID.
        # @param [Google::Apis::TagmanagerV1::Rule] rule_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV1::Rule] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV1::Rule]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_account_container_rule(account_id, container_id, rule_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'accounts/{accountId}/containers/{containerId}/rules'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::TagmanagerV1::Rule::Representation
          command.request_object = rule_object
          command.response_representation = Google::Apis::TagmanagerV1::Rule::Representation
          command.response_class = Google::Apis::TagmanagerV1::Rule
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['containerId'] = container_id unless container_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a GTM Rule.
        # @param [String] account_id
        #   The GTM Account ID.
        # @param [String] container_id
        #   The GTM Container ID.
        # @param [String] rule_id
        #   The GTM Rule ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
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
        def delete_account_container_rule(account_id, container_id, rule_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'accounts/{accountId}/containers/{containerId}/rules/{ruleId}'
          command =  make_simple_command(:delete, path, options)
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['containerId'] = container_id unless container_id.nil?
          command.params['ruleId'] = rule_id unless rule_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a GTM Rule.
        # @param [String] account_id
        #   The GTM Account ID.
        # @param [String] container_id
        #   The GTM Container ID.
        # @param [String] rule_id
        #   The GTM Rule ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV1::Rule] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV1::Rule]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_container_rule(account_id, container_id, rule_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'accounts/{accountId}/containers/{containerId}/rules/{ruleId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::TagmanagerV1::Rule::Representation
          command.response_class = Google::Apis::TagmanagerV1::Rule
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['containerId'] = container_id unless container_id.nil?
          command.params['ruleId'] = rule_id unless rule_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all GTM Rules of a Container.
        # @param [String] account_id
        #   The GTM Account ID.
        # @param [String] container_id
        #   The GTM Container ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV1::ListRulesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV1::ListRulesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_container_rules(account_id, container_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'accounts/{accountId}/containers/{containerId}/rules'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::TagmanagerV1::ListRulesResponse::Representation
          command.response_class = Google::Apis::TagmanagerV1::ListRulesResponse
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['containerId'] = container_id unless container_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a GTM Rule.
        # @param [String] account_id
        #   The GTM Account ID.
        # @param [String] container_id
        #   The GTM Container ID.
        # @param [String] rule_id
        #   The GTM Rule ID.
        # @param [Google::Apis::TagmanagerV1::Rule] rule_object
        # @param [String] fingerprint
        #   When provided, this fingerprint must match the fingerprint of the rule in
        #   storage.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV1::Rule] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV1::Rule]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_account_container_rule(account_id, container_id, rule_id, rule_object = nil, fingerprint: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'accounts/{accountId}/containers/{containerId}/rules/{ruleId}'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::TagmanagerV1::Rule::Representation
          command.request_object = rule_object
          command.response_representation = Google::Apis::TagmanagerV1::Rule::Representation
          command.response_class = Google::Apis::TagmanagerV1::Rule
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['containerId'] = container_id unless container_id.nil?
          command.params['ruleId'] = rule_id unless rule_id.nil?
          command.query['fingerprint'] = fingerprint unless fingerprint.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a GTM Tag.
        # @param [String] account_id
        #   The GTM Account ID.
        # @param [String] container_id
        #   The GTM Container ID.
        # @param [Google::Apis::TagmanagerV1::Tag] tag_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV1::Tag] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV1::Tag]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_account_container_tag(account_id, container_id, tag_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'accounts/{accountId}/containers/{containerId}/tags'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::TagmanagerV1::Tag::Representation
          command.request_object = tag_object
          command.response_representation = Google::Apis::TagmanagerV1::Tag::Representation
          command.response_class = Google::Apis::TagmanagerV1::Tag
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['containerId'] = container_id unless container_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a GTM Tag.
        # @param [String] account_id
        #   The GTM Account ID.
        # @param [String] container_id
        #   The GTM Container ID.
        # @param [String] tag_id
        #   The GTM Tag ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
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
        def delete_account_container_tag(account_id, container_id, tag_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'accounts/{accountId}/containers/{containerId}/tags/{tagId}'
          command =  make_simple_command(:delete, path, options)
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['containerId'] = container_id unless container_id.nil?
          command.params['tagId'] = tag_id unless tag_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a GTM Tag.
        # @param [String] account_id
        #   The GTM Account ID.
        # @param [String] container_id
        #   The GTM Container ID.
        # @param [String] tag_id
        #   The GTM Tag ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV1::Tag] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV1::Tag]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_container_tag(account_id, container_id, tag_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'accounts/{accountId}/containers/{containerId}/tags/{tagId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::TagmanagerV1::Tag::Representation
          command.response_class = Google::Apis::TagmanagerV1::Tag
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['containerId'] = container_id unless container_id.nil?
          command.params['tagId'] = tag_id unless tag_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all GTM Tags of a Container.
        # @param [String] account_id
        #   The GTM Account ID.
        # @param [String] container_id
        #   The GTM Container ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV1::ListTagsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV1::ListTagsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_container_tags(account_id, container_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'accounts/{accountId}/containers/{containerId}/tags'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::TagmanagerV1::ListTagsResponse::Representation
          command.response_class = Google::Apis::TagmanagerV1::ListTagsResponse
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['containerId'] = container_id unless container_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a GTM Tag.
        # @param [String] account_id
        #   The GTM Account ID.
        # @param [String] container_id
        #   The GTM Container ID.
        # @param [String] tag_id
        #   The GTM Tag ID.
        # @param [Google::Apis::TagmanagerV1::Tag] tag_object
        # @param [String] fingerprint
        #   When provided, this fingerprint must match the fingerprint of the tag in
        #   storage.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV1::Tag] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV1::Tag]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_account_container_tag(account_id, container_id, tag_id, tag_object = nil, fingerprint: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'accounts/{accountId}/containers/{containerId}/tags/{tagId}'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::TagmanagerV1::Tag::Representation
          command.request_object = tag_object
          command.response_representation = Google::Apis::TagmanagerV1::Tag::Representation
          command.response_class = Google::Apis::TagmanagerV1::Tag
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['containerId'] = container_id unless container_id.nil?
          command.params['tagId'] = tag_id unless tag_id.nil?
          command.query['fingerprint'] = fingerprint unless fingerprint.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a GTM Trigger.
        # @param [String] account_id
        #   The GTM Account ID.
        # @param [String] container_id
        #   The GTM Container ID.
        # @param [Google::Apis::TagmanagerV1::Trigger] trigger_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV1::Trigger] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV1::Trigger]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_account_container_trigger(account_id, container_id, trigger_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'accounts/{accountId}/containers/{containerId}/triggers'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::TagmanagerV1::Trigger::Representation
          command.request_object = trigger_object
          command.response_representation = Google::Apis::TagmanagerV1::Trigger::Representation
          command.response_class = Google::Apis::TagmanagerV1::Trigger
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['containerId'] = container_id unless container_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a GTM Trigger.
        # @param [String] account_id
        #   The GTM Account ID.
        # @param [String] container_id
        #   The GTM Container ID.
        # @param [String] trigger_id
        #   The GTM Trigger ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
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
        def delete_account_container_trigger(account_id, container_id, trigger_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'accounts/{accountId}/containers/{containerId}/triggers/{triggerId}'
          command =  make_simple_command(:delete, path, options)
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['containerId'] = container_id unless container_id.nil?
          command.params['triggerId'] = trigger_id unless trigger_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a GTM Trigger.
        # @param [String] account_id
        #   The GTM Account ID.
        # @param [String] container_id
        #   The GTM Container ID.
        # @param [String] trigger_id
        #   The GTM Trigger ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV1::Trigger] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV1::Trigger]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_container_trigger(account_id, container_id, trigger_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'accounts/{accountId}/containers/{containerId}/triggers/{triggerId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::TagmanagerV1::Trigger::Representation
          command.response_class = Google::Apis::TagmanagerV1::Trigger
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['containerId'] = container_id unless container_id.nil?
          command.params['triggerId'] = trigger_id unless trigger_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all GTM Triggers of a Container.
        # @param [String] account_id
        #   The GTM Account ID.
        # @param [String] container_id
        #   The GTM Container ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV1::ListTriggersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV1::ListTriggersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_container_triggers(account_id, container_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'accounts/{accountId}/containers/{containerId}/triggers'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::TagmanagerV1::ListTriggersResponse::Representation
          command.response_class = Google::Apis::TagmanagerV1::ListTriggersResponse
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['containerId'] = container_id unless container_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a GTM Trigger.
        # @param [String] account_id
        #   The GTM Account ID.
        # @param [String] container_id
        #   The GTM Container ID.
        # @param [String] trigger_id
        #   The GTM Trigger ID.
        # @param [Google::Apis::TagmanagerV1::Trigger] trigger_object
        # @param [String] fingerprint
        #   When provided, this fingerprint must match the fingerprint of the trigger in
        #   storage.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV1::Trigger] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV1::Trigger]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_account_container_trigger(account_id, container_id, trigger_id, trigger_object = nil, fingerprint: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'accounts/{accountId}/containers/{containerId}/triggers/{triggerId}'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::TagmanagerV1::Trigger::Representation
          command.request_object = trigger_object
          command.response_representation = Google::Apis::TagmanagerV1::Trigger::Representation
          command.response_class = Google::Apis::TagmanagerV1::Trigger
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['containerId'] = container_id unless container_id.nil?
          command.params['triggerId'] = trigger_id unless trigger_id.nil?
          command.query['fingerprint'] = fingerprint unless fingerprint.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a GTM Variable.
        # @param [String] account_id
        #   The GTM Account ID.
        # @param [String] container_id
        #   The GTM Container ID.
        # @param [Google::Apis::TagmanagerV1::Variable] variable_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV1::Variable] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV1::Variable]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_account_container_variable(account_id, container_id, variable_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'accounts/{accountId}/containers/{containerId}/variables'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::TagmanagerV1::Variable::Representation
          command.request_object = variable_object
          command.response_representation = Google::Apis::TagmanagerV1::Variable::Representation
          command.response_class = Google::Apis::TagmanagerV1::Variable
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['containerId'] = container_id unless container_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a GTM Variable.
        # @param [String] account_id
        #   The GTM Account ID.
        # @param [String] container_id
        #   The GTM Container ID.
        # @param [String] variable_id
        #   The GTM Variable ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
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
        def delete_account_container_variable(account_id, container_id, variable_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'accounts/{accountId}/containers/{containerId}/variables/{variableId}'
          command =  make_simple_command(:delete, path, options)
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['containerId'] = container_id unless container_id.nil?
          command.params['variableId'] = variable_id unless variable_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a GTM Variable.
        # @param [String] account_id
        #   The GTM Account ID.
        # @param [String] container_id
        #   The GTM Container ID.
        # @param [String] variable_id
        #   The GTM Variable ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV1::Variable] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV1::Variable]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_container_variable(account_id, container_id, variable_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'accounts/{accountId}/containers/{containerId}/variables/{variableId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::TagmanagerV1::Variable::Representation
          command.response_class = Google::Apis::TagmanagerV1::Variable
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['containerId'] = container_id unless container_id.nil?
          command.params['variableId'] = variable_id unless variable_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all GTM Variables of a Container.
        # @param [String] account_id
        #   The GTM Account ID.
        # @param [String] container_id
        #   The GTM Container ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV1::ListVariablesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV1::ListVariablesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_container_variables(account_id, container_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'accounts/{accountId}/containers/{containerId}/variables'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::TagmanagerV1::ListVariablesResponse::Representation
          command.response_class = Google::Apis::TagmanagerV1::ListVariablesResponse
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['containerId'] = container_id unless container_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a GTM Variable.
        # @param [String] account_id
        #   The GTM Account ID.
        # @param [String] container_id
        #   The GTM Container ID.
        # @param [String] variable_id
        #   The GTM Variable ID.
        # @param [Google::Apis::TagmanagerV1::Variable] variable_object
        # @param [String] fingerprint
        #   When provided, this fingerprint must match the fingerprint of the variable in
        #   storage.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV1::Variable] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV1::Variable]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_account_container_variable(account_id, container_id, variable_id, variable_object = nil, fingerprint: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'accounts/{accountId}/containers/{containerId}/variables/{variableId}'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::TagmanagerV1::Variable::Representation
          command.request_object = variable_object
          command.response_representation = Google::Apis::TagmanagerV1::Variable::Representation
          command.response_class = Google::Apis::TagmanagerV1::Variable
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['containerId'] = container_id unless container_id.nil?
          command.params['variableId'] = variable_id unless variable_id.nil?
          command.query['fingerprint'] = fingerprint unless fingerprint.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Container Version.
        # @param [String] account_id
        #   The GTM Account ID.
        # @param [String] container_id
        #   The GTM Container ID.
        # @param [Google::Apis::TagmanagerV1::CreateContainerVersionRequestVersionOptions] create_container_version_request_version_options_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV1::CreateContainerVersionResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV1::CreateContainerVersionResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_container_version(account_id, container_id, create_container_version_request_version_options_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'accounts/{accountId}/containers/{containerId}/versions'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::TagmanagerV1::CreateContainerVersionRequestVersionOptions::Representation
          command.request_object = create_container_version_request_version_options_object
          command.response_representation = Google::Apis::TagmanagerV1::CreateContainerVersionResponse::Representation
          command.response_class = Google::Apis::TagmanagerV1::CreateContainerVersionResponse
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['containerId'] = container_id unless container_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a Container Version.
        # @param [String] account_id
        #   The GTM Account ID.
        # @param [String] container_id
        #   The GTM Container ID.
        # @param [String] container_version_id
        #   The GTM Container Version ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
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
        def delete_account_container_version(account_id, container_id, container_version_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'accounts/{accountId}/containers/{containerId}/versions/{containerVersionId}'
          command =  make_simple_command(:delete, path, options)
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['containerId'] = container_id unless container_id.nil?
          command.params['containerVersionId'] = container_version_id unless container_version_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a Container Version.
        # @param [String] account_id
        #   The GTM Account ID.
        # @param [String] container_id
        #   The GTM Container ID.
        # @param [String] container_version_id
        #   The GTM Container Version ID. Specify published to retrieve the currently
        #   published version.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV1::ContainerVersion] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV1::ContainerVersion]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_container_version(account_id, container_id, container_version_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'accounts/{accountId}/containers/{containerId}/versions/{containerVersionId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::TagmanagerV1::ContainerVersion::Representation
          command.response_class = Google::Apis::TagmanagerV1::ContainerVersion
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['containerId'] = container_id unless container_id.nil?
          command.params['containerVersionId'] = container_version_id unless container_version_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all Container Versions of a GTM Container.
        # @param [String] account_id
        #   The GTM Account ID.
        # @param [String] container_id
        #   The GTM Container ID.
        # @param [Boolean] headers
        #   Retrieve headers only when true.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV1::ListContainerVersionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV1::ListContainerVersionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_container_versions(account_id, container_id, headers: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'accounts/{accountId}/containers/{containerId}/versions'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::TagmanagerV1::ListContainerVersionsResponse::Representation
          command.response_class = Google::Apis::TagmanagerV1::ListContainerVersionsResponse
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['containerId'] = container_id unless container_id.nil?
          command.query['headers'] = headers unless headers.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Publishes a Container Version.
        # @param [String] account_id
        #   The GTM Account ID.
        # @param [String] container_id
        #   The GTM Container ID.
        # @param [String] container_version_id
        #   The GTM Container Version ID.
        # @param [String] fingerprint
        #   When provided, this fingerprint must match the fingerprint of the container
        #   version in storage.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV1::PublishContainerVersionResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV1::PublishContainerVersionResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def publish_account_container_version(account_id, container_id, container_version_id, fingerprint: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'accounts/{accountId}/containers/{containerId}/versions/{containerVersionId}/publish'
          command =  make_simple_command(:post, path, options)
          command.response_representation = Google::Apis::TagmanagerV1::PublishContainerVersionResponse::Representation
          command.response_class = Google::Apis::TagmanagerV1::PublishContainerVersionResponse
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['containerId'] = container_id unless container_id.nil?
          command.params['containerVersionId'] = container_version_id unless container_version_id.nil?
          command.query['fingerprint'] = fingerprint unless fingerprint.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Restores a Container Version. This will overwrite the container's current
        # configuration (including its macros, rules and tags). The operation will not
        # have any effect on the version that is being served (i.e. the published
        # version).
        # @param [String] account_id
        #   The GTM Account ID.
        # @param [String] container_id
        #   The GTM Container ID.
        # @param [String] container_version_id
        #   The GTM Container Version ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV1::ContainerVersion] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV1::ContainerVersion]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def restore_account_container_version(account_id, container_id, container_version_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'accounts/{accountId}/containers/{containerId}/versions/{containerVersionId}/restore'
          command =  make_simple_command(:post, path, options)
          command.response_representation = Google::Apis::TagmanagerV1::ContainerVersion::Representation
          command.response_class = Google::Apis::TagmanagerV1::ContainerVersion
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['containerId'] = container_id unless container_id.nil?
          command.params['containerVersionId'] = container_version_id unless container_version_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Undeletes a Container Version.
        # @param [String] account_id
        #   The GTM Account ID.
        # @param [String] container_id
        #   The GTM Container ID.
        # @param [String] container_version_id
        #   The GTM Container Version ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV1::ContainerVersion] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV1::ContainerVersion]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def undelete_account_container_version(account_id, container_id, container_version_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'accounts/{accountId}/containers/{containerId}/versions/{containerVersionId}/undelete'
          command =  make_simple_command(:post, path, options)
          command.response_representation = Google::Apis::TagmanagerV1::ContainerVersion::Representation
          command.response_class = Google::Apis::TagmanagerV1::ContainerVersion
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['containerId'] = container_id unless container_id.nil?
          command.params['containerVersionId'] = container_version_id unless container_version_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a Container Version.
        # @param [String] account_id
        #   The GTM Account ID.
        # @param [String] container_id
        #   The GTM Container ID.
        # @param [String] container_version_id
        #   The GTM Container Version ID.
        # @param [Google::Apis::TagmanagerV1::ContainerVersion] container_version_object
        # @param [String] fingerprint
        #   When provided, this fingerprint must match the fingerprint of the container
        #   version in storage.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV1::ContainerVersion] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV1::ContainerVersion]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_account_container_version(account_id, container_id, container_version_id, container_version_object = nil, fingerprint: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'accounts/{accountId}/containers/{containerId}/versions/{containerVersionId}'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::TagmanagerV1::ContainerVersion::Representation
          command.request_object = container_version_object
          command.response_representation = Google::Apis::TagmanagerV1::ContainerVersion::Representation
          command.response_class = Google::Apis::TagmanagerV1::ContainerVersion
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['containerId'] = container_id unless container_id.nil?
          command.params['containerVersionId'] = container_version_id unless container_version_id.nil?
          command.query['fingerprint'] = fingerprint unless fingerprint.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a user's Account & Container Permissions.
        # @param [String] account_id
        #   The GTM Account ID.
        # @param [Google::Apis::TagmanagerV1::UserAccess] user_access_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV1::UserAccess] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV1::UserAccess]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_account_permission(account_id, user_access_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'accounts/{accountId}/permissions'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::TagmanagerV1::UserAccess::Representation
          command.request_object = user_access_object
          command.response_representation = Google::Apis::TagmanagerV1::UserAccess::Representation
          command.response_class = Google::Apis::TagmanagerV1::UserAccess
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Removes a user from the account, revoking access to it and all of its
        # containers.
        # @param [String] account_id
        #   The GTM Account ID.
        # @param [String] permission_id
        #   The GTM User ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
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
        def delete_account_permission(account_id, permission_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'accounts/{accountId}/permissions/{permissionId}'
          command =  make_simple_command(:delete, path, options)
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['permissionId'] = permission_id unless permission_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a user's Account & Container Permissions.
        # @param [String] account_id
        #   The GTM Account ID.
        # @param [String] permission_id
        #   The GTM User ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV1::UserAccess] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV1::UserAccess]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_permission(account_id, permission_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'accounts/{accountId}/permissions/{permissionId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::TagmanagerV1::UserAccess::Representation
          command.response_class = Google::Apis::TagmanagerV1::UserAccess
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['permissionId'] = permission_id unless permission_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List all users that have access to the account along with Account and
        # Container Permissions granted to each of them.
        # @param [String] account_id
        #   The GTM Account ID. @required tagmanager.accounts.permissions.list
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV1::ListAccountUsersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV1::ListAccountUsersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_permissions(account_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'accounts/{accountId}/permissions'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::TagmanagerV1::ListAccountUsersResponse::Representation
          command.response_class = Google::Apis::TagmanagerV1::ListAccountUsersResponse
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a user's Account & Container Permissions.
        # @param [String] account_id
        #   The GTM Account ID.
        # @param [String] permission_id
        #   The GTM User ID.
        # @param [Google::Apis::TagmanagerV1::UserAccess] user_access_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV1::UserAccess] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV1::UserAccess]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_account_permission(account_id, permission_id, user_access_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'accounts/{accountId}/permissions/{permissionId}'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::TagmanagerV1::UserAccess::Representation
          command.request_object = user_access_object
          command.response_representation = Google::Apis::TagmanagerV1::UserAccess::Representation
          command.response_class = Google::Apis::TagmanagerV1::UserAccess
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['permissionId'] = permission_id unless permission_id.nil?
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
