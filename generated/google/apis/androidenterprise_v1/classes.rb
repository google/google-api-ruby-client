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
    module AndroidenterpriseV1
      
      # Represents the list of app restrictions available to be pre-configured for the
      # product.
      class AppRestrictionsSchema
        include Google::Apis::Core::Hashable
      
        # The set of restrictions that make up this schema.
        # Corresponds to the JSON property `restrictions`
        # @return [Array<Google::Apis::AndroidenterpriseV1::AppRestrictionsSchemaRestriction>]
        attr_accessor :restrictions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @restrictions = args[:restrictions] unless args[:restrictions].nil?
        end
      end
      
      # A restriction in the App Restriction Schema represents a piece of
      # configuration that may be pre-applied.
      class AppRestrictionsSchemaRestriction
        include Google::Apis::Core::Hashable
      
        # A typed value for the restriction.
        # Corresponds to the JSON property `defaultValue`
        # @return [Google::Apis::AndroidenterpriseV1::AppRestrictionsSchemaRestrictionRestrictionValue]
        attr_accessor :default_value
      
        # A longer description of the restriction, giving more detail of what it affects.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # For choice or multiselect restrictions, the list of possible entries' human-
        # readable names.
        # Corresponds to the JSON property `entry`
        # @return [Array<String>]
        attr_accessor :entry
      
        # For choice or multiselect restrictions, the list of possible entries' machine-
        # readable values.
        # Corresponds to the JSON property `entryValue`
        # @return [Array<String>]
        attr_accessor :entry_value
      
        # The unique key that the product uses to identify the restriction, e.g. "com.
        # google.android.gm.fieldname".
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # The type of the restriction.
        # Corresponds to the JSON property `restrictionType`
        # @return [String]
        attr_accessor :restriction_type
      
        # The name of the restriction.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @default_value = args[:default_value] unless args[:default_value].nil?
          @description = args[:description] unless args[:description].nil?
          @entry = args[:entry] unless args[:entry].nil?
          @entry_value = args[:entry_value] unless args[:entry_value].nil?
          @key = args[:key] unless args[:key].nil?
          @restriction_type = args[:restriction_type] unless args[:restriction_type].nil?
          @title = args[:title] unless args[:title].nil?
        end
      end
      
      # A typed value for the restriction.
      class AppRestrictionsSchemaRestrictionRestrictionValue
        include Google::Apis::Core::Hashable
      
        # The type of the value being provided.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # The boolean value - this will only be present if type is bool.
        # Corresponds to the JSON property `valueBool`
        # @return [Boolean]
        attr_accessor :value_bool
        alias_method :value_bool?, :value_bool
      
        # The integer value - this will only be present if type is integer.
        # Corresponds to the JSON property `valueInteger`
        # @return [Fixnum]
        attr_accessor :value_integer
      
        # The list of string values - this will only be present if type is multiselect.
        # Corresponds to the JSON property `valueMultiselect`
        # @return [Array<String>]
        attr_accessor :value_multiselect
      
        # The string value - this will be present for types string, choice and hidden.
        # Corresponds to the JSON property `valueString`
        # @return [String]
        attr_accessor :value_string
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @type = args[:type] unless args[:type].nil?
          @value_bool = args[:value_bool] unless args[:value_bool].nil?
          @value_integer = args[:value_integer] unless args[:value_integer].nil?
          @value_multiselect = args[:value_multiselect] unless args[:value_multiselect].nil?
          @value_string = args[:value_string] unless args[:value_string].nil?
        end
      end
      
      # A collection resource defines a named set of apps that is visible to a set of
      # users in the Google Play Store app running on those users' managed devices.
      # Those users can then install any of those apps if they wish (which will
      # trigger creation of install and entitlement resources). A user cannot install
      # an app on a managed device unless the app is listed in at least one collection
      # that is visible to that user.
      # Note that the API can be used to directly install an app regardless of whether
      # it is in any collection - so an enterprise has a choice of either directly
      # pushing apps to users, or allowing users to install apps if they want. Which
      # is appropriate will depend on the enterprise's policies and the purpose of the
      # apps concerned.
      class Collection
        include Google::Apis::Core::Hashable
      
        # Arbitrary unique ID, allocated by the API on creation.
        # Corresponds to the JSON property `collectionId`
        # @return [String]
        attr_accessor :collection_id
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # androidenterprise#collection".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # A user-friendly name for the collection (should be unique), e.g. "Accounting
        # apps".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The IDs of the products in the collection, in the order in which they should
        # be displayed.
        # Corresponds to the JSON property `productId`
        # @return [Array<String>]
        attr_accessor :product_id
      
        # Whether this collection is visible to all users, or only to the users that
        # have been granted access through the collection_viewers api. Even if a
        # collection is visible to allUsers, it is possible to add and remove viewers,
        # but this will have no effect until the collection's visibility changes to
        # viewersOnly.
        # Corresponds to the JSON property `visibility`
        # @return [String]
        attr_accessor :visibility
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @collection_id = args[:collection_id] unless args[:collection_id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
          @product_id = args[:product_id] unless args[:product_id].nil?
          @visibility = args[:visibility] unless args[:visibility].nil?
        end
      end
      
      # The user resources for the collection.
      class ListCollectionViewersResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # androidenterprise#collectionViewersListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # A user of an enterprise.
        # Corresponds to the JSON property `user`
        # @return [Array<Google::Apis::AndroidenterpriseV1::User>]
        attr_accessor :user
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] unless args[:kind].nil?
          @user = args[:user] unless args[:user].nil?
        end
      end
      
      # The collection resources for the enterprise.
      class ListCollectionsResponse
        include Google::Apis::Core::Hashable
      
        # An ordered collection of products which can be made visible on the Google Play
        # Store app to a selected group of users.
        # Corresponds to the JSON property `collection`
        # @return [Array<Google::Apis::AndroidenterpriseV1::Collection>]
        attr_accessor :collection
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # androidenterprise#collectionsListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @collection = args[:collection] unless args[:collection].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # A device resource represents a mobile device managed by the MDM and belonging
      # to a specific enterprise user.
      # This collection cannot be modified via the API; it is automatically populated
      # as devices are set up to be managed.
      class Device
        include Google::Apis::Core::Hashable
      
        # The Google Play Services Android ID for the device encoded as a lowercase hex
        # string, e.g. "123456789abcdef0".
        # Corresponds to the JSON property `androidId`
        # @return [String]
        attr_accessor :android_id
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # androidenterprise#device".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The mechanism by which this device is managed by the MDM. "managedDevice"
        # means that the MDM's app is a device owner. "managedProfile" means that the
        # MDM's app is the profile owner (and there is a separate personal profile which
        # is not managed). "containerApp" means that the MDM's app is managing the
        # Android for Work container app on the device.
        # Corresponds to the JSON property `managementType`
        # @return [String]
        attr_accessor :management_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @android_id = args[:android_id] unless args[:android_id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @management_type = args[:management_type] unless args[:management_type].nil?
        end
      end
      
      # The state of a user's device, as accessed by the getState and setState methods
      # on device resources.
      class DeviceState
        include Google::Apis::Core::Hashable
      
        # The state of the Google account on the device. "enabled" indicates that the
        # Google account on the device can be used to access Google services (including
        # Google Play), while "disabled" means that it cannot. A new device is initially
        # in the "disabled" state.
        # Corresponds to the JSON property `accountState`
        # @return [String]
        attr_accessor :account_state
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # androidenterprise#deviceState".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_state = args[:account_state] unless args[:account_state].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # The device resources for the user.
      class ListDevicesResponse
        include Google::Apis::Core::Hashable
      
        # A managed device.
        # Corresponds to the JSON property `device`
        # @return [Array<Google::Apis::AndroidenterpriseV1::Device>]
        attr_accessor :device
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # androidenterprise#devicesListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device = args[:device] unless args[:device].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # An enterprise resource represents a binding between an organisation and their
      # MDM.
      # To create an enterprise, an admin of the enterprise must first go through a
      # Play for Work sign-up flow. At the end of this the admin will be presented
      # with a token (a short opaque alphanumeric string). They must then present this
      # to the MDM, who then supplies it to the enroll method. Until this is done the
      # MDM will not have any access to the enterprise.
      # After calling enroll the MDM should call setAccount to specify the service
      # account that will be allowed to act on behalf of the enterprise, which will be
      # required for access to the enterprise's data through this API. Only one call
      # of setAccount is allowed for a given enterprise; the only way to change the
      # account later is to unenroll the enterprise and enroll it again (obtaining a
      # new token).
      # The MDM can unenroll an enterprise in order to sever the binding between them.
      # Re-enrolling an enterprise is possible, but requires a new token to be
      # retrieved. Enterprises.unenroll requires the MDM's credentials (as enroll does)
      # , not the enterprise's. Enterprises.unenroll can only be used for enterprises
      # that were previously enrolled with the enroll call. Any enterprises that were
      # enrolled using the (deprecated) Enterprises.insert call must be unenrolled
      # with Enterprises.delete and can then be re-enrolled using the Enterprises.
      # enroll call.
      # The ID for an enterprise is an opaque string. It is returned by insert and
      # enroll and can also be retrieved if the enterprise's primary domain is known
      # using the list method.
      class Enterprise
        include Google::Apis::Core::Hashable
      
        # The unique ID for the enterprise.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # androidenterprise#enterprise".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The name of the enterprise, e.g. "Example Inc".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The enterprise's primary domain, e.g. "example.com".
        # Corresponds to the JSON property `primaryDomain`
        # @return [String]
        attr_accessor :primary_domain
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
          @primary_domain = args[:primary_domain] unless args[:primary_domain].nil?
        end
      end
      
      # A service account that can be used to authenticate as the enterprise to API
      # calls that require such authentication.
      class EnterpriseAccount
        include Google::Apis::Core::Hashable
      
        # The email address of the service account.
        # Corresponds to the JSON property `accountEmail`
        # @return [String]
        attr_accessor :account_email
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # androidenterprise#enterpriseAccount".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_email = args[:account_email] unless args[:account_email].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # The matching enterprise resources.
      class ListEnterprisesResponse
        include Google::Apis::Core::Hashable
      
        # An enterprise.
        # Corresponds to the JSON property `enterprise`
        # @return [Array<Google::Apis::AndroidenterpriseV1::Enterprise>]
        attr_accessor :enterprise
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # androidenterprise#enterprisesListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enterprise = args[:enterprise] unless args[:enterprise].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # The existence of an entitlement resource means that a user has the right to
      # use a particular app on any of their devices. This might be because the app is
      # free or because they have been allocated a license to the app from a group
      # license purchased by the enterprise.
      # It should always be true that a user has an app installed on one of their
      # devices only if they have an entitlement to it. So if an entitlement is
      # deleted, the app will be uninstalled from all devices. Similarly if the user
      # installs an app (and is permitted to do so), or the MDM triggers an install of
      # the app, an entitlement to that app is automatically created. If this is
      # impossible - e.g. the enterprise has not purchased sufficient licenses - then
      # installation fails.
      # Note that entitlements are always user specific, not device specific; a user
      # may have an entitlement even though they have not installed the app anywhere.
      # Once they have an entitlement they can install the app on multiple devices.
      # The API can be used to create an entitlement. If the app is a free app, a
      # group license for that app is created. If it's a paid app, creating the
      # entitlement consumes one license; it remains consumed until the entitlement is
      # removed. Optionally an installation of the app on all the user's managed
      # devices can be triggered at the time the entitlement is created. An
      # entitlement cannot be created for an app if the app requires permissions that
      # the enterprise has not yet accepted.
      # Entitlements for paid apps that are due to purchases by the user on a non-
      # managed profile will have "userPurchase" as entitlement reason; those
      # entitlements cannot be removed via the API.
      class Entitlement
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # androidenterprise#entitlement".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The ID of the product that the entitlement is for, e.g. "app:com.google.
        # android.gm".
        # Corresponds to the JSON property `productId`
        # @return [String]
        attr_accessor :product_id
      
        # The reason for the entitlement, e.g. "free" for free apps. This is temporary,
        # it will be replaced by the acquisition kind field of group licenses.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] unless args[:kind].nil?
          @product_id = args[:product_id] unless args[:product_id].nil?
          @reason = args[:reason] unless args[:reason].nil?
        end
      end
      
      # The entitlement resources for the user.
      class ListEntitlementsResponse
        include Google::Apis::Core::Hashable
      
        # An entitlement of a user to a product (e.g. an app). For example, a free app
        # that they have installed, or a paid app that they have been allocated a
        # license to.
        # Corresponds to the JSON property `entitlement`
        # @return [Array<Google::Apis::AndroidenterpriseV1::Entitlement>]
        attr_accessor :entitlement
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # androidenterprise#entitlementsListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entitlement = args[:entitlement] unless args[:entitlement].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # A group license object indicates a product that an enterprise admin has
      # approved for use in the enterprise. The product may be free or paid. For free
      # products, a group license object is created in these cases: if the enterprise
      # admin approves a product in Google Play, if the product is added to a
      # collection, or if an entitlement for the product is created for a user via the
      # API. For paid products, a group license object is only created as part of the
      # first bulk purchase of that product in Google Play done by the enterprise
      # admin.
      # The API can be used to query group licenses; the available information
      # includes the total number of licenses purchased (for paid products) and the
      # total number of licenses that have been provisioned, i.e. the total number of
      # user entitlements in existence for the product.
      # Group license objects are never deleted; if e.g. a free app is added to a
      # collection and then removed, the group license will remain, allowing to keep
      # track of any remaining entitlements. An enterprise admin may indicate they are
      # no longer interested in the group license by marking it as unapproved in
      # Google Play.
      class GroupLicense
        include Google::Apis::Core::Hashable
      
        # How this group license was acquired. "bulkPurchase" means that this group
        # license object was created because the enterprise purchased licenses for this
        # product; this is "free" otherwise (for free products).
        # Corresponds to the JSON property `acquisitionKind`
        # @return [String]
        attr_accessor :acquisition_kind
      
        # Whether the product to which this group license relates is currently approved
        # by the enterprise, as either "approved" or "unapproved". Products are approved
        # when a group license is first created, but this approval may be revoked by an
        # enterprise admin via Google Play. Unapproved products will not be visible to
        # end users in collections and new entitlements to them should not normally be
        # created.
        # Corresponds to the JSON property `approval`
        # @return [String]
        attr_accessor :approval
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # androidenterprise#groupLicense".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The total number of provisioned licenses for this product. Returned by read
        # operations, but ignored in write operations.
        # Corresponds to the JSON property `numProvisioned`
        # @return [Fixnum]
        attr_accessor :num_provisioned
      
        # The number of purchased licenses (possibly in multiple purchases). If this
        # field is omitted then there is no limit on the number of licenses that can be
        # provisioned (e.g. if the acquisition kind is "free").
        # Corresponds to the JSON property `numPurchased`
        # @return [Fixnum]
        attr_accessor :num_purchased
      
        # The ID of the product that the license is for, e.g. "app:com.google.android.gm"
        # .
        # Corresponds to the JSON property `productId`
        # @return [String]
        attr_accessor :product_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @acquisition_kind = args[:acquisition_kind] unless args[:acquisition_kind].nil?
          @approval = args[:approval] unless args[:approval].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @num_provisioned = args[:num_provisioned] unless args[:num_provisioned].nil?
          @num_purchased = args[:num_purchased] unless args[:num_purchased].nil?
          @product_id = args[:product_id] unless args[:product_id].nil?
        end
      end
      
      # The user resources for the group license.
      class ListGroupLicenseUsersResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # androidenterprise#groupLicenseUsersListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # A user of an enterprise.
        # Corresponds to the JSON property `user`
        # @return [Array<Google::Apis::AndroidenterpriseV1::User>]
        attr_accessor :user
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] unless args[:kind].nil?
          @user = args[:user] unless args[:user].nil?
        end
      end
      
      # The grouplicense resources for the enterprise.
      class ListGroupLicensesResponse
        include Google::Apis::Core::Hashable
      
        # A group license for a product approved for use in the enterprise.
        # Corresponds to the JSON property `groupLicense`
        # @return [Array<Google::Apis::AndroidenterpriseV1::GroupLicense>]
        attr_accessor :group_license
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # androidenterprise#groupLicensesListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @group_license = args[:group_license] unless args[:group_license].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # The existence of an install resource indicates that an app is installed on a
      # particular device (or that an install is pending).
      # The API can be used to create an install resource using the update method.
      # This triggers the actual install of the app on the device. If the user does
      # not already have an entitlement for the app then an attempt is made to create
      # one. If this fails (e.g. because the app is not free and there is no available
      # license) then the creation of the install fails.
      # The API can also be used to update an installed app. If the update method is
      # used on an existing install then the app will be updated to the latest
      # available version.
      # Note that it is not possible to force the installation of a specific version
      # of an app; the version code is read-only.
      # If a user installs an app themselves (as permitted by the enterprise), then
      # again an install resource and possibly an entitlement resource are
      # automatically created.
      # The API can also be used to delete an install resource, which triggers the
      # removal of the app from the device. Note that deleting an install does not
      # automatically remove the corresponding entitlement, even if there are no
      # remaining installs. The install resource will also be deleted if the user
      # uninstalls the app themselves.
      class Install
        include Google::Apis::Core::Hashable
      
        # Install state. The state "installPending" means that an install request has
        # recently been made and download to the device is in progress. The state "
        # installed" means that the app has been installed. This field is read-only.
        # Corresponds to the JSON property `installState`
        # @return [String]
        attr_accessor :install_state
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # androidenterprise#install".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The ID of the product that the install is for, e.g. "app:com.google.android.gm"
        # .
        # Corresponds to the JSON property `productId`
        # @return [String]
        attr_accessor :product_id
      
        # The version of the installed product. Guaranteed to be set only if the install
        # state is "installed".
        # Corresponds to the JSON property `versionCode`
        # @return [Fixnum]
        attr_accessor :version_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @install_state = args[:install_state] unless args[:install_state].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @product_id = args[:product_id] unless args[:product_id].nil?
          @version_code = args[:version_code] unless args[:version_code].nil?
        end
      end
      
      # The install resources for the device.
      class ListInstallsResponse
        include Google::Apis::Core::Hashable
      
        # An installation of an app for a user on a specific device. The existence of an
        # install implies that the user must have an entitlement to the app.
        # Corresponds to the JSON property `install`
        # @return [Array<Google::Apis::AndroidenterpriseV1::Install>]
        attr_accessor :install
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # androidenterprise#installsListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @install = args[:install] unless args[:install].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # A permission represents some extra capability, to be granted to an Android app,
      # which requires explicit consent. An enterprise admin must consent to these
      # permissions on behalf of their users before an entitlement for the app can be
      # created.
      # The permissions collection is read-only. The information provided for each
      # permission (localized name and description) is intended to be used in the MDM
      # user interface when obtaining consent from the enterprise.
      class Permission
        include Google::Apis::Core::Hashable
      
        # A longer description of the permissions giving more details of what it affects.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # androidenterprise#permission".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The name of the permission.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # An opaque string uniquely identifying the permission.
        # Corresponds to the JSON property `permissionId`
        # @return [String]
        attr_accessor :permission_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] unless args[:description].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
          @permission_id = args[:permission_id] unless args[:permission_id].nil?
        end
      end
      
      # A product represents an app in the Google Play Store that is available to at
      # least some users in the enterprise. (Some apps are restricted to a single
      # enterprise, and no information about them is made available outside that
      # enterprise.)
      # The information provided for each product (localized name, icon, link to the
      # full Google Play details page) is intended to allow a basic representation of
      # the product within an MDM user interface.
      class Product
        include Google::Apis::Core::Hashable
      
        # The name of the author of the product (e.g. the app developer).
        # Corresponds to the JSON property `authorName`
        # @return [String]
        attr_accessor :author_name
      
        # A link to the (consumer) Google Play details page for the product.
        # Corresponds to the JSON property `detailsUrl`
        # @return [String]
        attr_accessor :details_url
      
        # A link to an image that can be used as an icon for the product.
        # Corresponds to the JSON property `iconUrl`
        # @return [String]
        attr_accessor :icon_url
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # androidenterprise#product".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # A string of the form "app:
        # " - e.g. "app:com.google.android.gm" represents the GMail app.
        # Corresponds to the JSON property `productId`
        # @return [String]
        attr_accessor :product_id
      
        # Whether this app can only be installed on devices using the Android for Work
        # container app.
        # Corresponds to the JSON property `requiresContainerApp`
        # @return [Boolean]
        attr_accessor :requires_container_app
        alias_method :requires_container_app?, :requires_container_app
      
        # The name of the product.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # A link to the Google Play for Work details page for the product, for use by an
        # Enterprise administrator.
        # Corresponds to the JSON property `workDetailsUrl`
        # @return [String]
        attr_accessor :work_details_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @author_name = args[:author_name] unless args[:author_name].nil?
          @details_url = args[:details_url] unless args[:details_url].nil?
          @icon_url = args[:icon_url] unless args[:icon_url].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @product_id = args[:product_id] unless args[:product_id].nil?
          @requires_container_app = args[:requires_container_app] unless args[:requires_container_app].nil?
          @title = args[:title] unless args[:title].nil?
          @work_details_url = args[:work_details_url] unless args[:work_details_url].nil?
        end
      end
      
      # A product permissions resource represents the set of permissions required by a
      # specific app and whether or not they have been accepted by an enterprise admin.
      # The API can be used to read the set of permissions, and also to update the set
      # to indicate that permissions have been accepted.
      class ProductPermission
        include Google::Apis::Core::Hashable
      
        # An opaque string uniquely identifying the permission.
        # Corresponds to the JSON property `permissionId`
        # @return [String]
        attr_accessor :permission_id
      
        # Whether the permission has been accepted or not.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @permission_id = args[:permission_id] unless args[:permission_id].nil?
          @state = args[:state] unless args[:state].nil?
        end
      end
      
      # Information about the permissions required by a specific app and whether they
      # have been accepted by the enterprise.
      class ProductPermissions
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # androidenterprise#productPermissions".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The permissions required by the app.
        # Corresponds to the JSON property `permission`
        # @return [Array<Google::Apis::AndroidenterpriseV1::ProductPermission>]
        attr_accessor :permission
      
        # The ID of the app that the permissions relate to, e.g. "app:com.google.android.
        # gm".
        # Corresponds to the JSON property `productId`
        # @return [String]
        attr_accessor :product_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] unless args[:kind].nil?
          @permission = args[:permission] unless args[:permission].nil?
          @product_id = args[:product_id] unless args[:product_id].nil?
        end
      end
      
      # A user resource represents an individual user within the enterprise's domain.
      # Note that each user is associated with a Google account based on the user's
      # corporate email address (which must be in one of the enterprise's domains). As
      # part of installing an MDM app to manage a device the Google account must be
      # provisioned to the device, and so the user resource must be created before
      # that. This can be done using the Google Admin SDK Directory API.
      # The ID for a user is an opaque string. It can be retrieved using the list
      # method queried by the user's primary email address.
      class User
        include Google::Apis::Core::Hashable
      
        # The unique ID for the user.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # androidenterprise#user".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The user's primary email, e.g. "jsmith@example.com".
        # Corresponds to the JSON property `primaryEmail`
        # @return [String]
        attr_accessor :primary_email
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @primary_email = args[:primary_email] unless args[:primary_email].nil?
        end
      end
      
      # A UserToken is used by a user when setting up a managed device or profile with
      # their work account on a device. When the user enters their email address and
      # token (activation code) the appropriate MDM app can be automatically
      # downloaded.
      class UserToken
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # androidenterprise#userToken".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The token (activation code) to be entered by the user. This consists of a
        # sequence of decimal digits. Note that the leading digit may be 0.
        # Corresponds to the JSON property `token`
        # @return [String]
        attr_accessor :token
      
        # The unique ID for the user.
        # Corresponds to the JSON property `userId`
        # @return [String]
        attr_accessor :user_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] unless args[:kind].nil?
          @token = args[:token] unless args[:token].nil?
          @user_id = args[:user_id] unless args[:user_id].nil?
        end
      end
      
      # The matching user resources.
      class ListUsersResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # androidenterprise#usersListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # A user of an enterprise.
        # Corresponds to the JSON property `user`
        # @return [Array<Google::Apis::AndroidenterpriseV1::User>]
        attr_accessor :user
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] unless args[:kind].nil?
          @user = args[:user] unless args[:user].nil?
        end
      end
    end
  end
end
