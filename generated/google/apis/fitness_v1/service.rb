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
    module FitnessV1
      # Fitness
      #
      # Google Fit API
      #
      # @example
      #    require 'google/apis/fitness_v1'
      #
      #    Fitness = Google::Apis::FitnessV1 # Alias the module
      #    service = Fitness::FitnessService.new
      #
      # @see https://developers.google.com/fit/rest/
      class FitnessService < Google::Apis::Core::BaseService

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
          super('https://www.googleapis.com/', 'fitness/v1/users/')
        end

        # Creates a new data source that is unique across all data sources belonging to
        # this user. The data stream ID field can be omitted and will be generated by
        # the server with the correct format. The data stream ID is an ordered
        # combination of some fields from the data source. In addition to the data
        # source fields reflected into the data source ID, the developer project number
        # that is authenticated when creating the data source is included. This
        # developer project number is obfuscated when read by any other developer
        # reading public data types.
        # @param [String] user_id
        #   Create the data source for the person identified. Use me to indicate the
        #   authenticated user. Only me is supported at this time.
        # @param [Google::Apis::FitnessV1::DataSource] data_source
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
        # @yieldparam result [Google::Apis::FitnessV1::DataSource] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FitnessV1::DataSource]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_user_data_source(user_id, data_source = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{userId}/dataSources'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::FitnessV1::DataSourceRepresentation
          command.request_object = data_source
          command.response_representation = Google::Apis::FitnessV1::DataSourceRepresentation
          command.response_class = Google::Apis::FitnessV1::DataSource
          command.params['userId'] = user_id unless user_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Delete the data source if there are no datapoints associated with it
        # @param [String] user_id
        #   Retrieve a data source for the person identified. Use me to indicate the
        #   authenticated user. Only me is supported at this time.
        # @param [String] data_source_id
        #   The data stream ID of the data source to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FitnessV1::DataSource] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FitnessV1::DataSource]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_user_data_source(user_id, data_source_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{userId}/dataSources/{dataSourceId}'
          command =  make_simple_command(:delete, path, options)
          command.response_representation = Google::Apis::FitnessV1::DataSourceRepresentation
          command.response_class = Google::Apis::FitnessV1::DataSource
          command.params['userId'] = user_id unless user_id.nil?
          command.params['dataSourceId'] = data_source_id unless data_source_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Returns a data source identified by a data stream ID.
        # @param [String] user_id
        #   Retrieve a data source for the person identified. Use me to indicate the
        #   authenticated user. Only me is supported at this time.
        # @param [String] data_source_id
        #   The data stream ID of the data source to retrieve.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FitnessV1::DataSource] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FitnessV1::DataSource]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_user_data_source(user_id, data_source_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{userId}/dataSources/{dataSourceId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::FitnessV1::DataSourceRepresentation
          command.response_class = Google::Apis::FitnessV1::DataSource
          command.params['userId'] = user_id unless user_id.nil?
          command.params['dataSourceId'] = data_source_id unless data_source_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Lists all data sources that are visible to the developer, using the OAuth
        # scopes provided. The list is not exhaustive: the user may have private data
        # sources that are only visible to other developers or calls using other scopes.
        # @param [String] user_id
        #   List data sources for the person identified. Use me to indicate the
        #   authenticated user. Only me is supported at this time.
        # @param [Array<String>, String] data_type_name
        #   The names of data types to include in the list. If not specified, all data
        #   sources will be returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FitnessV1::ListDataSourcesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FitnessV1::ListDataSourcesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_data_sources(user_id, data_type_name: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{userId}/dataSources'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::FitnessV1::ListDataSourcesResponseRepresentation
          command.response_class = Google::Apis::FitnessV1::ListDataSourcesResponse
          command.params['userId'] = user_id unless user_id.nil?
          command.query['dataTypeName'] = data_type_name unless data_type_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Updates a given data source. It is an error to modify the data source's data
        # stream ID, data type, type, stream name or device information apart from the
        # device version. Changing these fields would require a new unique data stream
        # ID and separate data source.
        # Data sources are identified by their data stream ID. This method supports
        # patch semantics.
        # @param [String] user_id
        #   Update the data source for the person identified. Use me to indicate the
        #   authenticated user. Only me is supported at this time.
        # @param [String] data_source_id
        #   The data stream ID of the data source to update.
        # @param [Google::Apis::FitnessV1::DataSource] data_source
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
        # @yieldparam result [Google::Apis::FitnessV1::DataSource] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FitnessV1::DataSource]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_user_data_source(user_id, data_source_id, data_source = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{userId}/dataSources/{dataSourceId}'
          command =  make_simple_command(:patch, path, options)
          command.request_representation = Google::Apis::FitnessV1::DataSourceRepresentation
          command.request_object = data_source
          command.response_representation = Google::Apis::FitnessV1::DataSourceRepresentation
          command.response_class = Google::Apis::FitnessV1::DataSource
          command.params['userId'] = user_id unless user_id.nil?
          command.params['dataSourceId'] = data_source_id unless data_source_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Updates a given data source. It is an error to modify the data source's data
        # stream ID, data type, type, stream name or device information apart from the
        # device version. Changing these fields would require a new unique data stream
        # ID and separate data source.
        # Data sources are identified by their data stream ID.
        # @param [String] user_id
        #   Update the data source for the person identified. Use me to indicate the
        #   authenticated user. Only me is supported at this time.
        # @param [String] data_source_id
        #   The data stream ID of the data source to update.
        # @param [Google::Apis::FitnessV1::DataSource] data_source
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
        # @yieldparam result [Google::Apis::FitnessV1::DataSource] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FitnessV1::DataSource]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_user_data_source(user_id, data_source_id, data_source = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{userId}/dataSources/{dataSourceId}'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::FitnessV1::DataSourceRepresentation
          command.request_object = data_source
          command.response_representation = Google::Apis::FitnessV1::DataSourceRepresentation
          command.response_class = Google::Apis::FitnessV1::DataSource
          command.params['userId'] = user_id unless user_id.nil?
          command.params['dataSourceId'] = data_source_id unless data_source_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Performs an inclusive delete of all data points whose start and end times have
        # any overlap with the time range specified by the dataset ID. For most data
        # types, the entire data point will be deleted. For data types where the time
        # span represents a consistent value (such as com.google.activity.segment), and
        # a data point straddles either end point of the dataset, only the overlapping
        # portion of the data point will be deleted.
        # @param [String] user_id
        #   Delete a dataset for the person identified. Use me to indicate the
        #   authenticated user. Only me is supported at this time.
        # @param [String] data_source_id
        #   The data stream ID of the data source that created the dataset.
        # @param [String] dataset_id
        #   Dataset identifier that is a composite of the minimum data point start time
        #   and maximum data point end time represented as nanoseconds from the epoch. The
        #   ID is formatted like: "startTime-endTime" where startTime and endTime are 64
        #   bit integers.
        # @param [String] current_time_millis
        #   The client's current time in milliseconds since epoch.
        # @param [String] modified_time_millis
        #   When the operation was performed on the client.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
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
        def delete_user_data_source_dataset(user_id, data_source_id, dataset_id, current_time_millis: nil, modified_time_millis: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{userId}/dataSources/{dataSourceId}/datasets/{datasetId}'
          command =  make_simple_command(:delete, path, options)
          command.params['userId'] = user_id unless user_id.nil?
          command.params['dataSourceId'] = data_source_id unless data_source_id.nil?
          command.params['datasetId'] = dataset_id unless dataset_id.nil?
          command.query['currentTimeMillis'] = current_time_millis unless current_time_millis.nil?
          command.query['modifiedTimeMillis'] = modified_time_millis unless modified_time_millis.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Returns a dataset containing all data points whose start and end times overlap
        # with the specified range of the dataset minimum start time and maximum end
        # time. Specifically, any data point whose start time is less than or equal to
        # the dataset end time and whose end time is greater than or equal to the
        # dataset start time.
        # @param [String] user_id
        #   Retrieve a dataset for the person identified. Use me to indicate the
        #   authenticated user. Only me is supported at this time.
        # @param [String] data_source_id
        #   The data stream ID of the data source that created the dataset.
        # @param [String] dataset_id
        #   Dataset identifier that is a composite of the minimum data point start time
        #   and maximum data point end time represented as nanoseconds from the epoch. The
        #   ID is formatted like: "startTime-endTime" where startTime and endTime are 64
        #   bit integers.
        # @param [Fixnum] limit
        #   If specified, no more than this many data points will be included in the
        #   dataset. If the there are more data points in the dataset, nextPageToken will
        #   be set in the dataset response.
        # @param [String] page_token
        #   The continuation token, which is used to page through large datasets. To get
        #   the next page of a dataset, set this parameter to the value of nextPageToken
        #   from the previous response. Each subsequent call will yield a partial dataset
        #   with data point end timestamps that are strictly smaller than those in the
        #   previous partial response.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FitnessV1::Dataset] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FitnessV1::Dataset]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_user_data_source_dataset(user_id, data_source_id, dataset_id, limit: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{userId}/dataSources/{dataSourceId}/datasets/{datasetId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::FitnessV1::DatasetRepresentation
          command.response_class = Google::Apis::FitnessV1::Dataset
          command.params['userId'] = user_id unless user_id.nil?
          command.params['dataSourceId'] = data_source_id unless data_source_id.nil?
          command.params['datasetId'] = dataset_id unless dataset_id.nil?
          command.query['limit'] = limit unless limit.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Adds data points to a dataset. The dataset need not be previously created. All
        # points within the given dataset will be returned with subsquent calls to
        # retrieve this dataset. Data points can belong to more than one dataset. This
        # method does not use patch semantics.
        # @param [String] user_id
        #   Patch a dataset for the person identified. Use me to indicate the
        #   authenticated user. Only me is supported at this time.
        # @param [String] data_source_id
        #   The data stream ID of the data source that created the dataset.
        # @param [String] dataset_id
        #   Dataset identifier that is a composite of the minimum data point start time
        #   and maximum data point end time represented as nanoseconds from the epoch. The
        #   ID is formatted like: "startTime-endTime" where startTime and endTime are 64
        #   bit integers.
        # @param [Google::Apis::FitnessV1::Dataset] dataset
        #   
        # @param [String] current_time_millis
        #   The client's current time in milliseconds since epoch. Note that the
        #   minStartTimeNs and maxEndTimeNs properties in the request body are in
        #   nanoseconds instead of milliseconds.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FitnessV1::Dataset] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FitnessV1::Dataset]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_user_data_source_dataset(user_id, data_source_id, dataset_id, dataset = nil, current_time_millis: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{userId}/dataSources/{dataSourceId}/datasets/{datasetId}'
          command =  make_simple_command(:patch, path, options)
          command.request_representation = Google::Apis::FitnessV1::DatasetRepresentation
          command.request_object = dataset
          command.response_representation = Google::Apis::FitnessV1::DatasetRepresentation
          command.response_class = Google::Apis::FitnessV1::Dataset
          command.params['userId'] = user_id unless user_id.nil?
          command.params['dataSourceId'] = data_source_id unless data_source_id.nil?
          command.params['datasetId'] = dataset_id unless dataset_id.nil?
          command.query['currentTimeMillis'] = current_time_millis unless current_time_millis.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        
        
        # Deletes a session specified by the given session ID.
        # @param [String] user_id
        #   Delete a session for the person identified. Use me to indicate the
        #   authenticated user. Only me is supported at this time.
        # @param [String] session_id
        #   The ID of the session to be deleted.
        # @param [String] current_time_millis
        #   The client's current time in milliseconds since epoch.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
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
        def delete_user_session(user_id, session_id, current_time_millis: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{userId}/sessions/{sessionId}'
          command =  make_simple_command(:delete, path, options)
          command.params['userId'] = user_id unless user_id.nil?
          command.params['sessionId'] = session_id unless session_id.nil?
          command.query['currentTimeMillis'] = current_time_millis unless current_time_millis.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Lists sessions previously created.
        # @param [String] user_id
        #   List sessions for the person identified. Use me to indicate the authenticated
        #   user. Only me is supported at this time.
        # @param [String] end_time
        #   An RFC3339 timestamp. Only sessions ending between the start and end times
        #   will be included in the response.
        # @param [Boolean] include_deleted
        #   If true, deleted sessions will be returned. When set to true, sessions
        #   returned in this response will only have an ID and will not have any other
        #   fields.
        # @param [String] page_token
        #   The continuation token, which is used to page through large result sets. To
        #   get the next page of results, set this parameter to the value of nextPageToken
        #   from the previous response.
        # @param [String] start_time
        #   An RFC3339 timestamp. Only sessions ending between the start and end times
        #   will be included in the response.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FitnessV1::ListSessionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FitnessV1::ListSessionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_sessions(user_id, end_time: nil, include_deleted: nil, page_token: nil, start_time: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{userId}/sessions'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::FitnessV1::ListSessionsResponseRepresentation
          command.response_class = Google::Apis::FitnessV1::ListSessionsResponse
          command.params['userId'] = user_id unless user_id.nil?
          command.query['endTime'] = end_time unless end_time.nil?
          command.query['includeDeleted'] = include_deleted unless include_deleted.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['startTime'] = start_time unless start_time.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Updates or insert a given session.
        # @param [String] user_id
        #   Create sessions for the person identified. Use me to indicate the
        #   authenticated user. Only me is supported at this time.
        # @param [String] session_id
        #   The ID of the session to be created.
        # @param [Google::Apis::FitnessV1::Session] session
        #   
        # @param [String] current_time_millis
        #   The client's current time in milliseconds since epoch.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FitnessV1::Session] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FitnessV1::Session]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_user_session(user_id, session_id, session = nil, current_time_millis: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{userId}/sessions/{sessionId}'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::FitnessV1::SessionRepresentation
          command.request_object = session
          command.response_representation = Google::Apis::FitnessV1::SessionRepresentation
          command.response_class = Google::Apis::FitnessV1::Session
          command.params['userId'] = user_id unless user_id.nil?
          command.params['sessionId'] = session_id unless session_id.nil?
          command.query['currentTimeMillis'] = current_time_millis unless current_time_millis.nil?
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
