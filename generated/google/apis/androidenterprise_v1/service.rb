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
    module AndroidenterpriseV1
      # Google Play MDM API
      #
      # Allows MDMs/EMMs and enterprises to manage the deployment of apps to Android
      #  for Work users.
      #
      # @example
      #    require 'google/apis/androidenterprise_v1'
      #
      #    Androidenterprise = Google::Apis::AndroidenterpriseV1 # Alias the module
      #    service = Androidenterprise::AndroidEnterpriseService.new
      #
      # @see 
      class AndroidEnterpriseService < Google::Apis::Core::BaseService

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
          super('https://www.googleapis.com/', 'androidenterprise/v1/')
        end

        # Deletes a collection.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] collection_id
        #   The ID of the collection.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
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
        def delete_collection(enterprise_id, collection_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'enterprises/{enterpriseId}/collections/{collectionId}'
          command =  make_simple_command(:delete, path, options)
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.params['collectionId'] = collection_id unless collection_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Retrieves the details of a collection.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] collection_id
        #   The ID of the collection.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::Collection] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::Collection]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_collection(enterprise_id, collection_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'enterprises/{enterpriseId}/collections/{collectionId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AndroidenterpriseV1::CollectionRepresentation
          command.response_class = Google::Apis::AndroidenterpriseV1::Collection
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.params['collectionId'] = collection_id unless collection_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Creates a new collection.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [Google::Apis::AndroidenterpriseV1::Collection] collection
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
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::Collection] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::Collection]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_collection(enterprise_id, collection = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'enterprises/{enterpriseId}/collections'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::AndroidenterpriseV1::CollectionRepresentation
          command.request_object = collection
          command.response_representation = Google::Apis::AndroidenterpriseV1::CollectionRepresentation
          command.response_class = Google::Apis::AndroidenterpriseV1::Collection
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Retrieves the IDs of all the collections for an enterprise.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::CollectionsListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::CollectionsListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_collections(enterprise_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'enterprises/{enterpriseId}/collections'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AndroidenterpriseV1::CollectionsListResponseRepresentation
          command.response_class = Google::Apis::AndroidenterpriseV1::CollectionsListResponse
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Updates a collection. This method supports patch semantics.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] collection_id
        #   The ID of the collection.
        # @param [Google::Apis::AndroidenterpriseV1::Collection] collection
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
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::Collection] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::Collection]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_collection(enterprise_id, collection_id, collection = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'enterprises/{enterpriseId}/collections/{collectionId}'
          command =  make_simple_command(:patch, path, options)
          command.request_representation = Google::Apis::AndroidenterpriseV1::CollectionRepresentation
          command.request_object = collection
          command.response_representation = Google::Apis::AndroidenterpriseV1::CollectionRepresentation
          command.response_class = Google::Apis::AndroidenterpriseV1::Collection
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.params['collectionId'] = collection_id unless collection_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Updates a collection.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] collection_id
        #   The ID of the collection.
        # @param [Google::Apis::AndroidenterpriseV1::Collection] collection
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
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::Collection] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::Collection]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_collection(enterprise_id, collection_id, collection = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'enterprises/{enterpriseId}/collections/{collectionId}'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::AndroidenterpriseV1::CollectionRepresentation
          command.request_object = collection
          command.response_representation = Google::Apis::AndroidenterpriseV1::CollectionRepresentation
          command.response_class = Google::Apis::AndroidenterpriseV1::Collection
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.params['collectionId'] = collection_id unless collection_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Removes the user from the list of those specifically allowed to see the
        # collection. If the collection's visibility is set to viewersOnly then only
        # such users will see the collection.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] collection_id
        #   The ID of the collection.
        # @param [String] user_id
        #   The ID of the user.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
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
        def delete_collectionviewer(enterprise_id, collection_id, user_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'enterprises/{enterpriseId}/collections/{collectionId}/users/{userId}'
          command =  make_simple_command(:delete, path, options)
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.params['collectionId'] = collection_id unless collection_id.nil?
          command.params['userId'] = user_id unless user_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Retrieves the ID of the user if they have been specifically allowed to see the
        # collection. If the collection's visibility is set to viewersOnly then only
        # these users will see the collection.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] collection_id
        #   The ID of the collection.
        # @param [String] user_id
        #   The ID of the user.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::User] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::User]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_collectionviewer(enterprise_id, collection_id, user_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'enterprises/{enterpriseId}/collections/{collectionId}/users/{userId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AndroidenterpriseV1::UserRepresentation
          command.response_class = Google::Apis::AndroidenterpriseV1::User
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.params['collectionId'] = collection_id unless collection_id.nil?
          command.params['userId'] = user_id unless user_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Retrieves the IDs of the users who have been specifically allowed to see the
        # collection. If the collection's visibility is set to viewersOnly then only
        # these users will see the collection.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] collection_id
        #   The ID of the collection.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::CollectionViewersListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::CollectionViewersListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_collectionviewers(enterprise_id, collection_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'enterprises/{enterpriseId}/collections/{collectionId}/users'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AndroidenterpriseV1::CollectionViewersListResponseRepresentation
          command.response_class = Google::Apis::AndroidenterpriseV1::CollectionViewersListResponse
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.params['collectionId'] = collection_id unless collection_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Adds the user to the list of those specifically allowed to see the collection.
        # If the collection's visibility is set to viewersOnly then only such users will
        # see the collection. This method supports patch semantics.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] collection_id
        #   The ID of the collection.
        # @param [String] user_id
        #   The ID of the user.
        # @param [Google::Apis::AndroidenterpriseV1::User] user
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
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::User] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::User]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_collectionviewer(enterprise_id, collection_id, user_id, user = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'enterprises/{enterpriseId}/collections/{collectionId}/users/{userId}'
          command =  make_simple_command(:patch, path, options)
          command.request_representation = Google::Apis::AndroidenterpriseV1::UserRepresentation
          command.request_object = user
          command.response_representation = Google::Apis::AndroidenterpriseV1::UserRepresentation
          command.response_class = Google::Apis::AndroidenterpriseV1::User
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.params['collectionId'] = collection_id unless collection_id.nil?
          command.params['userId'] = user_id unless user_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Adds the user to the list of those specifically allowed to see the collection.
        # If the collection's visibility is set to viewersOnly then only such users will
        # see the collection.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] collection_id
        #   The ID of the collection.
        # @param [String] user_id
        #   The ID of the user.
        # @param [Google::Apis::AndroidenterpriseV1::User] user
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
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::User] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::User]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_collectionviewer(enterprise_id, collection_id, user_id, user = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'enterprises/{enterpriseId}/collections/{collectionId}/users/{userId}'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::AndroidenterpriseV1::UserRepresentation
          command.request_object = user
          command.response_representation = Google::Apis::AndroidenterpriseV1::UserRepresentation
          command.response_class = Google::Apis::AndroidenterpriseV1::User
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.params['collectionId'] = collection_id unless collection_id.nil?
          command.params['userId'] = user_id unless user_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Retrieves the details of a device.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] user_id
        #   The ID of the user.
        # @param [String] device_id
        #   The ID of the device.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::Device] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::Device]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_device(enterprise_id, user_id, device_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AndroidenterpriseV1::DeviceRepresentation
          command.response_class = Google::Apis::AndroidenterpriseV1::Device
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.params['userId'] = user_id unless user_id.nil?
          command.params['deviceId'] = device_id unless device_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Retrieves whether a device is enabled or disabled for access by the user to
        # Google services. The device state takes effect only if enforcing EMM policies
        # on Android devices is enabled in the Google Admin Console. Otherwise, the
        # device state is ignored and all devices are allowed access to Google services.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] user_id
        #   The ID of the user.
        # @param [String] device_id
        #   The ID of the device.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::DeviceState] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::DeviceState]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_state_device(enterprise_id, user_id, device_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}/state'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AndroidenterpriseV1::DeviceStateRepresentation
          command.response_class = Google::Apis::AndroidenterpriseV1::DeviceState
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.params['userId'] = user_id unless user_id.nil?
          command.params['deviceId'] = device_id unless device_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Retrieves the IDs of all of a user's devices.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] user_id
        #   The ID of the user.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::DevicesListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::DevicesListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_devices(enterprise_id, user_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'enterprises/{enterpriseId}/users/{userId}/devices'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AndroidenterpriseV1::DevicesListResponseRepresentation
          command.response_class = Google::Apis::AndroidenterpriseV1::DevicesListResponse
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.params['userId'] = user_id unless user_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Sets whether a device is enabled or disabled for access by the user to Google
        # services. The device state takes effect only if enforcing EMM policies on
        # Android devices is enabled in the Google Admin Console. Otherwise, the device
        # state is ignored and all devices are allowed access to Google services.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] user_id
        #   The ID of the user.
        # @param [String] device_id
        #   The ID of the device.
        # @param [Google::Apis::AndroidenterpriseV1::DeviceState] device_state
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
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::DeviceState] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::DeviceState]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_state_device(enterprise_id, user_id, device_id, device_state = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}/state'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::AndroidenterpriseV1::DeviceStateRepresentation
          command.request_object = device_state
          command.response_representation = Google::Apis::AndroidenterpriseV1::DeviceStateRepresentation
          command.response_class = Google::Apis::AndroidenterpriseV1::DeviceState
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.params['userId'] = user_id unless user_id.nil?
          command.params['deviceId'] = device_id unless device_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Deletes the binding between the MDM and enterprise. This is now deprecated;
        # use this to unenroll customers that were previously enrolled with the 'insert'
        # call, then enroll them again with the 'enroll' call.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
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
        def delete_enterprise(enterprise_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'enterprises/{enterpriseId}'
          command =  make_simple_command(:delete, path, options)
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Enrolls an enterprise with the calling MDM.
        # @param [Google::Apis::AndroidenterpriseV1::Enterprise] enterprise
        #   
        # @param [String] token
        #   The token provided by the enterprise to register the MDM.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::Enterprise] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::Enterprise]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def enroll_enterprise(enterprise = nil, token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'enterprises/enroll'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::AndroidenterpriseV1::EnterpriseRepresentation
          command.request_object = enterprise
          command.response_representation = Google::Apis::AndroidenterpriseV1::EnterpriseRepresentation
          command.response_class = Google::Apis::AndroidenterpriseV1::Enterprise
          command.query['token'] = token unless token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Retrieves the name and domain of an enterprise.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::Enterprise] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::Enterprise]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_enterprise(enterprise_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'enterprises/{enterpriseId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AndroidenterpriseV1::EnterpriseRepresentation
          command.response_class = Google::Apis::AndroidenterpriseV1::Enterprise
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Establishes the binding between the MDM and an enterprise. This is now
        # deprecated; use enroll instead.
        # @param [Google::Apis::AndroidenterpriseV1::Enterprise] enterprise
        #   
        # @param [String] token
        #   The token provided by the enterprise to register the MDM.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::Enterprise] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::Enterprise]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_enterprise(enterprise = nil, token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'enterprises'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::AndroidenterpriseV1::EnterpriseRepresentation
          command.request_object = enterprise
          command.response_representation = Google::Apis::AndroidenterpriseV1::EnterpriseRepresentation
          command.response_class = Google::Apis::AndroidenterpriseV1::Enterprise
          command.query['token'] = token unless token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Looks up an enterprise by domain name.
        # @param [String] domain
        #   The exact primary domain name of the enterprise to look up.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::EnterprisesListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::EnterprisesListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_enterprises(domain: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'enterprises'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AndroidenterpriseV1::EnterprisesListResponseRepresentation
          command.response_class = Google::Apis::AndroidenterpriseV1::EnterprisesListResponse
          command.query['domain'] = domain unless domain.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Set the account that will be used to authenticate to the API as the enterprise.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [Google::Apis::AndroidenterpriseV1::EnterpriseAccount] enterprise_account
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
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::EnterpriseAccount] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::EnterpriseAccount]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_account_enterprise(enterprise_id, enterprise_account = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'enterprises/{enterpriseId}/account'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::AndroidenterpriseV1::EnterpriseAccountRepresentation
          command.request_object = enterprise_account
          command.response_representation = Google::Apis::AndroidenterpriseV1::EnterpriseAccountRepresentation
          command.response_class = Google::Apis::AndroidenterpriseV1::EnterpriseAccount
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Unenrolls an enterprise from the calling MDM.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
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
        def unenroll_enterprise(enterprise_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'enterprises/{enterpriseId}/unenroll'
          command =  make_simple_command(:post, path, options)
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Removes an entitlement to an app for a user and uninstalls it.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] user_id
        #   The ID of the user.
        # @param [String] entitlement_id
        #   The ID of the entitlement, e.g. "app:com.google.android.gm".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
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
        def delete_entitlement(enterprise_id, user_id, entitlement_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'enterprises/{enterpriseId}/users/{userId}/entitlements/{entitlementId}'
          command =  make_simple_command(:delete, path, options)
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.params['userId'] = user_id unless user_id.nil?
          command.params['entitlementId'] = entitlement_id unless entitlement_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Retrieves details of an entitlement.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] user_id
        #   The ID of the user.
        # @param [String] entitlement_id
        #   The ID of the entitlement, e.g. "app:com.google.android.gm".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::Entitlement] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::Entitlement]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_entitlement(enterprise_id, user_id, entitlement_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'enterprises/{enterpriseId}/users/{userId}/entitlements/{entitlementId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AndroidenterpriseV1::EntitlementRepresentation
          command.response_class = Google::Apis::AndroidenterpriseV1::Entitlement
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.params['userId'] = user_id unless user_id.nil?
          command.params['entitlementId'] = entitlement_id unless entitlement_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # List of all entitlements for the specified user. Only the ID is set.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] user_id
        #   The ID of the user.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::EntitlementsListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::EntitlementsListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_entitlements(enterprise_id, user_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'enterprises/{enterpriseId}/users/{userId}/entitlements'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AndroidenterpriseV1::EntitlementsListResponseRepresentation
          command.response_class = Google::Apis::AndroidenterpriseV1::EntitlementsListResponse
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.params['userId'] = user_id unless user_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Adds or updates an entitlement to an app for a user. This method supports
        # patch semantics.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] user_id
        #   The ID of the user.
        # @param [String] entitlement_id
        #   The ID of the entitlement, e.g. "app:com.google.android.gm".
        # @param [Google::Apis::AndroidenterpriseV1::Entitlement] entitlement
        #   
        # @param [Boolean] install
        #   Set to true to also install the product on all the user's devices where
        #   possible. Failure to install on one or more devices will not prevent this
        #   operation from returning successfully, as long as the entitlement was
        #   successfully assigned to the user.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::Entitlement] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::Entitlement]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_entitlement(enterprise_id, user_id, entitlement_id, entitlement = nil, install: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'enterprises/{enterpriseId}/users/{userId}/entitlements/{entitlementId}'
          command =  make_simple_command(:patch, path, options)
          command.request_representation = Google::Apis::AndroidenterpriseV1::EntitlementRepresentation
          command.request_object = entitlement
          command.response_representation = Google::Apis::AndroidenterpriseV1::EntitlementRepresentation
          command.response_class = Google::Apis::AndroidenterpriseV1::Entitlement
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.params['userId'] = user_id unless user_id.nil?
          command.params['entitlementId'] = entitlement_id unless entitlement_id.nil?
          command.query['install'] = install unless install.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Adds or updates an entitlement to an app for a user.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] user_id
        #   The ID of the user.
        # @param [String] entitlement_id
        #   The ID of the entitlement, e.g. "app:com.google.android.gm".
        # @param [Google::Apis::AndroidenterpriseV1::Entitlement] entitlement
        #   
        # @param [Boolean] install
        #   Set to true to also install the product on all the user's devices where
        #   possible. Failure to install on one or more devices will not prevent this
        #   operation from returning successfully, as long as the entitlement was
        #   successfully assigned to the user.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::Entitlement] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::Entitlement]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_entitlement(enterprise_id, user_id, entitlement_id, entitlement = nil, install: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'enterprises/{enterpriseId}/users/{userId}/entitlements/{entitlementId}'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::AndroidenterpriseV1::EntitlementRepresentation
          command.request_object = entitlement
          command.response_representation = Google::Apis::AndroidenterpriseV1::EntitlementRepresentation
          command.response_class = Google::Apis::AndroidenterpriseV1::Entitlement
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.params['userId'] = user_id unless user_id.nil?
          command.params['entitlementId'] = entitlement_id unless entitlement_id.nil?
          command.query['install'] = install unless install.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Retrieves details of an enterprise's group license for a product.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] group_license_id
        #   The ID of the product the group license is for, e.g. "app:com.google.android.
        #   gm".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::GroupLicense] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::GroupLicense]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_grouplicense(enterprise_id, group_license_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'enterprises/{enterpriseId}/groupLicenses/{groupLicenseId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AndroidenterpriseV1::GroupLicenseRepresentation
          command.response_class = Google::Apis::AndroidenterpriseV1::GroupLicense
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.params['groupLicenseId'] = group_license_id unless group_license_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Retrieves IDs of all products for which the enterprise has a group license.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::GroupLicensesListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::GroupLicensesListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_grouplicenses(enterprise_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'enterprises/{enterpriseId}/groupLicenses'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AndroidenterpriseV1::GroupLicensesListResponseRepresentation
          command.response_class = Google::Apis::AndroidenterpriseV1::GroupLicensesListResponse
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Retrieves the IDs of the users who have been granted entitlements under the
        # license.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] group_license_id
        #   The ID of the product the group license is for, e.g. "app:com.google.android.
        #   gm".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::GroupLicenseUsersListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::GroupLicenseUsersListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_grouplicenseusers(enterprise_id, group_license_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'enterprises/{enterpriseId}/groupLicenses/{groupLicenseId}/users'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AndroidenterpriseV1::GroupLicenseUsersListResponseRepresentation
          command.response_class = Google::Apis::AndroidenterpriseV1::GroupLicenseUsersListResponse
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.params['groupLicenseId'] = group_license_id unless group_license_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Requests to remove an app from a device. A call to get or list will still show
        # the app as installed on the device until it is actually removed.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] user_id
        #   The ID of the user.
        # @param [String] device_id
        #   The Android ID of the device.
        # @param [String] install_id
        #   The ID of the product represented by the install, e.g. "app:com.google.android.
        #   gm".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
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
        def delete_install(enterprise_id, user_id, device_id, install_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}/installs/{installId}'
          command =  make_simple_command(:delete, path, options)
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.params['userId'] = user_id unless user_id.nil?
          command.params['deviceId'] = device_id unless device_id.nil?
          command.params['installId'] = install_id unless install_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Retrieves details of an installation of an app on a device.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] user_id
        #   The ID of the user.
        # @param [String] device_id
        #   The Android ID of the device.
        # @param [String] install_id
        #   The ID of the product represented by the install, e.g. "app:com.google.android.
        #   gm".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::Install] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::Install]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_install(enterprise_id, user_id, device_id, install_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}/installs/{installId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AndroidenterpriseV1::InstallRepresentation
          command.response_class = Google::Apis::AndroidenterpriseV1::Install
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.params['userId'] = user_id unless user_id.nil?
          command.params['deviceId'] = device_id unless device_id.nil?
          command.params['installId'] = install_id unless install_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Retrieves the details of all apps installed on the specified device.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] user_id
        #   The ID of the user.
        # @param [String] device_id
        #   The Android ID of the device.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::InstallsListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::InstallsListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_installs(enterprise_id, user_id, device_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}/installs'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AndroidenterpriseV1::InstallsListResponseRepresentation
          command.response_class = Google::Apis::AndroidenterpriseV1::InstallsListResponse
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.params['userId'] = user_id unless user_id.nil?
          command.params['deviceId'] = device_id unless device_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Requests to install the latest version of an app to a device. If the app is
        # already installed then it is updated to the latest version if necessary. This
        # method supports patch semantics.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] user_id
        #   The ID of the user.
        # @param [String] device_id
        #   The Android ID of the device.
        # @param [String] install_id
        #   The ID of the product represented by the install, e.g. "app:com.google.android.
        #   gm".
        # @param [Google::Apis::AndroidenterpriseV1::Install] install
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
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::Install] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::Install]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_install(enterprise_id, user_id, device_id, install_id, install = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}/installs/{installId}'
          command =  make_simple_command(:patch, path, options)
          command.request_representation = Google::Apis::AndroidenterpriseV1::InstallRepresentation
          command.request_object = install
          command.response_representation = Google::Apis::AndroidenterpriseV1::InstallRepresentation
          command.response_class = Google::Apis::AndroidenterpriseV1::Install
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.params['userId'] = user_id unless user_id.nil?
          command.params['deviceId'] = device_id unless device_id.nil?
          command.params['installId'] = install_id unless install_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Requests to install the latest version of an app to a device. If the app is
        # already installed then it is updated to the latest version if necessary.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] user_id
        #   The ID of the user.
        # @param [String] device_id
        #   The Android ID of the device.
        # @param [String] install_id
        #   The ID of the product represented by the install, e.g. "app:com.google.android.
        #   gm".
        # @param [Google::Apis::AndroidenterpriseV1::Install] install
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
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::Install] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::Install]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_install(enterprise_id, user_id, device_id, install_id, install = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}/installs/{installId}'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::AndroidenterpriseV1::InstallRepresentation
          command.request_object = install
          command.response_representation = Google::Apis::AndroidenterpriseV1::InstallRepresentation
          command.response_class = Google::Apis::AndroidenterpriseV1::Install
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.params['userId'] = user_id unless user_id.nil?
          command.params['deviceId'] = device_id unless device_id.nil?
          command.params['installId'] = install_id unless install_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Retrieves details of an Android app permission for display to an enterprise
        # admin.
        # @param [String] permission_id
        #   The ID of the permission.
        # @param [String] language
        #   The BCP47 tag for the user's preferred language (e.g. "en-US", "de")
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::Permission] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::Permission]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_permission(permission_id, language: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'permissions/{permissionId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AndroidenterpriseV1::PermissionRepresentation
          command.response_class = Google::Apis::AndroidenterpriseV1::Permission
          command.params['permissionId'] = permission_id unless permission_id.nil?
          command.query['language'] = language unless language.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Retrieves details of a product for display to an enterprise admin.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] product_id
        #   The ID of the product, e.g. "app:com.google.android.gm".
        # @param [String] language
        #   The BCP47 tag for the user's preferred language (e.g. "en-US", "de").
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::Product] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::Product]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_product(enterprise_id, product_id, language: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'enterprises/{enterpriseId}/products/{productId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AndroidenterpriseV1::ProductRepresentation
          command.response_class = Google::Apis::AndroidenterpriseV1::Product
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.params['productId'] = product_id unless product_id.nil?
          command.query['language'] = language unless language.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Retrieves the schema defining app restrictions configurable for this product.
        # All products have a schema, but this may be empty if no app restrictions are
        # defined.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] product_id
        #   The ID of the product.
        # @param [String] language
        #   The BCP47 tag for the user's preferred language (e.g. "en-US", "de").
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::AppRestrictionsSchema] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::AppRestrictionsSchema]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_app_restrictions_schema_product(enterprise_id, product_id, language: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'enterprises/{enterpriseId}/products/{productId}/appRestrictionsSchema'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AndroidenterpriseV1::AppRestrictionsSchemaRepresentation
          command.response_class = Google::Apis::AndroidenterpriseV1::AppRestrictionsSchema
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.params['productId'] = product_id unless product_id.nil?
          command.query['language'] = language unless language.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Retrieves the Android app permissions required by this app.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
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
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::ProductPermissions] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::ProductPermissions]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_permissions_product(enterprise_id, product_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'enterprises/{enterpriseId}/products/{productId}/permissions'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AndroidenterpriseV1::ProductPermissionsRepresentation
          command.response_class = Google::Apis::AndroidenterpriseV1::ProductPermissions
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.params['productId'] = product_id unless product_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Updates the set of Android app permissions for this app that have been
        # accepted by the enterprise.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] product_id
        #   The ID of the product.
        # @param [Google::Apis::AndroidenterpriseV1::ProductPermissions] product_permissions
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
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::ProductPermissions] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::ProductPermissions]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_permissions_product(enterprise_id, product_id, product_permissions = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'enterprises/{enterpriseId}/products/{productId}/permissions'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::AndroidenterpriseV1::ProductPermissionsRepresentation
          command.request_object = product_permissions
          command.response_representation = Google::Apis::AndroidenterpriseV1::ProductPermissionsRepresentation
          command.response_class = Google::Apis::AndroidenterpriseV1::ProductPermissions
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.params['productId'] = product_id unless product_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Generates a token (activation code) to allow this user to configure their work
        # account in the Android Setup Wizard. Revokes any previously generated token.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] user_id
        #   The ID of the user.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::UserToken] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::UserToken]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def generate_token_user(enterprise_id, user_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'enterprises/{enterpriseId}/users/{userId}/token'
          command =  make_simple_command(:post, path, options)
          command.response_representation = Google::Apis::AndroidenterpriseV1::UserTokenRepresentation
          command.response_class = Google::Apis::AndroidenterpriseV1::UserToken
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.params['userId'] = user_id unless user_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Retrieves a user's details.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] user_id
        #   The ID of the user.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::User] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::User]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_user(enterprise_id, user_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'enterprises/{enterpriseId}/users/{userId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AndroidenterpriseV1::UserRepresentation
          command.response_class = Google::Apis::AndroidenterpriseV1::User
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.params['userId'] = user_id unless user_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Looks up a user by email address.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] email
        #   The exact primary email address of the user to look up.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::UsersListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::UsersListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_users(enterprise_id, email: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'enterprises/{enterpriseId}/users'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AndroidenterpriseV1::UsersListResponseRepresentation
          command.response_class = Google::Apis::AndroidenterpriseV1::UsersListResponse
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.query['email'] = email unless email.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Revokes a previously generated token (activation code) for the user.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] user_id
        #   The ID of the user.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
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
        def revoke_token_user(enterprise_id, user_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'enterprises/{enterpriseId}/users/{userId}/token'
          command =  make_simple_command(:delete, path, options)
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.params['userId'] = user_id unless user_id.nil?
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
