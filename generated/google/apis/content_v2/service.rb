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
    module ContentV2
      # Content API for Shopping
      #
      # Manage product items, inventory, and Merchant Center accounts for Google
      #  Shopping.
      #
      # @example
      #    require 'google/apis/content_v2'
      #
      #    Content = Google::Apis::ContentV2 # Alias the module
      #    service = Content::ShoppingContentService.new
      #
      # @see https://developers.google.com/shopping-content/v2/
      class ShoppingContentService < Google::Apis::Core::BaseService
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
          super('https://www.googleapis.com/', 'content/v2/')
        end
        
        # Returns information about the authenticated user.
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
        # @yieldparam result [Google::Apis::ContentV2::AuthInfoResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2::AuthInfoResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def authinfo_account(fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'accounts/authinfo'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ContentV2::AuthInfoResponse::Representation
          command.response_class = Google::Apis::ContentV2::AuthInfoResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves, inserts, updates, and deletes multiple Merchant Center (sub-)
        # accounts in a single request.
        # @param [Google::Apis::ContentV2::CustomBatchRequest] accounts_custom_batch_request_object
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
        # @yieldparam result [Google::Apis::ContentV2::CustomBatchResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2::CustomBatchResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def custombatch_account(accounts_custom_batch_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'accounts/batch'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ContentV2::CustomBatchRequest::Representation
          command.request_object = accounts_custom_batch_request_object
          command.response_representation = Google::Apis::ContentV2::CustomBatchResponse::Representation
          command.response_class = Google::Apis::ContentV2::CustomBatchResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a Merchant Center sub-account.
        # @param [String] merchant_id
        #   The ID of the managing account.
        # @param [String] account_id
        #   The ID of the account.
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
        def delete_account(merchant_id, account_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{merchantId}/accounts/{accountId}'
          command =  make_simple_command(:delete, path, options)
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a Merchant Center account.
        # @param [String] merchant_id
        #   The ID of the managing account.
        # @param [String] account_id
        #   The ID of the account.
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
        # @yieldparam result [Google::Apis::ContentV2::Account] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2::Account]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account(merchant_id, account_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{merchantId}/accounts/{accountId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ContentV2::Account::Representation
          command.response_class = Google::Apis::ContentV2::Account
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Merchant Center sub-account.
        # @param [String] merchant_id
        #   The ID of the managing account.
        # @param [Google::Apis::ContentV2::Account] account_object
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
        # @yieldparam result [Google::Apis::ContentV2::Account] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2::Account]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_account(merchant_id, account_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{merchantId}/accounts'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ContentV2::Account::Representation
          command.request_object = account_object
          command.response_representation = Google::Apis::ContentV2::Account::Representation
          command.response_class = Google::Apis::ContentV2::Account
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the sub-accounts in your Merchant Center account.
        # @param [String] merchant_id
        #   The ID of the managing account.
        # @param [Fixnum] max_results
        #   The maximum number of accounts to return in the response, used for paging.
        # @param [String] page_token
        #   The token returned by the previous request.
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
        # @yieldparam result [Google::Apis::ContentV2::ListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2::ListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_accounts(merchant_id, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{merchantId}/accounts'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ContentV2::ListResponse::Representation
          command.response_class = Google::Apis::ContentV2::ListResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a Merchant Center account. This method supports patch semantics.
        # @param [String] merchant_id
        #   The ID of the managing account.
        # @param [String] account_id
        #   The ID of the account.
        # @param [Google::Apis::ContentV2::Account] account_object
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
        # @yieldparam result [Google::Apis::ContentV2::Account] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2::Account]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_account(merchant_id, account_id, account_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{merchantId}/accounts/{accountId}'
          command =  make_simple_command(:patch, path, options)
          command.request_representation = Google::Apis::ContentV2::Account::Representation
          command.request_object = account_object
          command.response_representation = Google::Apis::ContentV2::Account::Representation
          command.response_class = Google::Apis::ContentV2::Account
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a Merchant Center account.
        # @param [String] merchant_id
        #   The ID of the managing account.
        # @param [String] account_id
        #   The ID of the account.
        # @param [Google::Apis::ContentV2::Account] account_object
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
        # @yieldparam result [Google::Apis::ContentV2::Account] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2::Account]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_account(merchant_id, account_id, account_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{merchantId}/accounts/{accountId}'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::ContentV2::Account::Representation
          command.request_object = account_object
          command.response_representation = Google::Apis::ContentV2::Account::Representation
          command.response_class = Google::Apis::ContentV2::Account
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves and updates the shipping settings of multiple accounts in a single
        # request.
        # @param [Google::Apis::ContentV2::AccountshippingCustomBatchRequest] accountshipping_custom_batch_request_object
        # @param [Boolean] dry_run
        #   Flag to run the request in dry-run mode.
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
        # @yieldparam result [Google::Apis::ContentV2::AccountshippingCustomBatchResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2::AccountshippingCustomBatchResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def custombatch_accountshipping(accountshipping_custom_batch_request_object = nil, dry_run: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'accountshipping/batch'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ContentV2::AccountshippingCustomBatchRequest::Representation
          command.request_object = accountshipping_custom_batch_request_object
          command.response_representation = Google::Apis::ContentV2::AccountshippingCustomBatchResponse::Representation
          command.response_class = Google::Apis::ContentV2::AccountshippingCustomBatchResponse
          command.query['dryRun'] = dry_run unless dry_run.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the shipping settings of the account.
        # @param [String] merchant_id
        #   The ID of the managing account.
        # @param [String] account_id
        #   The ID of the account for which to get/update account shipping settings.
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
        # @yieldparam result [Google::Apis::ContentV2::AccountShipping] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2::AccountShipping]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_accountshipping(merchant_id, account_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{merchantId}/accountshipping/{accountId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ContentV2::AccountShipping::Representation
          command.response_class = Google::Apis::ContentV2::AccountShipping
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the shipping settings of the sub-accounts in your Merchant Center
        # account.
        # @param [String] merchant_id
        #   The ID of the managing account.
        # @param [Fixnum] max_results
        #   The maximum number of shipping settings to return in the response, used for
        #   paging.
        # @param [String] page_token
        #   The token returned by the previous request.
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
        # @yieldparam result [Google::Apis::ContentV2::AccountshippingListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2::AccountshippingListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_accountshippings(merchant_id, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{merchantId}/accountshipping'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ContentV2::AccountshippingListResponse::Representation
          command.response_class = Google::Apis::ContentV2::AccountshippingListResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the shipping settings of the account. This method supports patch
        # semantics.
        # @param [String] merchant_id
        #   The ID of the managing account.
        # @param [String] account_id
        #   The ID of the account for which to get/update account shipping settings.
        # @param [Google::Apis::ContentV2::AccountShipping] account_shipping_object
        # @param [Boolean] dry_run
        #   Flag to run the request in dry-run mode.
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
        # @yieldparam result [Google::Apis::ContentV2::AccountShipping] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2::AccountShipping]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_accountshipping(merchant_id, account_id, account_shipping_object = nil, dry_run: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{merchantId}/accountshipping/{accountId}'
          command =  make_simple_command(:patch, path, options)
          command.request_representation = Google::Apis::ContentV2::AccountShipping::Representation
          command.request_object = account_shipping_object
          command.response_representation = Google::Apis::ContentV2::AccountShipping::Representation
          command.response_class = Google::Apis::ContentV2::AccountShipping
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['dryRun'] = dry_run unless dry_run.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the shipping settings of the account.
        # @param [String] merchant_id
        #   The ID of the managing account.
        # @param [String] account_id
        #   The ID of the account for which to get/update account shipping settings.
        # @param [Google::Apis::ContentV2::AccountShipping] account_shipping_object
        # @param [Boolean] dry_run
        #   Flag to run the request in dry-run mode.
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
        # @yieldparam result [Google::Apis::ContentV2::AccountShipping] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2::AccountShipping]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_accountshipping(merchant_id, account_id, account_shipping_object = nil, dry_run: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{merchantId}/accountshipping/{accountId}'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::ContentV2::AccountShipping::Representation
          command.request_object = account_shipping_object
          command.response_representation = Google::Apis::ContentV2::AccountShipping::Representation
          command.response_class = Google::Apis::ContentV2::AccountShipping
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['dryRun'] = dry_run unless dry_run.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [Google::Apis::ContentV2::AccountstatusesCustomBatchRequest] accountstatuses_custom_batch_request_object
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
        # @yieldparam result [Google::Apis::ContentV2::AccountstatusesCustomBatchResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2::AccountstatusesCustomBatchResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def custombatch_accountstatus(accountstatuses_custom_batch_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'accountstatuses/batch'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ContentV2::AccountstatusesCustomBatchRequest::Representation
          command.request_object = accountstatuses_custom_batch_request_object
          command.response_representation = Google::Apis::ContentV2::AccountstatusesCustomBatchResponse::Representation
          command.response_class = Google::Apis::ContentV2::AccountstatusesCustomBatchResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the status of a Merchant Center account.
        # @param [String] merchant_id
        #   The ID of the managing account.
        # @param [String] account_id
        #   The ID of the account.
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
        # @yieldparam result [Google::Apis::ContentV2::AccountStatus] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2::AccountStatus]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_accountstatus(merchant_id, account_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{merchantId}/accountstatuses/{accountId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ContentV2::AccountStatus::Representation
          command.response_class = Google::Apis::ContentV2::AccountStatus
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the statuses of the sub-accounts in your Merchant Center account.
        # @param [String] merchant_id
        #   The ID of the managing account.
        # @param [Fixnum] max_results
        #   The maximum number of account statuses to return in the response, used for
        #   paging.
        # @param [String] page_token
        #   The token returned by the previous request.
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
        # @yieldparam result [Google::Apis::ContentV2::AccountstatusesListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2::AccountstatusesListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_accountstatuses(merchant_id, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{merchantId}/accountstatuses'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ContentV2::AccountstatusesListResponse::Representation
          command.response_class = Google::Apis::ContentV2::AccountstatusesListResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves and updates tax settings of multiple accounts in a single request.
        # @param [Google::Apis::ContentV2::AccounttaxCustomBatchRequest] accounttax_custom_batch_request_object
        # @param [Boolean] dry_run
        #   Flag to run the request in dry-run mode.
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
        # @yieldparam result [Google::Apis::ContentV2::AccounttaxCustomBatchResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2::AccounttaxCustomBatchResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def custombatch_accounttax(accounttax_custom_batch_request_object = nil, dry_run: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'accounttax/batch'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ContentV2::AccounttaxCustomBatchRequest::Representation
          command.request_object = accounttax_custom_batch_request_object
          command.response_representation = Google::Apis::ContentV2::AccounttaxCustomBatchResponse::Representation
          command.response_class = Google::Apis::ContentV2::AccounttaxCustomBatchResponse
          command.query['dryRun'] = dry_run unless dry_run.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the tax settings of the account.
        # @param [String] merchant_id
        #   The ID of the managing account.
        # @param [String] account_id
        #   The ID of the account for which to get/update account tax settings.
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
        # @yieldparam result [Google::Apis::ContentV2::AccountTax] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2::AccountTax]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_accounttax(merchant_id, account_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{merchantId}/accounttax/{accountId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ContentV2::AccountTax::Representation
          command.response_class = Google::Apis::ContentV2::AccountTax
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the tax settings of the sub-accounts in your Merchant Center account.
        # @param [String] merchant_id
        #   The ID of the managing account.
        # @param [Fixnum] max_results
        #   The maximum number of tax settings to return in the response, used for paging.
        # @param [String] page_token
        #   The token returned by the previous request.
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
        # @yieldparam result [Google::Apis::ContentV2::AccounttaxListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2::AccounttaxListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_accounttaxes(merchant_id, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{merchantId}/accounttax'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ContentV2::AccounttaxListResponse::Representation
          command.response_class = Google::Apis::ContentV2::AccounttaxListResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the tax settings of the account. This method supports patch semantics.
        # @param [String] merchant_id
        #   The ID of the managing account.
        # @param [String] account_id
        #   The ID of the account for which to get/update account tax settings.
        # @param [Google::Apis::ContentV2::AccountTax] account_tax_object
        # @param [Boolean] dry_run
        #   Flag to run the request in dry-run mode.
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
        # @yieldparam result [Google::Apis::ContentV2::AccountTax] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2::AccountTax]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_accounttax(merchant_id, account_id, account_tax_object = nil, dry_run: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{merchantId}/accounttax/{accountId}'
          command =  make_simple_command(:patch, path, options)
          command.request_representation = Google::Apis::ContentV2::AccountTax::Representation
          command.request_object = account_tax_object
          command.response_representation = Google::Apis::ContentV2::AccountTax::Representation
          command.response_class = Google::Apis::ContentV2::AccountTax
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['dryRun'] = dry_run unless dry_run.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the tax settings of the account.
        # @param [String] merchant_id
        #   The ID of the managing account.
        # @param [String] account_id
        #   The ID of the account for which to get/update account tax settings.
        # @param [Google::Apis::ContentV2::AccountTax] account_tax_object
        # @param [Boolean] dry_run
        #   Flag to run the request in dry-run mode.
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
        # @yieldparam result [Google::Apis::ContentV2::AccountTax] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2::AccountTax]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_accounttax(merchant_id, account_id, account_tax_object = nil, dry_run: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{merchantId}/accounttax/{accountId}'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::ContentV2::AccountTax::Representation
          command.request_object = account_tax_object
          command.response_representation = Google::Apis::ContentV2::AccountTax::Representation
          command.response_class = Google::Apis::ContentV2::AccountTax
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['dryRun'] = dry_run unless dry_run.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [Google::Apis::ContentV2::DatafeedsCustomBatchRequest] datafeeds_custom_batch_request_object
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
        # @yieldparam result [Google::Apis::ContentV2::DatafeedsCustomBatchResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2::DatafeedsCustomBatchResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def custombatch_datafeed(datafeeds_custom_batch_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'datafeeds/batch'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ContentV2::DatafeedsCustomBatchRequest::Representation
          command.request_object = datafeeds_custom_batch_request_object
          command.response_representation = Google::Apis::ContentV2::DatafeedsCustomBatchResponse::Representation
          command.response_class = Google::Apis::ContentV2::DatafeedsCustomBatchResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a datafeed from your Merchant Center account.
        # @param [String] merchant_id
        # @param [String] datafeed_id
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
        def delete_datafeed(merchant_id, datafeed_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{merchantId}/datafeeds/{datafeedId}'
          command =  make_simple_command(:delete, path, options)
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['datafeedId'] = datafeed_id unless datafeed_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a datafeed from your Merchant Center account.
        # @param [String] merchant_id
        # @param [String] datafeed_id
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
        # @yieldparam result [Google::Apis::ContentV2::Datafeed] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2::Datafeed]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_datafeed(merchant_id, datafeed_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{merchantId}/datafeeds/{datafeedId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ContentV2::Datafeed::Representation
          command.response_class = Google::Apis::ContentV2::Datafeed
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['datafeedId'] = datafeed_id unless datafeed_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Registers a datafeed with your Merchant Center account.
        # @param [String] merchant_id
        # @param [Google::Apis::ContentV2::Datafeed] datafeed_object
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
        # @yieldparam result [Google::Apis::ContentV2::Datafeed] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2::Datafeed]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_datafeed(merchant_id, datafeed_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{merchantId}/datafeeds'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ContentV2::Datafeed::Representation
          command.request_object = datafeed_object
          command.response_representation = Google::Apis::ContentV2::Datafeed::Representation
          command.response_class = Google::Apis::ContentV2::Datafeed
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the datafeeds in your Merchant Center account.
        # @param [String] merchant_id
        #   The ID of the managing account.
        # @param [Fixnum] max_results
        #   The maximum number of products to return in the response, used for paging.
        # @param [String] page_token
        #   The token returned by the previous request.
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
        # @yieldparam result [Google::Apis::ContentV2::DatafeedsListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2::DatafeedsListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_datafeeds(merchant_id, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{merchantId}/datafeeds'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ContentV2::DatafeedsListResponse::Representation
          command.response_class = Google::Apis::ContentV2::DatafeedsListResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a datafeed of your Merchant Center account. This method supports patch
        # semantics.
        # @param [String] merchant_id
        # @param [String] datafeed_id
        # @param [Google::Apis::ContentV2::Datafeed] datafeed_object
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
        # @yieldparam result [Google::Apis::ContentV2::Datafeed] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2::Datafeed]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_datafeed(merchant_id, datafeed_id, datafeed_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{merchantId}/datafeeds/{datafeedId}'
          command =  make_simple_command(:patch, path, options)
          command.request_representation = Google::Apis::ContentV2::Datafeed::Representation
          command.request_object = datafeed_object
          command.response_representation = Google::Apis::ContentV2::Datafeed::Representation
          command.response_class = Google::Apis::ContentV2::Datafeed
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['datafeedId'] = datafeed_id unless datafeed_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a datafeed of your Merchant Center account.
        # @param [String] merchant_id
        # @param [String] datafeed_id
        # @param [Google::Apis::ContentV2::Datafeed] datafeed_object
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
        # @yieldparam result [Google::Apis::ContentV2::Datafeed] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2::Datafeed]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_datafeed(merchant_id, datafeed_id, datafeed_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{merchantId}/datafeeds/{datafeedId}'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::ContentV2::Datafeed::Representation
          command.request_object = datafeed_object
          command.response_representation = Google::Apis::ContentV2::Datafeed::Representation
          command.response_class = Google::Apis::ContentV2::Datafeed
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['datafeedId'] = datafeed_id unless datafeed_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [Google::Apis::ContentV2::DatafeedstatusesCustomBatchRequest] datafeedstatuses_custom_batch_request_object
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
        # @yieldparam result [Google::Apis::ContentV2::DatafeedstatusesCustomBatchResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2::DatafeedstatusesCustomBatchResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def custombatch_datafeedstatus(datafeedstatuses_custom_batch_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'datafeedstatuses/batch'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ContentV2::DatafeedstatusesCustomBatchRequest::Representation
          command.request_object = datafeedstatuses_custom_batch_request_object
          command.response_representation = Google::Apis::ContentV2::DatafeedstatusesCustomBatchResponse::Representation
          command.response_class = Google::Apis::ContentV2::DatafeedstatusesCustomBatchResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the status of a datafeed from your Merchant Center account.
        # @param [String] merchant_id
        # @param [String] datafeed_id
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
        # @yieldparam result [Google::Apis::ContentV2::DatafeedStatus] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2::DatafeedStatus]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_datafeedstatus(merchant_id, datafeed_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{merchantId}/datafeedstatuses/{datafeedId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ContentV2::DatafeedStatus::Representation
          command.response_class = Google::Apis::ContentV2::DatafeedStatus
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['datafeedId'] = datafeed_id unless datafeed_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the statuses of the datafeeds in your Merchant Center account.
        # @param [String] merchant_id
        #   The ID of the managing account.
        # @param [Fixnum] max_results
        #   The maximum number of products to return in the response, used for paging.
        # @param [String] page_token
        #   The token returned by the previous request.
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
        # @yieldparam result [Google::Apis::ContentV2::DatafeedstatusesListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2::DatafeedstatusesListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_datafeedstatuses(merchant_id, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{merchantId}/datafeedstatuses'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ContentV2::DatafeedstatusesListResponse::Representation
          command.response_class = Google::Apis::ContentV2::DatafeedstatusesListResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates price and availability for multiple products or stores in a single
        # request.
        # @param [Google::Apis::ContentV2::InventoryCustomBatchRequest] inventory_custom_batch_request_object
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
        # @yieldparam result [Google::Apis::ContentV2::InventoryCustomBatchResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2::InventoryCustomBatchResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def custombatch_inventory(inventory_custom_batch_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'inventory/batch'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ContentV2::InventoryCustomBatchRequest::Representation
          command.request_object = inventory_custom_batch_request_object
          command.response_representation = Google::Apis::ContentV2::InventoryCustomBatchResponse::Representation
          command.response_class = Google::Apis::ContentV2::InventoryCustomBatchResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates price and availability of a product in your Merchant Center account.
        # @param [String] merchant_id
        #   The ID of the managing account.
        # @param [String] store_code
        #   The code of the store for which to update price and availability. Use online
        #   to update price and availability of an online product.
        # @param [String] product_id
        #   The ID of the product for which to update price and availability.
        # @param [Google::Apis::ContentV2::SetRequest] inventory_set_request_object
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
        # @yieldparam result [Google::Apis::ContentV2::SetResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2::SetResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_inventory(merchant_id, store_code, product_id, inventory_set_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{merchantId}/inventory/{storeCode}/products/{productId}'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ContentV2::SetRequest::Representation
          command.request_object = inventory_set_request_object
          command.response_representation = Google::Apis::ContentV2::SetResponse::Representation
          command.response_class = Google::Apis::ContentV2::SetResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['storeCode'] = store_code unless store_code.nil?
          command.params['productId'] = product_id unless product_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves, inserts, and deletes multiple products in a single request.
        # @param [Google::Apis::ContentV2::ProductsCustomBatchRequest] products_custom_batch_request_object
        # @param [Boolean] dry_run
        #   Flag to run the request in dry-run mode.
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
        # @yieldparam result [Google::Apis::ContentV2::ProductsCustomBatchResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2::ProductsCustomBatchResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def custombatch_product(products_custom_batch_request_object = nil, dry_run: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'products/batch'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ContentV2::ProductsCustomBatchRequest::Representation
          command.request_object = products_custom_batch_request_object
          command.response_representation = Google::Apis::ContentV2::ProductsCustomBatchResponse::Representation
          command.response_class = Google::Apis::ContentV2::ProductsCustomBatchResponse
          command.query['dryRun'] = dry_run unless dry_run.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a product from your Merchant Center account.
        # @param [String] merchant_id
        #   The ID of the managing account.
        # @param [String] product_id
        #   The ID of the product.
        # @param [Boolean] dry_run
        #   Flag to run the request in dry-run mode.
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
        def delete_product(merchant_id, product_id, dry_run: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{merchantId}/products/{productId}'
          command =  make_simple_command(:delete, path, options)
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['productId'] = product_id unless product_id.nil?
          command.query['dryRun'] = dry_run unless dry_run.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a product from your Merchant Center account.
        # @param [String] merchant_id
        #   The ID of the managing account.
        # @param [String] product_id
        #   The ID of the product.
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
        # @yieldparam result [Google::Apis::ContentV2::Product] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2::Product]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_product(merchant_id, product_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{merchantId}/products/{productId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ContentV2::Product::Representation
          command.response_class = Google::Apis::ContentV2::Product
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['productId'] = product_id unless product_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Uploads a product to your Merchant Center account.
        # @param [String] merchant_id
        #   The ID of the managing account.
        # @param [Google::Apis::ContentV2::Product] product_object
        # @param [Boolean] dry_run
        #   Flag to run the request in dry-run mode.
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
        # @yieldparam result [Google::Apis::ContentV2::Product] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2::Product]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_product(merchant_id, product_object = nil, dry_run: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{merchantId}/products'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ContentV2::Product::Representation
          command.request_object = product_object
          command.response_representation = Google::Apis::ContentV2::Product::Representation
          command.response_class = Google::Apis::ContentV2::Product
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['dryRun'] = dry_run unless dry_run.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the products in your Merchant Center account.
        # @param [String] merchant_id
        #   The ID of the managing account.
        # @param [Fixnum] max_results
        #   The maximum number of products to return in the response, used for paging.
        # @param [String] page_token
        #   The token returned by the previous request.
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
        # @yieldparam result [Google::Apis::ContentV2::ProductsListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2::ProductsListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_products(merchant_id, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{merchantId}/products'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ContentV2::ProductsListResponse::Representation
          command.response_class = Google::Apis::ContentV2::ProductsListResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the statuses of multiple products in a single request.
        # @param [Google::Apis::ContentV2::ProductstatusesCustomBatchRequest] productstatuses_custom_batch_request_object
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
        # @yieldparam result [Google::Apis::ContentV2::ProductstatusesCustomBatchResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2::ProductstatusesCustomBatchResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def custombatch_productstatus(productstatuses_custom_batch_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'productstatuses/batch'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ContentV2::ProductstatusesCustomBatchRequest::Representation
          command.request_object = productstatuses_custom_batch_request_object
          command.response_representation = Google::Apis::ContentV2::ProductstatusesCustomBatchResponse::Representation
          command.response_class = Google::Apis::ContentV2::ProductstatusesCustomBatchResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the status of a product from your Merchant Center account.
        # @param [String] merchant_id
        #   The ID of the managing account.
        # @param [String] product_id
        #   The ID of the product.
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
        # @yieldparam result [Google::Apis::ContentV2::ProductStatus] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2::ProductStatus]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_productstatus(merchant_id, product_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{merchantId}/productstatuses/{productId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ContentV2::ProductStatus::Representation
          command.response_class = Google::Apis::ContentV2::ProductStatus
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['productId'] = product_id unless product_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the statuses of the products in your Merchant Center account.
        # @param [String] merchant_id
        #   The ID of the managing account.
        # @param [Fixnum] max_results
        #   The maximum number of product statuses to return in the response, used for
        #   paging.
        # @param [String] page_token
        #   The token returned by the previous request.
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
        # @yieldparam result [Google::Apis::ContentV2::ProductstatusesListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2::ProductstatusesListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_productstatuses(merchant_id, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{merchantId}/productstatuses'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ContentV2::ProductstatusesListResponse::Representation
          command.response_class = Google::Apis::ContentV2::ProductstatusesListResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
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
