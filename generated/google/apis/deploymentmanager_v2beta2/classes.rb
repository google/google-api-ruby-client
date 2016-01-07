# Copyright 2016 Google Inc.
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

require 'date'
require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module DeploymentmanagerV2beta2
      
      # 
      class Deployment
        include Google::Apis::Core::Hashable
      
        # An optional user-provided description of the deployment.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Specifies a fingerprint for update() requests. A fingerprint is a randomly
        # generated value that must be provided in update() requests to perform
        # optimistic locking. This ensures optimistic concurrency so that only one
        # update can be performed at a time. The fingerprint is initially generated by
        # Deployment Manager and changes after every request to modify data. To get the
        # latest fingerprint value, perform a get() request to a deployment.
        # Corresponds to the JSON property `fingerprint`
        # @return [String]
        attr_accessor :fingerprint
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] Timestamp when the deployment was created, in RFC3339 text
        # format .
        # Corresponds to the JSON property `insertTime`
        # @return [String]
        attr_accessor :insert_time
      
        # [Input Only] Specifies how Deployment Manager should apply this template.
        # Possible options are PREVIEW, UPDATE, and CANCEL.
        # PREVIEW creates a deployment and creates "shell" resources but does not
        # actually instantiate these resources. This allows you to preview what your
        # deployment looks like. You can use this intent to preview updates to
        # deployments or preview new deployments. You must provide a target.config with
        # a configuration for this intent. After previewing a deployment, you can deploy
        # your resources by making a request with the UPDATE intent or you can CANCEL
        # the preview altogether. Note that the deployment will still exist after you
        # cancel the preview and you must separately delete this deployment if you want
        # to remove it.
        # UPDATE performs an update to the underlying resources in a deployment. If you
        # provide a populated target.config field with this request, Deployment Manager
        # uses that configuration to perform an update. If you had previewed this update
        # beforehand, and do not supply a target.config or provide an empty target.
        # config, Deployment Manager uses the last previewed configuration.
        # CANCEL cancels an update that is in PREVIEW or UPDATE but does not undo any
        # changes already made.
        # Corresponds to the JSON property `intent`
        # @return [String]
        attr_accessor :intent
      
        # [Output Only] URL of the manifest representing the last manifest that was
        # successfully deployed.
        # Corresponds to the JSON property `manifest`
        # @return [String]
        attr_accessor :manifest
      
        # Name of the resource; provided by the client when the resource is created. The
        # name must be 1-63 characters long, and comply with RFC1035. Specifically, the
        # name must be 1-63 characters long and match the regular expression [a-z]([-a-
        # z0-9]*[a-z0-9])? which means the first character must be a lowercase letter,
        # and all following characters must be a dash, lowercase letter, or digit,
        # except the last character, which cannot be a dash.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # [Output Only] The current state of the deployment. This can be DEPLOYED,
        # DEPLOYMENT_FAILED, PREVIEWING, UPDATING, and CANCELING.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # 
        # Corresponds to the JSON property `target`
        # @return [Google::Apis::DeploymentmanagerV2beta2::TargetConfiguration]
        attr_accessor :target
      
        # 
        # Corresponds to the JSON property `update`
        # @return [Google::Apis::DeploymentmanagerV2beta2::DeploymentUpdate]
        attr_accessor :update
      
        # [Output Only] Timestamp when the deployment was updated, in RFC3339 text
        # format .
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] unless args[:description].nil?
          @fingerprint = args[:fingerprint] unless args[:fingerprint].nil?
          @id = args[:id] unless args[:id].nil?
          @insert_time = args[:insert_time] unless args[:insert_time].nil?
          @intent = args[:intent] unless args[:intent].nil?
          @manifest = args[:manifest] unless args[:manifest].nil?
          @name = args[:name] unless args[:name].nil?
          @state = args[:state] unless args[:state].nil?
          @target = args[:target] unless args[:target].nil?
          @update = args[:update] unless args[:update].nil?
          @update_time = args[:update_time] unless args[:update_time].nil?
        end
      end
      
      # 
      class DeploymentUpdate
        include Google::Apis::Core::Hashable
      
        # [Output Only] List of all errors encountered while trying to enact the update.
        # Corresponds to the JSON property `errors`
        # @return [Array<String>]
        attr_accessor :errors
      
        # [Output Only] URL of the manifest representing the update configuration of
        # this deployment.
        # Corresponds to the JSON property `manifest`
        # @return [String]
        attr_accessor :manifest
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @errors = args[:errors] unless args[:errors].nil?
          @manifest = args[:manifest] unless args[:manifest].nil?
        end
      end
      
      # A response containing a partial list of deployments and a page token used to
      # build the next request if the request has been truncated.
      class ListDeploymentsResponse
        include Google::Apis::Core::Hashable
      
        # [Output Only] The deployments contained in this response.
        # Corresponds to the JSON property `deployments`
        # @return [Array<Google::Apis::DeploymentmanagerV2beta2::Deployment>]
        attr_accessor :deployments
      
        # [Output Only] A token used to continue a truncated list request.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deployments = args[:deployments] unless args[:deployments].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # 
      class ImportFile
        include Google::Apis::Core::Hashable
      
        # The contents of the file.
        # Corresponds to the JSON property `content`
        # @return [String]
        attr_accessor :content
      
        # The name of the file.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content = args[:content] unless args[:content].nil?
          @name = args[:name] unless args[:name].nil?
        end
      end
      
      # 
      class Manifest
        include Google::Apis::Core::Hashable
      
        # [Output Only] The YAML configuration for this manifest.
        # Corresponds to the JSON property `config`
        # @return [String]
        attr_accessor :config
      
        # [Output Only] The fully-expanded configuration file, including any templates
        # and references.
        # Corresponds to the JSON property `evaluatedConfig`
        # @return [String]
        attr_accessor :evaluated_config
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] The imported files for this manifest.
        # Corresponds to the JSON property `imports`
        # @return [Array<Google::Apis::DeploymentmanagerV2beta2::ImportFile>]
        attr_accessor :imports
      
        # [Output Only] Timestamp when the manifest was created, in RFC3339 text format.
        # Corresponds to the JSON property `insertTime`
        # @return [String]
        attr_accessor :insert_time
      
        # [Output Only] The YAML layout for this manifest.
        # Corresponds to the JSON property `layout`
        # @return [String]
        attr_accessor :layout
      
        # [Output Only] The name of the manifest.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # [Output Only] Self link for the manifest.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @config = args[:config] unless args[:config].nil?
          @evaluated_config = args[:evaluated_config] unless args[:evaluated_config].nil?
          @id = args[:id] unless args[:id].nil?
          @imports = args[:imports] unless args[:imports].nil?
          @insert_time = args[:insert_time] unless args[:insert_time].nil?
          @layout = args[:layout] unless args[:layout].nil?
          @name = args[:name] unless args[:name].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
        end
      end
      
      # A response containing a partial list of manifests and a page token used to
      # build the next request if the request has been truncated.
      class ListManifestsResponse
        include Google::Apis::Core::Hashable
      
        # [Output Only] Manifests contained in this list response.
        # Corresponds to the JSON property `manifests`
        # @return [Array<Google::Apis::DeploymentmanagerV2beta2::Manifest>]
        attr_accessor :manifests
      
        # [Output Only] A token used to continue a truncated list request.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @manifests = args[:manifests] unless args[:manifests].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # An Operation resource, used to manage asynchronous API requests.
      class Operation
        include Google::Apis::Core::Hashable
      
        # [Output Only] An optional identifier specified by the client when the mutation
        # was initiated. Must be unique for all Operation resources in the project.
        # Corresponds to the JSON property `clientOperationId`
        # @return [String]
        attr_accessor :client_operation_id
      
        # [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # [Output Only] The time that this operation was completed. This is in RFC3339
        # text format.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # [Output Only] If errors are generated during processing of the operation, this
        # field will be populated.
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::DeploymentmanagerV2beta2::Operation::Error]
        attr_accessor :error
      
        # [Output Only] If the operation fails, this field contains the HTTP error
        # message that was returned, such as NOT FOUND.
        # Corresponds to the JSON property `httpErrorMessage`
        # @return [String]
        attr_accessor :http_error_message
      
        # [Output Only] If the operation fails, this field contains the HTTP error
        # message that was returned, such as 404.
        # Corresponds to the JSON property `httpErrorStatusCode`
        # @return [Fixnum]
        attr_accessor :http_error_status_code
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] The time that this operation was requested. This is in RFC3339
        # text format.
        # Corresponds to the JSON property `insertTime`
        # @return [String]
        attr_accessor :insert_time
      
        # [Output Only] Type of the resource. Always compute#operation for Operation
        # resources.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] Name of the resource.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # [Output Only] Type of the operation, such as insert, compute.instanceGroups.
        # update, or compute.instanceGroups.delete.
        # Corresponds to the JSON property `operationType`
        # @return [String]
        attr_accessor :operation_type
      
        # [Output Only] An optional progress indicator that ranges from 0 to 100. There
        # is no requirement that this be linear or support any granularity of operations.
        # This should not be used to guess at when the operation will be complete. This
        # number should monotonically increase as the operation progresses.
        # Corresponds to the JSON property `progress`
        # @return [Fixnum]
        attr_accessor :progress
      
        # [Output Only] URL of the region where the operation resides. Only applicable
        # for regional resources.
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # [Output Only] Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] The time that this operation was started by the server. This is
        # in RFC3339 text format.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # [Output Only] Status of the operation. Can be one of the following: PENDING,
        # RUNNING, or DONE.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # [Output Only] An optional textual description of the current status of the
        # operation.
        # Corresponds to the JSON property `statusMessage`
        # @return [String]
        attr_accessor :status_message
      
        # [Output Only] Unique target ID which identifies a particular incarnation of
        # the target.
        # Corresponds to the JSON property `targetId`
        # @return [String]
        attr_accessor :target_id
      
        # [Output Only] URL of the resource the operation is mutating.
        # Corresponds to the JSON property `targetLink`
        # @return [String]
        attr_accessor :target_link
      
        # [Output Only] User who requested the operation, for example: user@example.com.
        # Corresponds to the JSON property `user`
        # @return [String]
        attr_accessor :user
      
        # [Output Only] If warning messages are generated during processing of the
        # operation, this field will be populated.
        # Corresponds to the JSON property `warnings`
        # @return [Array<Google::Apis::DeploymentmanagerV2beta2::Operation::Warning>]
        attr_accessor :warnings
      
        # [Output Only] URL of the zone where the operation resides.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @client_operation_id = args[:client_operation_id] unless args[:client_operation_id].nil?
          @creation_timestamp = args[:creation_timestamp] unless args[:creation_timestamp].nil?
          @end_time = args[:end_time] unless args[:end_time].nil?
          @error = args[:error] unless args[:error].nil?
          @http_error_message = args[:http_error_message] unless args[:http_error_message].nil?
          @http_error_status_code = args[:http_error_status_code] unless args[:http_error_status_code].nil?
          @id = args[:id] unless args[:id].nil?
          @insert_time = args[:insert_time] unless args[:insert_time].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
          @operation_type = args[:operation_type] unless args[:operation_type].nil?
          @progress = args[:progress] unless args[:progress].nil?
          @region = args[:region] unless args[:region].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
          @start_time = args[:start_time] unless args[:start_time].nil?
          @status = args[:status] unless args[:status].nil?
          @status_message = args[:status_message] unless args[:status_message].nil?
          @target_id = args[:target_id] unless args[:target_id].nil?
          @target_link = args[:target_link] unless args[:target_link].nil?
          @user = args[:user] unless args[:user].nil?
          @warnings = args[:warnings] unless args[:warnings].nil?
          @zone = args[:zone] unless args[:zone].nil?
        end
        
        # [Output Only] If errors are generated during processing of the operation, this
        # field will be populated.
        class Error
          include Google::Apis::Core::Hashable
        
          # [Output Only] The array of errors encountered while processing this operation.
          # Corresponds to the JSON property `errors`
          # @return [Array<Google::Apis::DeploymentmanagerV2beta2::Operation::Error::Error>]
          attr_accessor :errors
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @errors = args[:errors] unless args[:errors].nil?
          end
          
          # 
          class Error
            include Google::Apis::Core::Hashable
          
            # [Output Only] The error type identifier for this error.
            # Corresponds to the JSON property `code`
            # @return [String]
            attr_accessor :code
          
            # [Output Only] Indicates the field in the request which caused the error. This
            # property is optional.
            # Corresponds to the JSON property `location`
            # @return [String]
            attr_accessor :location
          
            # [Output Only] An optional, human-readable error message.
            # Corresponds to the JSON property `message`
            # @return [String]
            attr_accessor :message
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @code = args[:code] unless args[:code].nil?
              @location = args[:location] unless args[:location].nil?
              @message = args[:message] unless args[:message].nil?
            end
          end
        end
        
        # 
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] The warning type identifier for this warning.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata for this warning in key: value format.
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::DeploymentmanagerV2beta2::Operation::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] Optional human-readable details for this warning.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] unless args[:code].nil?
            @data = args[:data] unless args[:data].nil?
            @message = args[:message] unless args[:message].nil?
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key for the warning data.
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] unless args[:key].nil?
              @value = args[:value] unless args[:value].nil?
            end
          end
        end
      end
      
      # A response containing a partial list of operations and a page token used to
      # build the next request if the request has been truncated.
      class ListOperationsResponse
        include Google::Apis::Core::Hashable
      
        # [Output Only] A token used to continue a truncated list request.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Operations contained in this list response.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::DeploymentmanagerV2beta2::Operation>]
        attr_accessor :operations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @operations = args[:operations] unless args[:operations].nil?
        end
      end
      
      # 
      class Resource
        include Google::Apis::Core::Hashable
      
        # [Output Only] The evaluated properties of the resource with references
        # expanded. Returned as serialized YAML.
        # Corresponds to the JSON property `finalProperties`
        # @return [String]
        attr_accessor :final_properties
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] Timestamp when the resource was created or acquired, in RFC3339
        # text format .
        # Corresponds to the JSON property `insertTime`
        # @return [String]
        attr_accessor :insert_time
      
        # [Output Only] URL of the manifest representing the current configuration of
        # this resource.
        # Corresponds to the JSON property `manifest`
        # @return [String]
        attr_accessor :manifest
      
        # [Output Only] The name of the resource as it appears in the YAML config.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # [Output Only] The current properties of the resource before any references
        # have been filled in. Returned as serialized YAML.
        # Corresponds to the JSON property `properties`
        # @return [String]
        attr_accessor :properties
      
        # [Output Only] The type of the resource, for example compute.v1.instance, or
        # replicaPools.v1beta2.instanceGroupManager.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # 
        # Corresponds to the JSON property `update`
        # @return [Google::Apis::DeploymentmanagerV2beta2::ResourceUpdate]
        attr_accessor :update
      
        # [Output Only] Timestamp when the resource was updated, in RFC3339 text format .
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # [Output Only] The URL of the actual resource.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @final_properties = args[:final_properties] unless args[:final_properties].nil?
          @id = args[:id] unless args[:id].nil?
          @insert_time = args[:insert_time] unless args[:insert_time].nil?
          @manifest = args[:manifest] unless args[:manifest].nil?
          @name = args[:name] unless args[:name].nil?
          @properties = args[:properties] unless args[:properties].nil?
          @type = args[:type] unless args[:type].nil?
          @update = args[:update] unless args[:update].nil?
          @update_time = args[:update_time] unless args[:update_time].nil?
          @url = args[:url] unless args[:url].nil?
        end
      end
      
      # 
      class ResourceUpdate
        include Google::Apis::Core::Hashable
      
        # [Output Only] List of all errors encountered while trying to enact update.
        # intent.
        # Corresponds to the JSON property `errors`
        # @return [Array<String>]
        attr_accessor :errors
      
        # [Output Only] The expanded properties of the resource with reference values
        # expanded. Returned as serialized YAML.
        # Corresponds to the JSON property `finalProperties`
        # @return [String]
        attr_accessor :final_properties
      
        # [Output Only] The intent of the resource: PREVIEW, UPDATE, or CANCEL.
        # Corresponds to the JSON property `intent`
        # @return [String]
        attr_accessor :intent
      
        # [Output Only] URL of the manifest representing the update configuration of
        # this resource.
        # Corresponds to the JSON property `manifest`
        # @return [String]
        attr_accessor :manifest
      
        # [Output Only] The set of updated properties for this resource, before
        # references are expanded. Returned as serialized YAML.
        # Corresponds to the JSON property `properties`
        # @return [String]
        attr_accessor :properties
      
        # [Output Only] The state of the resource.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @errors = args[:errors] unless args[:errors].nil?
          @final_properties = args[:final_properties] unless args[:final_properties].nil?
          @intent = args[:intent] unless args[:intent].nil?
          @manifest = args[:manifest] unless args[:manifest].nil?
          @properties = args[:properties] unless args[:properties].nil?
          @state = args[:state] unless args[:state].nil?
        end
      end
      
      # A response containing a partial list of resources and a page token used to
      # build the next request if the request has been truncated.
      class ListResourcesResponse
        include Google::Apis::Core::Hashable
      
        # A token used to continue a truncated list request.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Resources contained in this list response.
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::DeploymentmanagerV2beta2::Resource>]
        attr_accessor :resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @resources = args[:resources] unless args[:resources].nil?
        end
      end
      
      # 
      class TargetConfiguration
        include Google::Apis::Core::Hashable
      
        # The configuration to use for this deployment.
        # Corresponds to the JSON property `config`
        # @return [String]
        attr_accessor :config
      
        # Specifies any files to import for this configuration. This can be used to
        # import templates or other files. For example, you might import a text file in
        # order to use the file in a template.
        # Corresponds to the JSON property `imports`
        # @return [Array<Google::Apis::DeploymentmanagerV2beta2::ImportFile>]
        attr_accessor :imports
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @config = args[:config] unless args[:config].nil?
          @imports = args[:imports] unless args[:imports].nil?
        end
      end
      
      # A resource type supported by Deployment Manager.
      class Type
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] Timestamp when the type was created, in RFC3339 text format.
        # Corresponds to the JSON property `insertTime`
        # @return [String]
        attr_accessor :insert_time
      
        # Name of the type.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # [Output Only] Self link for the type.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
          @insert_time = args[:insert_time] unless args[:insert_time].nil?
          @name = args[:name] unless args[:name].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
        end
      end
      
      # A response that returns all Types supported by Deployment Manager
      class ListTypesResponse
        include Google::Apis::Core::Hashable
      
        # A token used to continue a truncated list request.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] A list of resource types supported by Deployment Manager.
        # Corresponds to the JSON property `types`
        # @return [Array<Google::Apis::DeploymentmanagerV2beta2::Type>]
        attr_accessor :types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @types = args[:types] unless args[:types].nil?
        end
      end
    end
  end
end
