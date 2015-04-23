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

require 'date'
require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module AppstateV1
      
      class GetResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class UpdateRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class WriteResultRepresentation < Google::Apis::Core::JsonRepresentation
        
      end

      # @private
      class GetResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :current_state_version, as: 'currentStateVersion'
        property :data, as: 'data'
        property :kind, as: 'kind'
        property :state_key, as: 'stateKey'
      end

      # @private
      class ListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :items, as: 'items', class: Google::Apis::AppstateV1::GetResponse, decorator: Google::Apis::AppstateV1::GetResponseRepresentation
        
        
        property :kind, as: 'kind'
        property :maximum_key_count, as: 'maximumKeyCount'
      end

      # @private
      class UpdateRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :data, as: 'data'
        property :kind, as: 'kind'
      end

      # @private
      class WriteResultRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :current_state_version, as: 'currentStateVersion'
        property :kind, as: 'kind'
        property :state_key, as: 'stateKey'
      end
    end
  end
end
