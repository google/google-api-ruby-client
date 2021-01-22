# Copyright 2020 Google LLC
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
    module RealtimebiddingV1alpha
      
      # The bidding function to be executed as part of the TURTLEDOVE simulation
      # experiment bidding flow.
      class BiddingFunction
        include Google::Apis::Core::Hashable
      
        # The raw Javascript source code of the bidding function. The function takes in
        # a Javascript object, `inputs`, that contains the following named fields: `
        # openrtbContextualBidRequest` OR `googleContextualBidRequest`, `
        # customContextualSignal`, `interestBasedBidData`, `interestGroupData`, `
        # recentImpressionAges`, and returns the bid price CPM (double). Example: /*
        # Returns a bid price CPM (double). * * @param `Object` inputs an object with
        # the * following named fields: * - openrtbContextualBidRequest * OR
        # googleContextualBidRequest * - customContextualSignal * - interestBasedBidData
        # * - interestGroupData * - recentImpressionAges */ function biddingFunction(
        # inputs) ` ... return inputs.interestBasedBidData.cpm * inputs.
        # customContextualSignals.placementMultiplier; `
        # Corresponds to the JSON property `biddingFunction`
        # @return [String]
        attr_accessor :bidding_function
      
        # The name of the bidding function that must follow the pattern: `bidders/`
        # bidder_account_id`/biddingFunctions/`bidding_function_name``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bidding_function = args[:bidding_function] if args.key?(:bidding_function)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # A response containing a list of a bidder's bidding functions.
      class ListBiddingFunctionsResponse
        include Google::Apis::Core::Hashable
      
        # A list of a bidder's bidding functions.
        # Corresponds to the JSON property `biddingFunctions`
        # @return [Array<Google::Apis::RealtimebiddingV1alpha::BiddingFunction>]
        attr_accessor :bidding_functions
      
        # A token which can be passed to a subsequent call to the `ListBiddingFunctions`
        # method to retrieve the next page of results in ListBiddingFunctionsRequest.
        # pageToken.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bidding_functions = args[:bidding_functions] if args.key?(:bidding_functions)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
    end
  end
end
