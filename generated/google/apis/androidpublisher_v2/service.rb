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
    module AndroidpublisherV2
      # Google Play Developer API
      #
      # Lets Android application developers access their Google Play accounts.
      #
      # @example
      #    require 'google/apis/androidpublisher_v2'
      #
      #    Androidpublisher = Google::Apis::AndroidpublisherV2 # Alias the module
      #    service = Androidpublisher::AndroidPublisherService.new
      #
      # @see https://developers.google.com/android-publisher
      class AndroidPublisherService < Google::Apis::Core::BaseService
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
          super('https://www.googleapis.com/', 'androidpublisher/v2/applications/')
        end
        
        # Commits/applies the changes made in this edit back to the app.
        # @param [String] package_name
        #   Unique identifier for the Android app that is being updated; for example, "com.
        #   spiffygame".
        # @param [String] edit_id
        #   Unique identifier for this edit.
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
        # @yieldparam result [Google::Apis::AndroidpublisherV2::AppEdit] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV2::AppEdit]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def commit_edit(package_name, edit_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{packageName}/edits/{editId}:commit'
          command =  make_simple_command(:post, path, options)
          command.response_representation = Google::Apis::AndroidpublisherV2::AppEdit::Representation
          command.response_class = Google::Apis::AndroidpublisherV2::AppEdit
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['editId'] = edit_id unless edit_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an edit for an app. Creating a new edit will automatically delete any
        # of your previous edits so this method need only be called if you want to
        # preemptively abandon an edit.
        # @param [String] package_name
        #   Unique identifier for the Android app that is being updated; for example, "com.
        #   spiffygame".
        # @param [String] edit_id
        #   Unique identifier for this edit.
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
        def delete_edit(package_name, edit_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{packageName}/edits/{editId}'
          command =  make_simple_command(:delete, path, options)
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['editId'] = edit_id unless edit_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns information about the edit specified. Calls will fail if the edit is
        # no long active (e.g. has been deleted, superseded or expired).
        # @param [String] package_name
        #   Unique identifier for the Android app that is being updated; for example, "com.
        #   spiffygame".
        # @param [String] edit_id
        #   Unique identifier for this edit.
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
        # @yieldparam result [Google::Apis::AndroidpublisherV2::AppEdit] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV2::AppEdit]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_edit(package_name, edit_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{packageName}/edits/{editId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AndroidpublisherV2::AppEdit::Representation
          command.response_class = Google::Apis::AndroidpublisherV2::AppEdit
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['editId'] = edit_id unless edit_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new edit for an app, populated with the app's current state.
        # @param [String] package_name
        #   Unique identifier for the Android app that is being updated; for example, "com.
        #   spiffygame".
        # @param [Google::Apis::AndroidpublisherV2::AppEdit] app_edit_object
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
        # @yieldparam result [Google::Apis::AndroidpublisherV2::AppEdit] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV2::AppEdit]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_edit(package_name, app_edit_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{packageName}/edits'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::AndroidpublisherV2::AppEdit::Representation
          command.request_object = app_edit_object
          command.response_representation = Google::Apis::AndroidpublisherV2::AppEdit::Representation
          command.response_class = Google::Apis::AndroidpublisherV2::AppEdit
          command.params['packageName'] = package_name unless package_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Checks that the edit can be successfully committed. The edit's changes are not
        # applied to the live app.
        # @param [String] package_name
        #   Unique identifier for the Android app that is being updated; for example, "com.
        #   spiffygame".
        # @param [String] edit_id
        #   Unique identifier for this edit.
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
        # @yieldparam result [Google::Apis::AndroidpublisherV2::AppEdit] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV2::AppEdit]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def validate_edit(package_name, edit_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{packageName}/edits/{editId}:validate'
          command =  make_simple_command(:post, path, options)
          command.response_representation = Google::Apis::AndroidpublisherV2::AppEdit::Representation
          command.response_class = Google::Apis::AndroidpublisherV2::AppEdit
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['editId'] = edit_id unless edit_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the APK-specific localized listing for a specified APK and language
        # code.
        # @param [String] package_name
        #   Unique identifier for the Android app that is being updated; for example, "com.
        #   spiffygame".
        # @param [String] edit_id
        #   Unique identifier for this edit.
        # @param [Fixnum] apk_version_code
        #   The APK version code whose APK-specific listings should be read or modified.
        # @param [String] language
        #   The language code (a BCP-47 language tag) of the APK-specific localized
        #   listing to read or modify. For example, to select Austrian German, pass "de-AT"
        #   .
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
        def delete_edit_apklisting(package_name, edit_id, apk_version_code, language, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{packageName}/edits/{editId}/apks/{apkVersionCode}/listings/{language}'
          command =  make_simple_command(:delete, path, options)
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['editId'] = edit_id unless edit_id.nil?
          command.params['apkVersionCode'] = apk_version_code unless apk_version_code.nil?
          command.params['language'] = language unless language.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes all the APK-specific localized listings for a specified APK.
        # @param [String] package_name
        #   Unique identifier for the Android app that is being updated; for example, "com.
        #   spiffygame".
        # @param [String] edit_id
        #   Unique identifier for this edit.
        # @param [Fixnum] apk_version_code
        #   The APK version code whose APK-specific listings should be read or modified.
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
        def deleteall_edit_apklisting(package_name, edit_id, apk_version_code, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{packageName}/edits/{editId}/apks/{apkVersionCode}/listings'
          command =  make_simple_command(:delete, path, options)
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['editId'] = edit_id unless edit_id.nil?
          command.params['apkVersionCode'] = apk_version_code unless apk_version_code.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Fetches the APK-specific localized listing for a specified APK and language
        # code.
        # @param [String] package_name
        #   Unique identifier for the Android app that is being updated; for example, "com.
        #   spiffygame".
        # @param [String] edit_id
        #   Unique identifier for this edit.
        # @param [Fixnum] apk_version_code
        #   The APK version code whose APK-specific listings should be read or modified.
        # @param [String] language
        #   The language code (a BCP-47 language tag) of the APK-specific localized
        #   listing to read or modify. For example, to select Austrian German, pass "de-AT"
        #   .
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
        # @yieldparam result [Google::Apis::AndroidpublisherV2::ApkListing] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV2::ApkListing]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_edit_apklisting(package_name, edit_id, apk_version_code, language, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{packageName}/edits/{editId}/apks/{apkVersionCode}/listings/{language}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AndroidpublisherV2::ApkListing::Representation
          command.response_class = Google::Apis::AndroidpublisherV2::ApkListing
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['editId'] = edit_id unless edit_id.nil?
          command.params['apkVersionCode'] = apk_version_code unless apk_version_code.nil?
          command.params['language'] = language unless language.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the APK-specific localized listings for a specified APK.
        # @param [String] package_name
        #   Unique identifier for the Android app that is being updated; for example, "com.
        #   spiffygame".
        # @param [String] edit_id
        #   Unique identifier for this edit.
        # @param [Fixnum] apk_version_code
        #   The APK version code whose APK-specific listings should be read or modified.
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
        # @yieldparam result [Google::Apis::AndroidpublisherV2::ListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV2::ListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_edit_apklistings(package_name, edit_id, apk_version_code, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{packageName}/edits/{editId}/apks/{apkVersionCode}/listings'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AndroidpublisherV2::ListResponse::Representation
          command.response_class = Google::Apis::AndroidpublisherV2::ListResponse
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['editId'] = edit_id unless edit_id.nil?
          command.params['apkVersionCode'] = apk_version_code unless apk_version_code.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates or creates the APK-specific localized listing for a specified APK and
        # language code. This method supports patch semantics.
        # @param [String] package_name
        #   Unique identifier for the Android app that is being updated; for example, "com.
        #   spiffygame".
        # @param [String] edit_id
        #   Unique identifier for this edit.
        # @param [Fixnum] apk_version_code
        #   The APK version code whose APK-specific listings should be read or modified.
        # @param [String] language
        #   The language code (a BCP-47 language tag) of the APK-specific localized
        #   listing to read or modify. For example, to select Austrian German, pass "de-AT"
        #   .
        # @param [Google::Apis::AndroidpublisherV2::ApkListing] apk_listing_object
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
        # @yieldparam result [Google::Apis::AndroidpublisherV2::ApkListing] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV2::ApkListing]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_edit_apklisting(package_name, edit_id, apk_version_code, language, apk_listing_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{packageName}/edits/{editId}/apks/{apkVersionCode}/listings/{language}'
          command =  make_simple_command(:patch, path, options)
          command.request_representation = Google::Apis::AndroidpublisherV2::ApkListing::Representation
          command.request_object = apk_listing_object
          command.response_representation = Google::Apis::AndroidpublisherV2::ApkListing::Representation
          command.response_class = Google::Apis::AndroidpublisherV2::ApkListing
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['editId'] = edit_id unless edit_id.nil?
          command.params['apkVersionCode'] = apk_version_code unless apk_version_code.nil?
          command.params['language'] = language unless language.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates or creates the APK-specific localized listing for a specified APK and
        # language code.
        # @param [String] package_name
        #   Unique identifier for the Android app that is being updated; for example, "com.
        #   spiffygame".
        # @param [String] edit_id
        #   Unique identifier for this edit.
        # @param [Fixnum] apk_version_code
        #   The APK version code whose APK-specific listings should be read or modified.
        # @param [String] language
        #   The language code (a BCP-47 language tag) of the APK-specific localized
        #   listing to read or modify. For example, to select Austrian German, pass "de-AT"
        #   .
        # @param [Google::Apis::AndroidpublisherV2::ApkListing] apk_listing_object
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
        # @yieldparam result [Google::Apis::AndroidpublisherV2::ApkListing] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV2::ApkListing]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_edit_apklisting(package_name, edit_id, apk_version_code, language, apk_listing_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{packageName}/edits/{editId}/apks/{apkVersionCode}/listings/{language}'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::AndroidpublisherV2::ApkListing::Representation
          command.request_object = apk_listing_object
          command.response_representation = Google::Apis::AndroidpublisherV2::ApkListing::Representation
          command.response_class = Google::Apis::AndroidpublisherV2::ApkListing
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['editId'] = edit_id unless edit_id.nil?
          command.params['apkVersionCode'] = apk_version_code unless apk_version_code.nil?
          command.params['language'] = language unless language.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new APK without uploading the APK itself to Google Play, instead
        # hosting the APK at a specified URL. This function is only available to
        # enterprises using Google Play for Work whose application is configured to
        # restrict distribution to the enterprise domain.
        # @param [String] package_name
        #   Unique identifier for the Android app that is being updated; for example, "com.
        #   spiffygame".
        # @param [String] edit_id
        #   Unique identifier for this edit.
        # @param [Google::Apis::AndroidpublisherV2::AddExternallyHostedRequest] apks_add_externally_hosted_request_object
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
        # @yieldparam result [Google::Apis::AndroidpublisherV2::AddExternallyHostedResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV2::AddExternallyHostedResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def addexternallyhosted_edit_apk(package_name, edit_id, apks_add_externally_hosted_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{packageName}/edits/{editId}/apks/externallyHosted'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::AndroidpublisherV2::AddExternallyHostedRequest::Representation
          command.request_object = apks_add_externally_hosted_request_object
          command.response_representation = Google::Apis::AndroidpublisherV2::AddExternallyHostedResponse::Representation
          command.response_class = Google::Apis::AndroidpublisherV2::AddExternallyHostedResponse
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['editId'] = edit_id unless edit_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] package_name
        #   Unique identifier for the Android app that is being updated; for example, "com.
        #   spiffygame".
        # @param [String] edit_id
        #   Unique identifier for this edit.
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
        # @yieldparam result [Google::Apis::AndroidpublisherV2::ApksListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV2::ApksListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_edit_apks(package_name, edit_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{packageName}/edits/{editId}/apks'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AndroidpublisherV2::ApksListResponse::Representation
          command.response_class = Google::Apis::AndroidpublisherV2::ApksListResponse
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['editId'] = edit_id unless edit_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] package_name
        #   Unique identifier for the Android app that is being updated; for example, "com.
        #   spiffygame".
        # @param [String] edit_id
        #   Unique identifier for this edit.
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
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidpublisherV2::Apk] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV2::Apk]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def upload_edit_apk(package_name, edit_id, fields: nil, quota_user: nil, user_ip: nil, upload_source: nil, content_type: nil, options: nil, &block)
          path = '{packageName}/edits/{editId}/apks'
          if upload_source.nil?
            command =  make_simple_command(:post, path, options)
          else
            command = make_upload_command(:post, path, options)
            command.upload_source = upload_source
            command.upload_content_type = content_type
          end
          command.response_representation = Google::Apis::AndroidpublisherV2::Apk::Representation
          command.response_class = Google::Apis::AndroidpublisherV2::Apk
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['editId'] = edit_id unless edit_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Fetches app details for this edit. This includes the default language and
        # developer support contact information.
        # @param [String] package_name
        #   Unique identifier for the Android app that is being updated; for example, "com.
        #   spiffygame".
        # @param [String] edit_id
        #   Unique identifier for this edit.
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
        # @yieldparam result [Google::Apis::AndroidpublisherV2::AppDetails] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV2::AppDetails]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_edit_detail(package_name, edit_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{packageName}/edits/{editId}/details'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AndroidpublisherV2::AppDetails::Representation
          command.response_class = Google::Apis::AndroidpublisherV2::AppDetails
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['editId'] = edit_id unless edit_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates app details for this edit. This method supports patch semantics.
        # @param [String] package_name
        #   Unique identifier for the Android app that is being updated; for example, "com.
        #   spiffygame".
        # @param [String] edit_id
        #   Unique identifier for this edit.
        # @param [Google::Apis::AndroidpublisherV2::AppDetails] app_details_object
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
        # @yieldparam result [Google::Apis::AndroidpublisherV2::AppDetails] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV2::AppDetails]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_edit_detail(package_name, edit_id, app_details_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{packageName}/edits/{editId}/details'
          command =  make_simple_command(:patch, path, options)
          command.request_representation = Google::Apis::AndroidpublisherV2::AppDetails::Representation
          command.request_object = app_details_object
          command.response_representation = Google::Apis::AndroidpublisherV2::AppDetails::Representation
          command.response_class = Google::Apis::AndroidpublisherV2::AppDetails
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['editId'] = edit_id unless edit_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates app details for this edit.
        # @param [String] package_name
        #   Unique identifier for the Android app that is being updated; for example, "com.
        #   spiffygame".
        # @param [String] edit_id
        #   Unique identifier for this edit.
        # @param [Google::Apis::AndroidpublisherV2::AppDetails] app_details_object
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
        # @yieldparam result [Google::Apis::AndroidpublisherV2::AppDetails] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV2::AppDetails]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_edit_detail(package_name, edit_id, app_details_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{packageName}/edits/{editId}/details'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::AndroidpublisherV2::AppDetails::Representation
          command.request_object = app_details_object
          command.response_representation = Google::Apis::AndroidpublisherV2::AppDetails::Representation
          command.response_class = Google::Apis::AndroidpublisherV2::AppDetails
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['editId'] = edit_id unless edit_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Fetches the Expansion File configuration for the APK specified.
        # @param [String] package_name
        #   Unique identifier for the Android app that is being updated; for example, "com.
        #   spiffygame".
        # @param [String] edit_id
        #   Unique identifier for this edit.
        # @param [Fixnum] apk_version_code
        #   The version code of the APK whose Expansion File configuration is being read
        #   or modified.
        # @param [String] expansion_file_type
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
        # @yieldparam result [Google::Apis::AndroidpublisherV2::ExpansionFile] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV2::ExpansionFile]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_edit_expansionfile(package_name, edit_id, apk_version_code, expansion_file_type, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{packageName}/edits/{editId}/apks/{apkVersionCode}/expansionFiles/{expansionFileType}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AndroidpublisherV2::ExpansionFile::Representation
          command.response_class = Google::Apis::AndroidpublisherV2::ExpansionFile
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['editId'] = edit_id unless edit_id.nil?
          command.params['apkVersionCode'] = apk_version_code unless apk_version_code.nil?
          command.params['expansionFileType'] = expansion_file_type unless expansion_file_type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the APK's Expansion File configuration to reference another APK's
        # Expansion Files. To add a new Expansion File use the Upload method. This
        # method supports patch semantics.
        # @param [String] package_name
        #   Unique identifier for the Android app that is being updated; for example, "com.
        #   spiffygame".
        # @param [String] edit_id
        #   Unique identifier for this edit.
        # @param [Fixnum] apk_version_code
        #   The version code of the APK whose Expansion File configuration is being read
        #   or modified.
        # @param [String] expansion_file_type
        # @param [Google::Apis::AndroidpublisherV2::ExpansionFile] expansion_file_object
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
        # @yieldparam result [Google::Apis::AndroidpublisherV2::ExpansionFile] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV2::ExpansionFile]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_edit_expansionfile(package_name, edit_id, apk_version_code, expansion_file_type, expansion_file_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{packageName}/edits/{editId}/apks/{apkVersionCode}/expansionFiles/{expansionFileType}'
          command =  make_simple_command(:patch, path, options)
          command.request_representation = Google::Apis::AndroidpublisherV2::ExpansionFile::Representation
          command.request_object = expansion_file_object
          command.response_representation = Google::Apis::AndroidpublisherV2::ExpansionFile::Representation
          command.response_class = Google::Apis::AndroidpublisherV2::ExpansionFile
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['editId'] = edit_id unless edit_id.nil?
          command.params['apkVersionCode'] = apk_version_code unless apk_version_code.nil?
          command.params['expansionFileType'] = expansion_file_type unless expansion_file_type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the APK's Expansion File configuration to reference another APK's
        # Expansion Files. To add a new Expansion File use the Upload method.
        # @param [String] package_name
        #   Unique identifier for the Android app that is being updated; for example, "com.
        #   spiffygame".
        # @param [String] edit_id
        #   Unique identifier for this edit.
        # @param [Fixnum] apk_version_code
        #   The version code of the APK whose Expansion File configuration is being read
        #   or modified.
        # @param [String] expansion_file_type
        # @param [Google::Apis::AndroidpublisherV2::ExpansionFile] expansion_file_object
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
        # @yieldparam result [Google::Apis::AndroidpublisherV2::ExpansionFile] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV2::ExpansionFile]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_edit_expansionfile(package_name, edit_id, apk_version_code, expansion_file_type, expansion_file_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{packageName}/edits/{editId}/apks/{apkVersionCode}/expansionFiles/{expansionFileType}'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::AndroidpublisherV2::ExpansionFile::Representation
          command.request_object = expansion_file_object
          command.response_representation = Google::Apis::AndroidpublisherV2::ExpansionFile::Representation
          command.response_class = Google::Apis::AndroidpublisherV2::ExpansionFile
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['editId'] = edit_id unless edit_id.nil?
          command.params['apkVersionCode'] = apk_version_code unless apk_version_code.nil?
          command.params['expansionFileType'] = expansion_file_type unless expansion_file_type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Uploads and attaches a new Expansion File to the APK specified.
        # @param [String] package_name
        #   Unique identifier for the Android app that is being updated; for example, "com.
        #   spiffygame".
        # @param [String] edit_id
        #   Unique identifier for this edit.
        # @param [Fixnum] apk_version_code
        #   The version code of the APK whose Expansion File configuration is being read
        #   or modified.
        # @param [String] expansion_file_type
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
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidpublisherV2::UploadResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV2::UploadResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def upload_edit_expansionfile(package_name, edit_id, apk_version_code, expansion_file_type, fields: nil, quota_user: nil, user_ip: nil, upload_source: nil, content_type: nil, options: nil, &block)
          path = '{packageName}/edits/{editId}/apks/{apkVersionCode}/expansionFiles/{expansionFileType}'
          if upload_source.nil?
            command =  make_simple_command(:post, path, options)
          else
            command = make_upload_command(:post, path, options)
            command.upload_source = upload_source
            command.upload_content_type = content_type
          end
          command.response_representation = Google::Apis::AndroidpublisherV2::UploadResponse::Representation
          command.response_class = Google::Apis::AndroidpublisherV2::UploadResponse
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['editId'] = edit_id unless edit_id.nil?
          command.params['apkVersionCode'] = apk_version_code unless apk_version_code.nil?
          command.params['expansionFileType'] = expansion_file_type unless expansion_file_type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the image (specified by id) from the edit.
        # @param [String] package_name
        #   Unique identifier for the Android app that is being updated; for example, "com.
        #   spiffygame".
        # @param [String] edit_id
        #   Unique identifier for this edit.
        # @param [String] language
        #   The language code (a BCP-47 language tag) of the localized listing whose
        #   images are to read or modified. For example, to select Austrian German, pass "
        #   de-AT".
        # @param [String] image_type
        # @param [String] image_id
        #   Unique identifier an image within the set of images attached to this edit.
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
        def delete_edit_image(package_name, edit_id, language, image_type, image_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{packageName}/edits/{editId}/listings/{language}/{imageType}/{imageId}'
          command =  make_simple_command(:delete, path, options)
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['editId'] = edit_id unless edit_id.nil?
          command.params['language'] = language unless language.nil?
          command.params['imageType'] = image_type unless image_type.nil?
          command.params['imageId'] = image_id unless image_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes all images for the specified language and image type.
        # @param [String] package_name
        #   Unique identifier for the Android app that is being updated; for example, "com.
        #   spiffygame".
        # @param [String] edit_id
        #   Unique identifier for this edit.
        # @param [String] language
        #   The language code (a BCP-47 language tag) of the localized listing whose
        #   images are to read or modified. For example, to select Austrian German, pass "
        #   de-AT".
        # @param [String] image_type
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
        # @yieldparam result [Google::Apis::AndroidpublisherV2::DeleteAllResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV2::DeleteAllResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def deleteall_edit_image(package_name, edit_id, language, image_type, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{packageName}/edits/{editId}/listings/{language}/{imageType}'
          command =  make_simple_command(:delete, path, options)
          command.response_representation = Google::Apis::AndroidpublisherV2::DeleteAllResponse::Representation
          command.response_class = Google::Apis::AndroidpublisherV2::DeleteAllResponse
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['editId'] = edit_id unless edit_id.nil?
          command.params['language'] = language unless language.nil?
          command.params['imageType'] = image_type unless image_type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all images for the specified language and image type.
        # @param [String] package_name
        #   Unique identifier for the Android app that is being updated; for example, "com.
        #   spiffygame".
        # @param [String] edit_id
        #   Unique identifier for this edit.
        # @param [String] language
        #   The language code (a BCP-47 language tag) of the localized listing whose
        #   images are to read or modified. For example, to select Austrian German, pass "
        #   de-AT".
        # @param [String] image_type
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
        # @yieldparam result [Google::Apis::AndroidpublisherV2::ImagesListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV2::ImagesListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_edit_images(package_name, edit_id, language, image_type, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{packageName}/edits/{editId}/listings/{language}/{imageType}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AndroidpublisherV2::ImagesListResponse::Representation
          command.response_class = Google::Apis::AndroidpublisherV2::ImagesListResponse
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['editId'] = edit_id unless edit_id.nil?
          command.params['language'] = language unless language.nil?
          command.params['imageType'] = image_type unless image_type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Uploads a new image and adds it to the list of images for the specified
        # language and image type.
        # @param [String] package_name
        #   Unique identifier for the Android app that is being updated; for example, "com.
        #   spiffygame".
        # @param [String] edit_id
        #   Unique identifier for this edit.
        # @param [String] language
        #   The language code (a BCP-47 language tag) of the localized listing whose
        #   images are to read or modified. For example, to select Austrian German, pass "
        #   de-AT".
        # @param [String] image_type
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
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidpublisherV2::ImagesUploadResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV2::ImagesUploadResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def upload_edit_image(package_name, edit_id, language, image_type, fields: nil, quota_user: nil, user_ip: nil, upload_source: nil, content_type: nil, options: nil, &block)
          path = '{packageName}/edits/{editId}/listings/{language}/{imageType}'
          if upload_source.nil?
            command =  make_simple_command(:post, path, options)
          else
            command = make_upload_command(:post, path, options)
            command.upload_source = upload_source
            command.upload_content_type = content_type
          end
          command.response_representation = Google::Apis::AndroidpublisherV2::ImagesUploadResponse::Representation
          command.response_class = Google::Apis::AndroidpublisherV2::ImagesUploadResponse
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['editId'] = edit_id unless edit_id.nil?
          command.params['language'] = language unless language.nil?
          command.params['imageType'] = image_type unless image_type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified localized store listing from an edit.
        # @param [String] package_name
        #   Unique identifier for the Android app that is being updated; for example, "com.
        #   spiffygame".
        # @param [String] edit_id
        #   Unique identifier for this edit.
        # @param [String] language
        #   The language code (a BCP-47 language tag) of the localized listing to read or
        #   modify. For example, to select Austrian German, pass "de-AT".
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
        def delete_edit_listing(package_name, edit_id, language, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{packageName}/edits/{editId}/listings/{language}'
          command =  make_simple_command(:delete, path, options)
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['editId'] = edit_id unless edit_id.nil?
          command.params['language'] = language unless language.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes all localized listings from an edit.
        # @param [String] package_name
        #   Unique identifier for the Android app that is being updated; for example, "com.
        #   spiffygame".
        # @param [String] edit_id
        #   Unique identifier for this edit.
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
        def deleteall_edit_listing(package_name, edit_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{packageName}/edits/{editId}/listings'
          command =  make_simple_command(:delete, path, options)
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['editId'] = edit_id unless edit_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Fetches information about a localized store listing.
        # @param [String] package_name
        #   Unique identifier for the Android app that is being updated; for example, "com.
        #   spiffygame".
        # @param [String] edit_id
        #   Unique identifier for this edit.
        # @param [String] language
        #   The language code (a BCP-47 language tag) of the localized listing to read or
        #   modify. For example, to select Austrian German, pass "de-AT".
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
        # @yieldparam result [Google::Apis::AndroidpublisherV2::Listing] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV2::Listing]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_edit_listing(package_name, edit_id, language, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{packageName}/edits/{editId}/listings/{language}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AndroidpublisherV2::Listing::Representation
          command.response_class = Google::Apis::AndroidpublisherV2::Listing
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['editId'] = edit_id unless edit_id.nil?
          command.params['language'] = language unless language.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns all of the localized store listings attached to this edit.
        # @param [String] package_name
        #   Unique identifier for the Android app that is being updated; for example, "com.
        #   spiffygame".
        # @param [String] edit_id
        #   Unique identifier for this edit.
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
        # @yieldparam result [Google::Apis::AndroidpublisherV2::ListingsListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV2::ListingsListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_edit_listings(package_name, edit_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{packageName}/edits/{editId}/listings'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AndroidpublisherV2::ListingsListResponse::Representation
          command.response_class = Google::Apis::AndroidpublisherV2::ListingsListResponse
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['editId'] = edit_id unless edit_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates or updates a localized store listing. This method supports patch
        # semantics.
        # @param [String] package_name
        #   Unique identifier for the Android app that is being updated; for example, "com.
        #   spiffygame".
        # @param [String] edit_id
        #   Unique identifier for this edit.
        # @param [String] language
        #   The language code (a BCP-47 language tag) of the localized listing to read or
        #   modify. For example, to select Austrian German, pass "de-AT".
        # @param [Google::Apis::AndroidpublisherV2::Listing] listing_object
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
        # @yieldparam result [Google::Apis::AndroidpublisherV2::Listing] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV2::Listing]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_edit_listing(package_name, edit_id, language, listing_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{packageName}/edits/{editId}/listings/{language}'
          command =  make_simple_command(:patch, path, options)
          command.request_representation = Google::Apis::AndroidpublisherV2::Listing::Representation
          command.request_object = listing_object
          command.response_representation = Google::Apis::AndroidpublisherV2::Listing::Representation
          command.response_class = Google::Apis::AndroidpublisherV2::Listing
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['editId'] = edit_id unless edit_id.nil?
          command.params['language'] = language unless language.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates or updates a localized store listing.
        # @param [String] package_name
        #   Unique identifier for the Android app that is being updated; for example, "com.
        #   spiffygame".
        # @param [String] edit_id
        #   Unique identifier for this edit.
        # @param [String] language
        #   The language code (a BCP-47 language tag) of the localized listing to read or
        #   modify. For example, to select Austrian German, pass "de-AT".
        # @param [Google::Apis::AndroidpublisherV2::Listing] listing_object
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
        # @yieldparam result [Google::Apis::AndroidpublisherV2::Listing] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV2::Listing]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_edit_listing(package_name, edit_id, language, listing_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{packageName}/edits/{editId}/listings/{language}'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::AndroidpublisherV2::Listing::Representation
          command.request_object = listing_object
          command.response_representation = Google::Apis::AndroidpublisherV2::Listing::Representation
          command.response_class = Google::Apis::AndroidpublisherV2::Listing
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['editId'] = edit_id unless edit_id.nil?
          command.params['language'] = language unless language.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] package_name
        #   Unique identifier for the Android app that is being updated; for example, "com.
        #   spiffygame".
        # @param [String] edit_id
        #   Unique identifier for this edit.
        # @param [String] track
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
        # @yieldparam result [Google::Apis::AndroidpublisherV2::Testers] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV2::Testers]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_edit_tester(package_name, edit_id, track, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{packageName}/edits/{editId}/testers/{track}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AndroidpublisherV2::Testers::Representation
          command.response_class = Google::Apis::AndroidpublisherV2::Testers
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['editId'] = edit_id unless edit_id.nil?
          command.params['track'] = track unless track.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] package_name
        #   Unique identifier for the Android app that is being updated; for example, "com.
        #   spiffygame".
        # @param [String] edit_id
        #   Unique identifier for this edit.
        # @param [String] track
        # @param [Google::Apis::AndroidpublisherV2::Testers] testers_object
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
        # @yieldparam result [Google::Apis::AndroidpublisherV2::Testers] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV2::Testers]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_edit_tester(package_name, edit_id, track, testers_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{packageName}/edits/{editId}/testers/{track}'
          command =  make_simple_command(:patch, path, options)
          command.request_representation = Google::Apis::AndroidpublisherV2::Testers::Representation
          command.request_object = testers_object
          command.response_representation = Google::Apis::AndroidpublisherV2::Testers::Representation
          command.response_class = Google::Apis::AndroidpublisherV2::Testers
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['editId'] = edit_id unless edit_id.nil?
          command.params['track'] = track unless track.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] package_name
        #   Unique identifier for the Android app that is being updated; for example, "com.
        #   spiffygame".
        # @param [String] edit_id
        #   Unique identifier for this edit.
        # @param [String] track
        # @param [Google::Apis::AndroidpublisherV2::Testers] testers_object
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
        # @yieldparam result [Google::Apis::AndroidpublisherV2::Testers] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV2::Testers]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_edit_tester(package_name, edit_id, track, testers_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{packageName}/edits/{editId}/testers/{track}'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::AndroidpublisherV2::Testers::Representation
          command.request_object = testers_object
          command.response_representation = Google::Apis::AndroidpublisherV2::Testers::Representation
          command.response_class = Google::Apis::AndroidpublisherV2::Testers
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['editId'] = edit_id unless edit_id.nil?
          command.params['track'] = track unless track.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Fetches the track configuration for the specified track type. Includes the APK
        # version codes that are in this track.
        # @param [String] package_name
        #   Unique identifier for the Android app that is being updated; for example, "com.
        #   spiffygame".
        # @param [String] edit_id
        #   Unique identifier for this edit.
        # @param [String] track
        #   The track type to read or modify.
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
        # @yieldparam result [Google::Apis::AndroidpublisherV2::Track] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV2::Track]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_edit_track(package_name, edit_id, track, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{packageName}/edits/{editId}/tracks/{track}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AndroidpublisherV2::Track::Representation
          command.response_class = Google::Apis::AndroidpublisherV2::Track
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['editId'] = edit_id unless edit_id.nil?
          command.params['track'] = track unless track.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the track configurations for this edit.
        # @param [String] package_name
        #   Unique identifier for the Android app that is being updated; for example, "com.
        #   spiffygame".
        # @param [String] edit_id
        #   Unique identifier for this edit.
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
        # @yieldparam result [Google::Apis::AndroidpublisherV2::TracksListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV2::TracksListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_edit_tracks(package_name, edit_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{packageName}/edits/{editId}/tracks'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AndroidpublisherV2::TracksListResponse::Representation
          command.response_class = Google::Apis::AndroidpublisherV2::TracksListResponse
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['editId'] = edit_id unless edit_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the track configuration for the specified track type. When halted, the
        # rollout track cannot be updated without adding new APKs, and adding new APKs
        # will cause it to resume. This method supports patch semantics.
        # @param [String] package_name
        #   Unique identifier for the Android app that is being updated; for example, "com.
        #   spiffygame".
        # @param [String] edit_id
        #   Unique identifier for this edit.
        # @param [String] track
        #   The track type to read or modify.
        # @param [Google::Apis::AndroidpublisherV2::Track] track_object
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
        # @yieldparam result [Google::Apis::AndroidpublisherV2::Track] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV2::Track]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_edit_track(package_name, edit_id, track, track_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{packageName}/edits/{editId}/tracks/{track}'
          command =  make_simple_command(:patch, path, options)
          command.request_representation = Google::Apis::AndroidpublisherV2::Track::Representation
          command.request_object = track_object
          command.response_representation = Google::Apis::AndroidpublisherV2::Track::Representation
          command.response_class = Google::Apis::AndroidpublisherV2::Track
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['editId'] = edit_id unless edit_id.nil?
          command.params['track'] = track unless track.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the track configuration for the specified track type. When halted, the
        # rollout track cannot be updated without adding new APKs, and adding new APKs
        # will cause it to resume.
        # @param [String] package_name
        #   Unique identifier for the Android app that is being updated; for example, "com.
        #   spiffygame".
        # @param [String] edit_id
        #   Unique identifier for this edit.
        # @param [String] track
        #   The track type to read or modify.
        # @param [Google::Apis::AndroidpublisherV2::Track] track_object
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
        # @yieldparam result [Google::Apis::AndroidpublisherV2::Track] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV2::Track]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_edit_track(package_name, edit_id, track, track_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{packageName}/edits/{editId}/tracks/{track}'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::AndroidpublisherV2::Track::Representation
          command.request_object = track_object
          command.response_representation = Google::Apis::AndroidpublisherV2::Track::Representation
          command.response_class = Google::Apis::AndroidpublisherV2::Track
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['editId'] = edit_id unless edit_id.nil?
          command.params['track'] = track unless track.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the user's current inapp item or subscription entitlements
        # @param [String] package_name
        #   The package name of the application the inapp product was sold in (for example,
        #   'com.some.thing').
        # @param [Fixnum] max_results
        # @param [String] product_id
        #   The product id of the inapp product (for example, 'sku1'). This can be used to
        #   restrict the result set.
        # @param [Fixnum] start_index
        # @param [String] token
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
        # @yieldparam result [Google::Apis::AndroidpublisherV2::EntitlementsListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV2::EntitlementsListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_entitlements(package_name, max_results: nil, product_id: nil, start_index: nil, token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{packageName}/entitlements'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AndroidpublisherV2::EntitlementsListResponse::Representation
          command.response_class = Google::Apis::AndroidpublisherV2::EntitlementsListResponse
          command.params['packageName'] = package_name unless package_name.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['productId'] = product_id unless product_id.nil?
          command.query['startIndex'] = start_index unless start_index.nil?
          command.query['token'] = token unless token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [Google::Apis::AndroidpublisherV2::BatchRequest] inappproducts_batch_request_object
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
        # @yieldparam result [Google::Apis::AndroidpublisherV2::BatchResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV2::BatchResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_inappproduct(inappproducts_batch_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'inappproducts/batch'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::AndroidpublisherV2::BatchRequest::Representation
          command.request_object = inappproducts_batch_request_object
          command.response_representation = Google::Apis::AndroidpublisherV2::BatchResponse::Representation
          command.response_class = Google::Apis::AndroidpublisherV2::BatchResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete an in-app product for an app.
        # @param [String] package_name
        #   Unique identifier for the Android app with the in-app product; for example, "
        #   com.spiffygame".
        # @param [String] sku
        #   Unique identifier for the in-app product.
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
        def delete_inappproduct(package_name, sku, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{packageName}/inappproducts/{sku}'
          command =  make_simple_command(:delete, path, options)
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['sku'] = sku unless sku.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns information about the in-app product specified.
        # @param [String] package_name
        # @param [String] sku
        #   Unique identifier for the in-app product.
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
        # @yieldparam result [Google::Apis::AndroidpublisherV2::InAppProduct] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV2::InAppProduct]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_inappproduct(package_name, sku, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{packageName}/inappproducts/{sku}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AndroidpublisherV2::InAppProduct::Representation
          command.response_class = Google::Apis::AndroidpublisherV2::InAppProduct
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['sku'] = sku unless sku.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new in-app product for an app.
        # @param [String] package_name
        #   Unique identifier for the Android app; for example, "com.spiffygame".
        # @param [Google::Apis::AndroidpublisherV2::InAppProduct] in_app_product_object
        # @param [Boolean] auto_convert_missing_prices
        #   If true the prices for all regions targeted by the parent app that don't have
        #   a price specified for this in-app product will be auto converted to the target
        #   currency based on the default price. Defaults to false.
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
        # @yieldparam result [Google::Apis::AndroidpublisherV2::InAppProduct] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV2::InAppProduct]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_inappproduct(package_name, in_app_product_object = nil, auto_convert_missing_prices: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{packageName}/inappproducts'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::AndroidpublisherV2::InAppProduct::Representation
          command.request_object = in_app_product_object
          command.response_representation = Google::Apis::AndroidpublisherV2::InAppProduct::Representation
          command.response_class = Google::Apis::AndroidpublisherV2::InAppProduct
          command.params['packageName'] = package_name unless package_name.nil?
          command.query['autoConvertMissingPrices'] = auto_convert_missing_prices unless auto_convert_missing_prices.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List all the in-app products for an Android app, both subscriptions and
        # managed in-app products..
        # @param [String] package_name
        #   Unique identifier for the Android app with in-app products; for example, "com.
        #   spiffygame".
        # @param [Fixnum] max_results
        # @param [Fixnum] start_index
        # @param [String] token
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
        # @yieldparam result [Google::Apis::AndroidpublisherV2::InappproductsListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV2::InappproductsListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_inappproducts(package_name, max_results: nil, start_index: nil, token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{packageName}/inappproducts'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AndroidpublisherV2::InappproductsListResponse::Representation
          command.response_class = Google::Apis::AndroidpublisherV2::InappproductsListResponse
          command.params['packageName'] = package_name unless package_name.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['startIndex'] = start_index unless start_index.nil?
          command.query['token'] = token unless token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the details of an in-app product. This method supports patch semantics.
        # @param [String] package_name
        #   Unique identifier for the Android app with the in-app product; for example, "
        #   com.spiffygame".
        # @param [String] sku
        #   Unique identifier for the in-app product.
        # @param [Google::Apis::AndroidpublisherV2::InAppProduct] in_app_product_object
        # @param [Boolean] auto_convert_missing_prices
        #   If true the prices for all regions targeted by the parent app that don't have
        #   a price specified for this in-app product will be auto converted to the target
        #   currency based on the default price. Defaults to false.
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
        # @yieldparam result [Google::Apis::AndroidpublisherV2::InAppProduct] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV2::InAppProduct]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_inappproduct(package_name, sku, in_app_product_object = nil, auto_convert_missing_prices: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{packageName}/inappproducts/{sku}'
          command =  make_simple_command(:patch, path, options)
          command.request_representation = Google::Apis::AndroidpublisherV2::InAppProduct::Representation
          command.request_object = in_app_product_object
          command.response_representation = Google::Apis::AndroidpublisherV2::InAppProduct::Representation
          command.response_class = Google::Apis::AndroidpublisherV2::InAppProduct
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['sku'] = sku unless sku.nil?
          command.query['autoConvertMissingPrices'] = auto_convert_missing_prices unless auto_convert_missing_prices.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the details of an in-app product.
        # @param [String] package_name
        #   Unique identifier for the Android app with the in-app product; for example, "
        #   com.spiffygame".
        # @param [String] sku
        #   Unique identifier for the in-app product.
        # @param [Google::Apis::AndroidpublisherV2::InAppProduct] in_app_product_object
        # @param [Boolean] auto_convert_missing_prices
        #   If true the prices for all regions targeted by the parent app that don't have
        #   a price specified for this in-app product will be auto converted to the target
        #   currency based on the default price. Defaults to false.
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
        # @yieldparam result [Google::Apis::AndroidpublisherV2::InAppProduct] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV2::InAppProduct]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_inappproduct(package_name, sku, in_app_product_object = nil, auto_convert_missing_prices: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{packageName}/inappproducts/{sku}'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::AndroidpublisherV2::InAppProduct::Representation
          command.request_object = in_app_product_object
          command.response_representation = Google::Apis::AndroidpublisherV2::InAppProduct::Representation
          command.response_class = Google::Apis::AndroidpublisherV2::InAppProduct
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['sku'] = sku unless sku.nil?
          command.query['autoConvertMissingPrices'] = auto_convert_missing_prices unless auto_convert_missing_prices.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Checks the purchase and consumption status of an inapp item.
        # @param [String] package_name
        #   The package name of the application the inapp product was sold in (for example,
        #   'com.some.thing').
        # @param [String] product_id
        #   The inapp product SKU (for example, 'com.some.thing.inapp1').
        # @param [String] token
        #   The token provided to the user's device when the inapp product was purchased.
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
        # @yieldparam result [Google::Apis::AndroidpublisherV2::ProductPurchase] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV2::ProductPurchase]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_purchase_product(package_name, product_id, token, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{packageName}/purchases/products/{productId}/tokens/{token}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AndroidpublisherV2::ProductPurchase::Representation
          command.response_class = Google::Apis::AndroidpublisherV2::ProductPurchase
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['productId'] = product_id unless product_id.nil?
          command.params['token'] = token unless token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Cancels a user's subscription purchase. The subscription remains valid until
        # its expiration time.
        # @param [String] package_name
        #   The package name of the application for which this subscription was purchased (
        #   for example, 'com.some.thing').
        # @param [String] subscription_id
        #   The purchased subscription ID (for example, 'monthly001').
        # @param [String] token
        #   The token provided to the user's device when the subscription was purchased.
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
        def cancel_purchase_subscription(package_name, subscription_id, token, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{packageName}/purchases/subscriptions/{subscriptionId}/tokens/{token}:cancel'
          command =  make_simple_command(:post, path, options)
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['subscriptionId'] = subscription_id unless subscription_id.nil?
          command.params['token'] = token unless token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Defers a user's subscription purchase until a specified future expiration time.
        # @param [String] package_name
        #   The package name of the application for which this subscription was purchased (
        #   for example, 'com.some.thing').
        # @param [String] subscription_id
        #   The purchased subscription ID (for example, 'monthly001').
        # @param [String] token
        #   The token provided to the user's device when the subscription was purchased.
        # @param [Google::Apis::AndroidpublisherV2::SubscriptionPurchasesDeferRequest] subscription_purchases_defer_request_object
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
        # @yieldparam result [Google::Apis::AndroidpublisherV2::SubscriptionPurchasesDeferResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV2::SubscriptionPurchasesDeferResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def defer_purchase_subscription(package_name, subscription_id, token, subscription_purchases_defer_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{packageName}/purchases/subscriptions/{subscriptionId}/tokens/{token}:defer'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::AndroidpublisherV2::SubscriptionPurchasesDeferRequest::Representation
          command.request_object = subscription_purchases_defer_request_object
          command.response_representation = Google::Apis::AndroidpublisherV2::SubscriptionPurchasesDeferResponse::Representation
          command.response_class = Google::Apis::AndroidpublisherV2::SubscriptionPurchasesDeferResponse
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['subscriptionId'] = subscription_id unless subscription_id.nil?
          command.params['token'] = token unless token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Checks whether a user's subscription purchase is valid and returns its expiry
        # time.
        # @param [String] package_name
        #   The package name of the application for which this subscription was purchased (
        #   for example, 'com.some.thing').
        # @param [String] subscription_id
        #   The purchased subscription ID (for example, 'monthly001').
        # @param [String] token
        #   The token provided to the user's device when the subscription was purchased.
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
        # @yieldparam result [Google::Apis::AndroidpublisherV2::SubscriptionPurchase] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV2::SubscriptionPurchase]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_purchase_subscription(package_name, subscription_id, token, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{packageName}/purchases/subscriptions/{subscriptionId}/tokens/{token}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AndroidpublisherV2::SubscriptionPurchase::Representation
          command.response_class = Google::Apis::AndroidpublisherV2::SubscriptionPurchase
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['subscriptionId'] = subscription_id unless subscription_id.nil?
          command.params['token'] = token unless token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Refunds a user's subscription purchase, but the subscription remains valid
        # until its expiration time and it will continue to recur.
        # @param [String] package_name
        #   The package name of the application for which this subscription was purchased (
        #   for example, 'com.some.thing').
        # @param [String] subscription_id
        #   The purchased subscription ID (for example, 'monthly001').
        # @param [String] token
        #   The token provided to the user's device when the subscription was purchased.
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
        def refund_purchase_subscription(package_name, subscription_id, token, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{packageName}/purchases/subscriptions/{subscriptionId}/tokens/{token}:refund'
          command =  make_simple_command(:post, path, options)
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['subscriptionId'] = subscription_id unless subscription_id.nil?
          command.params['token'] = token unless token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Refunds and immediately revokes a user's subscription purchase. Access to the
        # subscription will be terminated immediately and it will stop recurring.
        # @param [String] package_name
        #   The package name of the application for which this subscription was purchased (
        #   for example, 'com.some.thing').
        # @param [String] subscription_id
        #   The purchased subscription ID (for example, 'monthly001').
        # @param [String] token
        #   The token provided to the user's device when the subscription was purchased.
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
        def revoke_purchase_subscription(package_name, subscription_id, token, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{packageName}/purchases/subscriptions/{subscriptionId}/tokens/{token}:revoke'
          command =  make_simple_command(:post, path, options)
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['subscriptionId'] = subscription_id unless subscription_id.nil?
          command.params['token'] = token unless token.nil?
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
