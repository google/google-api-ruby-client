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
    module AnalyticsV3
      # Google Analytics API
      #
      # View and manage your Google Analytics data
      #
      # @example
      #    require 'google/apis/analytics_v3'
      #
      #    Analytics = Google::Apis::AnalyticsV3 # Alias the module
      #    service = Analytics::AnalyticsService.new
      #
      # @see https://developers.google.com/analytics/
      class AnalyticsService < Google::Apis::Core::BaseService

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
          super('https://www.googleapis.com/', 'analytics/v3/')
        end

        # Returns Analytics data for a view (profile).
        # @param [String] dimensions
        #   A comma-separated list of Analytics dimensions. E.g., 'ga:browser,ga:city'.
        # @param [String] end_date
        #   End date for fetching Analytics data. Request can should specify an end date
        #   formatted as YYYY-MM-DD, or as a relative date (e.g., today, yesterday, or
        #   7daysAgo). The default value is yesterday.
        # @param [String] filters
        #   A comma-separated list of dimension or metric filters to be applied to
        #   Analytics data.
        # @param [String] ids
        #   Unique table ID for retrieving Analytics data. Table ID is of the form ga:XXXX,
        #   where XXXX is the Analytics view (profile) ID.
        # @param [Fixnum] max_results
        #   The maximum number of entries to include in this feed.
        # @param [String] metrics
        #   A comma-separated list of Analytics metrics. E.g., 'ga:sessions,ga:pageviews'.
        #   At least one metric must be specified.
        # @param [String] output
        #   The selected format for the response. Default format is JSON.
        # @param [String] sampling_level
        #   The desired sampling level.
        # @param [String] segment
        #   An Analytics segment to be applied to data.
        # @param [String] sort
        #   A comma-separated list of dimensions or metrics that determine the sort order
        #   for Analytics data.
        # @param [String] start_date
        #   Start date for fetching Analytics data. Requests can specify a start date
        #   formatted as YYYY-MM-DD, or as a relative date (e.g., today, yesterday, or
        #   7daysAgo). The default value is 7daysAgo.
        # @param [Fixnum] start_index
        #   An index of the first entity to retrieve. Use this parameter as a pagination
        #   mechanism along with the max-results parameter.
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
        # @yieldparam result [Google::Apis::AnalyticsV3::GaData] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsV3::GaData]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_datum_ga(dimensions: nil, end_date: nil, filters: nil, ids: nil, max_results: nil, metrics: nil, output: nil, sampling_level: nil, segment: nil, sort: nil, start_date: nil, start_index: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'data/ga'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AnalyticsV3::GaDataRepresentation
          command.response_class = Google::Apis::AnalyticsV3::GaData
          command.query['dimensions'] = dimensions unless dimensions.nil?
          command.query['end-date'] = end_date unless end_date.nil?
          command.query['filters'] = filters unless filters.nil?
          command.query['ids'] = ids unless ids.nil?
          command.query['max-results'] = max_results unless max_results.nil?
          command.query['metrics'] = metrics unless metrics.nil?
          command.query['output'] = output unless output.nil?
          command.query['samplingLevel'] = sampling_level unless sampling_level.nil?
          command.query['segment'] = segment unless segment.nil?
          command.query['sort'] = sort unless sort.nil?
          command.query['start-date'] = start_date unless start_date.nil?
          command.query['start-index'] = start_index unless start_index.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        
        # Returns Analytics Multi-Channel Funnels data for a view (profile).
        # @param [String] dimensions
        #   A comma-separated list of Multi-Channel Funnels dimensions. E.g., 'mcf:source,
        #   mcf:medium'.
        # @param [String] end_date
        #   End date for fetching Analytics data. Requests can specify a start date
        #   formatted as YYYY-MM-DD, or as a relative date (e.g., today, yesterday, or
        #   7daysAgo). The default value is 7daysAgo.
        # @param [String] filters
        #   A comma-separated list of dimension or metric filters to be applied to the
        #   Analytics data.
        # @param [String] ids
        #   Unique table ID for retrieving Analytics data. Table ID is of the form ga:XXXX,
        #   where XXXX is the Analytics view (profile) ID.
        # @param [Fixnum] max_results
        #   The maximum number of entries to include in this feed.
        # @param [String] metrics
        #   A comma-separated list of Multi-Channel Funnels metrics. E.g., 'mcf:
        #   totalConversions,mcf:totalConversionValue'. At least one metric must be
        #   specified.
        # @param [String] sampling_level
        #   The desired sampling level.
        # @param [String] sort
        #   A comma-separated list of dimensions or metrics that determine the sort order
        #   for the Analytics data.
        # @param [String] start_date
        #   Start date for fetching Analytics data. Requests can specify a start date
        #   formatted as YYYY-MM-DD, or as a relative date (e.g., today, yesterday, or
        #   7daysAgo). The default value is 7daysAgo.
        # @param [Fixnum] start_index
        #   An index of the first entity to retrieve. Use this parameter as a pagination
        #   mechanism along with the max-results parameter.
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
        # @yieldparam result [Google::Apis::AnalyticsV3::McfData] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsV3::McfData]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_datum_mcf(dimensions: nil, end_date: nil, filters: nil, ids: nil, max_results: nil, metrics: nil, sampling_level: nil, sort: nil, start_date: nil, start_index: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'data/mcf'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AnalyticsV3::McfDataRepresentation
          command.response_class = Google::Apis::AnalyticsV3::McfData
          command.query['dimensions'] = dimensions unless dimensions.nil?
          command.query['end-date'] = end_date unless end_date.nil?
          command.query['filters'] = filters unless filters.nil?
          command.query['ids'] = ids unless ids.nil?
          command.query['max-results'] = max_results unless max_results.nil?
          command.query['metrics'] = metrics unless metrics.nil?
          command.query['samplingLevel'] = sampling_level unless sampling_level.nil?
          command.query['sort'] = sort unless sort.nil?
          command.query['start-date'] = start_date unless start_date.nil?
          command.query['start-index'] = start_index unless start_index.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        
        # Returns real time data for a view (profile).
        # @param [String] dimensions
        #   A comma-separated list of real time dimensions. E.g., 'rt:medium,rt:city'.
        # @param [String] filters
        #   A comma-separated list of dimension or metric filters to be applied to real
        #   time data.
        # @param [String] ids
        #   Unique table ID for retrieving real time data. Table ID is of the form ga:XXXX,
        #   where XXXX is the Analytics view (profile) ID.
        # @param [Fixnum] max_results
        #   The maximum number of entries to include in this feed.
        # @param [String] metrics
        #   A comma-separated list of real time metrics. E.g., 'rt:activeUsers'. At least
        #   one metric must be specified.
        # @param [String] sort
        #   A comma-separated list of dimensions or metrics that determine the sort order
        #   for real time data.
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
        # @yieldparam result [Google::Apis::AnalyticsV3::RealtimeData] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsV3::RealtimeData]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_datum_realtime(dimensions: nil, filters: nil, ids: nil, max_results: nil, metrics: nil, sort: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'data/realtime'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AnalyticsV3::RealtimeDataRepresentation
          command.response_class = Google::Apis::AnalyticsV3::RealtimeData
          command.query['dimensions'] = dimensions unless dimensions.nil?
          command.query['filters'] = filters unless filters.nil?
          command.query['ids'] = ids unless ids.nil?
          command.query['max-results'] = max_results unless max_results.nil?
          command.query['metrics'] = metrics unless metrics.nil?
          command.query['sort'] = sort unless sort.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Lists account summaries (lightweight tree comprised of accounts/properties/
        # profiles) to which the user has access.
        # @param [Fixnum] max_results
        #   The maximum number of account summaries to include in this response, where the
        #   largest acceptable value is 1000.
        # @param [Fixnum] start_index
        #   An index of the first entity to retrieve. Use this parameter as a pagination
        #   mechanism along with the max-results parameter.
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
        # @yieldparam result [Google::Apis::AnalyticsV3::AccountSummaries] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsV3::AccountSummaries]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_management_account_summaries(max_results: nil, start_index: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'management/accountSummaries'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AnalyticsV3::AccountSummariesRepresentation
          command.response_class = Google::Apis::AnalyticsV3::AccountSummaries
          command.query['max-results'] = max_results unless max_results.nil?
          command.query['start-index'] = start_index unless start_index.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        
        # Removes a user from the given account.
        # @param [String] account_id
        #   Account ID to delete the user link for.
        # @param [String] link_id
        #   Link ID to delete the user link for.
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
        def delete_management_account_user_link(account_id, link_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'management/accounts/{accountId}/entityUserLinks/{linkId}'
          command =  make_simple_command(:delete, path, options)
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['linkId'] = link_id unless link_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Adds a new user to the given account.
        # @param [Google::Apis::AnalyticsV3::EntityUserLink] entity_user_link_obj
        #   
        # @param [String] account_id
        #   Account ID to create the user link for.
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
        # @yieldparam result [Google::Apis::AnalyticsV3::EntityUserLink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsV3::EntityUserLink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_management_account_user_link(entity_user_link_obj, account_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'management/accounts/{accountId}/entityUserLinks'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::AnalyticsV3::EntityUserLinkRepresentation
          command.request_object = entity_user_link_obj
          command.response_representation = Google::Apis::AnalyticsV3::EntityUserLinkRepresentation
          command.response_class = Google::Apis::AnalyticsV3::EntityUserLink
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Lists account-user links for a given account.
        # @param [String] account_id
        #   Account ID to retrieve the user links for.
        # @param [Fixnum] max_results
        #   The maximum number of account-user links to include in this response.
        # @param [Fixnum] start_index
        #   An index of the first account-user link to retrieve. Use this parameter as a
        #   pagination mechanism along with the max-results parameter.
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
        # @yieldparam result [Google::Apis::AnalyticsV3::EntityUserLinks] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsV3::EntityUserLinks]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_management_account_user_links(account_id, max_results: nil, start_index: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'management/accounts/{accountId}/entityUserLinks'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AnalyticsV3::EntityUserLinksRepresentation
          command.response_class = Google::Apis::AnalyticsV3::EntityUserLinks
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['max-results'] = max_results unless max_results.nil?
          command.query['start-index'] = start_index unless start_index.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Updates permissions for an existing user on the given account.
        # @param [Google::Apis::AnalyticsV3::EntityUserLink] entity_user_link_obj
        #   
        # @param [String] account_id
        #   Account ID to update the account-user link for.
        # @param [String] link_id
        #   Link ID to update the account-user link for.
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
        # @yieldparam result [Google::Apis::AnalyticsV3::EntityUserLink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsV3::EntityUserLink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_management_account_user_link(entity_user_link_obj, account_id, link_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'management/accounts/{accountId}/entityUserLinks/{linkId}'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::AnalyticsV3::EntityUserLinkRepresentation
          command.request_object = entity_user_link_obj
          command.response_representation = Google::Apis::AnalyticsV3::EntityUserLinkRepresentation
          command.response_class = Google::Apis::AnalyticsV3::EntityUserLink
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['linkId'] = link_id unless link_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        
        # Lists all accounts to which the user has access.
        # @param [Fixnum] max_results
        #   The maximum number of accounts to include in this response.
        # @param [Fixnum] start_index
        #   An index of the first account to retrieve. Use this parameter as a pagination
        #   mechanism along with the max-results parameter.
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
        # @yieldparam result [Google::Apis::AnalyticsV3::Accounts] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsV3::Accounts]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_management_accounts(max_results: nil, start_index: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'management/accounts'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AnalyticsV3::AccountsRepresentation
          command.response_class = Google::Apis::AnalyticsV3::Accounts
          command.query['max-results'] = max_results unless max_results.nil?
          command.query['start-index'] = start_index unless start_index.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        
        # List custom data sources to which the user has access.
        # @param [String] account_id
        #   Account Id for the custom data sources to retrieve.
        # @param [String] web_property_id
        #   Web property Id for the custom data sources to retrieve.
        # @param [Fixnum] max_results
        #   The maximum number of custom data sources to include in this response.
        # @param [Fixnum] start_index
        #   A 1-based index of the first custom data source to retrieve. Use this
        #   parameter as a pagination mechanism along with the max-results parameter.
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
        # @yieldparam result [Google::Apis::AnalyticsV3::CustomDataSources] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsV3::CustomDataSources]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_management_custom_data_sources(account_id, web_property_id, max_results: nil, start_index: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'management/accounts/{accountId}/webproperties/{webPropertyId}/customDataSources'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AnalyticsV3::CustomDataSourcesRepresentation
          command.response_class = Google::Apis::AnalyticsV3::CustomDataSources
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['webPropertyId'] = web_property_id unless web_property_id.nil?
          command.query['max-results'] = max_results unless max_results.nil?
          command.query['start-index'] = start_index unless start_index.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        
        # Get a custom dimension to which the user has access.
        # @param [String] account_id
        #   Account ID for the custom dimension to retrieve.
        # @param [String] web_property_id
        #   Web property ID for the custom dimension to retrieve.
        # @param [String] custom_dimension_id
        #   The ID of the custom dimension to retrieve.
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
        # @yieldparam result [Google::Apis::AnalyticsV3::CustomDimension] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsV3::CustomDimension]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_management_custom_dimension(account_id, web_property_id, custom_dimension_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'management/accounts/{accountId}/webproperties/{webPropertyId}/customDimensions/{customDimensionId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AnalyticsV3::CustomDimensionRepresentation
          command.response_class = Google::Apis::AnalyticsV3::CustomDimension
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['webPropertyId'] = web_property_id unless web_property_id.nil?
          command.params['customDimensionId'] = custom_dimension_id unless custom_dimension_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Create a new custom dimension.
        # @param [Google::Apis::AnalyticsV3::CustomDimension] custom_dimension_obj
        #   
        # @param [String] account_id
        #   Account ID for the custom dimension to create.
        # @param [String] web_property_id
        #   Web property ID for the custom dimension to create.
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
        # @yieldparam result [Google::Apis::AnalyticsV3::CustomDimension] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsV3::CustomDimension]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_management_custom_dimension(custom_dimension_obj, account_id, web_property_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'management/accounts/{accountId}/webproperties/{webPropertyId}/customDimensions'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::AnalyticsV3::CustomDimensionRepresentation
          command.request_object = custom_dimension_obj
          command.response_representation = Google::Apis::AnalyticsV3::CustomDimensionRepresentation
          command.response_class = Google::Apis::AnalyticsV3::CustomDimension
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['webPropertyId'] = web_property_id unless web_property_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Lists custom dimensions to which the user has access.
        # @param [String] account_id
        #   Account ID for the custom dimensions to retrieve.
        # @param [String] web_property_id
        #   Web property ID for the custom dimensions to retrieve.
        # @param [Fixnum] max_results
        #   The maximum number of custom dimensions to include in this response.
        # @param [Fixnum] start_index
        #   An index of the first entity to retrieve. Use this parameter as a pagination
        #   mechanism along with the max-results parameter.
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
        # @yieldparam result [Google::Apis::AnalyticsV3::CustomDimensions] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsV3::CustomDimensions]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_management_custom_dimensions(account_id, web_property_id, max_results: nil, start_index: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'management/accounts/{accountId}/webproperties/{webPropertyId}/customDimensions'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AnalyticsV3::CustomDimensionsRepresentation
          command.response_class = Google::Apis::AnalyticsV3::CustomDimensions
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['webPropertyId'] = web_property_id unless web_property_id.nil?
          command.query['max-results'] = max_results unless max_results.nil?
          command.query['start-index'] = start_index unless start_index.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Updates an existing custom dimension. This method supports patch semantics.
        # @param [Google::Apis::AnalyticsV3::CustomDimension] custom_dimension_obj
        #   
        # @param [String] account_id
        #   Account ID for the custom dimension to update.
        # @param [String] web_property_id
        #   Web property ID for the custom dimension to update.
        # @param [String] custom_dimension_id
        #   Custom dimension ID for the custom dimension to update.
        # @param [Boolean] ignore_custom_data_source_links
        #   Force the update and ignore any warnings related to the custom dimension being
        #   linked to a custom data source / data set.
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
        # @yieldparam result [Google::Apis::AnalyticsV3::CustomDimension] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsV3::CustomDimension]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_management_custom_dimension(custom_dimension_obj, account_id, web_property_id, custom_dimension_id, ignore_custom_data_source_links: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'management/accounts/{accountId}/webproperties/{webPropertyId}/customDimensions/{customDimensionId}'
          command =  make_simple_command(:patch, path, options)
          command.request_representation = Google::Apis::AnalyticsV3::CustomDimensionRepresentation
          command.request_object = custom_dimension_obj
          command.response_representation = Google::Apis::AnalyticsV3::CustomDimensionRepresentation
          command.response_class = Google::Apis::AnalyticsV3::CustomDimension
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['webPropertyId'] = web_property_id unless web_property_id.nil?
          command.params['customDimensionId'] = custom_dimension_id unless custom_dimension_id.nil?
          command.query['ignoreCustomDataSourceLinks'] = ignore_custom_data_source_links unless ignore_custom_data_source_links.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Updates an existing custom dimension.
        # @param [Google::Apis::AnalyticsV3::CustomDimension] custom_dimension_obj
        #   
        # @param [String] account_id
        #   Account ID for the custom dimension to update.
        # @param [String] web_property_id
        #   Web property ID for the custom dimension to update.
        # @param [String] custom_dimension_id
        #   Custom dimension ID for the custom dimension to update.
        # @param [Boolean] ignore_custom_data_source_links
        #   Force the update and ignore any warnings related to the custom dimension being
        #   linked to a custom data source / data set.
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
        # @yieldparam result [Google::Apis::AnalyticsV3::CustomDimension] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsV3::CustomDimension]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_management_custom_dimension(custom_dimension_obj, account_id, web_property_id, custom_dimension_id, ignore_custom_data_source_links: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'management/accounts/{accountId}/webproperties/{webPropertyId}/customDimensions/{customDimensionId}'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::AnalyticsV3::CustomDimensionRepresentation
          command.request_object = custom_dimension_obj
          command.response_representation = Google::Apis::AnalyticsV3::CustomDimensionRepresentation
          command.response_class = Google::Apis::AnalyticsV3::CustomDimension
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['webPropertyId'] = web_property_id unless web_property_id.nil?
          command.params['customDimensionId'] = custom_dimension_id unless custom_dimension_id.nil?
          command.query['ignoreCustomDataSourceLinks'] = ignore_custom_data_source_links unless ignore_custom_data_source_links.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        
        # Get a custom metric to which the user has access.
        # @param [String] account_id
        #   Account ID for the custom metric to retrieve.
        # @param [String] web_property_id
        #   Web property ID for the custom metric to retrieve.
        # @param [String] custom_metric_id
        #   The ID of the custom metric to retrieve.
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
        # @yieldparam result [Google::Apis::AnalyticsV3::CustomMetric] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsV3::CustomMetric]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_management_custom_metric(account_id, web_property_id, custom_metric_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'management/accounts/{accountId}/webproperties/{webPropertyId}/customMetrics/{customMetricId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AnalyticsV3::CustomMetricRepresentation
          command.response_class = Google::Apis::AnalyticsV3::CustomMetric
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['webPropertyId'] = web_property_id unless web_property_id.nil?
          command.params['customMetricId'] = custom_metric_id unless custom_metric_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Create a new custom metric.
        # @param [Google::Apis::AnalyticsV3::CustomMetric] custom_metric_obj
        #   
        # @param [String] account_id
        #   Account ID for the custom metric to create.
        # @param [String] web_property_id
        #   Web property ID for the custom dimension to create.
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
        # @yieldparam result [Google::Apis::AnalyticsV3::CustomMetric] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsV3::CustomMetric]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_management_custom_metric(custom_metric_obj, account_id, web_property_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'management/accounts/{accountId}/webproperties/{webPropertyId}/customMetrics'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::AnalyticsV3::CustomMetricRepresentation
          command.request_object = custom_metric_obj
          command.response_representation = Google::Apis::AnalyticsV3::CustomMetricRepresentation
          command.response_class = Google::Apis::AnalyticsV3::CustomMetric
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['webPropertyId'] = web_property_id unless web_property_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Lists custom metrics to which the user has access.
        # @param [String] account_id
        #   Account ID for the custom metrics to retrieve.
        # @param [String] web_property_id
        #   Web property ID for the custom metrics to retrieve.
        # @param [Fixnum] max_results
        #   The maximum number of custom metrics to include in this response.
        # @param [Fixnum] start_index
        #   An index of the first entity to retrieve. Use this parameter as a pagination
        #   mechanism along with the max-results parameter.
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
        # @yieldparam result [Google::Apis::AnalyticsV3::CustomMetrics] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsV3::CustomMetrics]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_management_custom_metrics(account_id, web_property_id, max_results: nil, start_index: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'management/accounts/{accountId}/webproperties/{webPropertyId}/customMetrics'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AnalyticsV3::CustomMetricsRepresentation
          command.response_class = Google::Apis::AnalyticsV3::CustomMetrics
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['webPropertyId'] = web_property_id unless web_property_id.nil?
          command.query['max-results'] = max_results unless max_results.nil?
          command.query['start-index'] = start_index unless start_index.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Updates an existing custom metric. This method supports patch semantics.
        # @param [Google::Apis::AnalyticsV3::CustomMetric] custom_metric_obj
        #   
        # @param [String] account_id
        #   Account ID for the custom metric to update.
        # @param [String] web_property_id
        #   Web property ID for the custom metric to update.
        # @param [String] custom_metric_id
        #   Custom metric ID for the custom metric to update.
        # @param [Boolean] ignore_custom_data_source_links
        #   Force the update and ignore any warnings related to the custom metric being
        #   linked to a custom data source / data set.
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
        # @yieldparam result [Google::Apis::AnalyticsV3::CustomMetric] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsV3::CustomMetric]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_management_custom_metric(custom_metric_obj, account_id, web_property_id, custom_metric_id, ignore_custom_data_source_links: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'management/accounts/{accountId}/webproperties/{webPropertyId}/customMetrics/{customMetricId}'
          command =  make_simple_command(:patch, path, options)
          command.request_representation = Google::Apis::AnalyticsV3::CustomMetricRepresentation
          command.request_object = custom_metric_obj
          command.response_representation = Google::Apis::AnalyticsV3::CustomMetricRepresentation
          command.response_class = Google::Apis::AnalyticsV3::CustomMetric
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['webPropertyId'] = web_property_id unless web_property_id.nil?
          command.params['customMetricId'] = custom_metric_id unless custom_metric_id.nil?
          command.query['ignoreCustomDataSourceLinks'] = ignore_custom_data_source_links unless ignore_custom_data_source_links.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Updates an existing custom metric.
        # @param [Google::Apis::AnalyticsV3::CustomMetric] custom_metric_obj
        #   
        # @param [String] account_id
        #   Account ID for the custom metric to update.
        # @param [String] web_property_id
        #   Web property ID for the custom metric to update.
        # @param [String] custom_metric_id
        #   Custom metric ID for the custom metric to update.
        # @param [Boolean] ignore_custom_data_source_links
        #   Force the update and ignore any warnings related to the custom metric being
        #   linked to a custom data source / data set.
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
        # @yieldparam result [Google::Apis::AnalyticsV3::CustomMetric] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsV3::CustomMetric]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_management_custom_metric(custom_metric_obj, account_id, web_property_id, custom_metric_id, ignore_custom_data_source_links: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'management/accounts/{accountId}/webproperties/{webPropertyId}/customMetrics/{customMetricId}'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::AnalyticsV3::CustomMetricRepresentation
          command.request_object = custom_metric_obj
          command.response_representation = Google::Apis::AnalyticsV3::CustomMetricRepresentation
          command.response_class = Google::Apis::AnalyticsV3::CustomMetric
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['webPropertyId'] = web_property_id unless web_property_id.nil?
          command.params['customMetricId'] = custom_metric_id unless custom_metric_id.nil?
          command.query['ignoreCustomDataSourceLinks'] = ignore_custom_data_source_links unless ignore_custom_data_source_links.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        
        # Delete an experiment.
        # @param [String] account_id
        #   Account ID to which the experiment belongs
        # @param [String] web_property_id
        #   Web property ID to which the experiment belongs
        # @param [String] profile_id
        #   View (Profile) ID to which the experiment belongs
        # @param [String] experiment_id
        #   ID of the experiment to delete
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
        def delete_management_experiment(account_id, web_property_id, profile_id, experiment_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/experiments/{experimentId}'
          command =  make_simple_command(:delete, path, options)
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['webPropertyId'] = web_property_id unless web_property_id.nil?
          command.params['profileId'] = profile_id unless profile_id.nil?
          command.params['experimentId'] = experiment_id unless experiment_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Returns an experiment to which the user has access.
        # @param [String] account_id
        #   Account ID to retrieve the experiment for.
        # @param [String] web_property_id
        #   Web property ID to retrieve the experiment for.
        # @param [String] profile_id
        #   View (Profile) ID to retrieve the experiment for.
        # @param [String] experiment_id
        #   Experiment ID to retrieve the experiment for.
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
        # @yieldparam result [Google::Apis::AnalyticsV3::Experiment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsV3::Experiment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_management_experiment(account_id, web_property_id, profile_id, experiment_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/experiments/{experimentId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AnalyticsV3::ExperimentRepresentation
          command.response_class = Google::Apis::AnalyticsV3::Experiment
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['webPropertyId'] = web_property_id unless web_property_id.nil?
          command.params['profileId'] = profile_id unless profile_id.nil?
          command.params['experimentId'] = experiment_id unless experiment_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Create a new experiment.
        # @param [Google::Apis::AnalyticsV3::Experiment] experiment_obj
        #   
        # @param [String] account_id
        #   Account ID to create the experiment for.
        # @param [String] web_property_id
        #   Web property ID to create the experiment for.
        # @param [String] profile_id
        #   View (Profile) ID to create the experiment for.
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
        # @yieldparam result [Google::Apis::AnalyticsV3::Experiment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsV3::Experiment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_management_experiment(experiment_obj, account_id, web_property_id, profile_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/experiments'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::AnalyticsV3::ExperimentRepresentation
          command.request_object = experiment_obj
          command.response_representation = Google::Apis::AnalyticsV3::ExperimentRepresentation
          command.response_class = Google::Apis::AnalyticsV3::Experiment
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['webPropertyId'] = web_property_id unless web_property_id.nil?
          command.params['profileId'] = profile_id unless profile_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Lists experiments to which the user has access.
        # @param [String] account_id
        #   Account ID to retrieve experiments for.
        # @param [String] web_property_id
        #   Web property ID to retrieve experiments for.
        # @param [String] profile_id
        #   View (Profile) ID to retrieve experiments for.
        # @param [Fixnum] max_results
        #   The maximum number of experiments to include in this response.
        # @param [Fixnum] start_index
        #   An index of the first experiment to retrieve. Use this parameter as a
        #   pagination mechanism along with the max-results parameter.
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
        # @yieldparam result [Google::Apis::AnalyticsV3::Experiments] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsV3::Experiments]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_management_experiments(account_id, web_property_id, profile_id, max_results: nil, start_index: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/experiments'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AnalyticsV3::ExperimentsRepresentation
          command.response_class = Google::Apis::AnalyticsV3::Experiments
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['webPropertyId'] = web_property_id unless web_property_id.nil?
          command.params['profileId'] = profile_id unless profile_id.nil?
          command.query['max-results'] = max_results unless max_results.nil?
          command.query['start-index'] = start_index unless start_index.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Update an existing experiment. This method supports patch semantics.
        # @param [Google::Apis::AnalyticsV3::Experiment] experiment_obj
        #   
        # @param [String] account_id
        #   Account ID of the experiment to update.
        # @param [String] web_property_id
        #   Web property ID of the experiment to update.
        # @param [String] profile_id
        #   View (Profile) ID of the experiment to update.
        # @param [String] experiment_id
        #   Experiment ID of the experiment to update.
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
        # @yieldparam result [Google::Apis::AnalyticsV3::Experiment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsV3::Experiment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_management_experiment(experiment_obj, account_id, web_property_id, profile_id, experiment_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/experiments/{experimentId}'
          command =  make_simple_command(:patch, path, options)
          command.request_representation = Google::Apis::AnalyticsV3::ExperimentRepresentation
          command.request_object = experiment_obj
          command.response_representation = Google::Apis::AnalyticsV3::ExperimentRepresentation
          command.response_class = Google::Apis::AnalyticsV3::Experiment
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['webPropertyId'] = web_property_id unless web_property_id.nil?
          command.params['profileId'] = profile_id unless profile_id.nil?
          command.params['experimentId'] = experiment_id unless experiment_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Update an existing experiment.
        # @param [Google::Apis::AnalyticsV3::Experiment] experiment_obj
        #   
        # @param [String] account_id
        #   Account ID of the experiment to update.
        # @param [String] web_property_id
        #   Web property ID of the experiment to update.
        # @param [String] profile_id
        #   View (Profile) ID of the experiment to update.
        # @param [String] experiment_id
        #   Experiment ID of the experiment to update.
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
        # @yieldparam result [Google::Apis::AnalyticsV3::Experiment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsV3::Experiment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_management_experiment(experiment_obj, account_id, web_property_id, profile_id, experiment_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/experiments/{experimentId}'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::AnalyticsV3::ExperimentRepresentation
          command.request_object = experiment_obj
          command.response_representation = Google::Apis::AnalyticsV3::ExperimentRepresentation
          command.response_class = Google::Apis::AnalyticsV3::Experiment
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['webPropertyId'] = web_property_id unless web_property_id.nil?
          command.params['profileId'] = profile_id unless profile_id.nil?
          command.params['experimentId'] = experiment_id unless experiment_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        
        # Delete a filter.
        # @param [String] account_id
        #   Account ID to delete the filter for.
        # @param [String] filter_id
        #   ID of the filter to be deleted.
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
        # @yieldparam result [Google::Apis::AnalyticsV3::Filter] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsV3::Filter]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_management_filter(account_id, filter_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'management/accounts/{accountId}/filters/{filterId}'
          command =  make_simple_command(:delete, path, options)
          command.response_representation = Google::Apis::AnalyticsV3::FilterRepresentation
          command.response_class = Google::Apis::AnalyticsV3::Filter
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['filterId'] = filter_id unless filter_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Returns a filters to which the user has access.
        # @param [String] account_id
        #   Account ID to retrieve filters for.
        # @param [String] filter_id
        #   Filter ID to retrieve filters for.
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
        # @yieldparam result [Google::Apis::AnalyticsV3::Filter] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsV3::Filter]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_management_filter(account_id, filter_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'management/accounts/{accountId}/filters/{filterId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AnalyticsV3::FilterRepresentation
          command.response_class = Google::Apis::AnalyticsV3::Filter
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['filterId'] = filter_id unless filter_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Create a new filter.
        # @param [Google::Apis::AnalyticsV3::Filter] filter_obj
        #   
        # @param [String] account_id
        #   Account ID to create filter for.
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
        # @yieldparam result [Google::Apis::AnalyticsV3::Filter] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsV3::Filter]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_management_filter(filter_obj, account_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'management/accounts/{accountId}/filters'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::AnalyticsV3::FilterRepresentation
          command.request_object = filter_obj
          command.response_representation = Google::Apis::AnalyticsV3::FilterRepresentation
          command.response_class = Google::Apis::AnalyticsV3::Filter
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Lists all filters for an account
        # @param [String] account_id
        #   Account ID to retrieve filters for.
        # @param [Fixnum] max_results
        #   The maximum number of filters to include in this response.
        # @param [Fixnum] start_index
        #   An index of the first entity to retrieve. Use this parameter as a pagination
        #   mechanism along with the max-results parameter.
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
        # @yieldparam result [Google::Apis::AnalyticsV3::Filters] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsV3::Filters]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_management_filters(account_id, max_results: nil, start_index: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'management/accounts/{accountId}/filters'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AnalyticsV3::FiltersRepresentation
          command.response_class = Google::Apis::AnalyticsV3::Filters
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['max-results'] = max_results unless max_results.nil?
          command.query['start-index'] = start_index unless start_index.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Updates an existing filter. This method supports patch semantics.
        # @param [Google::Apis::AnalyticsV3::Filter] filter_obj
        #   
        # @param [String] account_id
        #   Account ID to which the filter belongs.
        # @param [String] filter_id
        #   ID of the filter to be updated.
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
        # @yieldparam result [Google::Apis::AnalyticsV3::Filter] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsV3::Filter]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_management_filter(filter_obj, account_id, filter_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'management/accounts/{accountId}/filters/{filterId}'
          command =  make_simple_command(:patch, path, options)
          command.request_representation = Google::Apis::AnalyticsV3::FilterRepresentation
          command.request_object = filter_obj
          command.response_representation = Google::Apis::AnalyticsV3::FilterRepresentation
          command.response_class = Google::Apis::AnalyticsV3::Filter
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['filterId'] = filter_id unless filter_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Updates an existing filter.
        # @param [Google::Apis::AnalyticsV3::Filter] filter_obj
        #   
        # @param [String] account_id
        #   Account ID to which the filter belongs.
        # @param [String] filter_id
        #   ID of the filter to be updated.
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
        # @yieldparam result [Google::Apis::AnalyticsV3::Filter] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsV3::Filter]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_management_filter(filter_obj, account_id, filter_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'management/accounts/{accountId}/filters/{filterId}'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::AnalyticsV3::FilterRepresentation
          command.request_object = filter_obj
          command.response_representation = Google::Apis::AnalyticsV3::FilterRepresentation
          command.response_class = Google::Apis::AnalyticsV3::Filter
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['filterId'] = filter_id unless filter_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        
        # Gets a goal to which the user has access.
        # @param [String] account_id
        #   Account ID to retrieve the goal for.
        # @param [String] web_property_id
        #   Web property ID to retrieve the goal for.
        # @param [String] profile_id
        #   View (Profile) ID to retrieve the goal for.
        # @param [String] goal_id
        #   Goal ID to retrieve the goal for.
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
        # @yieldparam result [Google::Apis::AnalyticsV3::Goal] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsV3::Goal]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_management_goal(account_id, web_property_id, profile_id, goal_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/goals/{goalId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AnalyticsV3::GoalRepresentation
          command.response_class = Google::Apis::AnalyticsV3::Goal
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['webPropertyId'] = web_property_id unless web_property_id.nil?
          command.params['profileId'] = profile_id unless profile_id.nil?
          command.params['goalId'] = goal_id unless goal_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Create a new goal.
        # @param [Google::Apis::AnalyticsV3::Goal] goal_obj
        #   
        # @param [String] account_id
        #   Account ID to create the goal for.
        # @param [String] web_property_id
        #   Web property ID to create the goal for.
        # @param [String] profile_id
        #   View (Profile) ID to create the goal for.
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
        # @yieldparam result [Google::Apis::AnalyticsV3::Goal] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsV3::Goal]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_management_goal(goal_obj, account_id, web_property_id, profile_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/goals'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::AnalyticsV3::GoalRepresentation
          command.request_object = goal_obj
          command.response_representation = Google::Apis::AnalyticsV3::GoalRepresentation
          command.response_class = Google::Apis::AnalyticsV3::Goal
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['webPropertyId'] = web_property_id unless web_property_id.nil?
          command.params['profileId'] = profile_id unless profile_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Lists goals to which the user has access.
        # @param [String] account_id
        #   Account ID to retrieve goals for. Can either be a specific account ID or '~all'
        #   , which refers to all the accounts that user has access to.
        # @param [String] web_property_id
        #   Web property ID to retrieve goals for. Can either be a specific web property
        #   ID or '~all', which refers to all the web properties that user has access to.
        # @param [String] profile_id
        #   View (Profile) ID to retrieve goals for. Can either be a specific view (
        #   profile) ID or '~all', which refers to all the views (profiles) that user has
        #   access to.
        # @param [Fixnum] max_results
        #   The maximum number of goals to include in this response.
        # @param [Fixnum] start_index
        #   An index of the first goal to retrieve. Use this parameter as a pagination
        #   mechanism along with the max-results parameter.
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
        # @yieldparam result [Google::Apis::AnalyticsV3::Goals] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsV3::Goals]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_management_goals(account_id, web_property_id, profile_id, max_results: nil, start_index: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/goals'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AnalyticsV3::GoalsRepresentation
          command.response_class = Google::Apis::AnalyticsV3::Goals
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['webPropertyId'] = web_property_id unless web_property_id.nil?
          command.params['profileId'] = profile_id unless profile_id.nil?
          command.query['max-results'] = max_results unless max_results.nil?
          command.query['start-index'] = start_index unless start_index.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Updates an existing view (profile). This method supports patch semantics.
        # @param [Google::Apis::AnalyticsV3::Goal] goal_obj
        #   
        # @param [String] account_id
        #   Account ID to update the goal.
        # @param [String] web_property_id
        #   Web property ID to update the goal.
        # @param [String] profile_id
        #   View (Profile) ID to update the goal.
        # @param [String] goal_id
        #   Index of the goal to be updated.
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
        # @yieldparam result [Google::Apis::AnalyticsV3::Goal] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsV3::Goal]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_management_goal(goal_obj, account_id, web_property_id, profile_id, goal_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/goals/{goalId}'
          command =  make_simple_command(:patch, path, options)
          command.request_representation = Google::Apis::AnalyticsV3::GoalRepresentation
          command.request_object = goal_obj
          command.response_representation = Google::Apis::AnalyticsV3::GoalRepresentation
          command.response_class = Google::Apis::AnalyticsV3::Goal
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['webPropertyId'] = web_property_id unless web_property_id.nil?
          command.params['profileId'] = profile_id unless profile_id.nil?
          command.params['goalId'] = goal_id unless goal_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Updates an existing view (profile).
        # @param [Google::Apis::AnalyticsV3::Goal] goal_obj
        #   
        # @param [String] account_id
        #   Account ID to update the goal.
        # @param [String] web_property_id
        #   Web property ID to update the goal.
        # @param [String] profile_id
        #   View (Profile) ID to update the goal.
        # @param [String] goal_id
        #   Index of the goal to be updated.
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
        # @yieldparam result [Google::Apis::AnalyticsV3::Goal] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsV3::Goal]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_management_goal(goal_obj, account_id, web_property_id, profile_id, goal_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/goals/{goalId}'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::AnalyticsV3::GoalRepresentation
          command.request_object = goal_obj
          command.response_representation = Google::Apis::AnalyticsV3::GoalRepresentation
          command.response_class = Google::Apis::AnalyticsV3::Goal
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['webPropertyId'] = web_property_id unless web_property_id.nil?
          command.params['profileId'] = profile_id unless profile_id.nil?
          command.params['goalId'] = goal_id unless goal_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        
        # Delete a profile filter link.
        # @param [String] account_id
        #   Account ID to which the profile filter link belongs.
        # @param [String] web_property_id
        #   Web property Id to which the profile filter link belongs.
        # @param [String] profile_id
        #   Profile ID to which the filter link belongs.
        # @param [String] link_id
        #   ID of the profile filter link to delete.
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
        def delete_management_profile_filter_link(account_id, web_property_id, profile_id, link_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/profileFilterLinks/{linkId}'
          command =  make_simple_command(:delete, path, options)
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['webPropertyId'] = web_property_id unless web_property_id.nil?
          command.params['profileId'] = profile_id unless profile_id.nil?
          command.params['linkId'] = link_id unless link_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Returns a single profile filter link.
        # @param [String] account_id
        #   Account ID to retrieve profile filter link for.
        # @param [String] web_property_id
        #   Web property Id to retrieve profile filter link for.
        # @param [String] profile_id
        #   Profile ID to retrieve filter link for.
        # @param [String] link_id
        #   ID of the profile filter link.
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
        # @yieldparam result [Google::Apis::AnalyticsV3::ProfileFilterLink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsV3::ProfileFilterLink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_management_profile_filter_link(account_id, web_property_id, profile_id, link_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/profileFilterLinks/{linkId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AnalyticsV3::ProfileFilterLinkRepresentation
          command.response_class = Google::Apis::AnalyticsV3::ProfileFilterLink
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['webPropertyId'] = web_property_id unless web_property_id.nil?
          command.params['profileId'] = profile_id unless profile_id.nil?
          command.params['linkId'] = link_id unless link_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Create a new profile filter link.
        # @param [Google::Apis::AnalyticsV3::ProfileFilterLink] profile_filter_link_obj
        #   
        # @param [String] account_id
        #   Account ID to create profile filter link for.
        # @param [String] web_property_id
        #   Web property Id to create profile filter link for.
        # @param [String] profile_id
        #   Profile ID to create filter link for.
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
        # @yieldparam result [Google::Apis::AnalyticsV3::ProfileFilterLink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsV3::ProfileFilterLink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_management_profile_filter_link(profile_filter_link_obj, account_id, web_property_id, profile_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/profileFilterLinks'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::AnalyticsV3::ProfileFilterLinkRepresentation
          command.request_object = profile_filter_link_obj
          command.response_representation = Google::Apis::AnalyticsV3::ProfileFilterLinkRepresentation
          command.response_class = Google::Apis::AnalyticsV3::ProfileFilterLink
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['webPropertyId'] = web_property_id unless web_property_id.nil?
          command.params['profileId'] = profile_id unless profile_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Lists all profile filter links for a profile.
        # @param [String] account_id
        #   Account ID to retrieve profile filter links for.
        # @param [String] web_property_id
        #   Web property Id for profile filter links for. Can either be a specific web
        #   property ID or '~all', which refers to all the web properties that user has
        #   access to.
        # @param [String] profile_id
        #   Profile ID to retrieve filter links for. Can either be a specific profile ID
        #   or '~all', which refers to all the profiles that user has access to.
        # @param [Fixnum] max_results
        #   The maximum number of profile filter links to include in this response.
        # @param [Fixnum] start_index
        #   An index of the first entity to retrieve. Use this parameter as a pagination
        #   mechanism along with the max-results parameter.
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
        # @yieldparam result [Google::Apis::AnalyticsV3::ProfileFilterLinks] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsV3::ProfileFilterLinks]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_management_profile_filter_links(account_id, web_property_id, profile_id, max_results: nil, start_index: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/profileFilterLinks'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AnalyticsV3::ProfileFilterLinksRepresentation
          command.response_class = Google::Apis::AnalyticsV3::ProfileFilterLinks
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['webPropertyId'] = web_property_id unless web_property_id.nil?
          command.params['profileId'] = profile_id unless profile_id.nil?
          command.query['max-results'] = max_results unless max_results.nil?
          command.query['start-index'] = start_index unless start_index.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Update an existing profile filter link. This method supports patch semantics.
        # @param [Google::Apis::AnalyticsV3::ProfileFilterLink] profile_filter_link_obj
        #   
        # @param [String] account_id
        #   Account ID to which profile filter link belongs.
        # @param [String] web_property_id
        #   Web property Id to which profile filter link belongs
        # @param [String] profile_id
        #   Profile ID to which filter link belongs
        # @param [String] link_id
        #   ID of the profile filter link to be updated.
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
        # @yieldparam result [Google::Apis::AnalyticsV3::ProfileFilterLink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsV3::ProfileFilterLink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_management_profile_filter_link(profile_filter_link_obj, account_id, web_property_id, profile_id, link_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/profileFilterLinks/{linkId}'
          command =  make_simple_command(:patch, path, options)
          command.request_representation = Google::Apis::AnalyticsV3::ProfileFilterLinkRepresentation
          command.request_object = profile_filter_link_obj
          command.response_representation = Google::Apis::AnalyticsV3::ProfileFilterLinkRepresentation
          command.response_class = Google::Apis::AnalyticsV3::ProfileFilterLink
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['webPropertyId'] = web_property_id unless web_property_id.nil?
          command.params['profileId'] = profile_id unless profile_id.nil?
          command.params['linkId'] = link_id unless link_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Update an existing profile filter link.
        # @param [Google::Apis::AnalyticsV3::ProfileFilterLink] profile_filter_link_obj
        #   
        # @param [String] account_id
        #   Account ID to which profile filter link belongs.
        # @param [String] web_property_id
        #   Web property Id to which profile filter link belongs
        # @param [String] profile_id
        #   Profile ID to which filter link belongs
        # @param [String] link_id
        #   ID of the profile filter link to be updated.
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
        # @yieldparam result [Google::Apis::AnalyticsV3::ProfileFilterLink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsV3::ProfileFilterLink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_management_profile_filter_link(profile_filter_link_obj, account_id, web_property_id, profile_id, link_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/profileFilterLinks/{linkId}'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::AnalyticsV3::ProfileFilterLinkRepresentation
          command.request_object = profile_filter_link_obj
          command.response_representation = Google::Apis::AnalyticsV3::ProfileFilterLinkRepresentation
          command.response_class = Google::Apis::AnalyticsV3::ProfileFilterLink
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['webPropertyId'] = web_property_id unless web_property_id.nil?
          command.params['profileId'] = profile_id unless profile_id.nil?
          command.params['linkId'] = link_id unless link_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        
        # Removes a user from the given view (profile).
        # @param [String] account_id
        #   Account ID to delete the user link for.
        # @param [String] web_property_id
        #   Web Property ID to delete the user link for.
        # @param [String] profile_id
        #   View (Profile) ID to delete the user link for.
        # @param [String] link_id
        #   Link ID to delete the user link for.
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
        def delete_management_profile_user_link(account_id, web_property_id, profile_id, link_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/entityUserLinks/{linkId}'
          command =  make_simple_command(:delete, path, options)
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['webPropertyId'] = web_property_id unless web_property_id.nil?
          command.params['profileId'] = profile_id unless profile_id.nil?
          command.params['linkId'] = link_id unless link_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Adds a new user to the given view (profile).
        # @param [Google::Apis::AnalyticsV3::EntityUserLink] entity_user_link_obj
        #   
        # @param [String] account_id
        #   Account ID to create the user link for.
        # @param [String] web_property_id
        #   Web Property ID to create the user link for.
        # @param [String] profile_id
        #   View (Profile) ID to create the user link for.
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
        # @yieldparam result [Google::Apis::AnalyticsV3::EntityUserLink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsV3::EntityUserLink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_management_profile_user_link(entity_user_link_obj, account_id, web_property_id, profile_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/entityUserLinks'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::AnalyticsV3::EntityUserLinkRepresentation
          command.request_object = entity_user_link_obj
          command.response_representation = Google::Apis::AnalyticsV3::EntityUserLinkRepresentation
          command.response_class = Google::Apis::AnalyticsV3::EntityUserLink
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['webPropertyId'] = web_property_id unless web_property_id.nil?
          command.params['profileId'] = profile_id unless profile_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Lists profile-user links for a given view (profile).
        # @param [String] account_id
        #   Account ID which the given view (profile) belongs to.
        # @param [String] web_property_id
        #   Web Property ID which the given view (profile) belongs to. Can either be a
        #   specific web property ID or '~all', which refers to all the web properties
        #   that user has access to.
        # @param [String] profile_id
        #   View (Profile) ID to retrieve the profile-user links for. Can either be a
        #   specific profile ID or '~all', which refers to all the profiles that user has
        #   access to.
        # @param [Fixnum] max_results
        #   The maximum number of profile-user links to include in this response.
        # @param [Fixnum] start_index
        #   An index of the first profile-user link to retrieve. Use this parameter as a
        #   pagination mechanism along with the max-results parameter.
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
        # @yieldparam result [Google::Apis::AnalyticsV3::EntityUserLinks] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsV3::EntityUserLinks]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_management_profile_user_links(account_id, web_property_id, profile_id, max_results: nil, start_index: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/entityUserLinks'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AnalyticsV3::EntityUserLinksRepresentation
          command.response_class = Google::Apis::AnalyticsV3::EntityUserLinks
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['webPropertyId'] = web_property_id unless web_property_id.nil?
          command.params['profileId'] = profile_id unless profile_id.nil?
          command.query['max-results'] = max_results unless max_results.nil?
          command.query['start-index'] = start_index unless start_index.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Updates permissions for an existing user on the given view (profile).
        # @param [Google::Apis::AnalyticsV3::EntityUserLink] entity_user_link_obj
        #   
        # @param [String] account_id
        #   Account ID to update the user link for.
        # @param [String] web_property_id
        #   Web Property ID to update the user link for.
        # @param [String] profile_id
        #   View (Profile ID) to update the user link for.
        # @param [String] link_id
        #   Link ID to update the user link for.
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
        # @yieldparam result [Google::Apis::AnalyticsV3::EntityUserLink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsV3::EntityUserLink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_management_profile_user_link(entity_user_link_obj, account_id, web_property_id, profile_id, link_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/entityUserLinks/{linkId}'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::AnalyticsV3::EntityUserLinkRepresentation
          command.request_object = entity_user_link_obj
          command.response_representation = Google::Apis::AnalyticsV3::EntityUserLinkRepresentation
          command.response_class = Google::Apis::AnalyticsV3::EntityUserLink
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['webPropertyId'] = web_property_id unless web_property_id.nil?
          command.params['profileId'] = profile_id unless profile_id.nil?
          command.params['linkId'] = link_id unless link_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        
        # Deletes a view (profile).
        # @param [String] account_id
        #   Account ID to delete the view (profile) for.
        # @param [String] web_property_id
        #   Web property ID to delete the view (profile) for.
        # @param [String] profile_id
        #   ID of the view (profile) to be deleted.
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
        def delete_management_profile(account_id, web_property_id, profile_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}'
          command =  make_simple_command(:delete, path, options)
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['webPropertyId'] = web_property_id unless web_property_id.nil?
          command.params['profileId'] = profile_id unless profile_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Gets a view (profile) to which the user has access.
        # @param [String] account_id
        #   Account ID to retrieve the goal for.
        # @param [String] web_property_id
        #   Web property ID to retrieve the goal for.
        # @param [String] profile_id
        #   View (Profile) ID to retrieve the goal for.
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
        # @yieldparam result [Google::Apis::AnalyticsV3::Profile] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsV3::Profile]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_management_profile(account_id, web_property_id, profile_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AnalyticsV3::ProfileRepresentation
          command.response_class = Google::Apis::AnalyticsV3::Profile
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['webPropertyId'] = web_property_id unless web_property_id.nil?
          command.params['profileId'] = profile_id unless profile_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Create a new view (profile).
        # @param [Google::Apis::AnalyticsV3::Profile] profile_obj
        #   
        # @param [String] account_id
        #   Account ID to create the view (profile) for.
        # @param [String] web_property_id
        #   Web property ID to create the view (profile) for.
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
        # @yieldparam result [Google::Apis::AnalyticsV3::Profile] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsV3::Profile]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_management_profile(profile_obj, account_id, web_property_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'management/accounts/{accountId}/webproperties/{webPropertyId}/profiles'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::AnalyticsV3::ProfileRepresentation
          command.request_object = profile_obj
          command.response_representation = Google::Apis::AnalyticsV3::ProfileRepresentation
          command.response_class = Google::Apis::AnalyticsV3::Profile
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['webPropertyId'] = web_property_id unless web_property_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Lists views (profiles) to which the user has access.
        # @param [String] account_id
        #   Account ID for the view (profiles) to retrieve. Can either be a specific
        #   account ID or '~all', which refers to all the accounts to which the user has
        #   access.
        # @param [String] web_property_id
        #   Web property ID for the views (profiles) to retrieve. Can either be a specific
        #   web property ID or '~all', which refers to all the web properties to which the
        #   user has access.
        # @param [Fixnum] max_results
        #   The maximum number of views (profiles) to include in this response.
        # @param [Fixnum] start_index
        #   An index of the first entity to retrieve. Use this parameter as a pagination
        #   mechanism along with the max-results parameter.
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
        # @yieldparam result [Google::Apis::AnalyticsV3::Profiles] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsV3::Profiles]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_management_profiles(account_id, web_property_id, max_results: nil, start_index: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'management/accounts/{accountId}/webproperties/{webPropertyId}/profiles'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AnalyticsV3::ProfilesRepresentation
          command.response_class = Google::Apis::AnalyticsV3::Profiles
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['webPropertyId'] = web_property_id unless web_property_id.nil?
          command.query['max-results'] = max_results unless max_results.nil?
          command.query['start-index'] = start_index unless start_index.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Updates an existing view (profile). This method supports patch semantics.
        # @param [Google::Apis::AnalyticsV3::Profile] profile_obj
        #   
        # @param [String] account_id
        #   Account ID to which the view (profile) belongs
        # @param [String] web_property_id
        #   Web property ID to which the view (profile) belongs
        # @param [String] profile_id
        #   ID of the view (profile) to be updated.
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
        # @yieldparam result [Google::Apis::AnalyticsV3::Profile] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsV3::Profile]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_management_profile(profile_obj, account_id, web_property_id, profile_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}'
          command =  make_simple_command(:patch, path, options)
          command.request_representation = Google::Apis::AnalyticsV3::ProfileRepresentation
          command.request_object = profile_obj
          command.response_representation = Google::Apis::AnalyticsV3::ProfileRepresentation
          command.response_class = Google::Apis::AnalyticsV3::Profile
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['webPropertyId'] = web_property_id unless web_property_id.nil?
          command.params['profileId'] = profile_id unless profile_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Updates an existing view (profile).
        # @param [Google::Apis::AnalyticsV3::Profile] profile_obj
        #   
        # @param [String] account_id
        #   Account ID to which the view (profile) belongs
        # @param [String] web_property_id
        #   Web property ID to which the view (profile) belongs
        # @param [String] profile_id
        #   ID of the view (profile) to be updated.
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
        # @yieldparam result [Google::Apis::AnalyticsV3::Profile] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsV3::Profile]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_management_profile(profile_obj, account_id, web_property_id, profile_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::AnalyticsV3::ProfileRepresentation
          command.request_object = profile_obj
          command.response_representation = Google::Apis::AnalyticsV3::ProfileRepresentation
          command.response_class = Google::Apis::AnalyticsV3::Profile
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['webPropertyId'] = web_property_id unless web_property_id.nil?
          command.params['profileId'] = profile_id unless profile_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        
        # Lists segments to which the user has access.
        # @param [Fixnum] max_results
        #   The maximum number of segments to include in this response.
        # @param [Fixnum] start_index
        #   An index of the first segment to retrieve. Use this parameter as a pagination
        #   mechanism along with the max-results parameter.
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
        # @yieldparam result [Google::Apis::AnalyticsV3::Segments] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsV3::Segments]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_management_segments(max_results: nil, start_index: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'management/segments'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AnalyticsV3::SegmentsRepresentation
          command.response_class = Google::Apis::AnalyticsV3::Segments
          command.query['max-results'] = max_results unless max_results.nil?
          command.query['start-index'] = start_index unless start_index.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        
        # Returns a single unsampled report.
        # @param [String] account_id
        #   Account ID to retrieve unsampled report for.
        # @param [String] web_property_id
        #   Web property ID to retrieve unsampled reports for.
        # @param [String] profile_id
        #   View (Profile) ID to retrieve unsampled report for.
        # @param [String] unsampled_report_id
        #   ID of the unsampled report to retrieve.
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
        # @yieldparam result [Google::Apis::AnalyticsV3::UnsampledReport] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsV3::UnsampledReport]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_management_unsampled_report(account_id, web_property_id, profile_id, unsampled_report_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/unsampledReports/{unsampledReportId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AnalyticsV3::UnsampledReportRepresentation
          command.response_class = Google::Apis::AnalyticsV3::UnsampledReport
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['webPropertyId'] = web_property_id unless web_property_id.nil?
          command.params['profileId'] = profile_id unless profile_id.nil?
          command.params['unsampledReportId'] = unsampled_report_id unless unsampled_report_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Create a new unsampled report.
        # @param [Google::Apis::AnalyticsV3::UnsampledReport] unsampled_report_obj
        #   
        # @param [String] account_id
        #   Account ID to create the unsampled report for.
        # @param [String] web_property_id
        #   Web property ID to create the unsampled report for.
        # @param [String] profile_id
        #   View (Profile) ID to create the unsampled report for.
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
        # @yieldparam result [Google::Apis::AnalyticsV3::UnsampledReport] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsV3::UnsampledReport]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_management_unsampled_report(unsampled_report_obj, account_id, web_property_id, profile_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/unsampledReports'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::AnalyticsV3::UnsampledReportRepresentation
          command.request_object = unsampled_report_obj
          command.response_representation = Google::Apis::AnalyticsV3::UnsampledReportRepresentation
          command.response_class = Google::Apis::AnalyticsV3::UnsampledReport
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['webPropertyId'] = web_property_id unless web_property_id.nil?
          command.params['profileId'] = profile_id unless profile_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Lists unsampled reports to which the user has access.
        # @param [String] account_id
        #   Account ID to retrieve unsampled reports for. Must be a specific account ID, ~
        #   all is not supported.
        # @param [String] web_property_id
        #   Web property ID to retrieve unsampled reports for. Must be a specific web
        #   property ID, ~all is not supported.
        # @param [String] profile_id
        #   View (Profile) ID to retrieve unsampled reports for. Must be a specific view (
        #   profile) ID, ~all is not supported.
        # @param [Fixnum] max_results
        #   The maximum number of unsampled reports to include in this response.
        # @param [Fixnum] start_index
        #   An index of the first unsampled report to retrieve. Use this parameter as a
        #   pagination mechanism along with the max-results parameter.
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
        # @yieldparam result [Google::Apis::AnalyticsV3::UnsampledReports] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsV3::UnsampledReports]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_management_unsampled_reports(account_id, web_property_id, profile_id, max_results: nil, start_index: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/unsampledReports'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AnalyticsV3::UnsampledReportsRepresentation
          command.response_class = Google::Apis::AnalyticsV3::UnsampledReports
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['webPropertyId'] = web_property_id unless web_property_id.nil?
          command.params['profileId'] = profile_id unless profile_id.nil?
          command.query['max-results'] = max_results unless max_results.nil?
          command.query['start-index'] = start_index unless start_index.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        
        # Delete data associated with a previous upload.
        # @param [Google::Apis::AnalyticsV3::DataimportDeleteUploadDataRequest] dataimport_delete_upload_data_request_obj
        #   
        # @param [String] account_id
        #   Account Id for the uploads to be deleted.
        # @param [String] web_property_id
        #   Web property Id for the uploads to be deleted.
        # @param [String] custom_data_source_id
        #   Custom data source Id for the uploads to be deleted.
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
        def delete_upload_data(dataimport_delete_upload_data_request_obj, account_id, web_property_id, custom_data_source_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'management/accounts/{accountId}/webproperties/{webPropertyId}/customDataSources/{customDataSourceId}/deleteUploadData'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::AnalyticsV3::DataimportDeleteUploadDataRequestRepresentation
          command.request_object = dataimport_delete_upload_data_request_obj
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['webPropertyId'] = web_property_id unless web_property_id.nil?
          command.params['customDataSourceId'] = custom_data_source_id unless custom_data_source_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # List uploads to which the user has access.
        # @param [String] account_id
        #   Account Id for the upload to retrieve.
        # @param [String] web_property_id
        #   Web property Id for the upload to retrieve.
        # @param [String] custom_data_source_id
        #   Custom data source Id for upload to retrieve.
        # @param [String] upload_id
        #   Upload Id to retrieve.
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
        # @yieldparam result [Google::Apis::AnalyticsV3::Upload] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsV3::Upload]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_management_upload(account_id, web_property_id, custom_data_source_id, upload_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'management/accounts/{accountId}/webproperties/{webPropertyId}/customDataSources/{customDataSourceId}/uploads/{uploadId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AnalyticsV3::UploadRepresentation
          command.response_class = Google::Apis::AnalyticsV3::Upload
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['webPropertyId'] = web_property_id unless web_property_id.nil?
          command.params['customDataSourceId'] = custom_data_source_id unless custom_data_source_id.nil?
          command.params['uploadId'] = upload_id unless upload_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # List uploads to which the user has access.
        # @param [String] account_id
        #   Account Id for the uploads to retrieve.
        # @param [String] web_property_id
        #   Web property Id for the uploads to retrieve.
        # @param [String] custom_data_source_id
        #   Custom data source Id for uploads to retrieve.
        # @param [Fixnum] max_results
        #   The maximum number of uploads to include in this response.
        # @param [Fixnum] start_index
        #   A 1-based index of the first upload to retrieve. Use this parameter as a
        #   pagination mechanism along with the max-results parameter.
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
        # @yieldparam result [Google::Apis::AnalyticsV3::Uploads] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsV3::Uploads]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_management_uploads(account_id, web_property_id, custom_data_source_id, max_results: nil, start_index: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'management/accounts/{accountId}/webproperties/{webPropertyId}/customDataSources/{customDataSourceId}/uploads'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AnalyticsV3::UploadsRepresentation
          command.response_class = Google::Apis::AnalyticsV3::Uploads
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['webPropertyId'] = web_property_id unless web_property_id.nil?
          command.params['customDataSourceId'] = custom_data_source_id unless custom_data_source_id.nil?
          command.query['max-results'] = max_results unless max_results.nil?
          command.query['start-index'] = start_index unless start_index.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Upload data for a custom data source.
        # @param [String] account_id
        #   Account Id associated with the upload.
        # @param [String] web_property_id
        #   Web property UA-string associated with the upload.
        # @param [String] custom_data_source_id
        #   Custom data source Id to which the data being uploaded belongs.
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
        # @yieldparam result [Google::Apis::AnalyticsV3::Upload] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsV3::Upload]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def upload_data(account_id, web_property_id, custom_data_source_id, fields: nil, quota_user: nil, user_ip: nil, upload_source: nil, content_type: nil, options: nil, &block)
          path = 'management/accounts/{accountId}/webproperties/{webPropertyId}/customDataSources/{customDataSourceId}/uploads'
          if upload_source.nil?
            command =  make_simple_command(:post, path, options)
          else
            command = make_upload_command(:post, path, options)
            command.upload_source = upload_source
            command.upload_content_type = content_type
          end
          command.response_representation = Google::Apis::AnalyticsV3::UploadRepresentation
          command.response_class = Google::Apis::AnalyticsV3::Upload
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['webPropertyId'] = web_property_id unless web_property_id.nil?
          command.params['customDataSourceId'] = custom_data_source_id unless custom_data_source_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        
        # Deletes a web property-AdWords link.
        # @param [String] account_id
        #   ID of the account which the given web property belongs to.
        # @param [String] web_property_id
        #   Web property ID to delete the AdWords link for.
        # @param [String] web_property_ad_words_link_id
        #   Web property AdWords link ID.
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
        def delete_management_web_property_ad_words_link(account_id, web_property_id, web_property_ad_words_link_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'management/accounts/{accountId}/webproperties/{webPropertyId}/entityAdWordsLinks/{webPropertyAdWordsLinkId}'
          command =  make_simple_command(:delete, path, options)
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['webPropertyId'] = web_property_id unless web_property_id.nil?
          command.params['webPropertyAdWordsLinkId'] = web_property_ad_words_link_id unless web_property_ad_words_link_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Returns a web property-AdWords link to which the user has access.
        # @param [String] account_id
        #   ID of the account which the given web property belongs to.
        # @param [String] web_property_id
        #   Web property ID to retrieve the AdWords link for.
        # @param [String] web_property_ad_words_link_id
        #   Web property-AdWords link ID.
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
        # @yieldparam result [Google::Apis::AnalyticsV3::EntityAdWordsLink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsV3::EntityAdWordsLink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_management_web_property_ad_words_link(account_id, web_property_id, web_property_ad_words_link_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'management/accounts/{accountId}/webproperties/{webPropertyId}/entityAdWordsLinks/{webPropertyAdWordsLinkId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AnalyticsV3::EntityAdWordsLinkRepresentation
          command.response_class = Google::Apis::AnalyticsV3::EntityAdWordsLink
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['webPropertyId'] = web_property_id unless web_property_id.nil?
          command.params['webPropertyAdWordsLinkId'] = web_property_ad_words_link_id unless web_property_ad_words_link_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Creates a webProperty-AdWords link.
        # @param [Google::Apis::AnalyticsV3::EntityAdWordsLink] entity_ad_words_link_obj
        #   
        # @param [String] account_id
        #   ID of the Google Analytics account to create the link for.
        # @param [String] web_property_id
        #   Web property ID to create the link for.
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
        # @yieldparam result [Google::Apis::AnalyticsV3::EntityAdWordsLink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsV3::EntityAdWordsLink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_management_web_property_ad_words_link(entity_ad_words_link_obj, account_id, web_property_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'management/accounts/{accountId}/webproperties/{webPropertyId}/entityAdWordsLinks'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::AnalyticsV3::EntityAdWordsLinkRepresentation
          command.request_object = entity_ad_words_link_obj
          command.response_representation = Google::Apis::AnalyticsV3::EntityAdWordsLinkRepresentation
          command.response_class = Google::Apis::AnalyticsV3::EntityAdWordsLink
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['webPropertyId'] = web_property_id unless web_property_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Lists webProperty-AdWords links for a given web property.
        # @param [String] account_id
        #   ID of the account which the given web property belongs to.
        # @param [String] web_property_id
        #   Web property ID to retrieve the AdWords links for.
        # @param [Fixnum] max_results
        #   The maximum number of webProperty-AdWords links to include in this response.
        # @param [Fixnum] start_index
        #   An index of the first webProperty-AdWords link to retrieve. Use this parameter
        #   as a pagination mechanism along with the max-results parameter.
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
        # @yieldparam result [Google::Apis::AnalyticsV3::EntityAdWordsLinks] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsV3::EntityAdWordsLinks]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_management_web_property_ad_words_links(account_id, web_property_id, max_results: nil, start_index: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'management/accounts/{accountId}/webproperties/{webPropertyId}/entityAdWordsLinks'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AnalyticsV3::EntityAdWordsLinksRepresentation
          command.response_class = Google::Apis::AnalyticsV3::EntityAdWordsLinks
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['webPropertyId'] = web_property_id unless web_property_id.nil?
          command.query['max-results'] = max_results unless max_results.nil?
          command.query['start-index'] = start_index unless start_index.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Updates an existing webProperty-AdWords link. This method supports patch
        # semantics.
        # @param [Google::Apis::AnalyticsV3::EntityAdWordsLink] entity_ad_words_link_obj
        #   
        # @param [String] account_id
        #   ID of the account which the given web property belongs to.
        # @param [String] web_property_id
        #   Web property ID to retrieve the AdWords link for.
        # @param [String] web_property_ad_words_link_id
        #   Web property-AdWords link ID.
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
        # @yieldparam result [Google::Apis::AnalyticsV3::EntityAdWordsLink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsV3::EntityAdWordsLink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_management_web_property_ad_words_link(entity_ad_words_link_obj, account_id, web_property_id, web_property_ad_words_link_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'management/accounts/{accountId}/webproperties/{webPropertyId}/entityAdWordsLinks/{webPropertyAdWordsLinkId}'
          command =  make_simple_command(:patch, path, options)
          command.request_representation = Google::Apis::AnalyticsV3::EntityAdWordsLinkRepresentation
          command.request_object = entity_ad_words_link_obj
          command.response_representation = Google::Apis::AnalyticsV3::EntityAdWordsLinkRepresentation
          command.response_class = Google::Apis::AnalyticsV3::EntityAdWordsLink
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['webPropertyId'] = web_property_id unless web_property_id.nil?
          command.params['webPropertyAdWordsLinkId'] = web_property_ad_words_link_id unless web_property_ad_words_link_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Updates an existing webProperty-AdWords link.
        # @param [Google::Apis::AnalyticsV3::EntityAdWordsLink] entity_ad_words_link_obj
        #   
        # @param [String] account_id
        #   ID of the account which the given web property belongs to.
        # @param [String] web_property_id
        #   Web property ID to retrieve the AdWords link for.
        # @param [String] web_property_ad_words_link_id
        #   Web property-AdWords link ID.
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
        # @yieldparam result [Google::Apis::AnalyticsV3::EntityAdWordsLink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsV3::EntityAdWordsLink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_management_web_property_ad_words_link(entity_ad_words_link_obj, account_id, web_property_id, web_property_ad_words_link_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'management/accounts/{accountId}/webproperties/{webPropertyId}/entityAdWordsLinks/{webPropertyAdWordsLinkId}'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::AnalyticsV3::EntityAdWordsLinkRepresentation
          command.request_object = entity_ad_words_link_obj
          command.response_representation = Google::Apis::AnalyticsV3::EntityAdWordsLinkRepresentation
          command.response_class = Google::Apis::AnalyticsV3::EntityAdWordsLink
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['webPropertyId'] = web_property_id unless web_property_id.nil?
          command.params['webPropertyAdWordsLinkId'] = web_property_ad_words_link_id unless web_property_ad_words_link_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        
        # Gets a web property to which the user has access.
        # @param [String] account_id
        #   Account ID to retrieve the web property for.
        # @param [String] web_property_id
        #   ID to retrieve the web property for.
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
        # @yieldparam result [Google::Apis::AnalyticsV3::Webproperty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsV3::Webproperty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_management_webproperty(account_id, web_property_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'management/accounts/{accountId}/webproperties/{webPropertyId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AnalyticsV3::WebpropertyRepresentation
          command.response_class = Google::Apis::AnalyticsV3::Webproperty
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['webPropertyId'] = web_property_id unless web_property_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Create a new property if the account has fewer than 20 properties. Web
        # properties are visible in the Google Analytics interface only if they have at
        # least one profile.
        # @param [Google::Apis::AnalyticsV3::Webproperty] webproperty_obj
        #   
        # @param [String] account_id
        #   Account ID to create the web property for.
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
        # @yieldparam result [Google::Apis::AnalyticsV3::Webproperty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsV3::Webproperty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_management_webproperty(webproperty_obj, account_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'management/accounts/{accountId}/webproperties'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::AnalyticsV3::WebpropertyRepresentation
          command.request_object = webproperty_obj
          command.response_representation = Google::Apis::AnalyticsV3::WebpropertyRepresentation
          command.response_class = Google::Apis::AnalyticsV3::Webproperty
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Lists web properties to which the user has access.
        # @param [String] account_id
        #   Account ID to retrieve web properties for. Can either be a specific account ID
        #   or '~all', which refers to all the accounts that user has access to.
        # @param [Fixnum] max_results
        #   The maximum number of web properties to include in this response.
        # @param [Fixnum] start_index
        #   An index of the first entity to retrieve. Use this parameter as a pagination
        #   mechanism along with the max-results parameter.
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
        # @yieldparam result [Google::Apis::AnalyticsV3::Webproperties] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsV3::Webproperties]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_management_webproperties(account_id, max_results: nil, start_index: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'management/accounts/{accountId}/webproperties'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AnalyticsV3::WebpropertiesRepresentation
          command.response_class = Google::Apis::AnalyticsV3::Webproperties
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['max-results'] = max_results unless max_results.nil?
          command.query['start-index'] = start_index unless start_index.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Updates an existing web property. This method supports patch semantics.
        # @param [Google::Apis::AnalyticsV3::Webproperty] webproperty_obj
        #   
        # @param [String] account_id
        #   Account ID to which the web property belongs
        # @param [String] web_property_id
        #   Web property ID
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
        # @yieldparam result [Google::Apis::AnalyticsV3::Webproperty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsV3::Webproperty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_management_webproperty(webproperty_obj, account_id, web_property_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'management/accounts/{accountId}/webproperties/{webPropertyId}'
          command =  make_simple_command(:patch, path, options)
          command.request_representation = Google::Apis::AnalyticsV3::WebpropertyRepresentation
          command.request_object = webproperty_obj
          command.response_representation = Google::Apis::AnalyticsV3::WebpropertyRepresentation
          command.response_class = Google::Apis::AnalyticsV3::Webproperty
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['webPropertyId'] = web_property_id unless web_property_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Updates an existing web property.
        # @param [Google::Apis::AnalyticsV3::Webproperty] webproperty_obj
        #   
        # @param [String] account_id
        #   Account ID to which the web property belongs
        # @param [String] web_property_id
        #   Web property ID
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
        # @yieldparam result [Google::Apis::AnalyticsV3::Webproperty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsV3::Webproperty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_management_webproperty(webproperty_obj, account_id, web_property_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'management/accounts/{accountId}/webproperties/{webPropertyId}'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::AnalyticsV3::WebpropertyRepresentation
          command.request_object = webproperty_obj
          command.response_representation = Google::Apis::AnalyticsV3::WebpropertyRepresentation
          command.response_class = Google::Apis::AnalyticsV3::Webproperty
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['webPropertyId'] = web_property_id unless web_property_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        
        # Removes a user from the given web property.
        # @param [String] account_id
        #   Account ID to delete the user link for.
        # @param [String] web_property_id
        #   Web Property ID to delete the user link for.
        # @param [String] link_id
        #   Link ID to delete the user link for.
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
        def delete_management_webproperty_user_link(account_id, web_property_id, link_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'management/accounts/{accountId}/webproperties/{webPropertyId}/entityUserLinks/{linkId}'
          command =  make_simple_command(:delete, path, options)
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['webPropertyId'] = web_property_id unless web_property_id.nil?
          command.params['linkId'] = link_id unless link_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Adds a new user to the given web property.
        # @param [Google::Apis::AnalyticsV3::EntityUserLink] entity_user_link_obj
        #   
        # @param [String] account_id
        #   Account ID to create the user link for.
        # @param [String] web_property_id
        #   Web Property ID to create the user link for.
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
        # @yieldparam result [Google::Apis::AnalyticsV3::EntityUserLink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsV3::EntityUserLink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_management_webproperty_user_link(entity_user_link_obj, account_id, web_property_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'management/accounts/{accountId}/webproperties/{webPropertyId}/entityUserLinks'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::AnalyticsV3::EntityUserLinkRepresentation
          command.request_object = entity_user_link_obj
          command.response_representation = Google::Apis::AnalyticsV3::EntityUserLinkRepresentation
          command.response_class = Google::Apis::AnalyticsV3::EntityUserLink
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['webPropertyId'] = web_property_id unless web_property_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Lists webProperty-user links for a given web property.
        # @param [String] account_id
        #   Account ID which the given web property belongs to.
        # @param [String] web_property_id
        #   Web Property ID for the webProperty-user links to retrieve. Can either be a
        #   specific web property ID or '~all', which refers to all the web properties
        #   that user has access to.
        # @param [Fixnum] max_results
        #   The maximum number of webProperty-user Links to include in this response.
        # @param [Fixnum] start_index
        #   An index of the first webProperty-user link to retrieve. Use this parameter as
        #   a pagination mechanism along with the max-results parameter.
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
        # @yieldparam result [Google::Apis::AnalyticsV3::EntityUserLinks] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsV3::EntityUserLinks]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_management_webproperty_user_links(account_id, web_property_id, max_results: nil, start_index: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'management/accounts/{accountId}/webproperties/{webPropertyId}/entityUserLinks'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AnalyticsV3::EntityUserLinksRepresentation
          command.response_class = Google::Apis::AnalyticsV3::EntityUserLinks
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['webPropertyId'] = web_property_id unless web_property_id.nil?
          command.query['max-results'] = max_results unless max_results.nil?
          command.query['start-index'] = start_index unless start_index.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Updates permissions for an existing user on the given web property.
        # @param [Google::Apis::AnalyticsV3::EntityUserLink] entity_user_link_obj
        #   
        # @param [String] account_id
        #   Account ID to update the account-user link for.
        # @param [String] web_property_id
        #   Web property ID to update the account-user link for.
        # @param [String] link_id
        #   Link ID to update the account-user link for.
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
        # @yieldparam result [Google::Apis::AnalyticsV3::EntityUserLink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsV3::EntityUserLink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_management_webproperty_user_link(entity_user_link_obj, account_id, web_property_id, link_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'management/accounts/{accountId}/webproperties/{webPropertyId}/entityUserLinks/{linkId}'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::AnalyticsV3::EntityUserLinkRepresentation
          command.request_object = entity_user_link_obj
          command.response_representation = Google::Apis::AnalyticsV3::EntityUserLinkRepresentation
          command.response_class = Google::Apis::AnalyticsV3::EntityUserLink
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['webPropertyId'] = web_property_id unless web_property_id.nil?
          command.params['linkId'] = link_id unless link_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Lists all columns for a report type
        # @param [String] report_type
        #   Report type. Allowed Values: 'ga'. Where 'ga' corresponds to the Core
        #   Reporting API
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
        # @yieldparam result [Google::Apis::AnalyticsV3::Columns] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsV3::Columns]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_metadatum_columns(report_type, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'metadata/{reportType}/columns'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AnalyticsV3::ColumnsRepresentation
          command.response_class = Google::Apis::AnalyticsV3::Columns
          command.params['reportType'] = report_type unless report_type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Creates an account ticket.
        # @param [Google::Apis::AnalyticsV3::AccountTicket] account_ticket_obj
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
        # @yieldparam result [Google::Apis::AnalyticsV3::AccountTicket] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsV3::AccountTicket]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_account_ticket(account_ticket_obj, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'provisioning/createAccountTicket'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::AnalyticsV3::AccountTicketRepresentation
          command.request_object = account_ticket_obj
          command.response_representation = Google::Apis::AnalyticsV3::AccountTicketRepresentation
          command.response_class = Google::Apis::AnalyticsV3::AccountTicket
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
