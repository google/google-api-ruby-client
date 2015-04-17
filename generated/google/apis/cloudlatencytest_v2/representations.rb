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
    module CloudlatencytestV2
      class AggregatedStatsRepresentation < Google::Apis::Core::JsonRepresentation; end
      class AggregatedStatsReplyRepresentation < Google::Apis::Core::JsonRepresentation; end
      class DoubleValueRepresentation < Google::Apis::Core::JsonRepresentation; end
      class IntValueRepresentation < Google::Apis::Core::JsonRepresentation; end
      class StatsRepresentation < Google::Apis::Core::JsonRepresentation; end
      class StatsReplyRepresentation < Google::Apis::Core::JsonRepresentation; end
      class StringValueRepresentation < Google::Apis::Core::JsonRepresentation; end

      # @private
      class AggregatedStatsRepresentation < Google::Apis::Core::JsonRepresentation
        collection :stats, as: 'stats', class: Google::Apis::CloudlatencytestV2::Stats, decorator: Google::Apis::CloudlatencytestV2::StatsRepresentation
      end

      # @private
      class AggregatedStatsReplyRepresentation < Google::Apis::Core::JsonRepresentation
        property :test_value, as: 'testValue'
      end

      # @private
      class DoubleValueRepresentation < Google::Apis::Core::JsonRepresentation
        property :label, as: 'label'
        property :value, as: 'value'
      end

      # @private
      class IntValueRepresentation < Google::Apis::Core::JsonRepresentation
        property :label, as: 'label'
        property :value, as: 'value'
      end

      # @private
      class StatsRepresentation < Google::Apis::Core::JsonRepresentation
        collection :double_values, as: 'doubleValues', class: Google::Apis::CloudlatencytestV2::DoubleValue, decorator: Google::Apis::CloudlatencytestV2::DoubleValueRepresentation
        
        
        collection :int_values, as: 'intValues', class: Google::Apis::CloudlatencytestV2::IntValue, decorator: Google::Apis::CloudlatencytestV2::IntValueRepresentation
        
        
        collection :string_values, as: 'stringValues', class: Google::Apis::CloudlatencytestV2::StringValue, decorator: Google::Apis::CloudlatencytestV2::StringValueRepresentation
        
        
        property :time, as: 'time'
      end

      # @private
      class StatsReplyRepresentation < Google::Apis::Core::JsonRepresentation
        property :test_value, as: 'testValue'
      end

      # @private
      class StringValueRepresentation < Google::Apis::Core::JsonRepresentation
        property :label, as: 'label'
        property :value, as: 'value'
      end
    end
  end
end
