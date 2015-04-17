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
    module SiteVerificationV1

      # 
      class GettokenRequest
        include Google::Apis::Core::Hashable
      
        # The site for which a verification token will be generated.
        # Corresponds to the JSON property `site`
        # @return [Google::Apis::SiteVerificationV1::GettokenRequest::Site]
        attr_accessor :site
      
        # The verification method that will be used to verify this site. For sites, '
        # FILE' or 'META' methods may be used. For domains, only 'DNS' may be used.
        # Corresponds to the JSON property `verificationMethod`
        # @return [String]
        attr_accessor :verification_method
      
        def initialize(**args)
          @site = args[:site] unless args[:site].nil?
          @verification_method = args[:verification_method] unless args[:verification_method].nil?
        end
        # The site for which a verification token will be generated.
        class Site
          include Google::Apis::Core::Hashable
        
          # The site identifier. If the type is set to SITE, the identifier is a URL. If
          # the type is set to INET_DOMAIN, the site identifier is a domain name.
          # Corresponds to the JSON property `identifier`
          # @return [String]
          attr_accessor :identifier
        
          # The type of resource to be verified. Can be SITE or INET_DOMAIN (domain name).
          # Corresponds to the JSON property `type`
          # @return [String]
          attr_accessor :type
        
          def initialize(**args)
            @identifier = args[:identifier] unless args[:identifier].nil?
            @type = args[:type] unless args[:type].nil?
          end
        end
      end

      # 
      class GettokenResponse
        include Google::Apis::Core::Hashable
      
        # The verification method to use in conjunction with this token. For FILE, the
        # token should be placed in the top-level directory of the site, stored inside a
        # file of the same name. For META, the token should be placed in the HEAD tag of
        # the default page that is loaded for the site. For DNS, the token should be
        # placed in a TXT record of the domain.
        # Corresponds to the JSON property `method`
        # @return [String]
        attr_accessor :method_prop
      
        # The verification token. The token must be placed appropriately in order for
        # verification to succeed.
        # Corresponds to the JSON property `token`
        # @return [String]
        attr_accessor :token
      
        def initialize(**args)
          @method_prop = args[:method_prop] unless args[:method_prop].nil?
          @token = args[:token] unless args[:token].nil?
        end
      end

      # 
      class ListResponse
        include Google::Apis::Core::Hashable
      
        # The list of sites that are owned by the authenticated user.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::SiteVerificationV1::Resource>]
        attr_accessor :items
      
        def initialize(**args)
          @items = args[:items] unless args[:items].nil?
        end
      end

      # 
      class Resource
        include Google::Apis::Core::Hashable
      
        # The string used to identify this site. This value should be used in the "id"
        # portion of the REST URL for the Get, Update, and Delete operations.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The email addresses of all verified owners.
        # Corresponds to the JSON property `owners`
        # @return [Array<String>]
        attr_accessor :owners
      
        # The address and type of a site that is verified or will be verified.
        # Corresponds to the JSON property `site`
        # @return [Google::Apis::SiteVerificationV1::Resource::Site]
        attr_accessor :site
      
        def initialize(**args)
          @id = args[:id] unless args[:id].nil?
          @owners = args[:owners] unless args[:owners].nil?
          @site = args[:site] unless args[:site].nil?
        end
        # The address and type of a site that is verified or will be verified.
        class Site
          include Google::Apis::Core::Hashable
        
          # The site identifier. If the type is set to SITE, the identifier is a URL. If
          # the type is set to INET_DOMAIN, the site identifier is a domain name.
          # Corresponds to the JSON property `identifier`
          # @return [String]
          attr_accessor :identifier
        
          # The site type. Can be SITE or INET_DOMAIN (domain name).
          # Corresponds to the JSON property `type`
          # @return [String]
          attr_accessor :type
        
          def initialize(**args)
            @identifier = args[:identifier] unless args[:identifier].nil?
            @type = args[:type] unless args[:type].nil?
          end
        end
      end
    end
  end
end
