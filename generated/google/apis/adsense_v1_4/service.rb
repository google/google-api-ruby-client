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
    module AdsenseV1_4
      # AdSense Management API
      #
      # Gives AdSense publishers access to their inventory and the ability to generate
      #  reports
      #
      # @example
      #    require 'google/apis/adsense_v1_4'
      #
      #    Adsense = Google::Apis::AdsenseV1_4 # Alias the module
      #    service = Adsense::AdSenseService.new
      #
      # @see https://developers.google.com/adsense/management/
      class AdSenseService < Google::Apis::Core::BaseService

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
          super('https://www.googleapis.com/', 'adsense/v1.4/')
        end

        # Get information about the selected AdSense account.
        # @param [String] account_id
        #   Account to get information about.
        # @param [Boolean] tree
        #   Whether the tree of sub accounts should be returned.
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
        # @yieldparam result [Google::Apis::AdsenseV1_4::Account] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdsenseV1_4::Account]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account(account_id, tree: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'accounts/{accountId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AdsenseV1_4::AccountRepresentation
          command.response_class = Google::Apis::AdsenseV1_4::Account
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['tree'] = tree unless tree.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # List all accounts available to this AdSense account.
        # @param [Fixnum] max_results
        #   The maximum number of accounts to include in the response, used for paging.
        # @param [String] page_token
        #   A continuation token, used to page through accounts. To retrieve the next page,
        #   set this parameter to the value of "nextPageToken" from the previous response.
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
        # @yieldparam result [Google::Apis::AdsenseV1_4::Accounts] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdsenseV1_4::Accounts]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_accounts(max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'accounts'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AdsenseV1_4::AccountsRepresentation
          command.response_class = Google::Apis::AdsenseV1_4::Accounts
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # List all ad clients in the specified account.
        # @param [String] account_id
        #   Account for which to list ad clients.
        # @param [Fixnum] max_results
        #   The maximum number of ad clients to include in the response, used for paging.
        # @param [String] page_token
        #   A continuation token, used to page through ad clients. To retrieve the next
        #   page, set this parameter to the value of "nextPageToken" from the previous
        #   response.
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
        # @yieldparam result [Google::Apis::AdsenseV1_4::AdClients] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdsenseV1_4::AdClients]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_adclients(account_id, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'accounts/{accountId}/adclients'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AdsenseV1_4::AdClientsRepresentation
          command.response_class = Google::Apis::AdsenseV1_4::AdClients
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        
        # Gets the specified ad unit in the specified ad client for the specified
        # account.
        # @param [String] account_id
        #   Account to which the ad client belongs.
        # @param [String] ad_client_id
        #   Ad client for which to get the ad unit.
        # @param [String] ad_unit_id
        #   Ad unit to retrieve.
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
        # @yieldparam result [Google::Apis::AdsenseV1_4::AdUnit] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdsenseV1_4::AdUnit]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_adunit(account_id, ad_client_id, ad_unit_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'accounts/{accountId}/adclients/{adClientId}/adunits/{adUnitId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AdsenseV1_4::AdUnitRepresentation
          command.response_class = Google::Apis::AdsenseV1_4::AdUnit
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['adClientId'] = ad_client_id unless ad_client_id.nil?
          command.params['adUnitId'] = ad_unit_id unless ad_unit_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Get ad code for the specified ad unit.
        # @param [String] account_id
        #   Account which contains the ad client.
        # @param [String] ad_client_id
        #   Ad client with contains the ad unit.
        # @param [String] ad_unit_id
        #   Ad unit to get the code for.
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
        # @yieldparam result [Google::Apis::AdsenseV1_4::AdCode] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdsenseV1_4::AdCode]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_ad_code_account_adunit(account_id, ad_client_id, ad_unit_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'accounts/{accountId}/adclients/{adClientId}/adunits/{adUnitId}/adcode'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AdsenseV1_4::AdCodeRepresentation
          command.response_class = Google::Apis::AdsenseV1_4::AdCode
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['adClientId'] = ad_client_id unless ad_client_id.nil?
          command.params['adUnitId'] = ad_unit_id unless ad_unit_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # List all ad units in the specified ad client for the specified account.
        # @param [String] account_id
        #   Account to which the ad client belongs.
        # @param [String] ad_client_id
        #   Ad client for which to list ad units.
        # @param [Boolean] include_inactive
        #   Whether to include inactive ad units. Default: true.
        # @param [Fixnum] max_results
        #   The maximum number of ad units to include in the response, used for paging.
        # @param [String] page_token
        #   A continuation token, used to page through ad units. To retrieve the next page,
        #   set this parameter to the value of "nextPageToken" from the previous response.
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
        # @yieldparam result [Google::Apis::AdsenseV1_4::AdUnits] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdsenseV1_4::AdUnits]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_adunits(account_id, ad_client_id, include_inactive: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'accounts/{accountId}/adclients/{adClientId}/adunits'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AdsenseV1_4::AdUnitsRepresentation
          command.response_class = Google::Apis::AdsenseV1_4::AdUnits
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['adClientId'] = ad_client_id unless ad_client_id.nil?
          command.query['includeInactive'] = include_inactive unless include_inactive.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # List all custom channels which the specified ad unit belongs to.
        # @param [String] account_id
        #   Account to which the ad client belongs.
        # @param [String] ad_client_id
        #   Ad client which contains the ad unit.
        # @param [String] ad_unit_id
        #   Ad unit for which to list custom channels.
        # @param [Fixnum] max_results
        #   The maximum number of custom channels to include in the response, used for
        #   paging.
        # @param [String] page_token
        #   A continuation token, used to page through custom channels. To retrieve the
        #   next page, set this parameter to the value of "nextPageToken" from the
        #   previous response.
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
        # @yieldparam result [Google::Apis::AdsenseV1_4::CustomChannels] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdsenseV1_4::CustomChannels]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_adunit_customchannels(account_id, ad_client_id, ad_unit_id, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'accounts/{accountId}/adclients/{adClientId}/adunits/{adUnitId}/customchannels'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AdsenseV1_4::CustomChannelsRepresentation
          command.response_class = Google::Apis::AdsenseV1_4::CustomChannels
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['adClientId'] = ad_client_id unless ad_client_id.nil?
          command.params['adUnitId'] = ad_unit_id unless ad_unit_id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        
        
        # Dismiss (delete) the specified alert from the specified publisher AdSense
        # account.
        # @param [String] account_id
        #   Account which contains the ad unit.
        # @param [String] alert_id
        #   Alert to delete.
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
        def delete_account_alert(account_id, alert_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'accounts/{accountId}/alerts/{alertId}'
          command =  make_simple_command(:delete, path, options)
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['alertId'] = alert_id unless alert_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # List the alerts for the specified AdSense account.
        # @param [String] account_id
        #   Account for which to retrieve the alerts.
        # @param [String] locale
        #   The locale to use for translating alert messages. The account locale will be
        #   used if this is not supplied. The AdSense default (English) will be used if
        #   the supplied locale is invalid or unsupported.
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
        # @yieldparam result [Google::Apis::AdsenseV1_4::Alerts] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdsenseV1_4::Alerts]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_alerts(account_id, locale: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'accounts/{accountId}/alerts'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AdsenseV1_4::AlertsRepresentation
          command.response_class = Google::Apis::AdsenseV1_4::Alerts
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['locale'] = locale unless locale.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        
        # Get the specified custom channel from the specified ad client for the
        # specified account.
        # @param [String] account_id
        #   Account to which the ad client belongs.
        # @param [String] ad_client_id
        #   Ad client which contains the custom channel.
        # @param [String] custom_channel_id
        #   Custom channel to retrieve.
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
        # @yieldparam result [Google::Apis::AdsenseV1_4::CustomChannel] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdsenseV1_4::CustomChannel]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_customchannel(account_id, ad_client_id, custom_channel_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'accounts/{accountId}/adclients/{adClientId}/customchannels/{customChannelId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AdsenseV1_4::CustomChannelRepresentation
          command.response_class = Google::Apis::AdsenseV1_4::CustomChannel
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['adClientId'] = ad_client_id unless ad_client_id.nil?
          command.params['customChannelId'] = custom_channel_id unless custom_channel_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # List all custom channels in the specified ad client for the specified account.
        # @param [String] account_id
        #   Account to which the ad client belongs.
        # @param [String] ad_client_id
        #   Ad client for which to list custom channels.
        # @param [Fixnum] max_results
        #   The maximum number of custom channels to include in the response, used for
        #   paging.
        # @param [String] page_token
        #   A continuation token, used to page through custom channels. To retrieve the
        #   next page, set this parameter to the value of "nextPageToken" from the
        #   previous response.
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
        # @yieldparam result [Google::Apis::AdsenseV1_4::CustomChannels] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdsenseV1_4::CustomChannels]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_customchannels(account_id, ad_client_id, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'accounts/{accountId}/adclients/{adClientId}/customchannels'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AdsenseV1_4::CustomChannelsRepresentation
          command.response_class = Google::Apis::AdsenseV1_4::CustomChannels
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['adClientId'] = ad_client_id unless ad_client_id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # List all ad units in the specified custom channel.
        # @param [String] account_id
        #   Account to which the ad client belongs.
        # @param [String] ad_client_id
        #   Ad client which contains the custom channel.
        # @param [String] custom_channel_id
        #   Custom channel for which to list ad units.
        # @param [Boolean] include_inactive
        #   Whether to include inactive ad units. Default: true.
        # @param [Fixnum] max_results
        #   The maximum number of ad units to include in the response, used for paging.
        # @param [String] page_token
        #   A continuation token, used to page through ad units. To retrieve the next page,
        #   set this parameter to the value of "nextPageToken" from the previous response.
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
        # @yieldparam result [Google::Apis::AdsenseV1_4::AdUnits] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdsenseV1_4::AdUnits]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_customchannel_adunits(account_id, ad_client_id, custom_channel_id, include_inactive: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'accounts/{accountId}/adclients/{adClientId}/customchannels/{customChannelId}/adunits'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AdsenseV1_4::AdUnitsRepresentation
          command.response_class = Google::Apis::AdsenseV1_4::AdUnits
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['adClientId'] = ad_client_id unless ad_client_id.nil?
          command.params['customChannelId'] = custom_channel_id unless custom_channel_id.nil?
          command.query['includeInactive'] = include_inactive unless include_inactive.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        
        
        # List the payments for the specified AdSense account.
        # @param [String] account_id
        #   Account for which to retrieve the payments.
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
        # @yieldparam result [Google::Apis::AdsenseV1_4::Payments] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdsenseV1_4::Payments]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_payments(account_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'accounts/{accountId}/payments'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AdsenseV1_4::PaymentsRepresentation
          command.response_class = Google::Apis::AdsenseV1_4::Payments
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        
        # Generate an AdSense report based on the report request sent in the query
        # parameters. Returns the result as JSON; to retrieve output in CSV format
        # specify "alt=csv" as a query parameter.
        # @param [String] account_id
        #   Account upon which to report.
        # @param [String] currency
        #   Optional currency to use when reporting on monetary metrics. Defaults to the
        #   account's currency if not set.
        # @param [Array<String>, String] dimension
        #   Dimensions to base the report on.
        # @param [String] end_date
        #   End of the date range to report on in "YYYY-MM-DD" format, inclusive.
        # @param [Array<String>, String] filter
        #   Filters to be run on the report.
        # @param [String] locale
        #   Optional locale to use for translating report output to a local language.
        #   Defaults to "en_US" if not specified.
        # @param [Fixnum] max_results
        #   The maximum number of rows of report data to return.
        # @param [Array<String>, String] metric
        #   Numeric columns to include in the report.
        # @param [Array<String>, String] sort
        #   The name of a dimension or metric to sort the resulting report on, optionally
        #   prefixed with "+" to sort ascending or "-" to sort descending. If no prefix is
        #   specified, the column is sorted ascending.
        # @param [String] start_date
        #   Start of the date range to report on in "YYYY-MM-DD" format, inclusive.
        # @param [Fixnum] start_index
        #   Index of the first row of report data to return.
        # @param [Boolean] use_timezone_reporting
        #   Whether the report should be generated in the AdSense account's local timezone.
        #   If false default PST/PDT timezone will be used.
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
        # @yieldparam result [Google::Apis::AdsenseV1_4::ReportsGenerateResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdsenseV1_4::ReportsGenerateResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def generate_account_report(account_id, currency: nil, dimension: nil, end_date: nil, filter: nil, locale: nil, max_results: nil, metric: nil, sort: nil, start_date: nil, start_index: nil, use_timezone_reporting: nil, fields: nil, quota_user: nil, user_ip: nil, download_dest: nil, options: nil, &block)
          path = 'accounts/{accountId}/reports'
          if download_dest.nil?
            command =  make_simple_command(:get, path, options)
          else
            command = make_download_command(:get, path, options)
            command.download_dest = download_dest
          end
          command.response_representation = Google::Apis::AdsenseV1_4::ReportsGenerateResponseRepresentation
          command.response_class = Google::Apis::AdsenseV1_4::ReportsGenerateResponse
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['currency'] = currency unless currency.nil?
          command.query['dimension'] = dimension unless dimension.nil?
          command.query['endDate'] = end_date unless end_date.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['locale'] = locale unless locale.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['metric'] = metric unless metric.nil?
          command.query['sort'] = sort unless sort.nil?
          command.query['startDate'] = start_date unless start_date.nil?
          command.query['startIndex'] = start_index unless start_index.nil?
          command.query['useTimezoneReporting'] = use_timezone_reporting unless use_timezone_reporting.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Generate an AdSense report based on the saved report ID sent in the query
        # parameters.
        # @param [String] account_id
        #   Account to which the saved reports belong.
        # @param [String] saved_report_id
        #   The saved report to retrieve.
        # @param [String] locale
        #   Optional locale to use for translating report output to a local language.
        #   Defaults to "en_US" if not specified.
        # @param [Fixnum] max_results
        #   The maximum number of rows of report data to return.
        # @param [Fixnum] start_index
        #   Index of the first row of report data to return.
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
        # @yieldparam result [Google::Apis::AdsenseV1_4::ReportsGenerateResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdsenseV1_4::ReportsGenerateResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def generate_account_report_saved(account_id, saved_report_id, locale: nil, max_results: nil, start_index: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'accounts/{accountId}/reports/{savedReportId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AdsenseV1_4::ReportsGenerateResponseRepresentation
          command.response_class = Google::Apis::AdsenseV1_4::ReportsGenerateResponse
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['savedReportId'] = saved_report_id unless saved_report_id.nil?
          command.query['locale'] = locale unless locale.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['startIndex'] = start_index unless start_index.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # List all saved reports in the specified AdSense account.
        # @param [String] account_id
        #   Account to which the saved reports belong.
        # @param [Fixnum] max_results
        #   The maximum number of saved reports to include in the response, used for
        #   paging.
        # @param [String] page_token
        #   A continuation token, used to page through saved reports. To retrieve the next
        #   page, set this parameter to the value of "nextPageToken" from the previous
        #   response.
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
        # @yieldparam result [Google::Apis::AdsenseV1_4::SavedReports] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdsenseV1_4::SavedReports]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_report_saveds(account_id, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'accounts/{accountId}/reports/saved'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AdsenseV1_4::SavedReportsRepresentation
          command.response_class = Google::Apis::AdsenseV1_4::SavedReports
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        
        
        # List a specific saved ad style for the specified account.
        # @param [String] account_id
        #   Account for which to get the saved ad style.
        # @param [String] saved_ad_style_id
        #   Saved ad style to retrieve.
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
        # @yieldparam result [Google::Apis::AdsenseV1_4::SavedAdStyle] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdsenseV1_4::SavedAdStyle]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_savedadstyle(account_id, saved_ad_style_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'accounts/{accountId}/savedadstyles/{savedAdStyleId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AdsenseV1_4::SavedAdStyleRepresentation
          command.response_class = Google::Apis::AdsenseV1_4::SavedAdStyle
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['savedAdStyleId'] = saved_ad_style_id unless saved_ad_style_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # List all saved ad styles in the specified account.
        # @param [String] account_id
        #   Account for which to list saved ad styles.
        # @param [Fixnum] max_results
        #   The maximum number of saved ad styles to include in the response, used for
        #   paging.
        # @param [String] page_token
        #   A continuation token, used to page through saved ad styles. To retrieve the
        #   next page, set this parameter to the value of "nextPageToken" from the
        #   previous response.
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
        # @yieldparam result [Google::Apis::AdsenseV1_4::SavedAdStyles] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdsenseV1_4::SavedAdStyles]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_savedadstyles(account_id, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'accounts/{accountId}/savedadstyles'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AdsenseV1_4::SavedAdStylesRepresentation
          command.response_class = Google::Apis::AdsenseV1_4::SavedAdStyles
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        
        # List all URL channels in the specified ad client for the specified account.
        # @param [String] account_id
        #   Account to which the ad client belongs.
        # @param [String] ad_client_id
        #   Ad client for which to list URL channels.
        # @param [Fixnum] max_results
        #   The maximum number of URL channels to include in the response, used for paging.
        # @param [String] page_token
        #   A continuation token, used to page through URL channels. To retrieve the next
        #   page, set this parameter to the value of "nextPageToken" from the previous
        #   response.
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
        # @yieldparam result [Google::Apis::AdsenseV1_4::UrlChannels] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdsenseV1_4::UrlChannels]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_urlchannels(account_id, ad_client_id, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'accounts/{accountId}/adclients/{adClientId}/urlchannels'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AdsenseV1_4::UrlChannelsRepresentation
          command.response_class = Google::Apis::AdsenseV1_4::UrlChannels
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['adClientId'] = ad_client_id unless ad_client_id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # List all ad clients in this AdSense account.
        # @param [Fixnum] max_results
        #   The maximum number of ad clients to include in the response, used for paging.
        # @param [String] page_token
        #   A continuation token, used to page through ad clients. To retrieve the next
        #   page, set this parameter to the value of "nextPageToken" from the previous
        #   response.
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
        # @yieldparam result [Google::Apis::AdsenseV1_4::AdClients] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdsenseV1_4::AdClients]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_adclients(max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'adclients'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AdsenseV1_4::AdClientsRepresentation
          command.response_class = Google::Apis::AdsenseV1_4::AdClients
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Gets the specified ad unit in the specified ad client.
        # @param [String] ad_client_id
        #   Ad client for which to get the ad unit.
        # @param [String] ad_unit_id
        #   Ad unit to retrieve.
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
        # @yieldparam result [Google::Apis::AdsenseV1_4::AdUnit] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdsenseV1_4::AdUnit]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_adunit(ad_client_id, ad_unit_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'adclients/{adClientId}/adunits/{adUnitId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AdsenseV1_4::AdUnitRepresentation
          command.response_class = Google::Apis::AdsenseV1_4::AdUnit
          command.params['adClientId'] = ad_client_id unless ad_client_id.nil?
          command.params['adUnitId'] = ad_unit_id unless ad_unit_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Get ad code for the specified ad unit.
        # @param [String] ad_client_id
        #   Ad client with contains the ad unit.
        # @param [String] ad_unit_id
        #   Ad unit to get the code for.
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
        # @yieldparam result [Google::Apis::AdsenseV1_4::AdCode] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdsenseV1_4::AdCode]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_ad_code_adunit(ad_client_id, ad_unit_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'adclients/{adClientId}/adunits/{adUnitId}/adcode'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AdsenseV1_4::AdCodeRepresentation
          command.response_class = Google::Apis::AdsenseV1_4::AdCode
          command.params['adClientId'] = ad_client_id unless ad_client_id.nil?
          command.params['adUnitId'] = ad_unit_id unless ad_unit_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # List all ad units in the specified ad client for this AdSense account.
        # @param [String] ad_client_id
        #   Ad client for which to list ad units.
        # @param [Boolean] include_inactive
        #   Whether to include inactive ad units. Default: true.
        # @param [Fixnum] max_results
        #   The maximum number of ad units to include in the response, used for paging.
        # @param [String] page_token
        #   A continuation token, used to page through ad units. To retrieve the next page,
        #   set this parameter to the value of "nextPageToken" from the previous response.
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
        # @yieldparam result [Google::Apis::AdsenseV1_4::AdUnits] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdsenseV1_4::AdUnits]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_adunits(ad_client_id, include_inactive: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'adclients/{adClientId}/adunits'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AdsenseV1_4::AdUnitsRepresentation
          command.response_class = Google::Apis::AdsenseV1_4::AdUnits
          command.params['adClientId'] = ad_client_id unless ad_client_id.nil?
          command.query['includeInactive'] = include_inactive unless include_inactive.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # List all custom channels which the specified ad unit belongs to.
        # @param [String] ad_client_id
        #   Ad client which contains the ad unit.
        # @param [String] ad_unit_id
        #   Ad unit for which to list custom channels.
        # @param [Fixnum] max_results
        #   The maximum number of custom channels to include in the response, used for
        #   paging.
        # @param [String] page_token
        #   A continuation token, used to page through custom channels. To retrieve the
        #   next page, set this parameter to the value of "nextPageToken" from the
        #   previous response.
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
        # @yieldparam result [Google::Apis::AdsenseV1_4::CustomChannels] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdsenseV1_4::CustomChannels]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_adunit_customchannels(ad_client_id, ad_unit_id, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'adclients/{adClientId}/adunits/{adUnitId}/customchannels'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AdsenseV1_4::CustomChannelsRepresentation
          command.response_class = Google::Apis::AdsenseV1_4::CustomChannels
          command.params['adClientId'] = ad_client_id unless ad_client_id.nil?
          command.params['adUnitId'] = ad_unit_id unless ad_unit_id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Dismiss (delete) the specified alert from the publisher's AdSense account.
        # @param [String] alert_id
        #   Alert to delete.
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
        def delete_alert(alert_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'alerts/{alertId}'
          command =  make_simple_command(:delete, path, options)
          command.params['alertId'] = alert_id unless alert_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # List the alerts for this AdSense account.
        # @param [String] locale
        #   The locale to use for translating alert messages. The account locale will be
        #   used if this is not supplied. The AdSense default (English) will be used if
        #   the supplied locale is invalid or unsupported.
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
        # @yieldparam result [Google::Apis::AdsenseV1_4::Alerts] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdsenseV1_4::Alerts]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_alerts(locale: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'alerts'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AdsenseV1_4::AlertsRepresentation
          command.response_class = Google::Apis::AdsenseV1_4::Alerts
          command.query['locale'] = locale unless locale.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Get the specified custom channel from the specified ad client.
        # @param [String] ad_client_id
        #   Ad client which contains the custom channel.
        # @param [String] custom_channel_id
        #   Custom channel to retrieve.
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
        # @yieldparam result [Google::Apis::AdsenseV1_4::CustomChannel] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdsenseV1_4::CustomChannel]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_customchannel(ad_client_id, custom_channel_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'adclients/{adClientId}/customchannels/{customChannelId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AdsenseV1_4::CustomChannelRepresentation
          command.response_class = Google::Apis::AdsenseV1_4::CustomChannel
          command.params['adClientId'] = ad_client_id unless ad_client_id.nil?
          command.params['customChannelId'] = custom_channel_id unless custom_channel_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # List all custom channels in the specified ad client for this AdSense account.
        # @param [String] ad_client_id
        #   Ad client for which to list custom channels.
        # @param [Fixnum] max_results
        #   The maximum number of custom channels to include in the response, used for
        #   paging.
        # @param [String] page_token
        #   A continuation token, used to page through custom channels. To retrieve the
        #   next page, set this parameter to the value of "nextPageToken" from the
        #   previous response.
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
        # @yieldparam result [Google::Apis::AdsenseV1_4::CustomChannels] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdsenseV1_4::CustomChannels]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_customchannels(ad_client_id, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'adclients/{adClientId}/customchannels'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AdsenseV1_4::CustomChannelsRepresentation
          command.response_class = Google::Apis::AdsenseV1_4::CustomChannels
          command.params['adClientId'] = ad_client_id unless ad_client_id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # List all ad units in the specified custom channel.
        # @param [String] ad_client_id
        #   Ad client which contains the custom channel.
        # @param [String] custom_channel_id
        #   Custom channel for which to list ad units.
        # @param [Boolean] include_inactive
        #   Whether to include inactive ad units. Default: true.
        # @param [Fixnum] max_results
        #   The maximum number of ad units to include in the response, used for paging.
        # @param [String] page_token
        #   A continuation token, used to page through ad units. To retrieve the next page,
        #   set this parameter to the value of "nextPageToken" from the previous response.
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
        # @yieldparam result [Google::Apis::AdsenseV1_4::AdUnits] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdsenseV1_4::AdUnits]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_customchannel_adunits(ad_client_id, custom_channel_id, include_inactive: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'adclients/{adClientId}/customchannels/{customChannelId}/adunits'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AdsenseV1_4::AdUnitsRepresentation
          command.response_class = Google::Apis::AdsenseV1_4::AdUnits
          command.params['adClientId'] = ad_client_id unless ad_client_id.nil?
          command.params['customChannelId'] = custom_channel_id unless custom_channel_id.nil?
          command.query['includeInactive'] = include_inactive unless include_inactive.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # List the metadata for the dimensions available to this AdSense account.
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
        # @yieldparam result [Google::Apis::AdsenseV1_4::Metadata] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdsenseV1_4::Metadata]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_metadatum_dimensions(fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'metadata/dimensions'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AdsenseV1_4::MetadataRepresentation
          command.response_class = Google::Apis::AdsenseV1_4::Metadata
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        
        # List the metadata for the metrics available to this AdSense account.
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
        # @yieldparam result [Google::Apis::AdsenseV1_4::Metadata] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdsenseV1_4::Metadata]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_metadatum_metrics(fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'metadata/metrics'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AdsenseV1_4::MetadataRepresentation
          command.response_class = Google::Apis::AdsenseV1_4::Metadata
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # List the payments for this AdSense account.
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
        # @yieldparam result [Google::Apis::AdsenseV1_4::Payments] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdsenseV1_4::Payments]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_payments(fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'payments'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AdsenseV1_4::PaymentsRepresentation
          command.response_class = Google::Apis::AdsenseV1_4::Payments
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Generate an AdSense report based on the report request sent in the query
        # parameters. Returns the result as JSON; to retrieve output in CSV format
        # specify "alt=csv" as a query parameter.
        # @param [Array<String>, String] account_id
        #   Accounts upon which to report.
        # @param [String] currency
        #   Optional currency to use when reporting on monetary metrics. Defaults to the
        #   account's currency if not set.
        # @param [Array<String>, String] dimension
        #   Dimensions to base the report on.
        # @param [String] end_date
        #   End of the date range to report on in "YYYY-MM-DD" format, inclusive.
        # @param [Array<String>, String] filter
        #   Filters to be run on the report.
        # @param [String] locale
        #   Optional locale to use for translating report output to a local language.
        #   Defaults to "en_US" if not specified.
        # @param [Fixnum] max_results
        #   The maximum number of rows of report data to return.
        # @param [Array<String>, String] metric
        #   Numeric columns to include in the report.
        # @param [Array<String>, String] sort
        #   The name of a dimension or metric to sort the resulting report on, optionally
        #   prefixed with "+" to sort ascending or "-" to sort descending. If no prefix is
        #   specified, the column is sorted ascending.
        # @param [String] start_date
        #   Start of the date range to report on in "YYYY-MM-DD" format, inclusive.
        # @param [Fixnum] start_index
        #   Index of the first row of report data to return.
        # @param [Boolean] use_timezone_reporting
        #   Whether the report should be generated in the AdSense account's local timezone.
        #   If false default PST/PDT timezone will be used.
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
        # @yieldparam result [Google::Apis::AdsenseV1_4::ReportsGenerateResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdsenseV1_4::ReportsGenerateResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def generate_report(account_id: nil, currency: nil, dimension: nil, end_date: nil, filter: nil, locale: nil, max_results: nil, metric: nil, sort: nil, start_date: nil, start_index: nil, use_timezone_reporting: nil, fields: nil, quota_user: nil, user_ip: nil, download_dest: nil, options: nil, &block)
          path = 'reports'
          if download_dest.nil?
            command =  make_simple_command(:get, path, options)
          else
            command = make_download_command(:get, path, options)
            command.download_dest = download_dest
          end
          command.response_representation = Google::Apis::AdsenseV1_4::ReportsGenerateResponseRepresentation
          command.response_class = Google::Apis::AdsenseV1_4::ReportsGenerateResponse
          command.query['accountId'] = account_id unless account_id.nil?
          command.query['currency'] = currency unless currency.nil?
          command.query['dimension'] = dimension unless dimension.nil?
          command.query['endDate'] = end_date unless end_date.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['locale'] = locale unless locale.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['metric'] = metric unless metric.nil?
          command.query['sort'] = sort unless sort.nil?
          command.query['startDate'] = start_date unless start_date.nil?
          command.query['startIndex'] = start_index unless start_index.nil?
          command.query['useTimezoneReporting'] = use_timezone_reporting unless use_timezone_reporting.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Generate an AdSense report based on the saved report ID sent in the query
        # parameters.
        # @param [String] saved_report_id
        #   The saved report to retrieve.
        # @param [String] locale
        #   Optional locale to use for translating report output to a local language.
        #   Defaults to "en_US" if not specified.
        # @param [Fixnum] max_results
        #   The maximum number of rows of report data to return.
        # @param [Fixnum] start_index
        #   Index of the first row of report data to return.
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
        # @yieldparam result [Google::Apis::AdsenseV1_4::ReportsGenerateResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdsenseV1_4::ReportsGenerateResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def generate_report_saved(saved_report_id, locale: nil, max_results: nil, start_index: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'reports/{savedReportId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AdsenseV1_4::ReportsGenerateResponseRepresentation
          command.response_class = Google::Apis::AdsenseV1_4::ReportsGenerateResponse
          command.params['savedReportId'] = saved_report_id unless saved_report_id.nil?
          command.query['locale'] = locale unless locale.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['startIndex'] = start_index unless start_index.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # List all saved reports in this AdSense account.
        # @param [Fixnum] max_results
        #   The maximum number of saved reports to include in the response, used for
        #   paging.
        # @param [String] page_token
        #   A continuation token, used to page through saved reports. To retrieve the next
        #   page, set this parameter to the value of "nextPageToken" from the previous
        #   response.
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
        # @yieldparam result [Google::Apis::AdsenseV1_4::SavedReports] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdsenseV1_4::SavedReports]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_report_saveds(max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'reports/saved'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AdsenseV1_4::SavedReportsRepresentation
          command.response_class = Google::Apis::AdsenseV1_4::SavedReports
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Get a specific saved ad style from the user's account.
        # @param [String] saved_ad_style_id
        #   Saved ad style to retrieve.
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
        # @yieldparam result [Google::Apis::AdsenseV1_4::SavedAdStyle] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdsenseV1_4::SavedAdStyle]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_savedadstyle(saved_ad_style_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'savedadstyles/{savedAdStyleId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AdsenseV1_4::SavedAdStyleRepresentation
          command.response_class = Google::Apis::AdsenseV1_4::SavedAdStyle
          command.params['savedAdStyleId'] = saved_ad_style_id unless saved_ad_style_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # List all saved ad styles in the user's account.
        # @param [Fixnum] max_results
        #   The maximum number of saved ad styles to include in the response, used for
        #   paging.
        # @param [String] page_token
        #   A continuation token, used to page through saved ad styles. To retrieve the
        #   next page, set this parameter to the value of "nextPageToken" from the
        #   previous response.
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
        # @yieldparam result [Google::Apis::AdsenseV1_4::SavedAdStyles] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdsenseV1_4::SavedAdStyles]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_savedadstyles(max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'savedadstyles'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AdsenseV1_4::SavedAdStylesRepresentation
          command.response_class = Google::Apis::AdsenseV1_4::SavedAdStyles
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # List all URL channels in the specified ad client for this AdSense account.
        # @param [String] ad_client_id
        #   Ad client for which to list URL channels.
        # @param [Fixnum] max_results
        #   The maximum number of URL channels to include in the response, used for paging.
        # @param [String] page_token
        #   A continuation token, used to page through URL channels. To retrieve the next
        #   page, set this parameter to the value of "nextPageToken" from the previous
        #   response.
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
        # @yieldparam result [Google::Apis::AdsenseV1_4::UrlChannels] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdsenseV1_4::UrlChannels]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_urlchannels(ad_client_id, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'adclients/{adClientId}/urlchannels'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AdsenseV1_4::UrlChannelsRepresentation
          command.response_class = Google::Apis::AdsenseV1_4::UrlChannels
          command.params['adClientId'] = ad_client_id unless ad_client_id.nil?
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
