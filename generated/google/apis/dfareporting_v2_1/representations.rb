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
    module DfareportingV2_1
      
      class Account
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class AccountActiveAdSummary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class AccountPermission
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class AccountPermissionGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class AccountPermissionsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class AccountUserProfile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class AccountUserProfilesListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class AccountsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Activities
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Ad
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class AdSlot
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class AdsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Advertiser
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class AdvertiserGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class AdvertiserGroupsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class AdvertisersListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class AudienceSegment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class AudienceSegmentGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Browser
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class BrowsersListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Campaign
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class CampaignCreativeAssociation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class CampaignCreativeAssociationsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class CampaignsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ChangeLog
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ChangeLogsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class CitiesListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class City
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ClickTag
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ClickThroughUrl
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ClickThroughUrlSuffixProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class CompanionClickThroughOverride
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class CompatibleFields
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ConnectionType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ConnectionTypesListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ContentCategoriesListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ContentCategory
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class CountriesListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Country
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Creative
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class CreativeAsset
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class CreativeAssetId
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class CreativeAssetMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class CreativeAssignment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class CreativeCustomEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class CreativeField
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class CreativeFieldAssignment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class CreativeFieldValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class CreativeFieldValuesListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class CreativeFieldsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class CreativeGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class CreativeGroupAssignment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class CreativeGroupsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class CreativeOptimizationConfiguration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class CreativeRotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class CreativeSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class CreativesListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class CrossDimensionReachReportCompatibleFields
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class CustomRichMediaEvents
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class DateRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class DayPartTargeting
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class DefaultClickThroughEventTagProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class DeliverySchedule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class DfpSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Dimension
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class DimensionFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class DimensionValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class DimensionValueList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class DimensionValueRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class DirectorySite
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class DirectorySiteContact
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class DirectorySiteContactAssignment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class DirectorySiteContactsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class DirectorySiteSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class DirectorySitesListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class EventTag
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class EventTagOverride
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class EventTagsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class File
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class Urls
          class Representation < Google::Apis::Core::JsonRepresentation; end
        end
      end
      
      class FileList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Flight
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class GenerateTagResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class FloodlightActivitiesListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class FloodlightActivity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class FloodlightActivityDynamicTag
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class FloodlightActivityGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class FloodlightActivityGroupsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class FloodlightActivityPublisherDynamicTag
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class FloodlightConfiguration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class FloodlightConfigurationsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class FloodlightReportCompatibleFields
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class FrequencyCap
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class FsCommand
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class GeoTargeting
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class InventoryItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class InventoryItemsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class KeyValueTargetingExpression
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class LandingPage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class LandingPagesListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class LastModifiedInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListPopulationClause
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListPopulationRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListPopulationTerm
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListTargetingExpression
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class LookbackConfiguration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Metric
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Metro
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class MetrosListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class MobileCarrier
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class MobileCarriersListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ObjectFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class OffsetPosition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class OmnitureSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class OperatingSystem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class OperatingSystemVersion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class OperatingSystemVersionsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class OperatingSystemsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class OptimizationActivity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Order
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class OrderContact
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class OrderDocument
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class OrderDocumentsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class OrdersListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class PathToConversionReportCompatibleFields
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Placement
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class PlacementAssignment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class PlacementGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class PlacementGroupsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class PlacementStrategiesListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class PlacementStrategy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class PlacementTag
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class GenerateTagsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class PlacementsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class PlatformType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class PlatformTypesListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class PopupWindowProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class PostalCode
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class PostalCodesListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Pricing
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class PricingSchedule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class PricingSchedulePricingPeriod
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ProgrammaticSetting
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Project
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ProjectsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ReachReportCompatibleFields
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Recipient
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Region
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class RegionsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class RemarketingList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class RemarketingListShare
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class RemarketingListsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Report
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class Criteria
          class Representation < Google::Apis::Core::JsonRepresentation; end
        end
        
        class CrossDimensionReachCriteria
          class Representation < Google::Apis::Core::JsonRepresentation; end
        end
        
        class Delivery
          class Representation < Google::Apis::Core::JsonRepresentation; end
        end
        
        class FloodlightCriteria
          class Representation < Google::Apis::Core::JsonRepresentation; end
          
          class ReportProperties
            class Representation < Google::Apis::Core::JsonRepresentation; end
          end
        end
        
        class PathToConversionCriteria
          class Representation < Google::Apis::Core::JsonRepresentation; end
          
          class ReportProperties
            class Representation < Google::Apis::Core::JsonRepresentation; end
          end
        end
        
        class ReachCriteria
          class Representation < Google::Apis::Core::JsonRepresentation; end
        end
        
        class Schedule
          class Representation < Google::Apis::Core::JsonRepresentation; end
        end
      end
      
      class ReportCompatibleFields
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ReportList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Configuration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class RichMediaExitOverride
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Site
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class SiteContact
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class SiteSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class SitesListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Size
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class SizesListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class SortedDimension
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Subaccount
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class SubaccountsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class TagData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class TagSetting
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class TagSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class TargetWindow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class TargetableRemarketingList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class TargetableRemarketingListsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class TechnologyTargeting
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ThirdPartyTrackingUrl
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class UserDefinedVariableConfiguration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class UserProfile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class UserProfileList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class UserRole
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class UserRolePermission
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class UserRolePermissionGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class UserRolePermissionGroupsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class UserRolePermissionsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class UserRolesListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      # @private
      class Account
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :account_permission_ids, as: 'accountPermissionIds'
          property :account_profile, as: 'accountProfile'
          property :active, as: 'active'
          property :active_ads_limit_tier, as: 'activeAdsLimitTier'
          property :active_view_opt_out, as: 'activeViewOptOut'
          collection :available_permission_ids, as: 'availablePermissionIds'
          property :comscore_vce_enabled, as: 'comscoreVceEnabled'
          property :country_id, as: 'countryId'
          property :currency_id, as: 'currencyId'
          property :default_creative_size_id, as: 'defaultCreativeSizeId'
          property :description, as: 'description'
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :locale, as: 'locale'
          property :maximum_image_size, as: 'maximumImageSize'
          property :name, as: 'name'
          property :nielsen_ocr_enabled, as: 'nielsenOcrEnabled'
          property :reports_configuration, as: 'reportsConfiguration', class: Google::Apis::DfareportingV2_1::Configuration, decorator: Google::Apis::DfareportingV2_1::Configuration::Representation
      
          property :teaser_size_limit, as: 'teaserSizeLimit'
        end
      end
      
      # @private
      class AccountActiveAdSummary
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, as: 'accountId'
          property :active_ads, as: 'activeAds'
          property :active_ads_limit_tier, as: 'activeAdsLimitTier'
          property :available_ads, as: 'availableAds'
          property :kind, as: 'kind'
        end
      end
      
      # @private
      class AccountPermission
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :account_profiles, as: 'accountProfiles'
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :level, as: 'level'
          property :name, as: 'name'
          property :permission_group_id, as: 'permissionGroupId'
        end
      end
      
      # @private
      class AccountPermissionGroup
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :name, as: 'name'
        end
      end
      
      # @private
      class ListResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :account_permission_groups, as: 'accountPermissionGroups', class: Google::Apis::DfareportingV2_1::AccountPermissionGroup, decorator: Google::Apis::DfareportingV2_1::AccountPermissionGroup::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      # @private
      class AccountPermissionsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :account_permissions, as: 'accountPermissions', class: Google::Apis::DfareportingV2_1::AccountPermission, decorator: Google::Apis::DfareportingV2_1::AccountPermission::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      # @private
      class AccountUserProfile
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, as: 'accountId'
          property :active, as: 'active'
          property :advertiser_filter, as: 'advertiserFilter', class: Google::Apis::DfareportingV2_1::ObjectFilter, decorator: Google::Apis::DfareportingV2_1::ObjectFilter::Representation
      
          property :campaign_filter, as: 'campaignFilter', class: Google::Apis::DfareportingV2_1::ObjectFilter, decorator: Google::Apis::DfareportingV2_1::ObjectFilter::Representation
      
          property :comments, as: 'comments'
          property :email, as: 'email'
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :locale, as: 'locale'
          property :name, as: 'name'
          property :site_filter, as: 'siteFilter', class: Google::Apis::DfareportingV2_1::ObjectFilter, decorator: Google::Apis::DfareportingV2_1::ObjectFilter::Representation
      
          property :subaccount_id, as: 'subaccountId'
          property :trafficker_type, as: 'traffickerType'
          property :user_access_type, as: 'userAccessType'
          property :user_role_filter, as: 'userRoleFilter', class: Google::Apis::DfareportingV2_1::ObjectFilter, decorator: Google::Apis::DfareportingV2_1::ObjectFilter::Representation
      
          property :user_role_id, as: 'userRoleId'
        end
      end
      
      # @private
      class AccountUserProfilesListResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :account_user_profiles, as: 'accountUserProfiles', class: Google::Apis::DfareportingV2_1::AccountUserProfile, decorator: Google::Apis::DfareportingV2_1::AccountUserProfile::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      # @private
      class AccountsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :accounts, as: 'accounts', class: Google::Apis::DfareportingV2_1::Account, decorator: Google::Apis::DfareportingV2_1::Account::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      # @private
      class Activities
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :filters, as: 'filters', class: Google::Apis::DfareportingV2_1::DimensionValue, decorator: Google::Apis::DfareportingV2_1::DimensionValue::Representation
      
          property :kind, as: 'kind'
          collection :metric_names, as: 'metricNames'
        end
      end
      
      # @private
      class Ad
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, as: 'accountId'
          property :active, as: 'active'
          property :advertiser_id, as: 'advertiserId'
          property :advertiser_id_dimension_value, as: 'advertiserIdDimensionValue', class: Google::Apis::DfareportingV2_1::DimensionValue, decorator: Google::Apis::DfareportingV2_1::DimensionValue::Representation
      
          property :archived, as: 'archived'
          property :audience_segment_id, as: 'audienceSegmentId'
          property :campaign_id, as: 'campaignId'
          property :campaign_id_dimension_value, as: 'campaignIdDimensionValue', class: Google::Apis::DfareportingV2_1::DimensionValue, decorator: Google::Apis::DfareportingV2_1::DimensionValue::Representation
      
          property :click_through_url, as: 'clickThroughUrl', class: Google::Apis::DfareportingV2_1::ClickThroughUrl, decorator: Google::Apis::DfareportingV2_1::ClickThroughUrl::Representation
      
          property :click_through_url_suffix_properties, as: 'clickThroughUrlSuffixProperties', class: Google::Apis::DfareportingV2_1::ClickThroughUrlSuffixProperties, decorator: Google::Apis::DfareportingV2_1::ClickThroughUrlSuffixProperties::Representation
      
          property :comments, as: 'comments'
          property :compatibility, as: 'compatibility'
          property :create_info, as: 'createInfo', class: Google::Apis::DfareportingV2_1::LastModifiedInfo, decorator: Google::Apis::DfareportingV2_1::LastModifiedInfo::Representation
      
          collection :creative_group_assignments, as: 'creativeGroupAssignments', class: Google::Apis::DfareportingV2_1::CreativeGroupAssignment, decorator: Google::Apis::DfareportingV2_1::CreativeGroupAssignment::Representation
      
          property :creative_rotation, as: 'creativeRotation', class: Google::Apis::DfareportingV2_1::CreativeRotation, decorator: Google::Apis::DfareportingV2_1::CreativeRotation::Representation
      
          property :day_part_targeting, as: 'dayPartTargeting', class: Google::Apis::DfareportingV2_1::DayPartTargeting, decorator: Google::Apis::DfareportingV2_1::DayPartTargeting::Representation
      
          property :default_click_through_event_tag_properties, as: 'defaultClickThroughEventTagProperties', class: Google::Apis::DfareportingV2_1::DefaultClickThroughEventTagProperties, decorator: Google::Apis::DfareportingV2_1::DefaultClickThroughEventTagProperties::Representation
      
          property :delivery_schedule, as: 'deliverySchedule', class: Google::Apis::DfareportingV2_1::DeliverySchedule, decorator: Google::Apis::DfareportingV2_1::DeliverySchedule::Representation
      
          property :dynamic_click_tracker, as: 'dynamicClickTracker'
          property :end_time, as: 'endTime', type: DateTime
      
          collection :event_tag_overrides, as: 'eventTagOverrides', class: Google::Apis::DfareportingV2_1::EventTagOverride, decorator: Google::Apis::DfareportingV2_1::EventTagOverride::Representation
      
          property :geo_targeting, as: 'geoTargeting', class: Google::Apis::DfareportingV2_1::GeoTargeting, decorator: Google::Apis::DfareportingV2_1::GeoTargeting::Representation
      
          property :id, as: 'id'
          property :id_dimension_value, as: 'idDimensionValue', class: Google::Apis::DfareportingV2_1::DimensionValue, decorator: Google::Apis::DfareportingV2_1::DimensionValue::Representation
      
          property :key_value_targeting_expression, as: 'keyValueTargetingExpression', class: Google::Apis::DfareportingV2_1::KeyValueTargetingExpression, decorator: Google::Apis::DfareportingV2_1::KeyValueTargetingExpression::Representation
      
          property :kind, as: 'kind'
          property :last_modified_info, as: 'lastModifiedInfo', class: Google::Apis::DfareportingV2_1::LastModifiedInfo, decorator: Google::Apis::DfareportingV2_1::LastModifiedInfo::Representation
      
          property :name, as: 'name'
          collection :placement_assignments, as: 'placementAssignments', class: Google::Apis::DfareportingV2_1::PlacementAssignment, decorator: Google::Apis::DfareportingV2_1::PlacementAssignment::Representation
      
          property :remarketing_list_expression, as: 'remarketing_list_expression', class: Google::Apis::DfareportingV2_1::ListTargetingExpression, decorator: Google::Apis::DfareportingV2_1::ListTargetingExpression::Representation
      
          property :size, as: 'size', class: Google::Apis::DfareportingV2_1::Size, decorator: Google::Apis::DfareportingV2_1::Size::Representation
      
          property :ssl_compliant, as: 'sslCompliant'
          property :ssl_required, as: 'sslRequired'
          property :start_time, as: 'startTime', type: DateTime
      
          property :subaccount_id, as: 'subaccountId'
          property :technology_targeting, as: 'technologyTargeting', class: Google::Apis::DfareportingV2_1::TechnologyTargeting, decorator: Google::Apis::DfareportingV2_1::TechnologyTargeting::Representation
      
          property :type, as: 'type'
        end
      end
      
      # @private
      class AdSlot
        class Representation < Google::Apis::Core::JsonRepresentation
          property :comment, as: 'comment'
          property :compatibility, as: 'compatibility'
          property :height, as: 'height'
          property :linked_placement_id, as: 'linkedPlacementId'
          property :name, as: 'name'
          property :payment_source_type, as: 'paymentSourceType'
          property :primary, as: 'primary'
          property :width, as: 'width'
        end
      end
      
      # @private
      class AdsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :ads, as: 'ads', class: Google::Apis::DfareportingV2_1::Ad, decorator: Google::Apis::DfareportingV2_1::Ad::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      # @private
      class Advertiser
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, as: 'accountId'
          property :advertiser_group_id, as: 'advertiserGroupId'
          property :click_through_url_suffix, as: 'clickThroughUrlSuffix'
          property :default_click_through_event_tag_id, as: 'defaultClickThroughEventTagId'
          property :default_email, as: 'defaultEmail'
          property :floodlight_configuration_id, as: 'floodlightConfigurationId'
          property :floodlight_configuration_id_dimension_value, as: 'floodlightConfigurationIdDimensionValue', class: Google::Apis::DfareportingV2_1::DimensionValue, decorator: Google::Apis::DfareportingV2_1::DimensionValue::Representation
      
          property :id, as: 'id'
          property :id_dimension_value, as: 'idDimensionValue', class: Google::Apis::DfareportingV2_1::DimensionValue, decorator: Google::Apis::DfareportingV2_1::DimensionValue::Representation
      
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :original_floodlight_configuration_id, as: 'originalFloodlightConfigurationId'
          property :status, as: 'status'
          property :subaccount_id, as: 'subaccountId'
        end
      end
      
      # @private
      class AdvertiserGroup
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, as: 'accountId'
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :name, as: 'name'
        end
      end
      
      # @private
      class AdvertiserGroupsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :advertiser_groups, as: 'advertiserGroups', class: Google::Apis::DfareportingV2_1::AdvertiserGroup, decorator: Google::Apis::DfareportingV2_1::AdvertiserGroup::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      # @private
      class AdvertisersListResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :advertisers, as: 'advertisers', class: Google::Apis::DfareportingV2_1::Advertiser, decorator: Google::Apis::DfareportingV2_1::Advertiser::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      # @private
      class AudienceSegment
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allocation, as: 'allocation'
          property :id, as: 'id'
          property :name, as: 'name'
        end
      end
      
      # @private
      class AudienceSegmentGroup
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audience_segments, as: 'audienceSegments', class: Google::Apis::DfareportingV2_1::AudienceSegment, decorator: Google::Apis::DfareportingV2_1::AudienceSegment::Representation
      
          property :id, as: 'id'
          property :name, as: 'name'
        end
      end
      
      # @private
      class Browser
        class Representation < Google::Apis::Core::JsonRepresentation
          property :browser_version_id, as: 'browserVersionId'
          property :dart_id, as: 'dartId'
          property :kind, as: 'kind'
          property :major_version, as: 'majorVersion'
          property :minor_version, as: 'minorVersion'
          property :name, as: 'name'
        end
      end
      
      # @private
      class BrowsersListResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :browsers, as: 'browsers', class: Google::Apis::DfareportingV2_1::Browser, decorator: Google::Apis::DfareportingV2_1::Browser::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      # @private
      class Campaign
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, as: 'accountId'
          collection :additional_creative_optimization_configurations, as: 'additionalCreativeOptimizationConfigurations', class: Google::Apis::DfareportingV2_1::CreativeOptimizationConfiguration, decorator: Google::Apis::DfareportingV2_1::CreativeOptimizationConfiguration::Representation
      
          property :advertiser_group_id, as: 'advertiserGroupId'
          property :advertiser_id, as: 'advertiserId'
          property :advertiser_id_dimension_value, as: 'advertiserIdDimensionValue', class: Google::Apis::DfareportingV2_1::DimensionValue, decorator: Google::Apis::DfareportingV2_1::DimensionValue::Representation
      
          property :archived, as: 'archived'
          collection :audience_segment_groups, as: 'audienceSegmentGroups', class: Google::Apis::DfareportingV2_1::AudienceSegmentGroup, decorator: Google::Apis::DfareportingV2_1::AudienceSegmentGroup::Representation
      
          property :billing_invoice_code, as: 'billingInvoiceCode'
          property :click_through_url_suffix_properties, as: 'clickThroughUrlSuffixProperties', class: Google::Apis::DfareportingV2_1::ClickThroughUrlSuffixProperties, decorator: Google::Apis::DfareportingV2_1::ClickThroughUrlSuffixProperties::Representation
      
          property :comment, as: 'comment'
          property :comscore_vce_enabled, as: 'comscoreVceEnabled'
          property :create_info, as: 'createInfo', class: Google::Apis::DfareportingV2_1::LastModifiedInfo, decorator: Google::Apis::DfareportingV2_1::LastModifiedInfo::Representation
      
          collection :creative_group_ids, as: 'creativeGroupIds'
          property :creative_optimization_configuration, as: 'creativeOptimizationConfiguration', class: Google::Apis::DfareportingV2_1::CreativeOptimizationConfiguration, decorator: Google::Apis::DfareportingV2_1::CreativeOptimizationConfiguration::Representation
      
          property :default_click_through_event_tag_properties, as: 'defaultClickThroughEventTagProperties', class: Google::Apis::DfareportingV2_1::DefaultClickThroughEventTagProperties, decorator: Google::Apis::DfareportingV2_1::DefaultClickThroughEventTagProperties::Representation
      
          property :end_date, as: 'endDate', type: Date
      
          collection :event_tag_overrides, as: 'eventTagOverrides', class: Google::Apis::DfareportingV2_1::EventTagOverride, decorator: Google::Apis::DfareportingV2_1::EventTagOverride::Representation
      
          property :external_id, as: 'externalId'
          property :id, as: 'id'
          property :id_dimension_value, as: 'idDimensionValue', class: Google::Apis::DfareportingV2_1::DimensionValue, decorator: Google::Apis::DfareportingV2_1::DimensionValue::Representation
      
          property :kind, as: 'kind'
          property :last_modified_info, as: 'lastModifiedInfo', class: Google::Apis::DfareportingV2_1::LastModifiedInfo, decorator: Google::Apis::DfareportingV2_1::LastModifiedInfo::Representation
      
          property :lookback_configuration, as: 'lookbackConfiguration', class: Google::Apis::DfareportingV2_1::LookbackConfiguration, decorator: Google::Apis::DfareportingV2_1::LookbackConfiguration::Representation
      
          property :name, as: 'name'
          property :nielsen_ocr_enabled, as: 'nielsenOcrEnabled'
          property :start_date, as: 'startDate', type: Date
      
          property :subaccount_id, as: 'subaccountId'
          collection :trafficker_emails, as: 'traffickerEmails'
        end
      end
      
      # @private
      class CampaignCreativeAssociation
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creative_id, as: 'creativeId'
          property :kind, as: 'kind'
        end
      end
      
      # @private
      class CampaignCreativeAssociationsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :campaign_creative_associations, as: 'campaignCreativeAssociations', class: Google::Apis::DfareportingV2_1::CampaignCreativeAssociation, decorator: Google::Apis::DfareportingV2_1::CampaignCreativeAssociation::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      # @private
      class CampaignsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :campaigns, as: 'campaigns', class: Google::Apis::DfareportingV2_1::Campaign, decorator: Google::Apis::DfareportingV2_1::Campaign::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      # @private
      class ChangeLog
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, as: 'accountId'
          property :action, as: 'action'
          property :change_time, as: 'changeTime', type: DateTime
      
          property :field_name, as: 'fieldName'
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :new_value, as: 'newValue'
          property :object_id_prop, as: 'objectId'
          property :object_type, as: 'objectType'
          property :old_value, as: 'oldValue'
          property :subaccount_id, as: 'subaccountId'
          property :transaction_id, as: 'transactionId'
          property :user_profile_id, as: 'userProfileId'
          property :user_profile_name, as: 'userProfileName'
        end
      end
      
      # @private
      class ChangeLogsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :change_logs, as: 'changeLogs', class: Google::Apis::DfareportingV2_1::ChangeLog, decorator: Google::Apis::DfareportingV2_1::ChangeLog::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      # @private
      class CitiesListResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :cities, as: 'cities', class: Google::Apis::DfareportingV2_1::City, decorator: Google::Apis::DfareportingV2_1::City::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      # @private
      class City
        class Representation < Google::Apis::Core::JsonRepresentation
          property :country_code, as: 'countryCode'
          property :country_dart_id, as: 'countryDartId'
          property :dart_id, as: 'dartId'
          property :kind, as: 'kind'
          property :metro_code, as: 'metroCode'
          property :metro_dma_id, as: 'metroDmaId'
          property :name, as: 'name'
          property :region_code, as: 'regionCode'
          property :region_dart_id, as: 'regionDartId'
        end
      end
      
      # @private
      class ClickTag
        class Representation < Google::Apis::Core::JsonRepresentation
          property :event_name, as: 'eventName'
          property :name, as: 'name'
          property :value, as: 'value'
        end
      end
      
      # @private
      class ClickThroughUrl
        class Representation < Google::Apis::Core::JsonRepresentation
          property :custom_click_through_url, as: 'customClickThroughUrl'
          property :default_landing_page, as: 'defaultLandingPage'
          property :landing_page_id, as: 'landingPageId'
        end
      end
      
      # @private
      class ClickThroughUrlSuffixProperties
        class Representation < Google::Apis::Core::JsonRepresentation
          property :click_through_url_suffix, as: 'clickThroughUrlSuffix'
          property :override_inherited_suffix, as: 'overrideInheritedSuffix'
        end
      end
      
      # @private
      class CompanionClickThroughOverride
        class Representation < Google::Apis::Core::JsonRepresentation
          property :click_through_url, as: 'clickThroughUrl', class: Google::Apis::DfareportingV2_1::ClickThroughUrl, decorator: Google::Apis::DfareportingV2_1::ClickThroughUrl::Representation
      
          property :creative_id, as: 'creativeId'
        end
      end
      
      # @private
      class CompatibleFields
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cross_dimension_reach_report_compatible_fields, as: 'crossDimensionReachReportCompatibleFields', class: Google::Apis::DfareportingV2_1::CrossDimensionReachReportCompatibleFields, decorator: Google::Apis::DfareportingV2_1::CrossDimensionReachReportCompatibleFields::Representation
      
          property :floodlight_report_compatible_fields, as: 'floodlightReportCompatibleFields', class: Google::Apis::DfareportingV2_1::FloodlightReportCompatibleFields, decorator: Google::Apis::DfareportingV2_1::FloodlightReportCompatibleFields::Representation
      
          property :kind, as: 'kind'
          property :path_to_conversion_report_compatible_fields, as: 'pathToConversionReportCompatibleFields', class: Google::Apis::DfareportingV2_1::PathToConversionReportCompatibleFields, decorator: Google::Apis::DfareportingV2_1::PathToConversionReportCompatibleFields::Representation
      
          property :reach_report_compatible_fields, as: 'reachReportCompatibleFields', class: Google::Apis::DfareportingV2_1::ReachReportCompatibleFields, decorator: Google::Apis::DfareportingV2_1::ReachReportCompatibleFields::Representation
      
          property :report_compatible_fields, as: 'reportCompatibleFields', class: Google::Apis::DfareportingV2_1::ReportCompatibleFields, decorator: Google::Apis::DfareportingV2_1::ReportCompatibleFields::Representation
      
        end
      end
      
      # @private
      class ConnectionType
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :name, as: 'name'
        end
      end
      
      # @private
      class ConnectionTypesListResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :connection_types, as: 'connectionTypes', class: Google::Apis::DfareportingV2_1::ConnectionType, decorator: Google::Apis::DfareportingV2_1::ConnectionType::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      # @private
      class ContentCategoriesListResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :content_categories, as: 'contentCategories', class: Google::Apis::DfareportingV2_1::ContentCategory, decorator: Google::Apis::DfareportingV2_1::ContentCategory::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      # @private
      class ContentCategory
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, as: 'accountId'
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :name, as: 'name'
        end
      end
      
      # @private
      class CountriesListResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :countries, as: 'countries', class: Google::Apis::DfareportingV2_1::Country, decorator: Google::Apis::DfareportingV2_1::Country::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      # @private
      class Country
        class Representation < Google::Apis::Core::JsonRepresentation
          property :country_code, as: 'countryCode'
          property :dart_id, as: 'dartId'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :ssl_enabled, as: 'sslEnabled'
        end
      end
      
      # @private
      class Creative
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, as: 'accountId'
          property :active, as: 'active'
          property :ad_parameters, as: 'adParameters'
          collection :ad_tag_keys, as: 'adTagKeys'
          property :advertiser_id, as: 'advertiserId'
          property :allow_script_access, as: 'allowScriptAccess'
          property :archived, as: 'archived'
          property :artwork_type, as: 'artworkType'
          property :authoring_tool, as: 'authoringTool'
          property :auto_advance_images, as: 'auto_advance_images'
          property :background_color, as: 'backgroundColor'
          property :backup_image_click_through_url, as: 'backupImageClickThroughUrl'
          collection :backup_image_features, as: 'backupImageFeatures'
          property :backup_image_reporting_label, as: 'backupImageReportingLabel'
          property :backup_image_target_window, as: 'backupImageTargetWindow', class: Google::Apis::DfareportingV2_1::TargetWindow, decorator: Google::Apis::DfareportingV2_1::TargetWindow::Representation
      
          collection :click_tags, as: 'clickTags', class: Google::Apis::DfareportingV2_1::ClickTag, decorator: Google::Apis::DfareportingV2_1::ClickTag::Representation
      
          property :commercial_id, as: 'commercialId'
          collection :companion_creatives, as: 'companionCreatives'
          collection :compatibility, as: 'compatibility'
          property :convert_flash_to_html5, as: 'convertFlashToHtml5'
          collection :counter_custom_events, as: 'counterCustomEvents', class: Google::Apis::DfareportingV2_1::CreativeCustomEvent, decorator: Google::Apis::DfareportingV2_1::CreativeCustomEvent::Representation
      
          collection :creative_assets, as: 'creativeAssets', class: Google::Apis::DfareportingV2_1::CreativeAsset, decorator: Google::Apis::DfareportingV2_1::CreativeAsset::Representation
      
          collection :creative_field_assignments, as: 'creativeFieldAssignments', class: Google::Apis::DfareportingV2_1::CreativeFieldAssignment, decorator: Google::Apis::DfareportingV2_1::CreativeFieldAssignment::Representation
      
          collection :custom_key_values, as: 'customKeyValues'
          collection :exit_custom_events, as: 'exitCustomEvents', class: Google::Apis::DfareportingV2_1::CreativeCustomEvent, decorator: Google::Apis::DfareportingV2_1::CreativeCustomEvent::Representation
      
          property :fs_command, as: 'fsCommand', class: Google::Apis::DfareportingV2_1::FsCommand, decorator: Google::Apis::DfareportingV2_1::FsCommand::Representation
      
          property :html_code, as: 'htmlCode'
          property :html_code_locked, as: 'htmlCodeLocked'
          property :id, as: 'id'
          property :id_dimension_value, as: 'idDimensionValue', class: Google::Apis::DfareportingV2_1::DimensionValue, decorator: Google::Apis::DfareportingV2_1::DimensionValue::Representation
      
          property :kind, as: 'kind'
          property :last_modified_info, as: 'lastModifiedInfo', class: Google::Apis::DfareportingV2_1::LastModifiedInfo, decorator: Google::Apis::DfareportingV2_1::LastModifiedInfo::Representation
      
          property :latest_trafficked_creative_id, as: 'latestTraffickedCreativeId'
          property :name, as: 'name'
          property :override_css, as: 'overrideCss'
          property :redirect_url, as: 'redirectUrl'
          property :rendering_id, as: 'renderingId'
          property :rendering_id_dimension_value, as: 'renderingIdDimensionValue', class: Google::Apis::DfareportingV2_1::DimensionValue, decorator: Google::Apis::DfareportingV2_1::DimensionValue::Representation
      
          property :required_flash_plugin_version, as: 'requiredFlashPluginVersion'
          property :required_flash_version, as: 'requiredFlashVersion'
          property :size, as: 'size', class: Google::Apis::DfareportingV2_1::Size, decorator: Google::Apis::DfareportingV2_1::Size::Representation
      
          property :skippable, as: 'skippable'
          property :ssl_compliant, as: 'sslCompliant'
          property :studio_advertiser_id, as: 'studioAdvertiserId'
          property :studio_creative_id, as: 'studioCreativeId'
          property :studio_trafficked_creative_id, as: 'studioTraffickedCreativeId'
          property :subaccount_id, as: 'subaccountId'
          property :third_party_backup_image_impressions_url, as: 'thirdPartyBackupImageImpressionsUrl'
          property :third_party_rich_media_impressions_url, as: 'thirdPartyRichMediaImpressionsUrl'
          collection :third_party_urls, as: 'thirdPartyUrls', class: Google::Apis::DfareportingV2_1::ThirdPartyTrackingUrl, decorator: Google::Apis::DfareportingV2_1::ThirdPartyTrackingUrl::Representation
      
          collection :timer_custom_events, as: 'timerCustomEvents', class: Google::Apis::DfareportingV2_1::CreativeCustomEvent, decorator: Google::Apis::DfareportingV2_1::CreativeCustomEvent::Representation
      
          property :total_file_size, as: 'totalFileSize'
          property :type, as: 'type'
          property :version, as: 'version'
          property :video_description, as: 'videoDescription'
          property :video_duration, as: 'videoDuration'
        end
      end
      
      # @private
      class CreativeAsset
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action_script3, as: 'actionScript3'
          property :active, as: 'active'
          property :alignment, as: 'alignment'
          property :artwork_type, as: 'artworkType'
          property :asset_identifier, as: 'assetIdentifier', class: Google::Apis::DfareportingV2_1::CreativeAssetId, decorator: Google::Apis::DfareportingV2_1::CreativeAssetId::Representation
      
          property :backup_image_exit, as: 'backupImageExit', class: Google::Apis::DfareportingV2_1::CreativeCustomEvent, decorator: Google::Apis::DfareportingV2_1::CreativeCustomEvent::Representation
      
          property :bit_rate, as: 'bitRate'
          property :child_asset_type, as: 'childAssetType'
          property :collapsed_size, as: 'collapsedSize', class: Google::Apis::DfareportingV2_1::Size, decorator: Google::Apis::DfareportingV2_1::Size::Representation
      
          property :custom_start_time_value, as: 'customStartTimeValue'
          collection :detected_features, as: 'detectedFeatures'
          property :display_type, as: 'displayType'
          property :duration, as: 'duration'
          property :duration_type, as: 'durationType'
          property :expanded_dimension, as: 'expandedDimension', class: Google::Apis::DfareportingV2_1::Size, decorator: Google::Apis::DfareportingV2_1::Size::Representation
      
          property :file_size, as: 'fileSize'
          property :flash_version, as: 'flashVersion'
          property :hide_flash_objects, as: 'hideFlashObjects'
          property :hide_selection_boxes, as: 'hideSelectionBoxes'
          property :horizontally_locked, as: 'horizontallyLocked'
          property :id, as: 'id'
          property :mime_type, as: 'mimeType'
          property :offset, as: 'offset', class: Google::Apis::DfareportingV2_1::OffsetPosition, decorator: Google::Apis::DfareportingV2_1::OffsetPosition::Representation
      
          property :original_backup, as: 'originalBackup'
          property :position, as: 'position', class: Google::Apis::DfareportingV2_1::OffsetPosition, decorator: Google::Apis::DfareportingV2_1::OffsetPosition::Representation
      
          property :position_left_unit, as: 'positionLeftUnit'
          property :position_top_unit, as: 'positionTopUnit'
          property :progressive_serving_url, as: 'progressiveServingUrl'
          property :pushdown, as: 'pushdown'
          property :pushdown_duration, as: 'pushdownDuration'
          property :role, as: 'role'
          property :size, as: 'size', class: Google::Apis::DfareportingV2_1::Size, decorator: Google::Apis::DfareportingV2_1::Size::Representation
      
          property :ssl_compliant, as: 'sslCompliant'
          property :start_time_type, as: 'startTimeType'
          property :streaming_serving_url, as: 'streamingServingUrl'
          property :transparency, as: 'transparency'
          property :vertically_locked, as: 'verticallyLocked'
          property :video_duration, as: 'videoDuration'
          property :window_mode, as: 'windowMode'
          property :z_index, as: 'zIndex'
          property :zip_filename, as: 'zipFilename'
          property :zip_filesize, as: 'zipFilesize'
        end
      end
      
      # @private
      class CreativeAssetId
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :type, as: 'type'
        end
      end
      
      # @private
      class CreativeAssetMetadata
        class Representation < Google::Apis::Core::JsonRepresentation
          property :asset_identifier, as: 'assetIdentifier', class: Google::Apis::DfareportingV2_1::CreativeAssetId, decorator: Google::Apis::DfareportingV2_1::CreativeAssetId::Representation
      
          collection :click_tags, as: 'clickTags', class: Google::Apis::DfareportingV2_1::ClickTag, decorator: Google::Apis::DfareportingV2_1::ClickTag::Representation
      
          collection :detected_features, as: 'detectedFeatures'
          property :kind, as: 'kind'
          collection :warned_validation_rules, as: 'warnedValidationRules'
        end
      end
      
      # @private
      class CreativeAssignment
        class Representation < Google::Apis::Core::JsonRepresentation
          property :active, as: 'active'
          property :apply_event_tags, as: 'applyEventTags'
          property :click_through_url, as: 'clickThroughUrl', class: Google::Apis::DfareportingV2_1::ClickThroughUrl, decorator: Google::Apis::DfareportingV2_1::ClickThroughUrl::Representation
      
          collection :companion_creative_overrides, as: 'companionCreativeOverrides', class: Google::Apis::DfareportingV2_1::CompanionClickThroughOverride, decorator: Google::Apis::DfareportingV2_1::CompanionClickThroughOverride::Representation
      
          collection :creative_group_assignments, as: 'creativeGroupAssignments', class: Google::Apis::DfareportingV2_1::CreativeGroupAssignment, decorator: Google::Apis::DfareportingV2_1::CreativeGroupAssignment::Representation
      
          property :creative_id, as: 'creativeId'
          property :creative_id_dimension_value, as: 'creativeIdDimensionValue', class: Google::Apis::DfareportingV2_1::DimensionValue, decorator: Google::Apis::DfareportingV2_1::DimensionValue::Representation
      
          property :end_time, as: 'endTime', type: DateTime
      
          collection :rich_media_exit_overrides, as: 'richMediaExitOverrides', class: Google::Apis::DfareportingV2_1::RichMediaExitOverride, decorator: Google::Apis::DfareportingV2_1::RichMediaExitOverride::Representation
      
          property :sequence, as: 'sequence'
          property :ssl_compliant, as: 'sslCompliant'
          property :start_time, as: 'startTime', type: DateTime
      
          property :weight, as: 'weight'
        end
      end
      
      # @private
      class CreativeCustomEvent
        class Representation < Google::Apis::Core::JsonRepresentation
          property :active, as: 'active'
          property :advertiser_custom_event_name, as: 'advertiserCustomEventName'
          property :advertiser_custom_event_type, as: 'advertiserCustomEventType'
          property :artwork_label, as: 'artworkLabel'
          property :artwork_type, as: 'artworkType'
          property :exit_url, as: 'exitUrl'
          property :id, as: 'id'
          property :popup_window_properties, as: 'popupWindowProperties', class: Google::Apis::DfareportingV2_1::PopupWindowProperties, decorator: Google::Apis::DfareportingV2_1::PopupWindowProperties::Representation
      
          property :target_type, as: 'targetType'
          property :video_reporting_id, as: 'videoReportingId'
        end
      end
      
      # @private
      class CreativeField
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, as: 'accountId'
          property :advertiser_id, as: 'advertiserId'
          property :advertiser_id_dimension_value, as: 'advertiserIdDimensionValue', class: Google::Apis::DfareportingV2_1::DimensionValue, decorator: Google::Apis::DfareportingV2_1::DimensionValue::Representation
      
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :subaccount_id, as: 'subaccountId'
        end
      end
      
      # @private
      class CreativeFieldAssignment
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creative_field_id, as: 'creativeFieldId'
          property :creative_field_value_id, as: 'creativeFieldValueId'
        end
      end
      
      # @private
      class CreativeFieldValue
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :value, as: 'value'
        end
      end
      
      # @private
      class CreativeFieldValuesListResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :creative_field_values, as: 'creativeFieldValues', class: Google::Apis::DfareportingV2_1::CreativeFieldValue, decorator: Google::Apis::DfareportingV2_1::CreativeFieldValue::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      # @private
      class CreativeFieldsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :creative_fields, as: 'creativeFields', class: Google::Apis::DfareportingV2_1::CreativeField, decorator: Google::Apis::DfareportingV2_1::CreativeField::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      # @private
      class CreativeGroup
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, as: 'accountId'
          property :advertiser_id, as: 'advertiserId'
          property :advertiser_id_dimension_value, as: 'advertiserIdDimensionValue', class: Google::Apis::DfareportingV2_1::DimensionValue, decorator: Google::Apis::DfareportingV2_1::DimensionValue::Representation
      
          property :group_number, as: 'groupNumber'
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :subaccount_id, as: 'subaccountId'
        end
      end
      
      # @private
      class CreativeGroupAssignment
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creative_group_id, as: 'creativeGroupId'
          property :creative_group_number, as: 'creativeGroupNumber'
        end
      end
      
      # @private
      class CreativeGroupsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :creative_groups, as: 'creativeGroups', class: Google::Apis::DfareportingV2_1::CreativeGroup, decorator: Google::Apis::DfareportingV2_1::CreativeGroup::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      # @private
      class CreativeOptimizationConfiguration
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :name, as: 'name'
          collection :optimization_activitys, as: 'optimizationActivitys', class: Google::Apis::DfareportingV2_1::OptimizationActivity, decorator: Google::Apis::DfareportingV2_1::OptimizationActivity::Representation
      
          property :optimization_model, as: 'optimizationModel'
        end
      end
      
      # @private
      class CreativeRotation
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :creative_assignments, as: 'creativeAssignments', class: Google::Apis::DfareportingV2_1::CreativeAssignment, decorator: Google::Apis::DfareportingV2_1::CreativeAssignment::Representation
      
          property :creative_optimization_configuration_id, as: 'creativeOptimizationConfigurationId'
          property :type, as: 'type'
          property :weight_calculation_strategy, as: 'weightCalculationStrategy'
        end
      end
      
      # @private
      class CreativeSettings
        class Representation < Google::Apis::Core::JsonRepresentation
          property :i_frame_footer, as: 'iFrameFooter'
          property :i_frame_header, as: 'iFrameHeader'
        end
      end
      
      # @private
      class CreativesListResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :creatives, as: 'creatives', class: Google::Apis::DfareportingV2_1::Creative, decorator: Google::Apis::DfareportingV2_1::Creative::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      # @private
      class CrossDimensionReachReportCompatibleFields
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :breakdown, as: 'breakdown', class: Google::Apis::DfareportingV2_1::Dimension, decorator: Google::Apis::DfareportingV2_1::Dimension::Representation
      
          collection :dimension_filters, as: 'dimensionFilters', class: Google::Apis::DfareportingV2_1::Dimension, decorator: Google::Apis::DfareportingV2_1::Dimension::Representation
      
          property :kind, as: 'kind'
          collection :metrics, as: 'metrics', class: Google::Apis::DfareportingV2_1::Metric, decorator: Google::Apis::DfareportingV2_1::Metric::Representation
      
          collection :overlap_metrics, as: 'overlapMetrics', class: Google::Apis::DfareportingV2_1::Metric, decorator: Google::Apis::DfareportingV2_1::Metric::Representation
      
        end
      end
      
      # @private
      class CustomRichMediaEvents
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :filtered_event_ids, as: 'filteredEventIds', class: Google::Apis::DfareportingV2_1::DimensionValue, decorator: Google::Apis::DfareportingV2_1::DimensionValue::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      # @private
      class DateRange
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_date, as: 'endDate', type: Date
      
          property :kind, as: 'kind'
          property :relative_date_range, as: 'relativeDateRange'
          property :start_date, as: 'startDate', type: Date
      
        end
      end
      
      # @private
      class DayPartTargeting
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :days_of_week, as: 'daysOfWeek'
          collection :hours_of_day, as: 'hoursOfDay'
          property :user_local_time, as: 'userLocalTime'
        end
      end
      
      # @private
      class DefaultClickThroughEventTagProperties
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_click_through_event_tag_id, as: 'defaultClickThroughEventTagId'
          property :override_inherited_event_tag, as: 'overrideInheritedEventTag'
        end
      end
      
      # @private
      class DeliverySchedule
        class Representation < Google::Apis::Core::JsonRepresentation
          property :frequency_cap, as: 'frequencyCap', class: Google::Apis::DfareportingV2_1::FrequencyCap, decorator: Google::Apis::DfareportingV2_1::FrequencyCap::Representation
      
          property :hard_cutoff, as: 'hardCutoff'
          property :impression_ratio, as: 'impressionRatio'
          property :priority, as: 'priority'
        end
      end
      
      # @private
      class DfpSettings
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dfp_network_code, as: 'dfp_network_code'
          property :dfp_network_name, as: 'dfp_network_name'
          property :programmatic_placement_accepted, as: 'programmaticPlacementAccepted'
          property :pub_paid_placement_accepted, as: 'pubPaidPlacementAccepted'
          property :publisher_portal_only, as: 'publisherPortalOnly'
        end
      end
      
      # @private
      class Dimension
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :name, as: 'name'
        end
      end
      
      # @private
      class DimensionFilter
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dimension_name, as: 'dimensionName'
          property :kind, as: 'kind'
          property :value, as: 'value'
        end
      end
      
      # @private
      class DimensionValue
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dimension_name, as: 'dimensionName'
          property :etag, as: 'etag'
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :match_type, as: 'matchType'
          property :value, as: 'value'
        end
      end
      
      # @private
      class DimensionValueList
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          collection :items, as: 'items', class: Google::Apis::DfareportingV2_1::DimensionValue, decorator: Google::Apis::DfareportingV2_1::DimensionValue::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      # @private
      class DimensionValueRequest
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dimension_name, as: 'dimensionName'
          property :end_date, as: 'endDate', type: Date
      
          collection :filters, as: 'filters', class: Google::Apis::DfareportingV2_1::DimensionFilter, decorator: Google::Apis::DfareportingV2_1::DimensionFilter::Representation
      
          property :kind, as: 'kind'
          property :start_date, as: 'startDate', type: Date
      
        end
      end
      
      # @private
      class DirectorySite
        class Representation < Google::Apis::Core::JsonRepresentation
          property :active, as: 'active'
          collection :contact_assignments, as: 'contactAssignments', class: Google::Apis::DfareportingV2_1::DirectorySiteContactAssignment, decorator: Google::Apis::DfareportingV2_1::DirectorySiteContactAssignment::Representation
      
          property :country_id, as: 'countryId'
          property :currency_id, as: 'currencyId'
          property :description, as: 'description'
          property :id, as: 'id'
          property :id_dimension_value, as: 'idDimensionValue', class: Google::Apis::DfareportingV2_1::DimensionValue, decorator: Google::Apis::DfareportingV2_1::DimensionValue::Representation
      
          collection :inpage_tag_formats, as: 'inpageTagFormats'
          collection :interstitial_tag_formats, as: 'interstitialTagFormats'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :parent_id, as: 'parentId'
          property :settings, as: 'settings', class: Google::Apis::DfareportingV2_1::DirectorySiteSettings, decorator: Google::Apis::DfareportingV2_1::DirectorySiteSettings::Representation
      
          property :url, as: 'url'
        end
      end
      
      # @private
      class DirectorySiteContact
        class Representation < Google::Apis::Core::JsonRepresentation
          property :address, as: 'address'
          property :email, as: 'email'
          property :first_name, as: 'firstName'
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :last_name, as: 'lastName'
          property :phone, as: 'phone'
          property :role, as: 'role'
          property :title, as: 'title'
          property :type, as: 'type'
        end
      end
      
      # @private
      class DirectorySiteContactAssignment
        class Representation < Google::Apis::Core::JsonRepresentation
          property :contact_id, as: 'contactId'
          property :visibility, as: 'visibility'
        end
      end
      
      # @private
      class DirectorySiteContactsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :directory_site_contacts, as: 'directorySiteContacts', class: Google::Apis::DfareportingV2_1::DirectorySiteContact, decorator: Google::Apis::DfareportingV2_1::DirectorySiteContact::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      # @private
      class DirectorySiteSettings
        class Representation < Google::Apis::Core::JsonRepresentation
          property :active_view_opt_out, as: 'activeViewOptOut'
          property :dfp_settings, as: 'dfp_settings', class: Google::Apis::DfareportingV2_1::DfpSettings, decorator: Google::Apis::DfareportingV2_1::DfpSettings::Representation
      
          property :instream_video_placement_accepted, as: 'instream_video_placement_accepted'
          property :interstitial_placement_accepted, as: 'interstitialPlacementAccepted'
          property :nielsen_ocr_opt_out, as: 'nielsenOcrOptOut'
          property :verification_tag_opt_out, as: 'verificationTagOptOut'
          property :video_active_view_opt_out, as: 'videoActiveViewOptOut'
        end
      end
      
      # @private
      class DirectorySitesListResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :directory_sites, as: 'directorySites', class: Google::Apis::DfareportingV2_1::DirectorySite, decorator: Google::Apis::DfareportingV2_1::DirectorySite::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      # @private
      class EventTag
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, as: 'accountId'
          property :advertiser_id, as: 'advertiserId'
          property :advertiser_id_dimension_value, as: 'advertiserIdDimensionValue', class: Google::Apis::DfareportingV2_1::DimensionValue, decorator: Google::Apis::DfareportingV2_1::DimensionValue::Representation
      
          property :campaign_id, as: 'campaignId'
          property :campaign_id_dimension_value, as: 'campaignIdDimensionValue', class: Google::Apis::DfareportingV2_1::DimensionValue, decorator: Google::Apis::DfareportingV2_1::DimensionValue::Representation
      
          property :enabled_by_default, as: 'enabledByDefault'
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :site_filter_type, as: 'siteFilterType'
          collection :site_ids, as: 'siteIds'
          property :ssl_compliant, as: 'sslCompliant'
          property :status, as: 'status'
          property :subaccount_id, as: 'subaccountId'
          property :type, as: 'type'
          property :url, as: 'url'
          property :url_escape_levels, as: 'urlEscapeLevels'
        end
      end
      
      # @private
      class EventTagOverride
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
          property :id, as: 'id'
        end
      end
      
      # @private
      class EventTagsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :event_tags, as: 'eventTags', class: Google::Apis::DfareportingV2_1::EventTag, decorator: Google::Apis::DfareportingV2_1::EventTag::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      # @private
      class File
        class Representation < Google::Apis::Core::JsonRepresentation
          property :date_range, as: 'dateRange', class: Google::Apis::DfareportingV2_1::DateRange, decorator: Google::Apis::DfareportingV2_1::DateRange::Representation
      
          property :etag, as: 'etag'
          property :file_name, as: 'fileName'
          property :format, as: 'format'
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :last_modified_time, as: 'lastModifiedTime'
          property :report_id, as: 'reportId'
          property :status, as: 'status'
          property :urls, as: 'urls', class: Google::Apis::DfareportingV2_1::File::Urls, decorator: Google::Apis::DfareportingV2_1::File::Urls::Representation
      
        end
        
        # @private
        class Urls
          class Representation < Google::Apis::Core::JsonRepresentation
            property :api_url, as: 'apiUrl'
            property :browser_url, as: 'browserUrl'
          end
        end
      end
      
      # @private
      class FileList
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          collection :items, as: 'items', class: Google::Apis::DfareportingV2_1::File, decorator: Google::Apis::DfareportingV2_1::File::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      # @private
      class Flight
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_date, as: 'endDate', type: Date
      
          property :rate_or_cost, as: 'rateOrCost'
          property :start_date, as: 'startDate', type: Date
      
          property :units, as: 'units'
        end
      end
      
      # @private
      class GenerateTagResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :floodlight_activity_tag, as: 'floodlightActivityTag'
          property :kind, as: 'kind'
        end
      end
      
      # @private
      class FloodlightActivitiesListResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :floodlight_activities, as: 'floodlightActivities', class: Google::Apis::DfareportingV2_1::FloodlightActivity, decorator: Google::Apis::DfareportingV2_1::FloodlightActivity::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      # @private
      class FloodlightActivity
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, as: 'accountId'
          property :advertiser_id, as: 'advertiserId'
          property :advertiser_id_dimension_value, as: 'advertiserIdDimensionValue', class: Google::Apis::DfareportingV2_1::DimensionValue, decorator: Google::Apis::DfareportingV2_1::DimensionValue::Representation
      
          property :cache_busting_type, as: 'cacheBustingType'
          property :counting_method, as: 'countingMethod'
          collection :default_tags, as: 'defaultTags', class: Google::Apis::DfareportingV2_1::FloodlightActivityDynamicTag, decorator: Google::Apis::DfareportingV2_1::FloodlightActivityDynamicTag::Representation
      
          property :expected_url, as: 'expectedUrl'
          property :floodlight_activity_group_id, as: 'floodlightActivityGroupId'
          property :floodlight_activity_group_name, as: 'floodlightActivityGroupName'
          property :floodlight_activity_group_tag_string, as: 'floodlightActivityGroupTagString'
          property :floodlight_activity_group_type, as: 'floodlightActivityGroupType'
          property :floodlight_configuration_id, as: 'floodlightConfigurationId'
          property :floodlight_configuration_id_dimension_value, as: 'floodlightConfigurationIdDimensionValue', class: Google::Apis::DfareportingV2_1::DimensionValue, decorator: Google::Apis::DfareportingV2_1::DimensionValue::Representation
      
          property :hidden, as: 'hidden'
          property :id, as: 'id'
          property :id_dimension_value, as: 'idDimensionValue', class: Google::Apis::DfareportingV2_1::DimensionValue, decorator: Google::Apis::DfareportingV2_1::DimensionValue::Representation
      
          property :image_tag_enabled, as: 'imageTagEnabled'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :notes, as: 'notes'
          collection :publisher_tags, as: 'publisherTags', class: Google::Apis::DfareportingV2_1::FloodlightActivityPublisherDynamicTag, decorator: Google::Apis::DfareportingV2_1::FloodlightActivityPublisherDynamicTag::Representation
      
          property :secure, as: 'secure'
          property :ssl_compliant, as: 'sslCompliant'
          property :ssl_required, as: 'sslRequired'
          property :subaccount_id, as: 'subaccountId'
          property :tag_format, as: 'tagFormat'
          property :tag_string, as: 'tagString'
          collection :user_defined_variable_types, as: 'userDefinedVariableTypes'
        end
      end
      
      # @private
      class FloodlightActivityDynamicTag
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :name, as: 'name'
          property :tag, as: 'tag'
        end
      end
      
      # @private
      class FloodlightActivityGroup
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, as: 'accountId'
          property :advertiser_id, as: 'advertiserId'
          property :advertiser_id_dimension_value, as: 'advertiserIdDimensionValue', class: Google::Apis::DfareportingV2_1::DimensionValue, decorator: Google::Apis::DfareportingV2_1::DimensionValue::Representation
      
          property :floodlight_configuration_id, as: 'floodlightConfigurationId'
          property :floodlight_configuration_id_dimension_value, as: 'floodlightConfigurationIdDimensionValue', class: Google::Apis::DfareportingV2_1::DimensionValue, decorator: Google::Apis::DfareportingV2_1::DimensionValue::Representation
      
          property :id, as: 'id'
          property :id_dimension_value, as: 'idDimensionValue', class: Google::Apis::DfareportingV2_1::DimensionValue, decorator: Google::Apis::DfareportingV2_1::DimensionValue::Representation
      
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :subaccount_id, as: 'subaccountId'
          property :tag_string, as: 'tagString'
          property :type, as: 'type'
        end
      end
      
      # @private
      class FloodlightActivityGroupsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :floodlight_activity_groups, as: 'floodlightActivityGroups', class: Google::Apis::DfareportingV2_1::FloodlightActivityGroup, decorator: Google::Apis::DfareportingV2_1::FloodlightActivityGroup::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      # @private
      class FloodlightActivityPublisherDynamicTag
        class Representation < Google::Apis::Core::JsonRepresentation
          property :click_through, as: 'clickThrough'
          property :directory_site_id, as: 'directorySiteId'
          property :dynamic_tag, as: 'dynamicTag', class: Google::Apis::DfareportingV2_1::FloodlightActivityDynamicTag, decorator: Google::Apis::DfareportingV2_1::FloodlightActivityDynamicTag::Representation
      
          property :site_id, as: 'siteId'
          property :site_id_dimension_value, as: 'siteIdDimensionValue', class: Google::Apis::DfareportingV2_1::DimensionValue, decorator: Google::Apis::DfareportingV2_1::DimensionValue::Representation
      
          property :view_through, as: 'viewThrough'
        end
      end
      
      # @private
      class FloodlightConfiguration
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, as: 'accountId'
          property :advertiser_id, as: 'advertiserId'
          property :advertiser_id_dimension_value, as: 'advertiserIdDimensionValue', class: Google::Apis::DfareportingV2_1::DimensionValue, decorator: Google::Apis::DfareportingV2_1::DimensionValue::Representation
      
          property :analytics_data_sharing_enabled, as: 'analyticsDataSharingEnabled'
          property :exposure_to_conversion_enabled, as: 'exposureToConversionEnabled'
          property :first_day_of_week, as: 'firstDayOfWeek'
          property :id, as: 'id'
          property :id_dimension_value, as: 'idDimensionValue', class: Google::Apis::DfareportingV2_1::DimensionValue, decorator: Google::Apis::DfareportingV2_1::DimensionValue::Representation
      
          property :kind, as: 'kind'
          property :lookback_configuration, as: 'lookbackConfiguration', class: Google::Apis::DfareportingV2_1::LookbackConfiguration, decorator: Google::Apis::DfareportingV2_1::LookbackConfiguration::Representation
      
          property :natural_search_conversion_attribution_option, as: 'naturalSearchConversionAttributionOption'
          property :omniture_settings, as: 'omnitureSettings', class: Google::Apis::DfareportingV2_1::OmnitureSettings, decorator: Google::Apis::DfareportingV2_1::OmnitureSettings::Representation
      
          property :ssl_required, as: 'sslRequired'
          collection :standard_variable_types, as: 'standardVariableTypes'
          property :subaccount_id, as: 'subaccountId'
          property :tag_settings, as: 'tagSettings', class: Google::Apis::DfareportingV2_1::TagSettings, decorator: Google::Apis::DfareportingV2_1::TagSettings::Representation
      
          collection :user_defined_variable_configurations, as: 'userDefinedVariableConfigurations', class: Google::Apis::DfareportingV2_1::UserDefinedVariableConfiguration, decorator: Google::Apis::DfareportingV2_1::UserDefinedVariableConfiguration::Representation
      
        end
      end
      
      # @private
      class FloodlightConfigurationsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :floodlight_configurations, as: 'floodlightConfigurations', class: Google::Apis::DfareportingV2_1::FloodlightConfiguration, decorator: Google::Apis::DfareportingV2_1::FloodlightConfiguration::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      # @private
      class FloodlightReportCompatibleFields
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :dimension_filters, as: 'dimensionFilters', class: Google::Apis::DfareportingV2_1::Dimension, decorator: Google::Apis::DfareportingV2_1::Dimension::Representation
      
          collection :dimensions, as: 'dimensions', class: Google::Apis::DfareportingV2_1::Dimension, decorator: Google::Apis::DfareportingV2_1::Dimension::Representation
      
          property :kind, as: 'kind'
          collection :metrics, as: 'metrics', class: Google::Apis::DfareportingV2_1::Metric, decorator: Google::Apis::DfareportingV2_1::Metric::Representation
      
        end
      end
      
      # @private
      class FrequencyCap
        class Representation < Google::Apis::Core::JsonRepresentation
          property :duration, as: 'duration'
          property :impressions, as: 'impressions'
        end
      end
      
      # @private
      class FsCommand
        class Representation < Google::Apis::Core::JsonRepresentation
          property :left, as: 'left'
          property :position_option, as: 'positionOption'
          property :top, as: 'top'
          property :window_height, as: 'windowHeight'
          property :window_width, as: 'windowWidth'
        end
      end
      
      # @private
      class GeoTargeting
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :cities, as: 'cities', class: Google::Apis::DfareportingV2_1::City, decorator: Google::Apis::DfareportingV2_1::City::Representation
      
          collection :countries, as: 'countries', class: Google::Apis::DfareportingV2_1::Country, decorator: Google::Apis::DfareportingV2_1::Country::Representation
      
          property :exclude_countries, as: 'excludeCountries'
          collection :metros, as: 'metros', class: Google::Apis::DfareportingV2_1::Metro, decorator: Google::Apis::DfareportingV2_1::Metro::Representation
      
          collection :postal_codes, as: 'postalCodes', class: Google::Apis::DfareportingV2_1::PostalCode, decorator: Google::Apis::DfareportingV2_1::PostalCode::Representation
      
          collection :regions, as: 'regions', class: Google::Apis::DfareportingV2_1::Region, decorator: Google::Apis::DfareportingV2_1::Region::Representation
      
        end
      end
      
      # @private
      class InventoryItem
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, as: 'accountId'
          collection :ad_slots, as: 'adSlots', class: Google::Apis::DfareportingV2_1::AdSlot, decorator: Google::Apis::DfareportingV2_1::AdSlot::Representation
      
          property :advertiser_id, as: 'advertiserId'
          property :content_category_id, as: 'contentCategoryId'
          property :estimated_click_through_rate, as: 'estimatedClickThroughRate'
          property :estimated_conversion_rate, as: 'estimatedConversionRate'
          property :id, as: 'id'
          property :in_plan, as: 'inPlan'
          property :kind, as: 'kind'
          property :last_modified_info, as: 'lastModifiedInfo', class: Google::Apis::DfareportingV2_1::LastModifiedInfo, decorator: Google::Apis::DfareportingV2_1::LastModifiedInfo::Representation
      
          property :name, as: 'name'
          property :negotiation_channel_id, as: 'negotiationChannelId'
          property :order_id, as: 'orderId'
          property :placement_strategy_id, as: 'placementStrategyId'
          property :pricing, as: 'pricing', class: Google::Apis::DfareportingV2_1::Pricing, decorator: Google::Apis::DfareportingV2_1::Pricing::Representation
      
          property :project_id, as: 'projectId'
          property :rfp_id, as: 'rfpId'
          property :site_id, as: 'siteId'
          property :subaccount_id, as: 'subaccountId'
        end
      end
      
      # @private
      class InventoryItemsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :inventory_items, as: 'inventoryItems', class: Google::Apis::DfareportingV2_1::InventoryItem, decorator: Google::Apis::DfareportingV2_1::InventoryItem::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      # @private
      class KeyValueTargetingExpression
        class Representation < Google::Apis::Core::JsonRepresentation
          property :expression, as: 'expression'
        end
      end
      
      # @private
      class LandingPage
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default, as: 'default'
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :url, as: 'url'
        end
      end
      
      # @private
      class LandingPagesListResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          collection :landing_pages, as: 'landingPages', class: Google::Apis::DfareportingV2_1::LandingPage, decorator: Google::Apis::DfareportingV2_1::LandingPage::Representation
      
        end
      end
      
      # @private
      class LastModifiedInfo
        class Representation < Google::Apis::Core::JsonRepresentation
          property :time, as: 'time'
        end
      end
      
      # @private
      class ListPopulationClause
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :terms, as: 'terms', class: Google::Apis::DfareportingV2_1::ListPopulationTerm, decorator: Google::Apis::DfareportingV2_1::ListPopulationTerm::Representation
      
        end
      end
      
      # @private
      class ListPopulationRule
        class Representation < Google::Apis::Core::JsonRepresentation
          property :floodlight_activity_id, as: 'floodlightActivityId'
          property :floodlight_activity_name, as: 'floodlightActivityName'
          collection :list_population_clauses, as: 'listPopulationClauses', class: Google::Apis::DfareportingV2_1::ListPopulationClause, decorator: Google::Apis::DfareportingV2_1::ListPopulationClause::Representation
      
        end
      end
      
      # @private
      class ListPopulationTerm
        class Representation < Google::Apis::Core::JsonRepresentation
          property :contains, as: 'contains'
          property :negation, as: 'negation'
          property :operator, as: 'operator'
          property :remarketing_list_id, as: 'remarketingListId'
          property :type, as: 'type'
          property :value, as: 'value'
          property :variable_friendly_name, as: 'variableFriendlyName'
          property :variable_name, as: 'variableName'
        end
      end
      
      # @private
      class ListTargetingExpression
        class Representation < Google::Apis::Core::JsonRepresentation
          property :expression, as: 'expression'
        end
      end
      
      # @private
      class LookbackConfiguration
        class Representation < Google::Apis::Core::JsonRepresentation
          property :click_duration, as: 'clickDuration'
          property :post_impression_activities_duration, as: 'postImpressionActivitiesDuration'
        end
      end
      
      # @private
      class Metric
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :name, as: 'name'
        end
      end
      
      # @private
      class Metro
        class Representation < Google::Apis::Core::JsonRepresentation
          property :country_code, as: 'countryCode'
          property :country_dart_id, as: 'countryDartId'
          property :dart_id, as: 'dartId'
          property :dma_id, as: 'dmaId'
          property :kind, as: 'kind'
          property :metro_code, as: 'metroCode'
          property :name, as: 'name'
        end
      end
      
      # @private
      class MetrosListResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          collection :metros, as: 'metros', class: Google::Apis::DfareportingV2_1::Metro, decorator: Google::Apis::DfareportingV2_1::Metro::Representation
      
        end
      end
      
      # @private
      class MobileCarrier
        class Representation < Google::Apis::Core::JsonRepresentation
          property :country_code, as: 'countryCode'
          property :country_dart_id, as: 'countryDartId'
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :name, as: 'name'
        end
      end
      
      # @private
      class MobileCarriersListResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          collection :mobile_carriers, as: 'mobileCarriers', class: Google::Apis::DfareportingV2_1::MobileCarrier, decorator: Google::Apis::DfareportingV2_1::MobileCarrier::Representation
      
        end
      end
      
      # @private
      class ObjectFilter
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          collection :object_ids, as: 'objectIds'
          property :status, as: 'status'
        end
      end
      
      # @private
      class OffsetPosition
        class Representation < Google::Apis::Core::JsonRepresentation
          property :left, as: 'left'
          property :top, as: 'top'
        end
      end
      
      # @private
      class OmnitureSettings
        class Representation < Google::Apis::Core::JsonRepresentation
          property :omniture_cost_data_enabled, as: 'omnitureCostDataEnabled'
          property :omniture_integration_enabled, as: 'omnitureIntegrationEnabled'
        end
      end
      
      # @private
      class OperatingSystem
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dart_id, as: 'dartId'
          property :desktop, as: 'desktop'
          property :kind, as: 'kind'
          property :mobile, as: 'mobile'
          property :name, as: 'name'
        end
      end
      
      # @private
      class OperatingSystemVersion
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :major_version, as: 'majorVersion'
          property :minor_version, as: 'minorVersion'
          property :name, as: 'name'
          property :operating_system, as: 'operatingSystem', class: Google::Apis::DfareportingV2_1::OperatingSystem, decorator: Google::Apis::DfareportingV2_1::OperatingSystem::Representation
      
        end
      end
      
      # @private
      class OperatingSystemVersionsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          collection :operating_system_versions, as: 'operatingSystemVersions', class: Google::Apis::DfareportingV2_1::OperatingSystemVersion, decorator: Google::Apis::DfareportingV2_1::OperatingSystemVersion::Representation
      
        end
      end
      
      # @private
      class OperatingSystemsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          collection :operating_systems, as: 'operatingSystems', class: Google::Apis::DfareportingV2_1::OperatingSystem, decorator: Google::Apis::DfareportingV2_1::OperatingSystem::Representation
      
        end
      end
      
      # @private
      class OptimizationActivity
        class Representation < Google::Apis::Core::JsonRepresentation
          property :floodlight_activity_id, as: 'floodlightActivityId'
          property :floodlight_activity_id_dimension_value, as: 'floodlightActivityIdDimensionValue', class: Google::Apis::DfareportingV2_1::DimensionValue, decorator: Google::Apis::DfareportingV2_1::DimensionValue::Representation
      
          property :weight, as: 'weight'
        end
      end
      
      # @private
      class Order
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, as: 'accountId'
          property :advertiser_id, as: 'advertiserId'
          collection :approver_user_profile_ids, as: 'approverUserProfileIds'
          property :buyer_invoice_id, as: 'buyerInvoiceId'
          property :buyer_organization_name, as: 'buyerOrganizationName'
          property :comments, as: 'comments'
          collection :contacts, as: 'contacts', class: Google::Apis::DfareportingV2_1::OrderContact, decorator: Google::Apis::DfareportingV2_1::OrderContact::Representation
      
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :last_modified_info, as: 'lastModifiedInfo', class: Google::Apis::DfareportingV2_1::LastModifiedInfo, decorator: Google::Apis::DfareportingV2_1::LastModifiedInfo::Representation
      
          property :name, as: 'name'
          property :notes, as: 'notes'
          property :planning_term_id, as: 'planningTermId'
          property :project_id, as: 'projectId'
          property :seller_order_id, as: 'sellerOrderId'
          property :seller_organization_name, as: 'sellerOrganizationName'
          collection :site_id, as: 'siteId'
          collection :site_names, as: 'siteNames'
          property :subaccount_id, as: 'subaccountId'
          property :terms_and_conditions, as: 'termsAndConditions'
        end
      end
      
      # @private
      class OrderContact
        class Representation < Google::Apis::Core::JsonRepresentation
          property :contact_info, as: 'contactInfo'
          property :contact_name, as: 'contactName'
          property :contact_title, as: 'contactTitle'
          property :contact_type, as: 'contactType'
          property :signature_user_profile_id, as: 'signatureUserProfileId'
        end
      end
      
      # @private
      class OrderDocument
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, as: 'accountId'
          property :advertiser_id, as: 'advertiserId'
          property :amended_order_document_id, as: 'amendedOrderDocumentId'
          collection :approved_by_user_profile_ids, as: 'approvedByUserProfileIds'
          property :cancelled, as: 'cancelled'
          property :created_info, as: 'createdInfo', class: Google::Apis::DfareportingV2_1::LastModifiedInfo, decorator: Google::Apis::DfareportingV2_1::LastModifiedInfo::Representation
      
          property :effective_date, as: 'effectiveDate', type: Date
      
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :order_id, as: 'orderId'
          property :project_id, as: 'projectId'
          property :signed, as: 'signed'
          property :subaccount_id, as: 'subaccountId'
          property :title, as: 'title'
          property :type, as: 'type'
        end
      end
      
      # @private
      class OrderDocumentsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          collection :order_documents, as: 'orderDocuments', class: Google::Apis::DfareportingV2_1::OrderDocument, decorator: Google::Apis::DfareportingV2_1::OrderDocument::Representation
      
        end
      end
      
      # @private
      class OrdersListResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          collection :orders, as: 'orders', class: Google::Apis::DfareportingV2_1::Order, decorator: Google::Apis::DfareportingV2_1::Order::Representation
      
        end
      end
      
      # @private
      class PathToConversionReportCompatibleFields
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :conversion_dimensions, as: 'conversionDimensions', class: Google::Apis::DfareportingV2_1::Dimension, decorator: Google::Apis::DfareportingV2_1::Dimension::Representation
      
          collection :custom_floodlight_variables, as: 'customFloodlightVariables', class: Google::Apis::DfareportingV2_1::Dimension, decorator: Google::Apis::DfareportingV2_1::Dimension::Representation
      
          property :kind, as: 'kind'
          collection :metrics, as: 'metrics', class: Google::Apis::DfareportingV2_1::Metric, decorator: Google::Apis::DfareportingV2_1::Metric::Representation
      
          collection :per_interaction_dimensions, as: 'perInteractionDimensions', class: Google::Apis::DfareportingV2_1::Dimension, decorator: Google::Apis::DfareportingV2_1::Dimension::Representation
      
        end
      end
      
      # @private
      class Placement
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, as: 'accountId'
          property :advertiser_id, as: 'advertiserId'
          property :advertiser_id_dimension_value, as: 'advertiserIdDimensionValue', class: Google::Apis::DfareportingV2_1::DimensionValue, decorator: Google::Apis::DfareportingV2_1::DimensionValue::Representation
      
          property :archived, as: 'archived'
          property :campaign_id, as: 'campaignId'
          property :campaign_id_dimension_value, as: 'campaignIdDimensionValue', class: Google::Apis::DfareportingV2_1::DimensionValue, decorator: Google::Apis::DfareportingV2_1::DimensionValue::Representation
      
          property :comment, as: 'comment'
          property :compatibility, as: 'compatibility'
          property :content_category_id, as: 'contentCategoryId'
          property :create_info, as: 'createInfo', class: Google::Apis::DfareportingV2_1::LastModifiedInfo, decorator: Google::Apis::DfareportingV2_1::LastModifiedInfo::Representation
      
          property :directory_site_id, as: 'directorySiteId'
          property :directory_site_id_dimension_value, as: 'directorySiteIdDimensionValue', class: Google::Apis::DfareportingV2_1::DimensionValue, decorator: Google::Apis::DfareportingV2_1::DimensionValue::Representation
      
          property :external_id, as: 'externalId'
          property :id, as: 'id'
          property :id_dimension_value, as: 'idDimensionValue', class: Google::Apis::DfareportingV2_1::DimensionValue, decorator: Google::Apis::DfareportingV2_1::DimensionValue::Representation
      
          property :key_name, as: 'keyName'
          property :kind, as: 'kind'
          property :last_modified_info, as: 'lastModifiedInfo', class: Google::Apis::DfareportingV2_1::LastModifiedInfo, decorator: Google::Apis::DfareportingV2_1::LastModifiedInfo::Representation
      
          property :lookback_configuration, as: 'lookbackConfiguration', class: Google::Apis::DfareportingV2_1::LookbackConfiguration, decorator: Google::Apis::DfareportingV2_1::LookbackConfiguration::Representation
      
          property :name, as: 'name'
          property :payment_approved, as: 'paymentApproved'
          property :payment_source, as: 'paymentSource'
          property :placement_group_id, as: 'placementGroupId'
          property :placement_group_id_dimension_value, as: 'placementGroupIdDimensionValue', class: Google::Apis::DfareportingV2_1::DimensionValue, decorator: Google::Apis::DfareportingV2_1::DimensionValue::Representation
      
          property :placement_strategy_id, as: 'placementStrategyId'
          property :pricing_schedule, as: 'pricingSchedule', class: Google::Apis::DfareportingV2_1::PricingSchedule, decorator: Google::Apis::DfareportingV2_1::PricingSchedule::Representation
      
          property :primary, as: 'primary'
          property :publisher_update_info, as: 'publisherUpdateInfo', class: Google::Apis::DfareportingV2_1::LastModifiedInfo, decorator: Google::Apis::DfareportingV2_1::LastModifiedInfo::Representation
      
          property :site_id, as: 'siteId'
          property :site_id_dimension_value, as: 'siteIdDimensionValue', class: Google::Apis::DfareportingV2_1::DimensionValue, decorator: Google::Apis::DfareportingV2_1::DimensionValue::Representation
      
          property :size, as: 'size', class: Google::Apis::DfareportingV2_1::Size, decorator: Google::Apis::DfareportingV2_1::Size::Representation
      
          property :ssl_required, as: 'sslRequired'
          property :status, as: 'status'
          property :subaccount_id, as: 'subaccountId'
          collection :tag_formats, as: 'tagFormats'
          property :tag_setting, as: 'tagSetting', class: Google::Apis::DfareportingV2_1::TagSetting, decorator: Google::Apis::DfareportingV2_1::TagSetting::Representation
      
        end
      end
      
      # @private
      class PlacementAssignment
        class Representation < Google::Apis::Core::JsonRepresentation
          property :active, as: 'active'
          property :placement_id, as: 'placementId'
          property :placement_id_dimension_value, as: 'placementIdDimensionValue', class: Google::Apis::DfareportingV2_1::DimensionValue, decorator: Google::Apis::DfareportingV2_1::DimensionValue::Representation
      
          property :ssl_required, as: 'sslRequired'
        end
      end
      
      # @private
      class PlacementGroup
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, as: 'accountId'
          property :advertiser_id, as: 'advertiserId'
          property :advertiser_id_dimension_value, as: 'advertiserIdDimensionValue', class: Google::Apis::DfareportingV2_1::DimensionValue, decorator: Google::Apis::DfareportingV2_1::DimensionValue::Representation
      
          property :archived, as: 'archived'
          property :campaign_id, as: 'campaignId'
          property :campaign_id_dimension_value, as: 'campaignIdDimensionValue', class: Google::Apis::DfareportingV2_1::DimensionValue, decorator: Google::Apis::DfareportingV2_1::DimensionValue::Representation
      
          collection :child_placement_ids, as: 'childPlacementIds'
          property :comment, as: 'comment'
          property :content_category_id, as: 'contentCategoryId'
          property :create_info, as: 'createInfo', class: Google::Apis::DfareportingV2_1::LastModifiedInfo, decorator: Google::Apis::DfareportingV2_1::LastModifiedInfo::Representation
      
          property :directory_site_id, as: 'directorySiteId'
          property :directory_site_id_dimension_value, as: 'directorySiteIdDimensionValue', class: Google::Apis::DfareportingV2_1::DimensionValue, decorator: Google::Apis::DfareportingV2_1::DimensionValue::Representation
      
          property :external_id, as: 'externalId'
          property :id, as: 'id'
          property :id_dimension_value, as: 'idDimensionValue', class: Google::Apis::DfareportingV2_1::DimensionValue, decorator: Google::Apis::DfareportingV2_1::DimensionValue::Representation
      
          property :kind, as: 'kind'
          property :last_modified_info, as: 'lastModifiedInfo', class: Google::Apis::DfareportingV2_1::LastModifiedInfo, decorator: Google::Apis::DfareportingV2_1::LastModifiedInfo::Representation
      
          property :name, as: 'name'
          property :placement_group_type, as: 'placementGroupType'
          property :placement_strategy_id, as: 'placementStrategyId'
          property :pricing_schedule, as: 'pricingSchedule', class: Google::Apis::DfareportingV2_1::PricingSchedule, decorator: Google::Apis::DfareportingV2_1::PricingSchedule::Representation
      
          property :primary_placement_id, as: 'primaryPlacementId'
          property :primary_placement_id_dimension_value, as: 'primaryPlacementIdDimensionValue', class: Google::Apis::DfareportingV2_1::DimensionValue, decorator: Google::Apis::DfareportingV2_1::DimensionValue::Representation
      
          property :programmatic_setting, as: 'programmaticSetting', class: Google::Apis::DfareportingV2_1::ProgrammaticSetting, decorator: Google::Apis::DfareportingV2_1::ProgrammaticSetting::Representation
      
          property :site_id, as: 'siteId'
          property :site_id_dimension_value, as: 'siteIdDimensionValue', class: Google::Apis::DfareportingV2_1::DimensionValue, decorator: Google::Apis::DfareportingV2_1::DimensionValue::Representation
      
          property :subaccount_id, as: 'subaccountId'
        end
      end
      
      # @private
      class PlacementGroupsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          collection :placement_groups, as: 'placementGroups', class: Google::Apis::DfareportingV2_1::PlacementGroup, decorator: Google::Apis::DfareportingV2_1::PlacementGroup::Representation
      
        end
      end
      
      # @private
      class PlacementStrategiesListResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          collection :placement_strategies, as: 'placementStrategies', class: Google::Apis::DfareportingV2_1::PlacementStrategy, decorator: Google::Apis::DfareportingV2_1::PlacementStrategy::Representation
      
        end
      end
      
      # @private
      class PlacementStrategy
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, as: 'accountId'
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :name, as: 'name'
        end
      end
      
      # @private
      class PlacementTag
        class Representation < Google::Apis::Core::JsonRepresentation
          property :placement_id, as: 'placementId'
          collection :tag_datas, as: 'tagDatas', class: Google::Apis::DfareportingV2_1::TagData, decorator: Google::Apis::DfareportingV2_1::TagData::Representation
      
        end
      end
      
      # @private
      class GenerateTagsResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          collection :placement_tags, as: 'placementTags', class: Google::Apis::DfareportingV2_1::PlacementTag, decorator: Google::Apis::DfareportingV2_1::PlacementTag::Representation
      
        end
      end
      
      # @private
      class PlacementsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          collection :placements, as: 'placements', class: Google::Apis::DfareportingV2_1::Placement, decorator: Google::Apis::DfareportingV2_1::Placement::Representation
      
        end
      end
      
      # @private
      class PlatformType
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :name, as: 'name'
        end
      end
      
      # @private
      class PlatformTypesListResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          collection :platform_types, as: 'platformTypes', class: Google::Apis::DfareportingV2_1::PlatformType, decorator: Google::Apis::DfareportingV2_1::PlatformType::Representation
      
        end
      end
      
      # @private
      class PopupWindowProperties
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dimension, as: 'dimension', class: Google::Apis::DfareportingV2_1::Size, decorator: Google::Apis::DfareportingV2_1::Size::Representation
      
          property :offset, as: 'offset', class: Google::Apis::DfareportingV2_1::OffsetPosition, decorator: Google::Apis::DfareportingV2_1::OffsetPosition::Representation
      
          property :position_type, as: 'positionType'
          property :show_address_bar, as: 'showAddressBar'
          property :show_menu_bar, as: 'showMenuBar'
          property :show_scroll_bar, as: 'showScrollBar'
          property :show_status_bar, as: 'showStatusBar'
          property :show_tool_bar, as: 'showToolBar'
          property :title, as: 'title'
        end
      end
      
      # @private
      class PostalCode
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          property :country_code, as: 'countryCode'
          property :country_dart_id, as: 'countryDartId'
          property :id, as: 'id'
          property :kind, as: 'kind'
        end
      end
      
      # @private
      class PostalCodesListResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          collection :postal_codes, as: 'postalCodes', class: Google::Apis::DfareportingV2_1::PostalCode, decorator: Google::Apis::DfareportingV2_1::PostalCode::Representation
      
        end
      end
      
      # @private
      class Pricing
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cap_cost_type, as: 'capCostType'
          property :end_date, as: 'endDate', type: Date
      
          collection :flights, as: 'flights', class: Google::Apis::DfareportingV2_1::Flight, decorator: Google::Apis::DfareportingV2_1::Flight::Representation
      
          property :group_type, as: 'groupType'
          property :pricing_type, as: 'pricingType'
          property :start_date, as: 'startDate', type: Date
      
        end
      end
      
      # @private
      class PricingSchedule
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cap_cost_option, as: 'capCostOption'
          property :disregard_overdelivery, as: 'disregardOverdelivery'
          property :end_date, as: 'endDate', type: Date
      
          property :flighted, as: 'flighted'
          property :floodlight_activity_id, as: 'floodlightActivityId'
          collection :pricing_periods, as: 'pricingPeriods', class: Google::Apis::DfareportingV2_1::PricingSchedulePricingPeriod, decorator: Google::Apis::DfareportingV2_1::PricingSchedulePricingPeriod::Representation
      
          property :pricing_type, as: 'pricingType'
          property :start_date, as: 'startDate', type: Date
      
          property :testing_start_date, as: 'testingStartDate', type: Date
      
        end
      end
      
      # @private
      class PricingSchedulePricingPeriod
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_date, as: 'endDate', type: Date
      
          property :pricing_comment, as: 'pricingComment'
          property :rate_or_cost_nanos, as: 'rateOrCostNanos'
          property :start_date, as: 'startDate', type: Date
      
          property :units, as: 'units'
        end
      end
      
      # @private
      class ProgrammaticSetting
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :adx_deal_ids, as: 'adxDealIds'
          property :insertion_order_id, as: 'insertionOrderId'
          property :insertion_order_id_status, as: 'insertionOrderIdStatus'
          property :media_cost_nanos, as: 'mediaCostNanos'
          property :programmatic, as: 'programmatic'
          collection :trafficker_emails, as: 'traffickerEmails'
        end
      end
      
      # @private
      class Project
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, as: 'accountId'
          property :advertiser_id, as: 'advertiserId'
          property :audience_age_group, as: 'audienceAgeGroup'
          property :audience_gender, as: 'audienceGender'
          property :budget, as: 'budget'
          property :client_billing_code, as: 'clientBillingCode'
          property :client_name, as: 'clientName'
          property :end_date, as: 'endDate', type: Date
      
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :last_modified_info, as: 'lastModifiedInfo', class: Google::Apis::DfareportingV2_1::LastModifiedInfo, decorator: Google::Apis::DfareportingV2_1::LastModifiedInfo::Representation
      
          property :name, as: 'name'
          property :overview, as: 'overview'
          property :start_date, as: 'startDate', type: Date
      
          property :subaccount_id, as: 'subaccountId'
          property :target_clicks, as: 'targetClicks'
          property :target_conversions, as: 'targetConversions'
          property :target_cpa_nanos, as: 'targetCpaNanos'
          property :target_cpc_nanos, as: 'targetCpcNanos'
          property :target_cpm_nanos, as: 'targetCpmNanos'
          property :target_impressions, as: 'targetImpressions'
        end
      end
      
      # @private
      class ProjectsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          collection :projects, as: 'projects', class: Google::Apis::DfareportingV2_1::Project, decorator: Google::Apis::DfareportingV2_1::Project::Representation
      
        end
      end
      
      # @private
      class ReachReportCompatibleFields
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :dimension_filters, as: 'dimensionFilters', class: Google::Apis::DfareportingV2_1::Dimension, decorator: Google::Apis::DfareportingV2_1::Dimension::Representation
      
          collection :dimensions, as: 'dimensions', class: Google::Apis::DfareportingV2_1::Dimension, decorator: Google::Apis::DfareportingV2_1::Dimension::Representation
      
          property :kind, as: 'kind'
          collection :metrics, as: 'metrics', class: Google::Apis::DfareportingV2_1::Metric, decorator: Google::Apis::DfareportingV2_1::Metric::Representation
      
          collection :pivoted_activity_metrics, as: 'pivotedActivityMetrics', class: Google::Apis::DfareportingV2_1::Metric, decorator: Google::Apis::DfareportingV2_1::Metric::Representation
      
          collection :reach_by_frequency_metrics, as: 'reachByFrequencyMetrics', class: Google::Apis::DfareportingV2_1::Metric, decorator: Google::Apis::DfareportingV2_1::Metric::Representation
      
        end
      end
      
      # @private
      class Recipient
        class Representation < Google::Apis::Core::JsonRepresentation
          property :delivery_type, as: 'deliveryType'
          property :email, as: 'email'
          property :kind, as: 'kind'
        end
      end
      
      # @private
      class Region
        class Representation < Google::Apis::Core::JsonRepresentation
          property :country_code, as: 'countryCode'
          property :country_dart_id, as: 'countryDartId'
          property :dart_id, as: 'dartId'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :region_code, as: 'regionCode'
        end
      end
      
      # @private
      class RegionsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          collection :regions, as: 'regions', class: Google::Apis::DfareportingV2_1::Region, decorator: Google::Apis::DfareportingV2_1::Region::Representation
      
        end
      end
      
      # @private
      class RemarketingList
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, as: 'accountId'
          property :active, as: 'active'
          property :advertiser_id, as: 'advertiserId'
          property :advertiser_id_dimension_value, as: 'advertiserIdDimensionValue', class: Google::Apis::DfareportingV2_1::DimensionValue, decorator: Google::Apis::DfareportingV2_1::DimensionValue::Representation
      
          property :description, as: 'description'
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :life_span, as: 'lifeSpan'
          property :list_population_rule, as: 'listPopulationRule', class: Google::Apis::DfareportingV2_1::ListPopulationRule, decorator: Google::Apis::DfareportingV2_1::ListPopulationRule::Representation
      
          property :list_size, as: 'listSize'
          property :list_source, as: 'listSource'
          property :name, as: 'name'
          property :subaccount_id, as: 'subaccountId'
        end
      end
      
      # @private
      class RemarketingListShare
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :remarketing_list_id, as: 'remarketingListId'
          collection :shared_account_ids, as: 'sharedAccountIds'
          collection :shared_advertiser_ids, as: 'sharedAdvertiserIds'
        end
      end
      
      # @private
      class RemarketingListsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          collection :remarketing_lists, as: 'remarketingLists', class: Google::Apis::DfareportingV2_1::RemarketingList, decorator: Google::Apis::DfareportingV2_1::RemarketingList::Representation
      
        end
      end
      
      # @private
      class Report
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, as: 'accountId'
          property :criteria, as: 'criteria', class: Google::Apis::DfareportingV2_1::Report::Criteria, decorator: Google::Apis::DfareportingV2_1::Report::Criteria::Representation
      
          property :cross_dimension_reach_criteria, as: 'crossDimensionReachCriteria', class: Google::Apis::DfareportingV2_1::Report::CrossDimensionReachCriteria, decorator: Google::Apis::DfareportingV2_1::Report::CrossDimensionReachCriteria::Representation
      
          property :delivery, as: 'delivery', class: Google::Apis::DfareportingV2_1::Report::Delivery, decorator: Google::Apis::DfareportingV2_1::Report::Delivery::Representation
      
          property :etag, as: 'etag'
          property :file_name, as: 'fileName'
          property :floodlight_criteria, as: 'floodlightCriteria', class: Google::Apis::DfareportingV2_1::Report::FloodlightCriteria, decorator: Google::Apis::DfareportingV2_1::Report::FloodlightCriteria::Representation
      
          property :format, as: 'format'
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :last_modified_time, as: 'lastModifiedTime'
          property :name, as: 'name'
          property :owner_profile_id, as: 'ownerProfileId'
          property :path_to_conversion_criteria, as: 'pathToConversionCriteria', class: Google::Apis::DfareportingV2_1::Report::PathToConversionCriteria, decorator: Google::Apis::DfareportingV2_1::Report::PathToConversionCriteria::Representation
      
          property :reach_criteria, as: 'reachCriteria', class: Google::Apis::DfareportingV2_1::Report::ReachCriteria, decorator: Google::Apis::DfareportingV2_1::Report::ReachCriteria::Representation
      
          property :schedule, as: 'schedule', class: Google::Apis::DfareportingV2_1::Report::Schedule, decorator: Google::Apis::DfareportingV2_1::Report::Schedule::Representation
      
          property :sub_account_id, as: 'subAccountId'
          property :type, as: 'type'
        end
        
        # @private
        class Criteria
          class Representation < Google::Apis::Core::JsonRepresentation
            property :activities, as: 'activities', class: Google::Apis::DfareportingV2_1::Activities, decorator: Google::Apis::DfareportingV2_1::Activities::Representation
        
            property :custom_rich_media_events, as: 'customRichMediaEvents', class: Google::Apis::DfareportingV2_1::CustomRichMediaEvents, decorator: Google::Apis::DfareportingV2_1::CustomRichMediaEvents::Representation
        
            property :date_range, as: 'dateRange', class: Google::Apis::DfareportingV2_1::DateRange, decorator: Google::Apis::DfareportingV2_1::DateRange::Representation
        
            collection :dimension_filters, as: 'dimensionFilters', class: Google::Apis::DfareportingV2_1::DimensionValue, decorator: Google::Apis::DfareportingV2_1::DimensionValue::Representation
        
            collection :dimensions, as: 'dimensions', class: Google::Apis::DfareportingV2_1::SortedDimension, decorator: Google::Apis::DfareportingV2_1::SortedDimension::Representation
        
            collection :metric_names, as: 'metricNames'
          end
        end
        
        # @private
        class CrossDimensionReachCriteria
          class Representation < Google::Apis::Core::JsonRepresentation
            collection :breakdown, as: 'breakdown', class: Google::Apis::DfareportingV2_1::SortedDimension, decorator: Google::Apis::DfareportingV2_1::SortedDimension::Representation
        
            property :date_range, as: 'dateRange', class: Google::Apis::DfareportingV2_1::DateRange, decorator: Google::Apis::DfareportingV2_1::DateRange::Representation
        
            property :dimension, as: 'dimension'
            collection :dimension_filters, as: 'dimensionFilters', class: Google::Apis::DfareportingV2_1::DimensionValue, decorator: Google::Apis::DfareportingV2_1::DimensionValue::Representation
        
            collection :metric_names, as: 'metricNames'
            collection :overlap_metric_names, as: 'overlapMetricNames'
            property :pivoted, as: 'pivoted'
          end
        end
        
        # @private
        class Delivery
          class Representation < Google::Apis::Core::JsonRepresentation
            property :email_owner, as: 'emailOwner'
            property :email_owner_delivery_type, as: 'emailOwnerDeliveryType'
            property :message, as: 'message'
            collection :recipients, as: 'recipients', class: Google::Apis::DfareportingV2_1::Recipient, decorator: Google::Apis::DfareportingV2_1::Recipient::Representation
        
          end
        end
        
        # @private
        class FloodlightCriteria
          class Representation < Google::Apis::Core::JsonRepresentation
            collection :custom_rich_media_events, as: 'customRichMediaEvents', class: Google::Apis::DfareportingV2_1::DimensionValue, decorator: Google::Apis::DfareportingV2_1::DimensionValue::Representation
        
            property :date_range, as: 'dateRange', class: Google::Apis::DfareportingV2_1::DateRange, decorator: Google::Apis::DfareportingV2_1::DateRange::Representation
        
            collection :dimension_filters, as: 'dimensionFilters', class: Google::Apis::DfareportingV2_1::DimensionValue, decorator: Google::Apis::DfareportingV2_1::DimensionValue::Representation
        
            collection :dimensions, as: 'dimensions', class: Google::Apis::DfareportingV2_1::SortedDimension, decorator: Google::Apis::DfareportingV2_1::SortedDimension::Representation
        
            property :floodlight_config_id, as: 'floodlightConfigId', class: Google::Apis::DfareportingV2_1::DimensionValue, decorator: Google::Apis::DfareportingV2_1::DimensionValue::Representation
        
            collection :metric_names, as: 'metricNames'
            property :report_properties, as: 'reportProperties', class: Google::Apis::DfareportingV2_1::Report::FloodlightCriteria::ReportProperties, decorator: Google::Apis::DfareportingV2_1::Report::FloodlightCriteria::ReportProperties::Representation
        
          end
          
          # @private
          class ReportProperties
            class Representation < Google::Apis::Core::JsonRepresentation
              property :include_attributed_ip_conversions, as: 'includeAttributedIPConversions'
              property :include_unattributed_cookie_conversions, as: 'includeUnattributedCookieConversions'
              property :include_unattributed_ip_conversions, as: 'includeUnattributedIPConversions'
            end
          end
        end
        
        # @private
        class PathToConversionCriteria
          class Representation < Google::Apis::Core::JsonRepresentation
            collection :activity_filters, as: 'activityFilters', class: Google::Apis::DfareportingV2_1::DimensionValue, decorator: Google::Apis::DfareportingV2_1::DimensionValue::Representation
        
            collection :conversion_dimensions, as: 'conversionDimensions', class: Google::Apis::DfareportingV2_1::SortedDimension, decorator: Google::Apis::DfareportingV2_1::SortedDimension::Representation
        
            collection :custom_floodlight_variables, as: 'customFloodlightVariables', class: Google::Apis::DfareportingV2_1::SortedDimension, decorator: Google::Apis::DfareportingV2_1::SortedDimension::Representation
        
            collection :custom_rich_media_events, as: 'customRichMediaEvents', class: Google::Apis::DfareportingV2_1::DimensionValue, decorator: Google::Apis::DfareportingV2_1::DimensionValue::Representation
        
            property :date_range, as: 'dateRange', class: Google::Apis::DfareportingV2_1::DateRange, decorator: Google::Apis::DfareportingV2_1::DateRange::Representation
        
            property :floodlight_config_id, as: 'floodlightConfigId', class: Google::Apis::DfareportingV2_1::DimensionValue, decorator: Google::Apis::DfareportingV2_1::DimensionValue::Representation
        
            collection :metric_names, as: 'metricNames'
            collection :per_interaction_dimensions, as: 'perInteractionDimensions', class: Google::Apis::DfareportingV2_1::SortedDimension, decorator: Google::Apis::DfareportingV2_1::SortedDimension::Representation
        
            property :report_properties, as: 'reportProperties', class: Google::Apis::DfareportingV2_1::Report::PathToConversionCriteria::ReportProperties, decorator: Google::Apis::DfareportingV2_1::Report::PathToConversionCriteria::ReportProperties::Representation
        
          end
          
          # @private
          class ReportProperties
            class Representation < Google::Apis::Core::JsonRepresentation
              property :clicks_lookback_window, as: 'clicksLookbackWindow'
              property :impressions_lookback_window, as: 'impressionsLookbackWindow'
              property :include_attributed_ip_conversions, as: 'includeAttributedIPConversions'
              property :include_unattributed_cookie_conversions, as: 'includeUnattributedCookieConversions'
              property :include_unattributed_ip_conversions, as: 'includeUnattributedIPConversions'
              property :maximum_click_interactions, as: 'maximumClickInteractions'
              property :maximum_impression_interactions, as: 'maximumImpressionInteractions'
              property :maximum_interaction_gap, as: 'maximumInteractionGap'
              property :pivot_on_interaction_path, as: 'pivotOnInteractionPath'
            end
          end
        end
        
        # @private
        class ReachCriteria
          class Representation < Google::Apis::Core::JsonRepresentation
            property :activities, as: 'activities', class: Google::Apis::DfareportingV2_1::Activities, decorator: Google::Apis::DfareportingV2_1::Activities::Representation
        
            property :custom_rich_media_events, as: 'customRichMediaEvents', class: Google::Apis::DfareportingV2_1::CustomRichMediaEvents, decorator: Google::Apis::DfareportingV2_1::CustomRichMediaEvents::Representation
        
            property :date_range, as: 'dateRange', class: Google::Apis::DfareportingV2_1::DateRange, decorator: Google::Apis::DfareportingV2_1::DateRange::Representation
        
            collection :dimension_filters, as: 'dimensionFilters', class: Google::Apis::DfareportingV2_1::DimensionValue, decorator: Google::Apis::DfareportingV2_1::DimensionValue::Representation
        
            collection :dimensions, as: 'dimensions', class: Google::Apis::DfareportingV2_1::SortedDimension, decorator: Google::Apis::DfareportingV2_1::SortedDimension::Representation
        
            property :enable_all_dimension_combinations, as: 'enableAllDimensionCombinations'
            collection :metric_names, as: 'metricNames'
            collection :reach_by_frequency_metric_names, as: 'reachByFrequencyMetricNames'
          end
        end
        
        # @private
        class Schedule
          class Representation < Google::Apis::Core::JsonRepresentation
            property :active, as: 'active'
            property :every, as: 'every'
            property :expiration_date, as: 'expirationDate', type: Date
        
            property :repeats, as: 'repeats'
            collection :repeats_on_week_days, as: 'repeatsOnWeekDays'
            property :runs_on_day_of_month, as: 'runsOnDayOfMonth'
            property :start_date, as: 'startDate', type: Date
        
          end
        end
      end
      
      # @private
      class ReportCompatibleFields
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :dimension_filters, as: 'dimensionFilters', class: Google::Apis::DfareportingV2_1::Dimension, decorator: Google::Apis::DfareportingV2_1::Dimension::Representation
      
          collection :dimensions, as: 'dimensions', class: Google::Apis::DfareportingV2_1::Dimension, decorator: Google::Apis::DfareportingV2_1::Dimension::Representation
      
          property :kind, as: 'kind'
          collection :metrics, as: 'metrics', class: Google::Apis::DfareportingV2_1::Metric, decorator: Google::Apis::DfareportingV2_1::Metric::Representation
      
          collection :pivoted_activity_metrics, as: 'pivotedActivityMetrics', class: Google::Apis::DfareportingV2_1::Metric, decorator: Google::Apis::DfareportingV2_1::Metric::Representation
      
        end
      end
      
      # @private
      class ReportList
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          collection :items, as: 'items', class: Google::Apis::DfareportingV2_1::Report, decorator: Google::Apis::DfareportingV2_1::Report::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      # @private
      class Configuration
        class Representation < Google::Apis::Core::JsonRepresentation
          property :exposure_to_conversion_enabled, as: 'exposureToConversionEnabled'
          property :lookback_configuration, as: 'lookbackConfiguration', class: Google::Apis::DfareportingV2_1::LookbackConfiguration, decorator: Google::Apis::DfareportingV2_1::LookbackConfiguration::Representation
      
          property :report_generation_time_zone_id, as: 'reportGenerationTimeZoneId'
        end
      end
      
      # @private
      class RichMediaExitOverride
        class Representation < Google::Apis::Core::JsonRepresentation
          property :custom_exit_url, as: 'customExitUrl'
          property :exit_id, as: 'exitId'
          property :use_custom_exit_url, as: 'useCustomExitUrl'
        end
      end
      
      # @private
      class Site
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, as: 'accountId'
          property :approved, as: 'approved'
          property :directory_site_id, as: 'directorySiteId'
          property :directory_site_id_dimension_value, as: 'directorySiteIdDimensionValue', class: Google::Apis::DfareportingV2_1::DimensionValue, decorator: Google::Apis::DfareportingV2_1::DimensionValue::Representation
      
          property :id, as: 'id'
          property :id_dimension_value, as: 'idDimensionValue', class: Google::Apis::DfareportingV2_1::DimensionValue, decorator: Google::Apis::DfareportingV2_1::DimensionValue::Representation
      
          property :key_name, as: 'keyName'
          property :kind, as: 'kind'
          property :name, as: 'name'
          collection :site_contacts, as: 'siteContacts', class: Google::Apis::DfareportingV2_1::SiteContact, decorator: Google::Apis::DfareportingV2_1::SiteContact::Representation
      
          property :site_settings, as: 'siteSettings', class: Google::Apis::DfareportingV2_1::SiteSettings, decorator: Google::Apis::DfareportingV2_1::SiteSettings::Representation
      
          property :subaccount_id, as: 'subaccountId'
        end
      end
      
      # @private
      class SiteContact
        class Representation < Google::Apis::Core::JsonRepresentation
          property :address, as: 'address'
          property :contact_type, as: 'contactType'
          property :email, as: 'email'
          property :first_name, as: 'firstName'
          property :id, as: 'id'
          property :last_name, as: 'lastName'
          property :phone, as: 'phone'
          property :title, as: 'title'
        end
      end
      
      # @private
      class SiteSettings
        class Representation < Google::Apis::Core::JsonRepresentation
          property :active_view_opt_out, as: 'activeViewOptOut'
          property :creative_settings, as: 'creativeSettings', class: Google::Apis::DfareportingV2_1::CreativeSettings, decorator: Google::Apis::DfareportingV2_1::CreativeSettings::Representation
      
          property :disable_brand_safe_ads, as: 'disableBrandSafeAds'
          property :disable_new_cookie, as: 'disableNewCookie'
          property :lookback_configuration, as: 'lookbackConfiguration', class: Google::Apis::DfareportingV2_1::LookbackConfiguration, decorator: Google::Apis::DfareportingV2_1::LookbackConfiguration::Representation
      
          property :tag_setting, as: 'tagSetting', class: Google::Apis::DfareportingV2_1::TagSetting, decorator: Google::Apis::DfareportingV2_1::TagSetting::Representation
      
        end
      end
      
      # @private
      class SitesListResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          collection :sites, as: 'sites', class: Google::Apis::DfareportingV2_1::Site, decorator: Google::Apis::DfareportingV2_1::Site::Representation
      
        end
      end
      
      # @private
      class Size
        class Representation < Google::Apis::Core::JsonRepresentation
          property :height, as: 'height'
          property :iab, as: 'iab'
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :width, as: 'width'
        end
      end
      
      # @private
      class SizesListResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          collection :sizes, as: 'sizes', class: Google::Apis::DfareportingV2_1::Size, decorator: Google::Apis::DfareportingV2_1::Size::Representation
      
        end
      end
      
      # @private
      class SortedDimension
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :sort_order, as: 'sortOrder'
        end
      end
      
      # @private
      class Subaccount
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, as: 'accountId'
          collection :available_permission_ids, as: 'availablePermissionIds'
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :name, as: 'name'
        end
      end
      
      # @private
      class SubaccountsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          collection :subaccounts, as: 'subaccounts', class: Google::Apis::DfareportingV2_1::Subaccount, decorator: Google::Apis::DfareportingV2_1::Subaccount::Representation
      
        end
      end
      
      # @private
      class TagData
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ad_id, as: 'adId'
          property :click_tag, as: 'clickTag'
          property :creative_id, as: 'creativeId'
          property :format, as: 'format'
          property :impression_tag, as: 'impressionTag'
        end
      end
      
      # @private
      class TagSetting
        class Representation < Google::Apis::Core::JsonRepresentation
          property :additional_key_values, as: 'additionalKeyValues'
          property :include_click_through_urls, as: 'includeClickThroughUrls'
          property :include_click_tracking, as: 'includeClickTracking'
          property :keyword_option, as: 'keywordOption'
        end
      end
      
      # @private
      class TagSettings
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dynamic_tag_enabled, as: 'dynamicTagEnabled'
          property :image_tag_enabled, as: 'imageTagEnabled'
        end
      end
      
      # @private
      class TargetWindow
        class Representation < Google::Apis::Core::JsonRepresentation
          property :custom_html, as: 'customHtml'
          property :target_window_option, as: 'targetWindowOption'
        end
      end
      
      # @private
      class TargetableRemarketingList
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, as: 'accountId'
          property :active, as: 'active'
          property :advertiser_id, as: 'advertiserId'
          property :advertiser_id_dimension_value, as: 'advertiserIdDimensionValue', class: Google::Apis::DfareportingV2_1::DimensionValue, decorator: Google::Apis::DfareportingV2_1::DimensionValue::Representation
      
          property :description, as: 'description'
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :life_span, as: 'lifeSpan'
          property :list_size, as: 'listSize'
          property :list_source, as: 'listSource'
          property :name, as: 'name'
          property :subaccount_id, as: 'subaccountId'
        end
      end
      
      # @private
      class TargetableRemarketingListsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          collection :targetable_remarketing_lists, as: 'targetableRemarketingLists', class: Google::Apis::DfareportingV2_1::TargetableRemarketingList, decorator: Google::Apis::DfareportingV2_1::TargetableRemarketingList::Representation
      
        end
      end
      
      # @private
      class TechnologyTargeting
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :browsers, as: 'browsers', class: Google::Apis::DfareportingV2_1::Browser, decorator: Google::Apis::DfareportingV2_1::Browser::Representation
      
          collection :connection_types, as: 'connectionTypes', class: Google::Apis::DfareportingV2_1::ConnectionType, decorator: Google::Apis::DfareportingV2_1::ConnectionType::Representation
      
          collection :mobile_carriers, as: 'mobileCarriers', class: Google::Apis::DfareportingV2_1::MobileCarrier, decorator: Google::Apis::DfareportingV2_1::MobileCarrier::Representation
      
          collection :operating_system_versions, as: 'operatingSystemVersions', class: Google::Apis::DfareportingV2_1::OperatingSystemVersion, decorator: Google::Apis::DfareportingV2_1::OperatingSystemVersion::Representation
      
          collection :operating_systems, as: 'operatingSystems', class: Google::Apis::DfareportingV2_1::OperatingSystem, decorator: Google::Apis::DfareportingV2_1::OperatingSystem::Representation
      
          collection :platform_types, as: 'platformTypes', class: Google::Apis::DfareportingV2_1::PlatformType, decorator: Google::Apis::DfareportingV2_1::PlatformType::Representation
      
        end
      end
      
      # @private
      class ThirdPartyTrackingUrl
        class Representation < Google::Apis::Core::JsonRepresentation
          property :third_party_url_type, as: 'thirdPartyUrlType'
          property :url, as: 'url'
        end
      end
      
      # @private
      class UserDefinedVariableConfiguration
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_type, as: 'dataType'
          property :report_name, as: 'reportName'
          property :variable_type, as: 'variableType'
        end
      end
      
      # @private
      class UserProfile
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, as: 'accountId'
          property :account_name, as: 'accountName'
          property :etag, as: 'etag'
          property :kind, as: 'kind'
          property :profile_id, as: 'profileId'
          property :sub_account_id, as: 'subAccountId'
          property :sub_account_name, as: 'subAccountName'
          property :user_name, as: 'userName'
        end
      end
      
      # @private
      class UserProfileList
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          collection :items, as: 'items', class: Google::Apis::DfareportingV2_1::UserProfile, decorator: Google::Apis::DfareportingV2_1::UserProfile::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      # @private
      class UserRole
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, as: 'accountId'
          property :default_user_role, as: 'defaultUserRole'
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :parent_user_role_id, as: 'parentUserRoleId'
          collection :permissions, as: 'permissions', class: Google::Apis::DfareportingV2_1::UserRolePermission, decorator: Google::Apis::DfareportingV2_1::UserRolePermission::Representation
      
          property :subaccount_id, as: 'subaccountId'
        end
      end
      
      # @private
      class UserRolePermission
        class Representation < Google::Apis::Core::JsonRepresentation
          property :availability, as: 'availability'
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :permission_group_id, as: 'permissionGroupId'
        end
      end
      
      # @private
      class UserRolePermissionGroup
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :name, as: 'name'
        end
      end
      
      # @private
      class UserRolePermissionGroupsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          collection :user_role_permission_groups, as: 'userRolePermissionGroups', class: Google::Apis::DfareportingV2_1::UserRolePermissionGroup, decorator: Google::Apis::DfareportingV2_1::UserRolePermissionGroup::Representation
      
        end
      end
      
      # @private
      class UserRolePermissionsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          collection :user_role_permissions, as: 'userRolePermissions', class: Google::Apis::DfareportingV2_1::UserRolePermission, decorator: Google::Apis::DfareportingV2_1::UserRolePermission::Representation
      
        end
      end
      
      # @private
      class UserRolesListResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          collection :user_roles, as: 'userRoles', class: Google::Apis::DfareportingV2_1::UserRole, decorator: Google::Apis::DfareportingV2_1::UserRole::Representation
      
        end
      end
    end
  end
end
