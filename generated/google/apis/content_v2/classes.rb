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
    module ContentV2
      
      # Account data.
      class Account
        include Google::Apis::Core::Hashable
      
        # Indicates whether the merchant sells adult content.
        # Corresponds to the JSON property `adultContent`
        # @return [Boolean]
        attr_accessor :adult_content
        alias_method :adult_content?, :adult_content
      
        # List of linked AdWords accounts, active or pending approval. To create a new
        # link request, add a new link with status active to the list. It will remain is
        # state pending until approved or rejected in the AdWords interface. To delete
        # an active link or to cancel a link request, remove it from the list.
        # Corresponds to the JSON property `adwordsLinks`
        # @return [Array<Google::Apis::ContentV2::AccountAdwordsLink>]
        attr_accessor :adwords_links
      
        # Merchant Center account ID.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # account".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Display name for the account.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # URL for individual seller reviews, i.e., reviews for each child account.
        # Corresponds to the JSON property `reviewsUrl`
        # @return [String]
        attr_accessor :reviews_url
      
        # Client-specific, locally-unique, internal ID for the child account.
        # Corresponds to the JSON property `sellerId`
        # @return [String]
        attr_accessor :seller_id
      
        # Users with access to the account. Every account (except for subaccounts) must
        # have at least one admin user.
        # Corresponds to the JSON property `users`
        # @return [Array<Google::Apis::ContentV2::AccountUser>]
        attr_accessor :users
      
        # The merchant's website.
        # Corresponds to the JSON property `websiteUrl`
        # @return [String]
        attr_accessor :website_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @adult_content = args[:adult_content] unless args[:adult_content].nil?
          @adwords_links = args[:adwords_links] unless args[:adwords_links].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
          @reviews_url = args[:reviews_url] unless args[:reviews_url].nil?
          @seller_id = args[:seller_id] unless args[:seller_id].nil?
          @users = args[:users] unless args[:users].nil?
          @website_url = args[:website_url] unless args[:website_url].nil?
        end
      end
      
      # 
      class AccountAdwordsLink
        include Google::Apis::Core::Hashable
      
        # Customer ID of the AdWords account.
        # Corresponds to the JSON property `adwordsId`
        # @return [String]
        attr_accessor :adwords_id
      
        # Status of the link between this Merchant Center account and the AdWords
        # account. Upon retrieval, it represents the actual status of the link and can
        # be either active if it was approved in Google AdWords or pending if it's
        # pending approval. Upon insertion, it represents the intended status of the
        # link. Re-uploading a link with status active when it's still pending or with
        # status pending when it's already active will have no effect: the status will
        # remain unchanged. Re-uploading a link with deprecated status inactive is
        # equivalent to not submitting the link at all and will delete the link if it
        # was active or cancel the link request if it was pending.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @adwords_id = args[:adwords_id] unless args[:adwords_id].nil?
          @status = args[:status] unless args[:status].nil?
        end
      end
      
      # 
      class AccountIdentifier
        include Google::Apis::Core::Hashable
      
        # The aggregator ID, set for aggregators and subaccounts (in that case, it
        # represents the aggregator of the subaccount).
        # Corresponds to the JSON property `aggregatorId`
        # @return [String]
        attr_accessor :aggregator_id
      
        # The merchant account ID, set for individual accounts and subaccounts.
        # Corresponds to the JSON property `merchantId`
        # @return [String]
        attr_accessor :merchant_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aggregator_id = args[:aggregator_id] unless args[:aggregator_id].nil?
          @merchant_id = args[:merchant_id] unless args[:merchant_id].nil?
        end
      end
      
      # The shipping settings of a merchant account.
      class AccountShipping
        include Google::Apis::Core::Hashable
      
        # The ID of the account to which these account shipping settings belong.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # Carrier-based shipping calculations.
        # Corresponds to the JSON property `carrierRates`
        # @return [Array<Google::Apis::ContentV2::CarrierRate>]
        attr_accessor :carrier_rates
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # accountShipping".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Location groups for shipping.
        # Corresponds to the JSON property `locationGroups`
        # @return [Array<Google::Apis::ContentV2::LocationGroup>]
        attr_accessor :location_groups
      
        # Rate tables definitions.
        # Corresponds to the JSON property `rateTables`
        # @return [Array<Google::Apis::ContentV2::RateTable>]
        attr_accessor :rate_tables
      
        # Shipping services describing shipping fees calculation.
        # Corresponds to the JSON property `services`
        # @return [Array<Google::Apis::ContentV2::ShippingService>]
        attr_accessor :services
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] unless args[:account_id].nil?
          @carrier_rates = args[:carrier_rates] unless args[:carrier_rates].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @location_groups = args[:location_groups] unless args[:location_groups].nil?
          @rate_tables = args[:rate_tables] unless args[:rate_tables].nil?
          @services = args[:services] unless args[:services].nil?
        end
      end
      
      # A carrier-calculated shipping rate.
      class CarrierRate
        include Google::Apis::Core::Hashable
      
        # The carrier that is responsible for the shipping, such as "UPS", "FedEx", or "
        # USPS".
        # Corresponds to the JSON property `carrier`
        # @return [String]
        attr_accessor :carrier
      
        # The carrier service, such as "Ground" or "2Day".
        # Corresponds to the JSON property `carrierService`
        # @return [String]
        attr_accessor :carrier_service
      
        # Additive shipping rate modifier.
        # Corresponds to the JSON property `modifierFlatRate`
        # @return [Google::Apis::ContentV2::Price]
        attr_accessor :modifier_flat_rate
      
        # Multiplicative shipping rate modifier in percent. Represented as a floating
        # point number without the percentage character.
        # Corresponds to the JSON property `modifierPercent`
        # @return [String]
        attr_accessor :modifier_percent
      
        # The name of the carrier rate.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Sale country for which this carrier rate is valid, represented as an ISO 3166-
        # 1 Alpha-2 code.
        # Corresponds to the JSON property `saleCountry`
        # @return [String]
        attr_accessor :sale_country
      
        # Shipping origin represented as a postal code.
        # Corresponds to the JSON property `shippingOrigin`
        # @return [String]
        attr_accessor :shipping_origin
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @carrier = args[:carrier] unless args[:carrier].nil?
          @carrier_service = args[:carrier_service] unless args[:carrier_service].nil?
          @modifier_flat_rate = args[:modifier_flat_rate] unless args[:modifier_flat_rate].nil?
          @modifier_percent = args[:modifier_percent] unless args[:modifier_percent].nil?
          @name = args[:name] unless args[:name].nil?
          @sale_country = args[:sale_country] unless args[:sale_country].nil?
          @shipping_origin = args[:shipping_origin] unless args[:shipping_origin].nil?
        end
      end
      
      # 
      class Condition
        include Google::Apis::Core::Hashable
      
        # Delivery location in terms of a location group name. A location group with
        # this name must be specified among location groups.
        # Corresponds to the JSON property `deliveryLocationGroup`
        # @return [String]
        attr_accessor :delivery_location_group
      
        # Delivery location in terms of a location ID. Can be used to represent
        # administrative areas, smaller country subdivisions, or cities.
        # Corresponds to the JSON property `deliveryLocationId`
        # @return [String]
        attr_accessor :delivery_location_id
      
        # Delivery location in terms of a postal code.
        # Corresponds to the JSON property `deliveryPostalCode`
        # @return [String]
        attr_accessor :delivery_postal_code
      
        # A postal code range, that can be either:
        # - A range of postal codes (e.g., start=12340, end=12359)
        # - A range of postal codes prefixes (e.g., start=1234* end=1235*). Prefixes
        # must be of the same length (e.g., start=12* end=2* is invalid).
        # Corresponds to the JSON property `deliveryPostalCodeRange`
        # @return [Google::Apis::ContentV2::PostalCodeRange]
        attr_accessor :delivery_postal_code_range
      
        # Maximum shipping price. Forms an interval between the maximum of smaller
        # prices (exclusive) and this price (inclusive).
        # Corresponds to the JSON property `priceMax`
        # @return [Google::Apis::ContentV2::Price]
        attr_accessor :price_max
      
        # Shipping label of the product. The products with the label are matched.
        # Corresponds to the JSON property `shippingLabel`
        # @return [String]
        attr_accessor :shipping_label
      
        # Maximum shipping weight. Forms an interval between the maximum of smaller
        # weight (exclusive) and this weight (inclusive).
        # Corresponds to the JSON property `weightMax`
        # @return [Google::Apis::ContentV2::Weight]
        attr_accessor :weight_max
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @delivery_location_group = args[:delivery_location_group] unless args[:delivery_location_group].nil?
          @delivery_location_id = args[:delivery_location_id] unless args[:delivery_location_id].nil?
          @delivery_postal_code = args[:delivery_postal_code] unless args[:delivery_postal_code].nil?
          @delivery_postal_code_range = args[:delivery_postal_code_range] unless args[:delivery_postal_code_range].nil?
          @price_max = args[:price_max] unless args[:price_max].nil?
          @shipping_label = args[:shipping_label] unless args[:shipping_label].nil?
          @weight_max = args[:weight_max] unless args[:weight_max].nil?
        end
      end
      
      # A user-defined locations group in a given country. All the locations of the
      # group must be of the same type.
      class LocationGroup
        include Google::Apis::Core::Hashable
      
        # The country in which this location group is, represented as ISO 3166-1 Alpha-2
        # code.
        # Corresponds to the JSON property `country`
        # @return [String]
        attr_accessor :country
      
        # A location ID (also called criteria ID) representing administrative areas,
        # smaller country subdivisions (counties), or cities.
        # Corresponds to the JSON property `locationIds`
        # @return [Array<String>]
        attr_accessor :location_ids
      
        # The name of the location group.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A postal code range representing a city or a set of cities.
        # Corresponds to the JSON property `postalCodeRanges`
        # @return [Array<Google::Apis::ContentV2::PostalCodeRange>]
        attr_accessor :postal_code_ranges
      
        # A postal code representing a city or a set of cities.
        # - A single postal code (e.g., 12345)
        # - A postal code prefix followed by a star (e.g., 1234*)
        # Corresponds to the JSON property `postalCodes`
        # @return [Array<String>]
        attr_accessor :postal_codes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @country = args[:country] unless args[:country].nil?
          @location_ids = args[:location_ids] unless args[:location_ids].nil?
          @name = args[:name] unless args[:name].nil?
          @postal_code_ranges = args[:postal_code_ranges] unless args[:postal_code_ranges].nil?
          @postal_codes = args[:postal_codes] unless args[:postal_codes].nil?
        end
      end
      
      # A postal code range, that can be either:
      # - A range of postal codes (e.g., start=12340, end=12359)
      # - A range of postal codes prefixes (e.g., start=1234* end=1235*). Prefixes
      # must be of the same length (e.g., start=12* end=2* is invalid).
      class PostalCodeRange
        include Google::Apis::Core::Hashable
      
        # The last (inclusive) postal code or prefix of the range.
        # Corresponds to the JSON property `end`
        # @return [String]
        attr_accessor :end
      
        # The first (inclusive) postal code or prefix of the range.
        # Corresponds to the JSON property `start`
        # @return [String]
        attr_accessor :start
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end = args[:end] unless args[:end].nil?
          @start = args[:start] unless args[:start].nil?
        end
      end
      
      # A single or bi-dimensional table of shipping rates. Each dimension is defined
      # in terms of consecutive price/weight ranges, delivery locations, or shipping
      # labels.
      class RateTable
        include Google::Apis::Core::Hashable
      
        # One-dimensional table cells define one condition along the same dimension. Bi-
        # dimensional table cells use two dimensions with respectively M and N distinct
        # values and must contain exactly M * N cells with distinct conditions (for each
        # possible value pairs).
        # Corresponds to the JSON property `content`
        # @return [Array<Google::Apis::ContentV2::RateTableCell>]
        attr_accessor :content
      
        # The name of the rate table.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Sale country for which this table is valid, represented as an ISO 3166-1 Alpha-
        # 2 code.
        # Corresponds to the JSON property `saleCountry`
        # @return [String]
        attr_accessor :sale_country
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content = args[:content] unless args[:content].nil?
          @name = args[:name] unless args[:name].nil?
          @sale_country = args[:sale_country] unless args[:sale_country].nil?
        end
      end
      
      # 
      class RateTableCell
        include Google::Apis::Core::Hashable
      
        # Conditions for which the cell is valid. All cells in a table must use the same
        # dimension or pair of dimensions among price, weight, shipping label or
        # delivery location. If no condition is specified, the cell acts as a catch-all
        # and matches all the elements that are not matched by other cells in this
        # dimension.
        # Corresponds to the JSON property `condition`
        # @return [Google::Apis::ContentV2::Condition]
        attr_accessor :condition
      
        # The rate applicable if the cell conditions are matched.
        # Corresponds to the JSON property `rate`
        # @return [Google::Apis::ContentV2::Price]
        attr_accessor :rate
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @condition = args[:condition] unless args[:condition].nil?
          @rate = args[:rate] unless args[:rate].nil?
        end
      end
      
      # Shipping services provided in a country.
      class ShippingService
        include Google::Apis::Core::Hashable
      
        # Whether the shipping service is available.
        # Corresponds to the JSON property `active`
        # @return [Boolean]
        attr_accessor :active
        alias_method :active?, :active
      
        # Shipping cost calculation method. Exactly one of the field is set.
        # Corresponds to the JSON property `calculationMethod`
        # @return [Google::Apis::ContentV2::ShippingServiceCalculationMethod]
        attr_accessor :calculation_method
      
        # Building block of the cost calculation decision tree.
        # - The tree root should have no condition and no calculation method.
        # - All the children must have a condition on the same dimension. The first
        # child matching a condition is entered, therefore, price and weight conditions
        # form contiguous intervals.
        # - The last child of an element must have no condition and matches all elements
        # not previously matched.
        # - Children and calculation method are mutually exclusive, and exactly one of
        # them must be defined; the root must only have children.
        # Corresponds to the JSON property `costRuleTree`
        # @return [Google::Apis::ContentV2::ShippingServiceCostRule]
        attr_accessor :cost_rule_tree
      
        # The name of this shipping service.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Sale country for which this service can be used, represented as an ISO 3166-1
        # Alpha-2 code.
        # Corresponds to the JSON property `saleCountry`
        # @return [String]
        attr_accessor :sale_country
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @active = args[:active] unless args[:active].nil?
          @calculation_method = args[:calculation_method] unless args[:calculation_method].nil?
          @cost_rule_tree = args[:cost_rule_tree] unless args[:cost_rule_tree].nil?
          @name = args[:name] unless args[:name].nil?
          @sale_country = args[:sale_country] unless args[:sale_country].nil?
        end
      end
      
      # Shipping cost calculation method. Exactly one of the field is set.
      class ShippingServiceCalculationMethod
        include Google::Apis::Core::Hashable
      
        # Name of the carrier rate to use for the calculation.
        # Corresponds to the JSON property `carrierRate`
        # @return [String]
        attr_accessor :carrier_rate
      
        # Delivery is excluded. Valid only within cost rules tree.
        # Corresponds to the JSON property `excluded`
        # @return [Boolean]
        attr_accessor :excluded
        alias_method :excluded?, :excluded
      
        # Fixed price shipping, represented as a floating point number associated with a
        # currency.
        # Corresponds to the JSON property `flatRate`
        # @return [Google::Apis::ContentV2::Price]
        attr_accessor :flat_rate
      
        # Percentage of the price, represented as a floating point number without the
        # percentage character.
        # Corresponds to the JSON property `percentageRate`
        # @return [String]
        attr_accessor :percentage_rate
      
        # Name of the rate table to use for the calculation.
        # Corresponds to the JSON property `rateTable`
        # @return [String]
        attr_accessor :rate_table
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @carrier_rate = args[:carrier_rate] unless args[:carrier_rate].nil?
          @excluded = args[:excluded] unless args[:excluded].nil?
          @flat_rate = args[:flat_rate] unless args[:flat_rate].nil?
          @percentage_rate = args[:percentage_rate] unless args[:percentage_rate].nil?
          @rate_table = args[:rate_table] unless args[:rate_table].nil?
        end
      end
      
      # Building block of the cost calculation decision tree.
      # - The tree root should have no condition and no calculation method.
      # - All the children must have a condition on the same dimension. The first
      # child matching a condition is entered, therefore, price and weight conditions
      # form contiguous intervals.
      # - The last child of an element must have no condition and matches all elements
      # not previously matched.
      # - Children and calculation method are mutually exclusive, and exactly one of
      # them must be defined; the root must only have children.
      class ShippingServiceCostRule
        include Google::Apis::Core::Hashable
      
        # Shipping cost calculation method. Exactly one of the field is set.
        # Corresponds to the JSON property `calculationMethod`
        # @return [Google::Apis::ContentV2::ShippingServiceCalculationMethod]
        attr_accessor :calculation_method
      
        # Subsequent rules to be applied, only for inner nodes. The last child must not
        # specify a condition and acts as a catch-all.
        # Corresponds to the JSON property `children`
        # @return [Array<Google::Apis::ContentV2::ShippingServiceCostRule>]
        attr_accessor :children
      
        # Condition for this rule to be applicable. If no condition is specified, the
        # rule acts as a catch-all.
        # Corresponds to the JSON property `condition`
        # @return [Google::Apis::ContentV2::Condition]
        attr_accessor :condition
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @calculation_method = args[:calculation_method] unless args[:calculation_method].nil?
          @children = args[:children] unless args[:children].nil?
          @condition = args[:condition] unless args[:condition].nil?
        end
      end
      
      # The status of an account, i.e., information about its products, which is
      # computed offline and not returned immediately at insertion time.
      class AccountStatus
        include Google::Apis::Core::Hashable
      
        # The ID of the account for which the status is reported.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # A list of data quality issues.
        # Corresponds to the JSON property `dataQualityIssues`
        # @return [Array<Google::Apis::ContentV2::AccountStatusDataQualityIssue>]
        attr_accessor :data_quality_issues
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # accountStatus".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] unless args[:account_id].nil?
          @data_quality_issues = args[:data_quality_issues] unless args[:data_quality_issues].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # 
      class AccountStatusDataQualityIssue
        include Google::Apis::Core::Hashable
      
        # Country for which this issue is reported.
        # Corresponds to the JSON property `country`
        # @return [String]
        attr_accessor :country
      
        # Actual value displayed on the landing page.
        # Corresponds to the JSON property `displayedValue`
        # @return [String]
        attr_accessor :displayed_value
      
        # Example items featuring the issue.
        # Corresponds to the JSON property `exampleItems`
        # @return [Array<Google::Apis::ContentV2::AccountStatusExampleItem>]
        attr_accessor :example_items
      
        # Issue identifier.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Last time the account was checked for this issue.
        # Corresponds to the JSON property `lastChecked`
        # @return [String]
        attr_accessor :last_checked
      
        # Number of items in the account found to have the said issue.
        # Corresponds to the JSON property `numItems`
        # @return [Fixnum]
        attr_accessor :num_items
      
        # Severity of the problem.
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        # Submitted value that causes the issue.
        # Corresponds to the JSON property `submittedValue`
        # @return [String]
        attr_accessor :submitted_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @country = args[:country] unless args[:country].nil?
          @displayed_value = args[:displayed_value] unless args[:displayed_value].nil?
          @example_items = args[:example_items] unless args[:example_items].nil?
          @id = args[:id] unless args[:id].nil?
          @last_checked = args[:last_checked] unless args[:last_checked].nil?
          @num_items = args[:num_items] unless args[:num_items].nil?
          @severity = args[:severity] unless args[:severity].nil?
          @submitted_value = args[:submitted_value] unless args[:submitted_value].nil?
        end
      end
      
      # An example of an item that has poor data quality. An item value on the landing
      # page differs from what is submitted, or conflicts with a policy.
      class AccountStatusExampleItem
        include Google::Apis::Core::Hashable
      
        # Unique item ID as specified in the uploaded product data.
        # Corresponds to the JSON property `itemId`
        # @return [String]
        attr_accessor :item_id
      
        # Landing page of the item.
        # Corresponds to the JSON property `link`
        # @return [String]
        attr_accessor :link
      
        # The item value that was submitted.
        # Corresponds to the JSON property `submittedValue`
        # @return [String]
        attr_accessor :submitted_value
      
        # Title of the item.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # The actual value on the landing page.
        # Corresponds to the JSON property `valueOnLandingPage`
        # @return [String]
        attr_accessor :value_on_landing_page
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @item_id = args[:item_id] unless args[:item_id].nil?
          @link = args[:link] unless args[:link].nil?
          @submitted_value = args[:submitted_value] unless args[:submitted_value].nil?
          @title = args[:title] unless args[:title].nil?
          @value_on_landing_page = args[:value_on_landing_page] unless args[:value_on_landing_page].nil?
        end
      end
      
      # The tax settings of a merchant account.
      class AccountTax
        include Google::Apis::Core::Hashable
      
        # The ID of the account to which these account tax settings belong.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # accountTax".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Tax rules. Updating the tax rules will enable US taxes (not reversible).
        # Defining no rules is equivalent to not charging tax at all.
        # Corresponds to the JSON property `rules`
        # @return [Array<Google::Apis::ContentV2::TaxRule>]
        attr_accessor :rules
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] unless args[:account_id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @rules = args[:rules] unless args[:rules].nil?
        end
      end
      
      # Tax calculation rule to apply in a state or province (USA only).
      class TaxRule
        include Google::Apis::Core::Hashable
      
        # Country code in which tax is applicable.
        # Corresponds to the JSON property `country`
        # @return [String]
        attr_accessor :country
      
        # State (or province) is which the tax is applicable, described by its location
        # id (also called criteria id).
        # Corresponds to the JSON property `locationId`
        # @return [String]
        attr_accessor :location_id
      
        # Explicit tax rate in percent, represented as a floating point number without
        # the percentage character. Must not be negative.
        # Corresponds to the JSON property `ratePercent`
        # @return [String]
        attr_accessor :rate_percent
      
        # If true, shipping charges are also taxed.
        # Corresponds to the JSON property `shippingTaxed`
        # @return [Boolean]
        attr_accessor :shipping_taxed
        alias_method :shipping_taxed?, :shipping_taxed
      
        # Whether the tax rate is taken from a global tax table or specified explicitly.
        # Corresponds to the JSON property `useGlobalRate`
        # @return [Boolean]
        attr_accessor :use_global_rate
        alias_method :use_global_rate?, :use_global_rate
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @country = args[:country] unless args[:country].nil?
          @location_id = args[:location_id] unless args[:location_id].nil?
          @rate_percent = args[:rate_percent] unless args[:rate_percent].nil?
          @shipping_taxed = args[:shipping_taxed] unless args[:shipping_taxed].nil?
          @use_global_rate = args[:use_global_rate] unless args[:use_global_rate].nil?
        end
      end
      
      # 
      class AccountUser
        include Google::Apis::Core::Hashable
      
        # Whether user is an admin.
        # Corresponds to the JSON property `admin`
        # @return [Boolean]
        attr_accessor :admin
        alias_method :admin?, :admin
      
        # User's email address.
        # Corresponds to the JSON property `emailAddress`
        # @return [String]
        attr_accessor :email_address
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @admin = args[:admin] unless args[:admin].nil?
          @email_address = args[:email_address] unless args[:email_address].nil?
        end
      end
      
      # 
      class AuthInfoResponse
        include Google::Apis::Core::Hashable
      
        # The account identifiers corresponding to the authenticated user.
        # - For an individual account: only the merchant ID is defined
        # - For an aggregator: only the aggregator ID is defined
        # - For a subaccount of an MCA: both the merchant ID and the aggregator ID are
        # defined.
        # Corresponds to the JSON property `accountIdentifiers`
        # @return [Array<Google::Apis::ContentV2::AccountIdentifier>]
        attr_accessor :account_identifiers
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # accountsAuthInfoResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_identifiers = args[:account_identifiers] unless args[:account_identifiers].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # 
      class CustomBatchRequest
        include Google::Apis::Core::Hashable
      
        # The request entries to be processed in the batch.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::ContentV2::CustomBatchRequestEntry>]
        attr_accessor :entries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] unless args[:entries].nil?
        end
      end
      
      # A batch entry encoding a single non-batch accounts request.
      class CustomBatchRequestEntry
        include Google::Apis::Core::Hashable
      
        # Account data.
        # Corresponds to the JSON property `account`
        # @return [Google::Apis::ContentV2::Account]
        attr_accessor :account
      
        # The ID of the account to get or delete. Only defined if the method is get or
        # delete.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # An entry ID, unique within the batch request.
        # Corresponds to the JSON property `batchId`
        # @return [Fixnum]
        attr_accessor :batch_id
      
        # The ID of the managing account.
        # Corresponds to the JSON property `merchantId`
        # @return [String]
        attr_accessor :merchant_id
      
        # 
        # Corresponds to the JSON property `method`
        # @return [String]
        attr_accessor :method_prop
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account = args[:account] unless args[:account].nil?
          @account_id = args[:account_id] unless args[:account_id].nil?
          @batch_id = args[:batch_id] unless args[:batch_id].nil?
          @merchant_id = args[:merchant_id] unless args[:merchant_id].nil?
          @method_prop = args[:method_prop] unless args[:method_prop].nil?
        end
      end
      
      # 
      class CustomBatchResponse
        include Google::Apis::Core::Hashable
      
        # The result of the execution of the batch requests.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::ContentV2::CustomBatchResponseEntry>]
        attr_accessor :entries
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # accountsCustomBatchResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] unless args[:entries].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # A batch entry encoding a single non-batch accounts response.
      class CustomBatchResponseEntry
        include Google::Apis::Core::Hashable
      
        # Account data.
        # Corresponds to the JSON property `account`
        # @return [Google::Apis::ContentV2::Account]
        attr_accessor :account
      
        # The ID of the request entry this entry responds to.
        # Corresponds to the JSON property `batchId`
        # @return [Fixnum]
        attr_accessor :batch_id
      
        # A list of errors returned by a failed batch entry.
        # Corresponds to the JSON property `errors`
        # @return [Google::Apis::ContentV2::Errors]
        attr_accessor :errors
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # accountsCustomBatchResponseEntry".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account = args[:account] unless args[:account].nil?
          @batch_id = args[:batch_id] unless args[:batch_id].nil?
          @errors = args[:errors] unless args[:errors].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # 
      class ListResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # accountsListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The token for the retrieval of the next page of accounts.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # 
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::ContentV2::Account>]
        attr_accessor :resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @resources = args[:resources] unless args[:resources].nil?
        end
      end
      
      # 
      class AccountshippingCustomBatchRequest
        include Google::Apis::Core::Hashable
      
        # The request entries to be processed in the batch.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::ContentV2::AccountshippingCustomBatchRequestEntry>]
        attr_accessor :entries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] unless args[:entries].nil?
        end
      end
      
      # A batch entry encoding a single non-batch accountshipping request.
      class AccountshippingCustomBatchRequestEntry
        include Google::Apis::Core::Hashable
      
        # The ID of the account for which to get/update account shipping settings.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # The shipping settings of a merchant account.
        # Corresponds to the JSON property `accountShipping`
        # @return [Google::Apis::ContentV2::AccountShipping]
        attr_accessor :account_shipping
      
        # An entry ID, unique within the batch request.
        # Corresponds to the JSON property `batchId`
        # @return [Fixnum]
        attr_accessor :batch_id
      
        # The ID of the managing account.
        # Corresponds to the JSON property `merchantId`
        # @return [String]
        attr_accessor :merchant_id
      
        # 
        # Corresponds to the JSON property `method`
        # @return [String]
        attr_accessor :method_prop
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] unless args[:account_id].nil?
          @account_shipping = args[:account_shipping] unless args[:account_shipping].nil?
          @batch_id = args[:batch_id] unless args[:batch_id].nil?
          @merchant_id = args[:merchant_id] unless args[:merchant_id].nil?
          @method_prop = args[:method_prop] unless args[:method_prop].nil?
        end
      end
      
      # 
      class AccountshippingCustomBatchResponse
        include Google::Apis::Core::Hashable
      
        # The result of the execution of the batch requests.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::ContentV2::AccountshippingCustomBatchResponseEntry>]
        attr_accessor :entries
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # accountshippingCustomBatchResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] unless args[:entries].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # A batch entry encoding a single non-batch accountshipping response.
      class AccountshippingCustomBatchResponseEntry
        include Google::Apis::Core::Hashable
      
        # The shipping settings of a merchant account.
        # Corresponds to the JSON property `accountShipping`
        # @return [Google::Apis::ContentV2::AccountShipping]
        attr_accessor :account_shipping
      
        # The ID of the request entry this entry responds to.
        # Corresponds to the JSON property `batchId`
        # @return [Fixnum]
        attr_accessor :batch_id
      
        # A list of errors returned by a failed batch entry.
        # Corresponds to the JSON property `errors`
        # @return [Google::Apis::ContentV2::Errors]
        attr_accessor :errors
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # accountshippingCustomBatchResponseEntry".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_shipping = args[:account_shipping] unless args[:account_shipping].nil?
          @batch_id = args[:batch_id] unless args[:batch_id].nil?
          @errors = args[:errors] unless args[:errors].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # 
      class AccountshippingListResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # accountshippingListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The token for the retrieval of the next page of account shipping settings.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # 
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::ContentV2::AccountShipping>]
        attr_accessor :resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @resources = args[:resources] unless args[:resources].nil?
        end
      end
      
      # 
      class AccountstatusesCustomBatchRequest
        include Google::Apis::Core::Hashable
      
        # The request entries to be processed in the batch.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::ContentV2::AccountstatusesCustomBatchRequestEntry>]
        attr_accessor :entries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] unless args[:entries].nil?
        end
      end
      
      # A batch entry encoding a single non-batch accountstatuses request.
      class AccountstatusesCustomBatchRequestEntry
        include Google::Apis::Core::Hashable
      
        # The ID of the (sub-)account whose status to get.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # An entry ID, unique within the batch request.
        # Corresponds to the JSON property `batchId`
        # @return [Fixnum]
        attr_accessor :batch_id
      
        # The ID of the managing account.
        # Corresponds to the JSON property `merchantId`
        # @return [String]
        attr_accessor :merchant_id
      
        # The method (get).
        # Corresponds to the JSON property `method`
        # @return [String]
        attr_accessor :method_prop
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] unless args[:account_id].nil?
          @batch_id = args[:batch_id] unless args[:batch_id].nil?
          @merchant_id = args[:merchant_id] unless args[:merchant_id].nil?
          @method_prop = args[:method_prop] unless args[:method_prop].nil?
        end
      end
      
      # 
      class AccountstatusesCustomBatchResponse
        include Google::Apis::Core::Hashable
      
        # The result of the execution of the batch requests.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::ContentV2::AccountstatusesCustomBatchResponseEntry>]
        attr_accessor :entries
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # accountstatusesCustomBatchResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] unless args[:entries].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # A batch entry encoding a single non-batch accountstatuses response.
      class AccountstatusesCustomBatchResponseEntry
        include Google::Apis::Core::Hashable
      
        # The status of an account, i.e., information about its products, which is
        # computed offline and not returned immediately at insertion time.
        # Corresponds to the JSON property `accountStatus`
        # @return [Google::Apis::ContentV2::AccountStatus]
        attr_accessor :account_status
      
        # The ID of the request entry this entry responds to.
        # Corresponds to the JSON property `batchId`
        # @return [Fixnum]
        attr_accessor :batch_id
      
        # A list of errors returned by a failed batch entry.
        # Corresponds to the JSON property `errors`
        # @return [Google::Apis::ContentV2::Errors]
        attr_accessor :errors
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_status = args[:account_status] unless args[:account_status].nil?
          @batch_id = args[:batch_id] unless args[:batch_id].nil?
          @errors = args[:errors] unless args[:errors].nil?
        end
      end
      
      # 
      class AccountstatusesListResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # accountstatusesListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The token for the retrieval of the next page of account statuses.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # 
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::ContentV2::AccountStatus>]
        attr_accessor :resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @resources = args[:resources] unless args[:resources].nil?
        end
      end
      
      # 
      class AccounttaxCustomBatchRequest
        include Google::Apis::Core::Hashable
      
        # The request entries to be processed in the batch.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::ContentV2::AccounttaxCustomBatchRequestEntry>]
        attr_accessor :entries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] unless args[:entries].nil?
        end
      end
      
      # A batch entry encoding a single non-batch accounttax request.
      class AccounttaxCustomBatchRequestEntry
        include Google::Apis::Core::Hashable
      
        # The ID of the account for which to get/update account tax settings.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # The tax settings of a merchant account.
        # Corresponds to the JSON property `accountTax`
        # @return [Google::Apis::ContentV2::AccountTax]
        attr_accessor :account_tax
      
        # An entry ID, unique within the batch request.
        # Corresponds to the JSON property `batchId`
        # @return [Fixnum]
        attr_accessor :batch_id
      
        # The ID of the managing account.
        # Corresponds to the JSON property `merchantId`
        # @return [String]
        attr_accessor :merchant_id
      
        # 
        # Corresponds to the JSON property `method`
        # @return [String]
        attr_accessor :method_prop
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] unless args[:account_id].nil?
          @account_tax = args[:account_tax] unless args[:account_tax].nil?
          @batch_id = args[:batch_id] unless args[:batch_id].nil?
          @merchant_id = args[:merchant_id] unless args[:merchant_id].nil?
          @method_prop = args[:method_prop] unless args[:method_prop].nil?
        end
      end
      
      # 
      class AccounttaxCustomBatchResponse
        include Google::Apis::Core::Hashable
      
        # The result of the execution of the batch requests.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::ContentV2::AccounttaxCustomBatchResponseEntry>]
        attr_accessor :entries
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # accounttaxCustomBatchResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] unless args[:entries].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # A batch entry encoding a single non-batch accounttax response.
      class AccounttaxCustomBatchResponseEntry
        include Google::Apis::Core::Hashable
      
        # The tax settings of a merchant account.
        # Corresponds to the JSON property `accountTax`
        # @return [Google::Apis::ContentV2::AccountTax]
        attr_accessor :account_tax
      
        # The ID of the request entry this entry responds to.
        # Corresponds to the JSON property `batchId`
        # @return [Fixnum]
        attr_accessor :batch_id
      
        # A list of errors returned by a failed batch entry.
        # Corresponds to the JSON property `errors`
        # @return [Google::Apis::ContentV2::Errors]
        attr_accessor :errors
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # accounttaxCustomBatchResponseEntry".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_tax = args[:account_tax] unless args[:account_tax].nil?
          @batch_id = args[:batch_id] unless args[:batch_id].nil?
          @errors = args[:errors] unless args[:errors].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # 
      class AccounttaxListResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # accounttaxListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The token for the retrieval of the next page of account tax settings.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # 
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::ContentV2::AccountTax>]
        attr_accessor :resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @resources = args[:resources] unless args[:resources].nil?
        end
      end
      
      # Datafeed data.
      class Datafeed
        include Google::Apis::Core::Hashable
      
        # The two-letter ISO 639-1 language in which the attributes are defined in the
        # data feed.
        # Corresponds to the JSON property `attributeLanguage`
        # @return [String]
        attr_accessor :attribute_language
      
        # The two-letter ISO 639-1 language of the items in the feed.
        # Corresponds to the JSON property `contentLanguage`
        # @return [String]
        attr_accessor :content_language
      
        # The type of data feed.
        # Corresponds to the JSON property `contentType`
        # @return [String]
        attr_accessor :content_type
      
        # The required fields vary based on the frequency of fetching. For a monthly
        # fetch schedule, day_of_month and hour are required. For a weekly fetch
        # schedule, weekday and hour are required. For a daily fetch schedule, only hour
        # is required.
        # Corresponds to the JSON property `fetchSchedule`
        # @return [Google::Apis::ContentV2::DatafeedFetchSchedule]
        attr_accessor :fetch_schedule
      
        # The filename of the feed. All feeds must have a unique file name.
        # Corresponds to the JSON property `fileName`
        # @return [String]
        attr_accessor :file_name
      
        # Format of the feed file.
        # Corresponds to the JSON property `format`
        # @return [Google::Apis::ContentV2::DatafeedFormat]
        attr_accessor :format
      
        # The ID of the data feed.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The list of intended destinations (corresponds to checked check boxes in
        # Merchant Center).
        # Corresponds to the JSON property `intendedDestinations`
        # @return [Array<String>]
        attr_accessor :intended_destinations
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # datafeed".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # A descriptive name of the data feed.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The two-letter ISO 3166 country where the items in the feed will be included
        # in the search index.
        # Corresponds to the JSON property `targetCountry`
        # @return [String]
        attr_accessor :target_country
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attribute_language = args[:attribute_language] unless args[:attribute_language].nil?
          @content_language = args[:content_language] unless args[:content_language].nil?
          @content_type = args[:content_type] unless args[:content_type].nil?
          @fetch_schedule = args[:fetch_schedule] unless args[:fetch_schedule].nil?
          @file_name = args[:file_name] unless args[:file_name].nil?
          @format = args[:format] unless args[:format].nil?
          @id = args[:id] unless args[:id].nil?
          @intended_destinations = args[:intended_destinations] unless args[:intended_destinations].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
          @target_country = args[:target_country] unless args[:target_country].nil?
        end
      end
      
      # The required fields vary based on the frequency of fetching. For a monthly
      # fetch schedule, day_of_month and hour are required. For a weekly fetch
      # schedule, weekday and hour are required. For a daily fetch schedule, only hour
      # is required.
      class DatafeedFetchSchedule
        include Google::Apis::Core::Hashable
      
        # The day of the month the feed file should be fetched (1-31).
        # Corresponds to the JSON property `dayOfMonth`
        # @return [Fixnum]
        attr_accessor :day_of_month
      
        # The URL where the feed file can be fetched. Google Merchant Center will
        # support automatic scheduled uploads using the HTTP, HTTPS, FTP, or SFTP
        # protocols, so the value will need to be a valid link using one of those four
        # protocols.
        # Corresponds to the JSON property `fetchUrl`
        # @return [String]
        attr_accessor :fetch_url
      
        # The hour of the day the feed file should be fetched (0-24).
        # Corresponds to the JSON property `hour`
        # @return [Fixnum]
        attr_accessor :hour
      
        # An optional password for fetch_url.
        # Corresponds to the JSON property `password`
        # @return [String]
        attr_accessor :password
      
        # Time zone used for schedule. UTC by default. E.g., "America/Los_Angeles".
        # Corresponds to the JSON property `timeZone`
        # @return [String]
        attr_accessor :time_zone
      
        # An optional user name for fetch_url.
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        # The day of the week the feed file should be fetched.
        # Corresponds to the JSON property `weekday`
        # @return [String]
        attr_accessor :weekday
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @day_of_month = args[:day_of_month] unless args[:day_of_month].nil?
          @fetch_url = args[:fetch_url] unless args[:fetch_url].nil?
          @hour = args[:hour] unless args[:hour].nil?
          @password = args[:password] unless args[:password].nil?
          @time_zone = args[:time_zone] unless args[:time_zone].nil?
          @username = args[:username] unless args[:username].nil?
          @weekday = args[:weekday] unless args[:weekday].nil?
        end
      end
      
      # 
      class DatafeedFormat
        include Google::Apis::Core::Hashable
      
        # Delimiter for the separation of values in a delimiter-separated values feed.
        # If not specified, the delimiter will be auto-detected. Ignored for non-DSV
        # data feeds.
        # Corresponds to the JSON property `columnDelimiter`
        # @return [String]
        attr_accessor :column_delimiter
      
        # Character encoding scheme of the data feed. If not specified, the encoding
        # will be auto-detected.
        # Corresponds to the JSON property `fileEncoding`
        # @return [String]
        attr_accessor :file_encoding
      
        # Specifies how double quotes are interpreted. If not specified, the mode will
        # be auto-detected. Ignored for non-DSV data feeds.
        # Corresponds to the JSON property `quotingMode`
        # @return [String]
        attr_accessor :quoting_mode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @column_delimiter = args[:column_delimiter] unless args[:column_delimiter].nil?
          @file_encoding = args[:file_encoding] unless args[:file_encoding].nil?
          @quoting_mode = args[:quoting_mode] unless args[:quoting_mode].nil?
        end
      end
      
      # The status of a datafeed, i.e., the result of the last retrieval of the
      # datafeed computed asynchronously when the feed processing is finished.
      class DatafeedStatus
        include Google::Apis::Core::Hashable
      
        # The ID of the feed for which the status is reported.
        # Corresponds to the JSON property `datafeedId`
        # @return [String]
        attr_accessor :datafeed_id
      
        # The list of errors occurring in the feed.
        # Corresponds to the JSON property `errors`
        # @return [Array<Google::Apis::ContentV2::DatafeedStatusError>]
        attr_accessor :errors
      
        # The number of items in the feed that were processed.
        # Corresponds to the JSON property `itemsTotal`
        # @return [String]
        attr_accessor :items_total
      
        # The number of items in the feed that were valid.
        # Corresponds to the JSON property `itemsValid`
        # @return [String]
        attr_accessor :items_valid
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # datafeedStatus".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The last date at which the feed was uploaded.
        # Corresponds to the JSON property `lastUploadDate`
        # @return [String]
        attr_accessor :last_upload_date
      
        # The processing status of the feed.
        # Corresponds to the JSON property `processingStatus`
        # @return [String]
        attr_accessor :processing_status
      
        # The list of errors occurring in the feed.
        # Corresponds to the JSON property `warnings`
        # @return [Array<Google::Apis::ContentV2::DatafeedStatusError>]
        attr_accessor :warnings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @datafeed_id = args[:datafeed_id] unless args[:datafeed_id].nil?
          @errors = args[:errors] unless args[:errors].nil?
          @items_total = args[:items_total] unless args[:items_total].nil?
          @items_valid = args[:items_valid] unless args[:items_valid].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @last_upload_date = args[:last_upload_date] unless args[:last_upload_date].nil?
          @processing_status = args[:processing_status] unless args[:processing_status].nil?
          @warnings = args[:warnings] unless args[:warnings].nil?
        end
      end
      
      # An error occurring in the feed, like "invalid price".
      class DatafeedStatusError
        include Google::Apis::Core::Hashable
      
        # The code of the error, e.g., "validation/invalid_value".
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # The number of occurrences of the error in the feed.
        # Corresponds to the JSON property `count`
        # @return [String]
        attr_accessor :count
      
        # A list of example occurrences of the error, grouped by product.
        # Corresponds to the JSON property `examples`
        # @return [Array<Google::Apis::ContentV2::DatafeedStatusExample>]
        attr_accessor :examples
      
        # The error message, e.g., "Invalid price".
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] unless args[:code].nil?
          @count = args[:count] unless args[:count].nil?
          @examples = args[:examples] unless args[:examples].nil?
          @message = args[:message] unless args[:message].nil?
        end
      end
      
      # An example occurrence for a particular error.
      class DatafeedStatusExample
        include Google::Apis::Core::Hashable
      
        # The ID of the example item.
        # Corresponds to the JSON property `itemId`
        # @return [String]
        attr_accessor :item_id
      
        # Line number in the data feed where the example is found.
        # Corresponds to the JSON property `lineNumber`
        # @return [String]
        attr_accessor :line_number
      
        # The problematic value.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @item_id = args[:item_id] unless args[:item_id].nil?
          @line_number = args[:line_number] unless args[:line_number].nil?
          @value = args[:value] unless args[:value].nil?
        end
      end
      
      # 
      class DatafeedsCustomBatchRequest
        include Google::Apis::Core::Hashable
      
        # The request entries to be processed in the batch.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::ContentV2::DatafeedsCustomBatchRequestEntry>]
        attr_accessor :entries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] unless args[:entries].nil?
        end
      end
      
      # A batch entry encoding a single non-batch datafeeds request.
      class DatafeedsCustomBatchRequestEntry
        include Google::Apis::Core::Hashable
      
        # An entry ID, unique within the batch request.
        # Corresponds to the JSON property `batchId`
        # @return [Fixnum]
        attr_accessor :batch_id
      
        # Datafeed data.
        # Corresponds to the JSON property `datafeed`
        # @return [Google::Apis::ContentV2::Datafeed]
        attr_accessor :datafeed
      
        # The ID of the data feed to get or delete.
        # Corresponds to the JSON property `datafeedId`
        # @return [String]
        attr_accessor :datafeed_id
      
        # The ID of the managing account.
        # Corresponds to the JSON property `merchantId`
        # @return [String]
        attr_accessor :merchant_id
      
        # 
        # Corresponds to the JSON property `method`
        # @return [String]
        attr_accessor :method_prop
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @batch_id = args[:batch_id] unless args[:batch_id].nil?
          @datafeed = args[:datafeed] unless args[:datafeed].nil?
          @datafeed_id = args[:datafeed_id] unless args[:datafeed_id].nil?
          @merchant_id = args[:merchant_id] unless args[:merchant_id].nil?
          @method_prop = args[:method_prop] unless args[:method_prop].nil?
        end
      end
      
      # 
      class DatafeedsCustomBatchResponse
        include Google::Apis::Core::Hashable
      
        # The result of the execution of the batch requests.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::ContentV2::DatafeedsCustomBatchResponseEntry>]
        attr_accessor :entries
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # datafeedsCustomBatchResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] unless args[:entries].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # A batch entry encoding a single non-batch datafeeds response.
      class DatafeedsCustomBatchResponseEntry
        include Google::Apis::Core::Hashable
      
        # The ID of the request entry this entry responds to.
        # Corresponds to the JSON property `batchId`
        # @return [Fixnum]
        attr_accessor :batch_id
      
        # Datafeed data.
        # Corresponds to the JSON property `datafeed`
        # @return [Google::Apis::ContentV2::Datafeed]
        attr_accessor :datafeed
      
        # A list of errors returned by a failed batch entry.
        # Corresponds to the JSON property `errors`
        # @return [Google::Apis::ContentV2::Errors]
        attr_accessor :errors
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @batch_id = args[:batch_id] unless args[:batch_id].nil?
          @datafeed = args[:datafeed] unless args[:datafeed].nil?
          @errors = args[:errors] unless args[:errors].nil?
        end
      end
      
      # 
      class DatafeedsListResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # datafeedsListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The token for the retrieval of the next page of datafeeds.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # 
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::ContentV2::Datafeed>]
        attr_accessor :resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @resources = args[:resources] unless args[:resources].nil?
        end
      end
      
      # 
      class DatafeedstatusesCustomBatchRequest
        include Google::Apis::Core::Hashable
      
        # The request entries to be processed in the batch.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::ContentV2::DatafeedstatusesCustomBatchRequestEntry>]
        attr_accessor :entries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] unless args[:entries].nil?
        end
      end
      
      # A batch entry encoding a single non-batch datafeedstatuses request.
      class DatafeedstatusesCustomBatchRequestEntry
        include Google::Apis::Core::Hashable
      
        # An entry ID, unique within the batch request.
        # Corresponds to the JSON property `batchId`
        # @return [Fixnum]
        attr_accessor :batch_id
      
        # The ID of the data feed to get or delete.
        # Corresponds to the JSON property `datafeedId`
        # @return [String]
        attr_accessor :datafeed_id
      
        # The ID of the managing account.
        # Corresponds to the JSON property `merchantId`
        # @return [String]
        attr_accessor :merchant_id
      
        # 
        # Corresponds to the JSON property `method`
        # @return [String]
        attr_accessor :method_prop
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @batch_id = args[:batch_id] unless args[:batch_id].nil?
          @datafeed_id = args[:datafeed_id] unless args[:datafeed_id].nil?
          @merchant_id = args[:merchant_id] unless args[:merchant_id].nil?
          @method_prop = args[:method_prop] unless args[:method_prop].nil?
        end
      end
      
      # 
      class DatafeedstatusesCustomBatchResponse
        include Google::Apis::Core::Hashable
      
        # The result of the execution of the batch requests.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::ContentV2::DatafeedstatusesCustomBatchResponseEntry>]
        attr_accessor :entries
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # datafeedstatusesCustomBatchResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] unless args[:entries].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # A batch entry encoding a single non-batch datafeedstatuses response.
      class DatafeedstatusesCustomBatchResponseEntry
        include Google::Apis::Core::Hashable
      
        # The ID of the request entry this entry responds to.
        # Corresponds to the JSON property `batchId`
        # @return [Fixnum]
        attr_accessor :batch_id
      
        # The status of a datafeed, i.e., the result of the last retrieval of the
        # datafeed computed asynchronously when the feed processing is finished.
        # Corresponds to the JSON property `datafeedStatus`
        # @return [Google::Apis::ContentV2::DatafeedStatus]
        attr_accessor :datafeed_status
      
        # A list of errors returned by a failed batch entry.
        # Corresponds to the JSON property `errors`
        # @return [Google::Apis::ContentV2::Errors]
        attr_accessor :errors
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @batch_id = args[:batch_id] unless args[:batch_id].nil?
          @datafeed_status = args[:datafeed_status] unless args[:datafeed_status].nil?
          @errors = args[:errors] unless args[:errors].nil?
        end
      end
      
      # 
      class DatafeedstatusesListResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # datafeedstatusesListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The token for the retrieval of the next page of datafeed statuses.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # 
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::ContentV2::DatafeedStatus>]
        attr_accessor :resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @resources = args[:resources] unless args[:resources].nil?
        end
      end
      
      # An error returned by the API.
      class Error
        include Google::Apis::Core::Hashable
      
        # The domain of the error.
        # Corresponds to the JSON property `domain`
        # @return [String]
        attr_accessor :domain
      
        # A description of the error.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # The error code.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @domain = args[:domain] unless args[:domain].nil?
          @message = args[:message] unless args[:message].nil?
          @reason = args[:reason] unless args[:reason].nil?
        end
      end
      
      # A list of errors returned by a failed batch entry.
      class Errors
        include Google::Apis::Core::Hashable
      
        # The HTTP status of the first error in errors.
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # A list of errors.
        # Corresponds to the JSON property `errors`
        # @return [Array<Google::Apis::ContentV2::Error>]
        attr_accessor :errors
      
        # The message of the first error in errors.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] unless args[:code].nil?
          @errors = args[:errors] unless args[:errors].nil?
          @message = args[:message] unless args[:message].nil?
        end
      end
      
      # 
      class Inventory
        include Google::Apis::Core::Hashable
      
        # The availability of the product.
        # Corresponds to the JSON property `availability`
        # @return [String]
        attr_accessor :availability
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # inventory".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The price of the product.
        # Corresponds to the JSON property `price`
        # @return [Google::Apis::ContentV2::Price]
        attr_accessor :price
      
        # The quantity of the product. Must be equal to or greater than zero. Supported
        # only for local products.
        # Corresponds to the JSON property `quantity`
        # @return [Fixnum]
        attr_accessor :quantity
      
        # The sale price of the product. Mandatory if sale_price_effective_date is
        # defined.
        # Corresponds to the JSON property `salePrice`
        # @return [Google::Apis::ContentV2::Price]
        attr_accessor :sale_price
      
        # A date range represented by a pair of ISO 8601 dates separated by a space,
        # comma, or slash. Both dates might be specified as 'null' if undecided.
        # Corresponds to the JSON property `salePriceEffectiveDate`
        # @return [String]
        attr_accessor :sale_price_effective_date
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @availability = args[:availability] unless args[:availability].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @price = args[:price] unless args[:price].nil?
          @quantity = args[:quantity] unless args[:quantity].nil?
          @sale_price = args[:sale_price] unless args[:sale_price].nil?
          @sale_price_effective_date = args[:sale_price_effective_date] unless args[:sale_price_effective_date].nil?
        end
      end
      
      # 
      class InventoryCustomBatchRequest
        include Google::Apis::Core::Hashable
      
        # The request entries to be processed in the batch.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::ContentV2::InventoryCustomBatchRequestEntry>]
        attr_accessor :entries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] unless args[:entries].nil?
        end
      end
      
      # A batch entry encoding a single non-batch inventory request.
      class InventoryCustomBatchRequestEntry
        include Google::Apis::Core::Hashable
      
        # An entry ID, unique within the batch request.
        # Corresponds to the JSON property `batchId`
        # @return [Fixnum]
        attr_accessor :batch_id
      
        # Price and availability of the product.
        # Corresponds to the JSON property `inventory`
        # @return [Google::Apis::ContentV2::Inventory]
        attr_accessor :inventory
      
        # The ID of the managing account.
        # Corresponds to the JSON property `merchantId`
        # @return [String]
        attr_accessor :merchant_id
      
        # The ID of the product for which to update price and availability.
        # Corresponds to the JSON property `productId`
        # @return [String]
        attr_accessor :product_id
      
        # The code of the store for which to update price and availability. Use online
        # to update price and availability of an online product.
        # Corresponds to the JSON property `storeCode`
        # @return [String]
        attr_accessor :store_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @batch_id = args[:batch_id] unless args[:batch_id].nil?
          @inventory = args[:inventory] unless args[:inventory].nil?
          @merchant_id = args[:merchant_id] unless args[:merchant_id].nil?
          @product_id = args[:product_id] unless args[:product_id].nil?
          @store_code = args[:store_code] unless args[:store_code].nil?
        end
      end
      
      # 
      class InventoryCustomBatchResponse
        include Google::Apis::Core::Hashable
      
        # The result of the execution of the batch requests.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::ContentV2::InventoryCustomBatchResponseEntry>]
        attr_accessor :entries
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # inventoryCustomBatchResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] unless args[:entries].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # A batch entry encoding a single non-batch inventory response.
      class InventoryCustomBatchResponseEntry
        include Google::Apis::Core::Hashable
      
        # The ID of the request entry this entry responds to.
        # Corresponds to the JSON property `batchId`
        # @return [Fixnum]
        attr_accessor :batch_id
      
        # A list of errors returned by a failed batch entry.
        # Corresponds to the JSON property `errors`
        # @return [Google::Apis::ContentV2::Errors]
        attr_accessor :errors
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # inventoryCustomBatchResponseEntry".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @batch_id = args[:batch_id] unless args[:batch_id].nil?
          @errors = args[:errors] unless args[:errors].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # 
      class SetRequest
        include Google::Apis::Core::Hashable
      
        # The availability of the product.
        # Corresponds to the JSON property `availability`
        # @return [String]
        attr_accessor :availability
      
        # The price of the product.
        # Corresponds to the JSON property `price`
        # @return [Google::Apis::ContentV2::Price]
        attr_accessor :price
      
        # The quantity of the product. Must be equal to or greater than zero. Supported
        # only for local products.
        # Corresponds to the JSON property `quantity`
        # @return [Fixnum]
        attr_accessor :quantity
      
        # The sale price of the product. Mandatory if sale_price_effective_date is
        # defined.
        # Corresponds to the JSON property `salePrice`
        # @return [Google::Apis::ContentV2::Price]
        attr_accessor :sale_price
      
        # A date range represented by a pair of ISO 8601 dates separated by a space,
        # comma, or slash. Both dates might be specified as 'null' if undecided.
        # Corresponds to the JSON property `salePriceEffectiveDate`
        # @return [String]
        attr_accessor :sale_price_effective_date
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @availability = args[:availability] unless args[:availability].nil?
          @price = args[:price] unless args[:price].nil?
          @quantity = args[:quantity] unless args[:quantity].nil?
          @sale_price = args[:sale_price] unless args[:sale_price].nil?
          @sale_price_effective_date = args[:sale_price_effective_date] unless args[:sale_price_effective_date].nil?
        end
      end
      
      # 
      class SetResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # inventorySetResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # 
      class LoyaltyPoints
        include Google::Apis::Core::Hashable
      
        # Name of loyalty points program. It is recommended to limit the name to 12 full-
        # width characters or 24 Roman characters.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The retailer's loyalty points in absolute value.
        # Corresponds to the JSON property `pointsValue`
        # @return [String]
        attr_accessor :points_value
      
        # The ratio of a point when converted to currency. Google assumes currency based
        # on Merchant Center settings. If ratio is left out, it defaults to 1.0.
        # Corresponds to the JSON property `ratio`
        # @return [Float]
        attr_accessor :ratio
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] unless args[:name].nil?
          @points_value = args[:points_value] unless args[:points_value].nil?
          @ratio = args[:ratio] unless args[:ratio].nil?
        end
      end
      
      # 
      class Price
        include Google::Apis::Core::Hashable
      
        # The currency of the price.
        # Corresponds to the JSON property `currency`
        # @return [String]
        attr_accessor :currency
      
        # The price represented as a number.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @currency = args[:currency] unless args[:currency].nil?
          @value = args[:value] unless args[:value].nil?
        end
      end
      
      # Product data.
      class Product
        include Google::Apis::Core::Hashable
      
        # Additional URLs of images of the item.
        # Corresponds to the JSON property `additionalImageLinks`
        # @return [Array<String>]
        attr_accessor :additional_image_links
      
        # Set to true if the item is targeted towards adults.
        # Corresponds to the JSON property `adult`
        # @return [Boolean]
        attr_accessor :adult
        alias_method :adult?, :adult
      
        # Used to group items in an arbitrary way. Only for CPA%, discouraged otherwise.
        # Corresponds to the JSON property `adwordsGrouping`
        # @return [String]
        attr_accessor :adwords_grouping
      
        # Similar to adwords_grouping, but only works on CPC.
        # Corresponds to the JSON property `adwordsLabels`
        # @return [Array<String>]
        attr_accessor :adwords_labels
      
        # Allows advertisers to override the item URL when the product is shown within
        # the context of Product Ads.
        # Corresponds to the JSON property `adwordsRedirect`
        # @return [String]
        attr_accessor :adwords_redirect
      
        # Target age group of the item.
        # Corresponds to the JSON property `ageGroup`
        # @return [String]
        attr_accessor :age_group
      
        # Specifies the intended aspects for the product.
        # Corresponds to the JSON property `aspects`
        # @return [Array<Google::Apis::ContentV2::ProductAspect>]
        attr_accessor :aspects
      
        # Availability status of the item.
        # Corresponds to the JSON property `availability`
        # @return [String]
        attr_accessor :availability
      
        # The day a pre-ordered product becomes available for delivery, in ISO 8601
        # format.
        # Corresponds to the JSON property `availabilityDate`
        # @return [String]
        attr_accessor :availability_date
      
        # Brand of the item.
        # Corresponds to the JSON property `brand`
        # @return [String]
        attr_accessor :brand
      
        # The item's channel (online or local).
        # Corresponds to the JSON property `channel`
        # @return [String]
        attr_accessor :channel
      
        # Color of the item.
        # Corresponds to the JSON property `color`
        # @return [String]
        attr_accessor :color
      
        # Condition or state of the item.
        # Corresponds to the JSON property `condition`
        # @return [String]
        attr_accessor :condition
      
        # The two-letter ISO 639-1 language code for the item.
        # Corresponds to the JSON property `contentLanguage`
        # @return [String]
        attr_accessor :content_language
      
        # A list of custom (merchant-provided) attributes. It can also be used for
        # submitting any attribute of the feed specification in its generic form (e.g., `
        # "name": "size type", "type": "text", "value": "regular" `). This is useful
        # for submitting attributes not explicitly exposed by the API.
        # Corresponds to the JSON property `customAttributes`
        # @return [Array<Google::Apis::ContentV2::ProductCustomAttribute>]
        attr_accessor :custom_attributes
      
        # A list of custom (merchant-provided) custom attribute groups.
        # Corresponds to the JSON property `customGroups`
        # @return [Array<Google::Apis::ContentV2::ProductCustomGroup>]
        attr_accessor :custom_groups
      
        # Custom label 0 for custom grouping of items in a Shopping campaign.
        # Corresponds to the JSON property `customLabel0`
        # @return [String]
        attr_accessor :custom_label0
      
        # Custom label 1 for custom grouping of items in a Shopping campaign.
        # Corresponds to the JSON property `customLabel1`
        # @return [String]
        attr_accessor :custom_label1
      
        # Custom label 2 for custom grouping of items in a Shopping campaign.
        # Corresponds to the JSON property `customLabel2`
        # @return [String]
        attr_accessor :custom_label2
      
        # Custom label 3 for custom grouping of items in a Shopping campaign.
        # Corresponds to the JSON property `customLabel3`
        # @return [String]
        attr_accessor :custom_label3
      
        # Custom label 4 for custom grouping of items in a Shopping campaign.
        # Corresponds to the JSON property `customLabel4`
        # @return [String]
        attr_accessor :custom_label4
      
        # Description of the item.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Specifies the intended destinations for the product.
        # Corresponds to the JSON property `destinations`
        # @return [Array<Google::Apis::ContentV2::ProductDestination>]
        attr_accessor :destinations
      
        # An identifier for an item for dynamic remarketing campaigns.
        # Corresponds to the JSON property `displayAdsId`
        # @return [String]
        attr_accessor :display_ads_id
      
        # URL directly to your item's landing page for dynamic remarketing campaigns.
        # Corresponds to the JSON property `displayAdsLink`
        # @return [String]
        attr_accessor :display_ads_link
      
        # Advertiser-specified recommendations.
        # Corresponds to the JSON property `displayAdsSimilarIds`
        # @return [Array<String>]
        attr_accessor :display_ads_similar_ids
      
        # Title of an item for dynamic remarketing campaigns.
        # Corresponds to the JSON property `displayAdsTitle`
        # @return [String]
        attr_accessor :display_ads_title
      
        # Offer margin for dynamic remarketing campaigns.
        # Corresponds to the JSON property `displayAdsValue`
        # @return [Float]
        attr_accessor :display_ads_value
      
        # The energy efficiency class as defined in EU directive 2010/30/EU.
        # Corresponds to the JSON property `energyEfficiencyClass`
        # @return [String]
        attr_accessor :energy_efficiency_class
      
        # Date on which the item should expire, as specified upon insertion, in ISO 8601
        # format. The actual expiration date in Google Shopping is exposed in
        # productstatuses as googleExpirationDate and might be earlier if expirationDate
        # is too far in the future.
        # Corresponds to the JSON property `expirationDate`
        # @return [String]
        attr_accessor :expiration_date
      
        # Target gender of the item.
        # Corresponds to the JSON property `gender`
        # @return [String]
        attr_accessor :gender
      
        # Google's category of the item (see Google product taxonomy).
        # Corresponds to the JSON property `googleProductCategory`
        # @return [String]
        attr_accessor :google_product_category
      
        # Global Trade Item Number (GTIN) of the item.
        # Corresponds to the JSON property `gtin`
        # @return [String]
        attr_accessor :gtin
      
        # The REST id of the product.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # False when the item does not have unique product identifiers appropriate to
        # its category, such as GTIN, MPN, and brand. Required according to the Unique
        # Product Identifier Rules for all target countries except for Canada.
        # Corresponds to the JSON property `identifierExists`
        # @return [Boolean]
        attr_accessor :identifier_exists
        alias_method :identifier_exists?, :identifier_exists
      
        # URL of an image of the item.
        # Corresponds to the JSON property `imageLink`
        # @return [String]
        attr_accessor :image_link
      
        # Number and amount of installments to pay for an item. Brazil only.
        # Corresponds to the JSON property `installment`
        # @return [Google::Apis::ContentV2::ProductInstallment]
        attr_accessor :installment
      
        # Whether the item is a merchant-defined bundle. A bundle is a custom grouping
        # of different products sold by a merchant for a single price.
        # Corresponds to the JSON property `isBundle`
        # @return [Boolean]
        attr_accessor :is_bundle
        alias_method :is_bundle?, :is_bundle
      
        # Shared identifier for all variants of the same product.
        # Corresponds to the JSON property `itemGroupId`
        # @return [String]
        attr_accessor :item_group_id
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # product".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # URL directly linking to your item's page on your website.
        # Corresponds to the JSON property `link`
        # @return [String]
        attr_accessor :link
      
        # Loyalty points that users receive after purchasing the item. Japan only.
        # Corresponds to the JSON property `loyaltyPoints`
        # @return [Google::Apis::ContentV2::LoyaltyPoints]
        attr_accessor :loyalty_points
      
        # The material of which the item is made.
        # Corresponds to the JSON property `material`
        # @return [String]
        attr_accessor :material
      
        # Link to a mobile-optimized version of the landing page.
        # Corresponds to the JSON property `mobileLink`
        # @return [String]
        attr_accessor :mobile_link
      
        # Manufacturer Part Number (MPN) of the item.
        # Corresponds to the JSON property `mpn`
        # @return [String]
        attr_accessor :mpn
      
        # The number of identical products in a merchant-defined multipack.
        # Corresponds to the JSON property `multipack`
        # @return [String]
        attr_accessor :multipack
      
        # An identifier of the item.
        # Corresponds to the JSON property `offerId`
        # @return [String]
        attr_accessor :offer_id
      
        # Whether an item is available for purchase only online.
        # Corresponds to the JSON property `onlineOnly`
        # @return [Boolean]
        attr_accessor :online_only
        alias_method :online_only?, :online_only
      
        # The item's pattern (e.g. polka dots).
        # Corresponds to the JSON property `pattern`
        # @return [String]
        attr_accessor :pattern
      
        # Price of the item.
        # Corresponds to the JSON property `price`
        # @return [Google::Apis::ContentV2::Price]
        attr_accessor :price
      
        # Your category of the item (formatted as in product feeds specification).
        # Corresponds to the JSON property `productType`
        # @return [String]
        attr_accessor :product_type
      
        # Advertised sale price of the item.
        # Corresponds to the JSON property `salePrice`
        # @return [Google::Apis::ContentV2::Price]
        attr_accessor :sale_price
      
        # Date range during which the item is on sale (see product feed specifications).
        # Corresponds to the JSON property `salePriceEffectiveDate`
        # @return [String]
        attr_accessor :sale_price_effective_date
      
        # Shipping rules.
        # Corresponds to the JSON property `shipping`
        # @return [Array<Google::Apis::ContentV2::ProductShipping>]
        attr_accessor :shipping
      
        # Height of the item for shipping.
        # Corresponds to the JSON property `shippingHeight`
        # @return [Google::Apis::ContentV2::ProductShippingDimension]
        attr_accessor :shipping_height
      
        # The shipping label of the product, used to group product in account-level
        # shipping rules.
        # Corresponds to the JSON property `shippingLabel`
        # @return [String]
        attr_accessor :shipping_label
      
        # Length of the item for shipping.
        # Corresponds to the JSON property `shippingLength`
        # @return [Google::Apis::ContentV2::ProductShippingDimension]
        attr_accessor :shipping_length
      
        # Weight of the item for shipping.
        # Corresponds to the JSON property `shippingWeight`
        # @return [Google::Apis::ContentV2::ProductShippingWeight]
        attr_accessor :shipping_weight
      
        # Width of the item for shipping.
        # Corresponds to the JSON property `shippingWidth`
        # @return [Google::Apis::ContentV2::ProductShippingDimension]
        attr_accessor :shipping_width
      
        # System in which the size is specified. Recommended for apparel items.
        # Corresponds to the JSON property `sizeSystem`
        # @return [String]
        attr_accessor :size_system
      
        # The cut of the item. Recommended for apparel items.
        # Corresponds to the JSON property `sizeType`
        # @return [String]
        attr_accessor :size_type
      
        # Size of the item.
        # Corresponds to the JSON property `sizes`
        # @return [Array<String>]
        attr_accessor :sizes
      
        # The two-letter ISO 3166 country code for the item.
        # Corresponds to the JSON property `targetCountry`
        # @return [String]
        attr_accessor :target_country
      
        # Tax information.
        # Corresponds to the JSON property `taxes`
        # @return [Array<Google::Apis::ContentV2::ProductTax>]
        attr_accessor :taxes
      
        # Title of the item.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # The preference of the denominator of the unit price.
        # Corresponds to the JSON property `unitPricingBaseMeasure`
        # @return [Google::Apis::ContentV2::ProductUnitPricingBaseMeasure]
        attr_accessor :unit_pricing_base_measure
      
        # The measure and dimension of an item.
        # Corresponds to the JSON property `unitPricingMeasure`
        # @return [Google::Apis::ContentV2::ProductUnitPricingMeasure]
        attr_accessor :unit_pricing_measure
      
        # The read-only list of intended destinations which passed validation.
        # Corresponds to the JSON property `validatedDestinations`
        # @return [Array<String>]
        attr_accessor :validated_destinations
      
        # Read-only warnings.
        # Corresponds to the JSON property `warnings`
        # @return [Array<Google::Apis::ContentV2::Error>]
        attr_accessor :warnings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_image_links = args[:additional_image_links] unless args[:additional_image_links].nil?
          @adult = args[:adult] unless args[:adult].nil?
          @adwords_grouping = args[:adwords_grouping] unless args[:adwords_grouping].nil?
          @adwords_labels = args[:adwords_labels] unless args[:adwords_labels].nil?
          @adwords_redirect = args[:adwords_redirect] unless args[:adwords_redirect].nil?
          @age_group = args[:age_group] unless args[:age_group].nil?
          @aspects = args[:aspects] unless args[:aspects].nil?
          @availability = args[:availability] unless args[:availability].nil?
          @availability_date = args[:availability_date] unless args[:availability_date].nil?
          @brand = args[:brand] unless args[:brand].nil?
          @channel = args[:channel] unless args[:channel].nil?
          @color = args[:color] unless args[:color].nil?
          @condition = args[:condition] unless args[:condition].nil?
          @content_language = args[:content_language] unless args[:content_language].nil?
          @custom_attributes = args[:custom_attributes] unless args[:custom_attributes].nil?
          @custom_groups = args[:custom_groups] unless args[:custom_groups].nil?
          @custom_label0 = args[:custom_label0] unless args[:custom_label0].nil?
          @custom_label1 = args[:custom_label1] unless args[:custom_label1].nil?
          @custom_label2 = args[:custom_label2] unless args[:custom_label2].nil?
          @custom_label3 = args[:custom_label3] unless args[:custom_label3].nil?
          @custom_label4 = args[:custom_label4] unless args[:custom_label4].nil?
          @description = args[:description] unless args[:description].nil?
          @destinations = args[:destinations] unless args[:destinations].nil?
          @display_ads_id = args[:display_ads_id] unless args[:display_ads_id].nil?
          @display_ads_link = args[:display_ads_link] unless args[:display_ads_link].nil?
          @display_ads_similar_ids = args[:display_ads_similar_ids] unless args[:display_ads_similar_ids].nil?
          @display_ads_title = args[:display_ads_title] unless args[:display_ads_title].nil?
          @display_ads_value = args[:display_ads_value] unless args[:display_ads_value].nil?
          @energy_efficiency_class = args[:energy_efficiency_class] unless args[:energy_efficiency_class].nil?
          @expiration_date = args[:expiration_date] unless args[:expiration_date].nil?
          @gender = args[:gender] unless args[:gender].nil?
          @google_product_category = args[:google_product_category] unless args[:google_product_category].nil?
          @gtin = args[:gtin] unless args[:gtin].nil?
          @id = args[:id] unless args[:id].nil?
          @identifier_exists = args[:identifier_exists] unless args[:identifier_exists].nil?
          @image_link = args[:image_link] unless args[:image_link].nil?
          @installment = args[:installment] unless args[:installment].nil?
          @is_bundle = args[:is_bundle] unless args[:is_bundle].nil?
          @item_group_id = args[:item_group_id] unless args[:item_group_id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @link = args[:link] unless args[:link].nil?
          @loyalty_points = args[:loyalty_points] unless args[:loyalty_points].nil?
          @material = args[:material] unless args[:material].nil?
          @mobile_link = args[:mobile_link] unless args[:mobile_link].nil?
          @mpn = args[:mpn] unless args[:mpn].nil?
          @multipack = args[:multipack] unless args[:multipack].nil?
          @offer_id = args[:offer_id] unless args[:offer_id].nil?
          @online_only = args[:online_only] unless args[:online_only].nil?
          @pattern = args[:pattern] unless args[:pattern].nil?
          @price = args[:price] unless args[:price].nil?
          @product_type = args[:product_type] unless args[:product_type].nil?
          @sale_price = args[:sale_price] unless args[:sale_price].nil?
          @sale_price_effective_date = args[:sale_price_effective_date] unless args[:sale_price_effective_date].nil?
          @shipping = args[:shipping] unless args[:shipping].nil?
          @shipping_height = args[:shipping_height] unless args[:shipping_height].nil?
          @shipping_label = args[:shipping_label] unless args[:shipping_label].nil?
          @shipping_length = args[:shipping_length] unless args[:shipping_length].nil?
          @shipping_weight = args[:shipping_weight] unless args[:shipping_weight].nil?
          @shipping_width = args[:shipping_width] unless args[:shipping_width].nil?
          @size_system = args[:size_system] unless args[:size_system].nil?
          @size_type = args[:size_type] unless args[:size_type].nil?
          @sizes = args[:sizes] unless args[:sizes].nil?
          @target_country = args[:target_country] unless args[:target_country].nil?
          @taxes = args[:taxes] unless args[:taxes].nil?
          @title = args[:title] unless args[:title].nil?
          @unit_pricing_base_measure = args[:unit_pricing_base_measure] unless args[:unit_pricing_base_measure].nil?
          @unit_pricing_measure = args[:unit_pricing_measure] unless args[:unit_pricing_measure].nil?
          @validated_destinations = args[:validated_destinations] unless args[:validated_destinations].nil?
          @warnings = args[:warnings] unless args[:warnings].nil?
        end
      end
      
      # 
      class ProductAspect
        include Google::Apis::Core::Hashable
      
        # The name of the aspect.
        # Corresponds to the JSON property `aspectName`
        # @return [String]
        attr_accessor :aspect_name
      
        # The name of the destination. Leave out to apply to all destinations.
        # Corresponds to the JSON property `destinationName`
        # @return [String]
        attr_accessor :destination_name
      
        # Whether the aspect is required, excluded or should be validated.
        # Corresponds to the JSON property `intention`
        # @return [String]
        attr_accessor :intention
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aspect_name = args[:aspect_name] unless args[:aspect_name].nil?
          @destination_name = args[:destination_name] unless args[:destination_name].nil?
          @intention = args[:intention] unless args[:intention].nil?
        end
      end
      
      # 
      class ProductCustomAttribute
        include Google::Apis::Core::Hashable
      
        # The name of the attribute. Underscores will be replaced by spaces upon
        # insertion.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The type of the attribute.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Free-form unit of the attribute. Unit can only be used for values of type INT
        # or FLOAT.
        # Corresponds to the JSON property `unit`
        # @return [String]
        attr_accessor :unit
      
        # The value of the attribute.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] unless args[:name].nil?
          @type = args[:type] unless args[:type].nil?
          @unit = args[:unit] unless args[:unit].nil?
          @value = args[:value] unless args[:value].nil?
        end
      end
      
      # 
      class ProductCustomGroup
        include Google::Apis::Core::Hashable
      
        # The sub-attributes.
        # Corresponds to the JSON property `attributes`
        # @return [Array<Google::Apis::ContentV2::ProductCustomAttribute>]
        attr_accessor :attributes
      
        # The name of the group. Underscores will be replaced by spaces upon insertion.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attributes = args[:attributes] unless args[:attributes].nil?
          @name = args[:name] unless args[:name].nil?
        end
      end
      
      # 
      class ProductDestination
        include Google::Apis::Core::Hashable
      
        # The name of the destination.
        # Corresponds to the JSON property `destinationName`
        # @return [String]
        attr_accessor :destination_name
      
        # Whether the destination is required, excluded or should be validated.
        # Corresponds to the JSON property `intention`
        # @return [String]
        attr_accessor :intention
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @destination_name = args[:destination_name] unless args[:destination_name].nil?
          @intention = args[:intention] unless args[:intention].nil?
        end
      end
      
      # 
      class ProductInstallment
        include Google::Apis::Core::Hashable
      
        # The amount the buyer has to pay per month.
        # Corresponds to the JSON property `amount`
        # @return [Google::Apis::ContentV2::Price]
        attr_accessor :amount
      
        # The number of installments the buyer has to pay.
        # Corresponds to the JSON property `months`
        # @return [String]
        attr_accessor :months
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @amount = args[:amount] unless args[:amount].nil?
          @months = args[:months] unless args[:months].nil?
        end
      end
      
      # 
      class ProductShipping
        include Google::Apis::Core::Hashable
      
        # The two-letter ISO 3166 country code for the country to which an item will
        # ship.
        # Corresponds to the JSON property `country`
        # @return [String]
        attr_accessor :country
      
        # The location where the shipping is applicable, represented by a location group
        # name.
        # Corresponds to the JSON property `locationGroupName`
        # @return [String]
        attr_accessor :location_group_name
      
        # The numeric id of a location that the shipping rate applies to as defined in
        # the AdWords API.
        # Corresponds to the JSON property `locationId`
        # @return [String]
        attr_accessor :location_id
      
        # The postal code range that the shipping rate applies to, represented by a
        # postal code, a postal code prefix followed by a * wildcard, a range between
        # two postal codes or two postal code prefixes of equal length.
        # Corresponds to the JSON property `postalCode`
        # @return [String]
        attr_accessor :postal_code
      
        # Fixed shipping price, represented as a number.
        # Corresponds to the JSON property `price`
        # @return [Google::Apis::ContentV2::Price]
        attr_accessor :price
      
        # The geographic region to which a shipping rate applies (e.g. zip code).
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # A free-form description of the service class or delivery speed.
        # Corresponds to the JSON property `service`
        # @return [String]
        attr_accessor :service
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @country = args[:country] unless args[:country].nil?
          @location_group_name = args[:location_group_name] unless args[:location_group_name].nil?
          @location_id = args[:location_id] unless args[:location_id].nil?
          @postal_code = args[:postal_code] unless args[:postal_code].nil?
          @price = args[:price] unless args[:price].nil?
          @region = args[:region] unless args[:region].nil?
          @service = args[:service] unless args[:service].nil?
        end
      end
      
      # 
      class ProductShippingDimension
        include Google::Apis::Core::Hashable
      
        # The unit of value.
        # Acceptable values are:
        # - "cm"
        # - "in"
        # Corresponds to the JSON property `unit`
        # @return [String]
        attr_accessor :unit
      
        # The dimension of the product used to calculate the shipping cost of the item.
        # Corresponds to the JSON property `value`
        # @return [Float]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @unit = args[:unit] unless args[:unit].nil?
          @value = args[:value] unless args[:value].nil?
        end
      end
      
      # 
      class ProductShippingWeight
        include Google::Apis::Core::Hashable
      
        # The unit of value.
        # Corresponds to the JSON property `unit`
        # @return [String]
        attr_accessor :unit
      
        # The weight of the product used to calculate the shipping cost of the item.
        # Corresponds to the JSON property `value`
        # @return [Float]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @unit = args[:unit] unless args[:unit].nil?
          @value = args[:value] unless args[:value].nil?
        end
      end
      
      # The status of a product, i.e., information about a product computed
      # asynchronously by the data quality analysis.
      class ProductStatus
        include Google::Apis::Core::Hashable
      
        # Date on which the item has been created, in ISO 8601 format.
        # Corresponds to the JSON property `creationDate`
        # @return [String]
        attr_accessor :creation_date
      
        # A list of data quality issues associated with the product.
        # Corresponds to the JSON property `dataQualityIssues`
        # @return [Array<Google::Apis::ContentV2::ProductStatusDataQualityIssue>]
        attr_accessor :data_quality_issues
      
        # The intended destinations for the product.
        # Corresponds to the JSON property `destinationStatuses`
        # @return [Array<Google::Apis::ContentV2::ProductStatusDestinationStatus>]
        attr_accessor :destination_statuses
      
        # Date on which the item expires in Google Shopping, in ISO 8601 format.
        # Corresponds to the JSON property `googleExpirationDate`
        # @return [String]
        attr_accessor :google_expiration_date
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # productStatus".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Date on which the item has been last updated, in ISO 8601 format.
        # Corresponds to the JSON property `lastUpdateDate`
        # @return [String]
        attr_accessor :last_update_date
      
        # The link to the product.
        # Corresponds to the JSON property `link`
        # @return [String]
        attr_accessor :link
      
        # The id of the product for which status is reported.
        # Corresponds to the JSON property `productId`
        # @return [String]
        attr_accessor :product_id
      
        # The title of the product.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creation_date = args[:creation_date] unless args[:creation_date].nil?
          @data_quality_issues = args[:data_quality_issues] unless args[:data_quality_issues].nil?
          @destination_statuses = args[:destination_statuses] unless args[:destination_statuses].nil?
          @google_expiration_date = args[:google_expiration_date] unless args[:google_expiration_date].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @last_update_date = args[:last_update_date] unless args[:last_update_date].nil?
          @link = args[:link] unless args[:link].nil?
          @product_id = args[:product_id] unless args[:product_id].nil?
          @title = args[:title] unless args[:title].nil?
        end
      end
      
      # 
      class ProductStatusDataQualityIssue
        include Google::Apis::Core::Hashable
      
        # A more detailed error string.
        # Corresponds to the JSON property `detail`
        # @return [String]
        attr_accessor :detail
      
        # The fetch status for landing_page_errors.
        # Corresponds to the JSON property `fetchStatus`
        # @return [String]
        attr_accessor :fetch_status
      
        # The id of the data quality issue.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The attribute name that is relevant for the issue.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # The severity of the data quality issue.
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        # The time stamp of the data quality issue.
        # Corresponds to the JSON property `timestamp`
        # @return [String]
        attr_accessor :timestamp
      
        # The value of that attribute that was found on the landing page
        # Corresponds to the JSON property `valueOnLandingPage`
        # @return [String]
        attr_accessor :value_on_landing_page
      
        # The value the attribute had at time of evaluation.
        # Corresponds to the JSON property `valueProvided`
        # @return [String]
        attr_accessor :value_provided
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @detail = args[:detail] unless args[:detail].nil?
          @fetch_status = args[:fetch_status] unless args[:fetch_status].nil?
          @id = args[:id] unless args[:id].nil?
          @location = args[:location] unless args[:location].nil?
          @severity = args[:severity] unless args[:severity].nil?
          @timestamp = args[:timestamp] unless args[:timestamp].nil?
          @value_on_landing_page = args[:value_on_landing_page] unless args[:value_on_landing_page].nil?
          @value_provided = args[:value_provided] unless args[:value_provided].nil?
        end
      end
      
      # 
      class ProductStatusDestinationStatus
        include Google::Apis::Core::Hashable
      
        # The destination's approval status.
        # Corresponds to the JSON property `approvalStatus`
        # @return [String]
        attr_accessor :approval_status
      
        # The name of the destination
        # Corresponds to the JSON property `destination`
        # @return [String]
        attr_accessor :destination
      
        # Whether the destination is required, excluded, selected by default or should
        # be validated.
        # Corresponds to the JSON property `intention`
        # @return [String]
        attr_accessor :intention
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @approval_status = args[:approval_status] unless args[:approval_status].nil?
          @destination = args[:destination] unless args[:destination].nil?
          @intention = args[:intention] unless args[:intention].nil?
        end
      end
      
      # 
      class ProductTax
        include Google::Apis::Core::Hashable
      
        # The country within which the item is taxed, specified with a two-letter ISO
        # 3166 country code.
        # Corresponds to the JSON property `country`
        # @return [String]
        attr_accessor :country
      
        # The numeric id of a location that the tax rate applies to as defined in the
        # AdWords API.
        # Corresponds to the JSON property `locationId`
        # @return [String]
        attr_accessor :location_id
      
        # The postal code range that the tax rate applies to, represented by a ZIP code,
        # a ZIP code prefix using * wildcard, a range between two ZIP codes or two ZIP
        # code prefixes of equal length. Examples: 94114, 94*, 94002-95460, 94*-95*.
        # Corresponds to the JSON property `postalCode`
        # @return [String]
        attr_accessor :postal_code
      
        # The percentage of tax rate that applies to the item price.
        # Corresponds to the JSON property `rate`
        # @return [Float]
        attr_accessor :rate
      
        # The geographic region to which the tax rate applies.
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # Set to true if tax is charged on shipping.
        # Corresponds to the JSON property `taxShip`
        # @return [Boolean]
        attr_accessor :tax_ship
        alias_method :tax_ship?, :tax_ship
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @country = args[:country] unless args[:country].nil?
          @location_id = args[:location_id] unless args[:location_id].nil?
          @postal_code = args[:postal_code] unless args[:postal_code].nil?
          @rate = args[:rate] unless args[:rate].nil?
          @region = args[:region] unless args[:region].nil?
          @tax_ship = args[:tax_ship] unless args[:tax_ship].nil?
        end
      end
      
      # 
      class ProductUnitPricingBaseMeasure
        include Google::Apis::Core::Hashable
      
        # The unit of the denominator.
        # Corresponds to the JSON property `unit`
        # @return [String]
        attr_accessor :unit
      
        # The denominator of the unit price.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @unit = args[:unit] unless args[:unit].nil?
          @value = args[:value] unless args[:value].nil?
        end
      end
      
      # 
      class ProductUnitPricingMeasure
        include Google::Apis::Core::Hashable
      
        # The unit of the measure.
        # Corresponds to the JSON property `unit`
        # @return [String]
        attr_accessor :unit
      
        # The measure of an item.
        # Corresponds to the JSON property `value`
        # @return [Float]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @unit = args[:unit] unless args[:unit].nil?
          @value = args[:value] unless args[:value].nil?
        end
      end
      
      # 
      class ProductsCustomBatchRequest
        include Google::Apis::Core::Hashable
      
        # The request entries to be processed in the batch.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::ContentV2::ProductsCustomBatchRequestEntry>]
        attr_accessor :entries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] unless args[:entries].nil?
        end
      end
      
      # A batch entry encoding a single non-batch products request.
      class ProductsCustomBatchRequestEntry
        include Google::Apis::Core::Hashable
      
        # An entry ID, unique within the batch request.
        # Corresponds to the JSON property `batchId`
        # @return [Fixnum]
        attr_accessor :batch_id
      
        # The ID of the managing account.
        # Corresponds to the JSON property `merchantId`
        # @return [String]
        attr_accessor :merchant_id
      
        # 
        # Corresponds to the JSON property `method`
        # @return [String]
        attr_accessor :method_prop
      
        # Product data.
        # Corresponds to the JSON property `product`
        # @return [Google::Apis::ContentV2::Product]
        attr_accessor :product
      
        # The ID of the product to get or delete. Only defined if the method is get or
        # delete.
        # Corresponds to the JSON property `productId`
        # @return [String]
        attr_accessor :product_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @batch_id = args[:batch_id] unless args[:batch_id].nil?
          @merchant_id = args[:merchant_id] unless args[:merchant_id].nil?
          @method_prop = args[:method_prop] unless args[:method_prop].nil?
          @product = args[:product] unless args[:product].nil?
          @product_id = args[:product_id] unless args[:product_id].nil?
        end
      end
      
      # 
      class ProductsCustomBatchResponse
        include Google::Apis::Core::Hashable
      
        # The result of the execution of the batch requests.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::ContentV2::ProductsCustomBatchResponseEntry>]
        attr_accessor :entries
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # productsCustomBatchResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] unless args[:entries].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # A batch entry encoding a single non-batch products response.
      class ProductsCustomBatchResponseEntry
        include Google::Apis::Core::Hashable
      
        # The ID of the request entry this entry responds to.
        # Corresponds to the JSON property `batchId`
        # @return [Fixnum]
        attr_accessor :batch_id
      
        # A list of errors returned by a failed batch entry.
        # Corresponds to the JSON property `errors`
        # @return [Google::Apis::ContentV2::Errors]
        attr_accessor :errors
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # productsCustomBatchResponseEntry".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Product data.
        # Corresponds to the JSON property `product`
        # @return [Google::Apis::ContentV2::Product]
        attr_accessor :product
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @batch_id = args[:batch_id] unless args[:batch_id].nil?
          @errors = args[:errors] unless args[:errors].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @product = args[:product] unless args[:product].nil?
        end
      end
      
      # 
      class ProductsListResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # productsListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The token for the retrieval of the next page of products.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # 
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::ContentV2::Product>]
        attr_accessor :resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @resources = args[:resources] unless args[:resources].nil?
        end
      end
      
      # 
      class ProductstatusesCustomBatchRequest
        include Google::Apis::Core::Hashable
      
        # The request entries to be processed in the batch.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::ContentV2::ProductstatusesCustomBatchRequestEntry>]
        attr_accessor :entries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] unless args[:entries].nil?
        end
      end
      
      # A batch entry encoding a single non-batch productstatuses request.
      class ProductstatusesCustomBatchRequestEntry
        include Google::Apis::Core::Hashable
      
        # An entry ID, unique within the batch request.
        # Corresponds to the JSON property `batchId`
        # @return [Fixnum]
        attr_accessor :batch_id
      
        # The ID of the managing account.
        # Corresponds to the JSON property `merchantId`
        # @return [String]
        attr_accessor :merchant_id
      
        # 
        # Corresponds to the JSON property `method`
        # @return [String]
        attr_accessor :method_prop
      
        # The ID of the product whose status to get.
        # Corresponds to the JSON property `productId`
        # @return [String]
        attr_accessor :product_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @batch_id = args[:batch_id] unless args[:batch_id].nil?
          @merchant_id = args[:merchant_id] unless args[:merchant_id].nil?
          @method_prop = args[:method_prop] unless args[:method_prop].nil?
          @product_id = args[:product_id] unless args[:product_id].nil?
        end
      end
      
      # 
      class ProductstatusesCustomBatchResponse
        include Google::Apis::Core::Hashable
      
        # The result of the execution of the batch requests.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::ContentV2::ProductstatusesCustomBatchResponseEntry>]
        attr_accessor :entries
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # productstatusesCustomBatchResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] unless args[:entries].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # A batch entry encoding a single non-batch productstatuses response.
      class ProductstatusesCustomBatchResponseEntry
        include Google::Apis::Core::Hashable
      
        # The ID of the request entry this entry responds to.
        # Corresponds to the JSON property `batchId`
        # @return [Fixnum]
        attr_accessor :batch_id
      
        # A list of errors returned by a failed batch entry.
        # Corresponds to the JSON property `errors`
        # @return [Google::Apis::ContentV2::Errors]
        attr_accessor :errors
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # productstatusesCustomBatchResponseEntry".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The status of a product, i.e., information about a product computed
        # asynchronously by the data quality analysis.
        # Corresponds to the JSON property `productStatus`
        # @return [Google::Apis::ContentV2::ProductStatus]
        attr_accessor :product_status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @batch_id = args[:batch_id] unless args[:batch_id].nil?
          @errors = args[:errors] unless args[:errors].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @product_status = args[:product_status] unless args[:product_status].nil?
        end
      end
      
      # 
      class ProductstatusesListResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # productstatusesListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The token for the retrieval of the next page of products statuses.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # 
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::ContentV2::ProductStatus>]
        attr_accessor :resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @resources = args[:resources] unless args[:resources].nil?
        end
      end
      
      # 
      class Weight
        include Google::Apis::Core::Hashable
      
        # The weight unit.
        # Corresponds to the JSON property `unit`
        # @return [String]
        attr_accessor :unit
      
        # The weight represented as a number.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @unit = args[:unit] unless args[:unit].nil?
          @value = args[:value] unless args[:value].nil?
        end
      end
    end
  end
end
