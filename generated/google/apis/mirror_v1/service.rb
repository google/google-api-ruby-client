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
    module MirrorV1
      # Google Mirror API
      #
      # API for interacting with Glass users via the timeline.
      #
      # @example
      #    require 'google/apis/mirror_v1'
      #
      #    Mirror = Google::Apis::MirrorV1 # Alias the module
      #    service = Mirror::MirrorService.new
      #
      # @see https://developers.google.com/glass
      class MirrorService < Google::Apis::Core::BaseService

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
          super('https://www.googleapis.com/', 'mirror/v1/')
        end

        # Inserts a new account for a user
        # @param [String] user_token
        #   The ID for the user.
        # @param [String] account_type
        #   Account type to be passed to Android Account Manager.
        # @param [String] account_name
        #   The name of the account to be passed to the Android Account Manager.
        # @param [Google::Apis::MirrorV1::Account] account
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
        # @yieldparam result [Google::Apis::MirrorV1::Account] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MirrorV1::Account]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_account(user_token, account_type, account_name, account = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'accounts/{userToken}/{accountType}/{accountName}'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::MirrorV1::AccountRepresentation
          command.request_object = account
          command.response_representation = Google::Apis::MirrorV1::AccountRepresentation
          command.response_class = Google::Apis::MirrorV1::Account
          command.params['userToken'] = user_token unless user_token.nil?
          command.params['accountType'] = account_type unless account_type.nil?
          command.params['accountName'] = account_name unless account_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Deletes a contact.
        # @param [String] id
        #   The ID of the contact.
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
        def delete_contact(id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'contacts/{id}'
          command =  make_simple_command(:delete, path, options)
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Gets a single contact by ID.
        # @param [String] id
        #   The ID of the contact.
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
        # @yieldparam result [Google::Apis::MirrorV1::Contact] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MirrorV1::Contact]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_contact(id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'contacts/{id}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::MirrorV1::ContactRepresentation
          command.response_class = Google::Apis::MirrorV1::Contact
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Inserts a new contact.
        # @param [Google::Apis::MirrorV1::Contact] contact
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
        # @yieldparam result [Google::Apis::MirrorV1::Contact] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MirrorV1::Contact]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_contact(contact = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'contacts'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::MirrorV1::ContactRepresentation
          command.request_object = contact
          command.response_representation = Google::Apis::MirrorV1::ContactRepresentation
          command.response_class = Google::Apis::MirrorV1::Contact
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Retrieves a list of contacts for the authenticated user.
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
        # @yieldparam result [Google::Apis::MirrorV1::ContactsListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MirrorV1::ContactsListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_contacts(fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'contacts'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::MirrorV1::ContactsListResponseRepresentation
          command.response_class = Google::Apis::MirrorV1::ContactsListResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Updates a contact in place. This method supports patch semantics.
        # @param [String] id
        #   The ID of the contact.
        # @param [Google::Apis::MirrorV1::Contact] contact
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
        # @yieldparam result [Google::Apis::MirrorV1::Contact] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MirrorV1::Contact]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_contact(id, contact = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'contacts/{id}'
          command =  make_simple_command(:patch, path, options)
          command.request_representation = Google::Apis::MirrorV1::ContactRepresentation
          command.request_object = contact
          command.response_representation = Google::Apis::MirrorV1::ContactRepresentation
          command.response_class = Google::Apis::MirrorV1::Contact
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Updates a contact in place.
        # @param [String] id
        #   The ID of the contact.
        # @param [Google::Apis::MirrorV1::Contact] contact
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
        # @yieldparam result [Google::Apis::MirrorV1::Contact] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MirrorV1::Contact]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_contact(id, contact = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'contacts/{id}'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::MirrorV1::ContactRepresentation
          command.request_object = contact
          command.response_representation = Google::Apis::MirrorV1::ContactRepresentation
          command.response_class = Google::Apis::MirrorV1::Contact
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Gets a single location by ID.
        # @param [String] id
        #   The ID of the location or latest for the last known location.
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
        # @yieldparam result [Google::Apis::MirrorV1::Location] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MirrorV1::Location]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_location(id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'locations/{id}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::MirrorV1::LocationRepresentation
          command.response_class = Google::Apis::MirrorV1::Location
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Retrieves a list of locations for the user.
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
        # @yieldparam result [Google::Apis::MirrorV1::LocationsListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MirrorV1::LocationsListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_locations(fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'locations'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::MirrorV1::LocationsListResponseRepresentation
          command.response_class = Google::Apis::MirrorV1::LocationsListResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Gets a single setting by ID.
        # @param [String] id
        #   The ID of the setting. The following IDs are valid:
        #   - locale - The key to the user’s language/locale (BCP 47 identifier) that
        #   Glassware should use to render localized content.
        #   - timezone - The key to the user’s current time zone region as defined in the
        #   tz database. Example: America/Los_Angeles.
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
        # @yieldparam result [Google::Apis::MirrorV1::Setting] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MirrorV1::Setting]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_setting(id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'settings/{id}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::MirrorV1::SettingRepresentation
          command.response_class = Google::Apis::MirrorV1::Setting
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Deletes a subscription.
        # @param [String] id
        #   The ID of the subscription.
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
        def delete_subscription(id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'subscriptions/{id}'
          command =  make_simple_command(:delete, path, options)
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Creates a new subscription.
        # @param [Google::Apis::MirrorV1::Subscription] subscription
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
        # @yieldparam result [Google::Apis::MirrorV1::Subscription] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MirrorV1::Subscription]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_subscription(subscription = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'subscriptions'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::MirrorV1::SubscriptionRepresentation
          command.request_object = subscription
          command.response_representation = Google::Apis::MirrorV1::SubscriptionRepresentation
          command.response_class = Google::Apis::MirrorV1::Subscription
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Retrieves a list of subscriptions for the authenticated user and service.
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
        # @yieldparam result [Google::Apis::MirrorV1::SubscriptionsListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MirrorV1::SubscriptionsListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_subscriptions(fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'subscriptions'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::MirrorV1::SubscriptionsListResponseRepresentation
          command.response_class = Google::Apis::MirrorV1::SubscriptionsListResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Updates an existing subscription in place.
        # @param [String] id
        #   The ID of the subscription.
        # @param [Google::Apis::MirrorV1::Subscription] subscription
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
        # @yieldparam result [Google::Apis::MirrorV1::Subscription] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MirrorV1::Subscription]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_subscription(id, subscription = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'subscriptions/{id}'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::MirrorV1::SubscriptionRepresentation
          command.request_object = subscription
          command.response_representation = Google::Apis::MirrorV1::SubscriptionRepresentation
          command.response_class = Google::Apis::MirrorV1::Subscription
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Deletes a timeline item.
        # @param [String] id
        #   The ID of the timeline item.
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
        def delete_timeline(id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'timeline/{id}'
          command =  make_simple_command(:delete, path, options)
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Gets a single timeline item by ID.
        # @param [String] id
        #   The ID of the timeline item.
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
        # @yieldparam result [Google::Apis::MirrorV1::TimelineItem] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MirrorV1::TimelineItem]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_timeline(id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'timeline/{id}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::MirrorV1::TimelineItemRepresentation
          command.response_class = Google::Apis::MirrorV1::TimelineItem
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Inserts a new item into the timeline.
        # @param [Google::Apis::MirrorV1::TimelineItem] timeline_item
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
        # @param [IO, String] upload_source
        #   IO stream or filename containing content to upload
        # @param [String] content_type
        #   Content type of the uploaded content.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MirrorV1::TimelineItem] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MirrorV1::TimelineItem]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_timeline(timeline_item = nil, fields: nil, quota_user: nil, user_ip: nil, upload_source: nil, content_type: nil, options: nil, &block)
          path = 'timeline'
          if upload_source.nil?
            command =  make_simple_command(:post, path, options)
          else
            command = make_upload_command(:post, path, options)
            command.upload_source = upload_source
            command.upload_content_type = content_type
          end
          command.request_representation = Google::Apis::MirrorV1::TimelineItemRepresentation
          command.request_object = timeline_item
          command.response_representation = Google::Apis::MirrorV1::TimelineItemRepresentation
          command.response_class = Google::Apis::MirrorV1::TimelineItem
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Retrieves a list of timeline items for the authenticated user.
        # @param [String] bundle_id
        #   If provided, only items with the given bundleId will be returned.
        # @param [Boolean] include_deleted
        #   If true, tombstone records for deleted items will be returned.
        # @param [Fixnum] max_results
        #   The maximum number of items to include in the response, used for paging.
        # @param [String] order_by
        #   Controls the order in which timeline items are returned.
        # @param [String] page_token
        #   Token for the page of results to return.
        # @param [Boolean] pinned_only
        #   If true, only pinned items will be returned.
        # @param [String] source_item_id
        #   If provided, only items with the given sourceItemId will be returned.
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
        # @yieldparam result [Google::Apis::MirrorV1::TimelineListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MirrorV1::TimelineListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_timelines(bundle_id: nil, include_deleted: nil, max_results: nil, order_by: nil, page_token: nil, pinned_only: nil, source_item_id: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'timeline'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::MirrorV1::TimelineListResponseRepresentation
          command.response_class = Google::Apis::MirrorV1::TimelineListResponse
          command.query['bundleId'] = bundle_id unless bundle_id.nil?
          command.query['includeDeleted'] = include_deleted unless include_deleted.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['pinnedOnly'] = pinned_only unless pinned_only.nil?
          command.query['sourceItemId'] = source_item_id unless source_item_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Updates a timeline item in place. This method supports patch semantics.
        # @param [String] id
        #   The ID of the timeline item.
        # @param [Google::Apis::MirrorV1::TimelineItem] timeline_item
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
        # @yieldparam result [Google::Apis::MirrorV1::TimelineItem] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MirrorV1::TimelineItem]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_timeline(id, timeline_item = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'timeline/{id}'
          command =  make_simple_command(:patch, path, options)
          command.request_representation = Google::Apis::MirrorV1::TimelineItemRepresentation
          command.request_object = timeline_item
          command.response_representation = Google::Apis::MirrorV1::TimelineItemRepresentation
          command.response_class = Google::Apis::MirrorV1::TimelineItem
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Updates a timeline item in place.
        # @param [String] id
        #   The ID of the timeline item.
        # @param [Google::Apis::MirrorV1::TimelineItem] timeline_item
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
        # @param [IO, String] upload_source
        #   IO stream or filename containing content to upload
        # @param [String] content_type
        #   Content type of the uploaded content.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MirrorV1::TimelineItem] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MirrorV1::TimelineItem]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_timeline(id, timeline_item = nil, fields: nil, quota_user: nil, user_ip: nil, upload_source: nil, content_type: nil, options: nil, &block)
          path = 'timeline/{id}'
          if upload_source.nil?
            command =  make_simple_command(:put, path, options)
          else
            command = make_upload_command(:put, path, options)
            command.upload_source = upload_source
            command.upload_content_type = content_type
          end
          command.request_representation = Google::Apis::MirrorV1::TimelineItemRepresentation
          command.request_object = timeline_item
          command.response_representation = Google::Apis::MirrorV1::TimelineItemRepresentation
          command.response_class = Google::Apis::MirrorV1::TimelineItem
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Deletes an attachment from a timeline item.
        # @param [String] item_id
        #   The ID of the timeline item the attachment belongs to.
        # @param [String] attachment_id
        #   The ID of the attachment.
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
        def delete_timeline_attachment(item_id, attachment_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'timeline/{itemId}/attachments/{attachmentId}'
          command =  make_simple_command(:delete, path, options)
          command.params['itemId'] = item_id unless item_id.nil?
          command.params['attachmentId'] = attachment_id unless attachment_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Retrieves an attachment on a timeline item by item ID and attachment ID.
        # @param [String] item_id
        #   The ID of the timeline item the attachment belongs to.
        # @param [String] attachment_id
        #   The ID of the attachment.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [IO, String] download_dest
        #   IO stream or filename to receive content download
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MirrorV1::Attachment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MirrorV1::Attachment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_timeline_attachment(item_id, attachment_id, fields: nil, quota_user: nil, user_ip: nil, download_dest: nil, options: nil, &block)
          path = 'timeline/{itemId}/attachments/{attachmentId}'
          if download_dest.nil?
            command =  make_simple_command(:get, path, options)
          else
            command = make_download_command(:get, path, options)
            command.download_dest = download_dest
          end
          command.response_representation = Google::Apis::MirrorV1::AttachmentRepresentation
          command.response_class = Google::Apis::MirrorV1::Attachment
          command.params['itemId'] = item_id unless item_id.nil?
          command.params['attachmentId'] = attachment_id unless attachment_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Adds a new attachment to a timeline item.
        # @param [String] item_id
        #   The ID of the timeline item the attachment belongs to.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [IO, String] upload_source
        #   IO stream or filename containing content to upload
        # @param [String] content_type
        #   Content type of the uploaded content.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MirrorV1::Attachment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MirrorV1::Attachment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_timeline_attachment(item_id, fields: nil, quota_user: nil, user_ip: nil, upload_source: nil, content_type: nil, options: nil, &block)
          path = 'timeline/{itemId}/attachments'
          if upload_source.nil?
            command =  make_simple_command(:post, path, options)
          else
            command = make_upload_command(:post, path, options)
            command.upload_source = upload_source
            command.upload_content_type = content_type
          end
          command.response_representation = Google::Apis::MirrorV1::AttachmentRepresentation
          command.response_class = Google::Apis::MirrorV1::Attachment
          command.params['itemId'] = item_id unless item_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Returns a list of attachments for a timeline item.
        # @param [String] item_id
        #   The ID of the timeline item whose attachments should be listed.
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
        # @yieldparam result [Google::Apis::MirrorV1::AttachmentsListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MirrorV1::AttachmentsListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_timeline_attachments(item_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'timeline/{itemId}/attachments'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::MirrorV1::AttachmentsListResponseRepresentation
          command.response_class = Google::Apis::MirrorV1::AttachmentsListResponse
          command.params['itemId'] = item_id unless item_id.nil?
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
