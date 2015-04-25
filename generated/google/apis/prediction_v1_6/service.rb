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
    module PredictionV1_6
      # Prediction API
      #
      # Lets you access a cloud hosted machine learning service that makes it easy to
      #  build smart apps
      #
      # @example
      #    require 'google/apis/prediction_v1_6'
      #
      #    Prediction = Google::Apis::PredictionV1_6 # Alias the module
      #    service = Prediction::PredictionService.new
      #
      # @see https://developers.google.com/prediction/docs/developer-guide
      class PredictionService < Google::Apis::Core::BaseService

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
          super('https://www.googleapis.com/', 'prediction/v1.6/projects/')
        end

        # Submit input and request an output against a hosted model.
        # @param [String] project
        #   The project associated with the model.
        # @param [String] hosted_model_name
        #   The name of a hosted model.
        # @param [Google::Apis::PredictionV1_6::Input] input
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
        # @yieldparam result [Google::Apis::PredictionV1_6::Output] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PredictionV1_6::Output]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def predict_hostedmodel(project, hosted_model_name, input = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/hostedmodels/{hostedModelName}/predict'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::PredictionV1_6::InputRepresentation
          command.request_object = input
          command.response_representation = Google::Apis::PredictionV1_6::OutputRepresentation
          command.response_class = Google::Apis::PredictionV1_6::Output
          command.params['project'] = project unless project.nil?
          command.params['hostedModelName'] = hosted_model_name unless hosted_model_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Get analysis of the model and the data the model was trained on.
        # @param [String] project
        #   The project associated with the model.
        # @param [String] id
        #   The unique name for the predictive model.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PredictionV1_6::Analyze] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PredictionV1_6::Analyze]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def analyze_trainedmodel(project, id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/trainedmodels/{id}/analyze'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::PredictionV1_6::AnalyzeRepresentation
          command.response_class = Google::Apis::PredictionV1_6::Analyze
          command.params['project'] = project unless project.nil?
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Delete a trained model.
        # @param [String] project
        #   The project associated with the model.
        # @param [String] id
        #   The unique name for the predictive model.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
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
        def delete_trainedmodel(project, id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/trainedmodels/{id}'
          command =  make_simple_command(:delete, path, options)
          command.params['project'] = project unless project.nil?
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Check training status of your model.
        # @param [String] project
        #   The project associated with the model.
        # @param [String] id
        #   The unique name for the predictive model.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PredictionV1_6::Insert2] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PredictionV1_6::Insert2]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_trainedmodel(project, id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/trainedmodels/{id}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::PredictionV1_6::Insert2Representation
          command.response_class = Google::Apis::PredictionV1_6::Insert2
          command.params['project'] = project unless project.nil?
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Train a Prediction API model.
        # @param [String] project
        #   The project associated with the model.
        # @param [Google::Apis::PredictionV1_6::Insert] insert
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
        # @yieldparam result [Google::Apis::PredictionV1_6::Insert2] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PredictionV1_6::Insert2]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_trainedmodel(project, insert = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/trainedmodels'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::PredictionV1_6::InsertRepresentation
          command.request_object = insert
          command.response_representation = Google::Apis::PredictionV1_6::Insert2Representation
          command.response_class = Google::Apis::PredictionV1_6::Insert2
          command.params['project'] = project unless project.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # List available models.
        # @param [String] project
        #   The project associated with the model.
        # @param [Fixnum] max_results
        #   Maximum number of results to return.
        # @param [String] page_token
        #   Pagination token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PredictionV1_6::List] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PredictionV1_6::List]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_trainedmodels(project, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/trainedmodels/list'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::PredictionV1_6::ListRepresentation
          command.response_class = Google::Apis::PredictionV1_6::List
          command.params['project'] = project unless project.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Submit model id and request a prediction.
        # @param [String] project
        #   The project associated with the model.
        # @param [String] id
        #   The unique name for the predictive model.
        # @param [Google::Apis::PredictionV1_6::Input] input
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
        # @yieldparam result [Google::Apis::PredictionV1_6::Output] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PredictionV1_6::Output]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def predict_trainedmodel(project, id, input = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/trainedmodels/{id}/predict'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::PredictionV1_6::InputRepresentation
          command.request_object = input
          command.response_representation = Google::Apis::PredictionV1_6::OutputRepresentation
          command.response_class = Google::Apis::PredictionV1_6::Output
          command.params['project'] = project unless project.nil?
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Add new data to a trained model.
        # @param [String] project
        #   The project associated with the model.
        # @param [String] id
        #   The unique name for the predictive model.
        # @param [Google::Apis::PredictionV1_6::Update] update
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
        # @yieldparam result [Google::Apis::PredictionV1_6::Insert2] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PredictionV1_6::Insert2]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_trainedmodel(project, id, update = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/trainedmodels/{id}'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::PredictionV1_6::UpdateRepresentation
          command.request_object = update
          command.response_representation = Google::Apis::PredictionV1_6::Insert2Representation
          command.response_class = Google::Apis::PredictionV1_6::Insert2
          command.params['project'] = project unless project.nil?
          command.params['id'] = id unless id.nil?
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
