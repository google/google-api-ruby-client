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
    module WebmastersV3
      # Webmaster Tools API
      #
      # Lets you view Google Webmaster Tools data for your verified sites.
      #
      # @example
      #    require 'google/apis/webmasters_v3'
      #
      #    Webmasters = Google::Apis::WebmastersV3 # Alias the module
      #    service = Webmasters::WebmastersService.new
      #
      # @see https://developers.google.com/webmaster-tools/v3/welcome
      class WebmastersService < Google::Apis::Core::BaseService

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
          super('https://www.googleapis.com/', '/webmasters/v3/')
        end

        # Deletes a sitemap from this site.
        # @param [String] site_url
        #   The site's URL, including protocol, for example 'http://www.example.com/'
        # @param [String] feedpath
        #   The URL of the actual sitemap (for example http://www.example.com/sitemap.xml).
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
        def delete_sitemap(site_url, feedpath, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'sites/{siteUrl}/sitemaps/{feedpath}'
          command =  make_simple_command(:delete, path, options)
          command.params['siteUrl'] = site_url unless site_url.nil?
          command.params['feedpath'] = feedpath unless feedpath.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Retrieves information about a specific sitemap.
        # @param [String] site_url
        #   The site's URL, including protocol, for example 'http://www.example.com/'
        # @param [String] feedpath
        #   The URL of the actual sitemap (for example http://www.example.com/sitemap.xml).
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
        # @yieldparam result [Google::Apis::WebmastersV3::WmxSitemap] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WebmastersV3::WmxSitemap]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_sitemap(site_url, feedpath, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'sites/{siteUrl}/sitemaps/{feedpath}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::WebmastersV3::WmxSitemapRepresentation
          command.response_class = Google::Apis::WebmastersV3::WmxSitemap
          command.params['siteUrl'] = site_url unless site_url.nil?
          command.params['feedpath'] = feedpath unless feedpath.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Lists sitemaps uploaded to the site.
        # @param [String] site_url
        #   The site's URL, including protocol, for example 'http://www.example.com/'
        # @param [String] sitemap_index
        #   A URL of a site's sitemap index.
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
        # @yieldparam result [Google::Apis::WebmastersV3::SitemapsListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WebmastersV3::SitemapsListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_sitemaps(site_url, sitemap_index: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'sites/{siteUrl}/sitemaps'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::WebmastersV3::SitemapsListResponseRepresentation
          command.response_class = Google::Apis::WebmastersV3::SitemapsListResponse
          command.params['siteUrl'] = site_url unless site_url.nil?
          command.query['sitemapIndex'] = sitemap_index unless sitemap_index.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Submits a sitemap for a site.
        # @param [String] site_url
        #   The site's URL, including protocol, for example 'http://www.example.com/'
        # @param [String] feedpath
        #   The URL of the sitemap to add.
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
        def submit_sitemap(site_url, feedpath, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'sites/{siteUrl}/sitemaps/{feedpath}'
          command =  make_simple_command(:put, path, options)
          command.params['siteUrl'] = site_url unless site_url.nil?
          command.params['feedpath'] = feedpath unless feedpath.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Adds a site to the set of the user's sites in Webmaster Tools.
        # @param [String] site_url
        #   The URL of the site to add.
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
        def add_site(site_url, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'sites/{siteUrl}'
          command =  make_simple_command(:put, path, options)
          command.params['siteUrl'] = site_url unless site_url.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Removes a site from the set of the user's Webmaster Tools sites.
        # @param [String] site_url
        #   The site's URL, including protocol, for example 'http://www.example.com/'
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
        def delete_site(site_url, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'sites/{siteUrl}'
          command =  make_simple_command(:delete, path, options)
          command.params['siteUrl'] = site_url unless site_url.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Retrieves information about specific site.
        # @param [String] site_url
        #   The site's URL, including protocol, for example 'http://www.example.com/'
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
        # @yieldparam result [Google::Apis::WebmastersV3::WmxSite] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WebmastersV3::WmxSite]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_site(site_url, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'sites/{siteUrl}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::WebmastersV3::WmxSiteRepresentation
          command.response_class = Google::Apis::WebmastersV3::WmxSite
          command.params['siteUrl'] = site_url unless site_url.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Lists your Webmaster Tools sites.
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
        # @yieldparam result [Google::Apis::WebmastersV3::SitesListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WebmastersV3::SitesListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_sites(fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'sites'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::WebmastersV3::SitesListResponseRepresentation
          command.response_class = Google::Apis::WebmastersV3::SitesListResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Retrieves a time series of the number of URL crawl errors per error category
        # and platform.
        # @param [String] site_url
        #   The site's URL, including protocol, for example 'http://www.example.com/'
        # @param [String] category
        #   The crawl error category, for example 'serverError'. If not specified, we
        #   return results for all categories.
        # @param [Boolean] latest_counts_only
        #   If true, returns only the latest crawl error counts.
        # @param [String] platform
        #   The user agent type (platform) that made the request, for example 'web'. If
        #   not specified, we return results for all platforms.
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
        # @yieldparam result [Google::Apis::WebmastersV3::UrlCrawlErrorsCountsQueryResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WebmastersV3::UrlCrawlErrorsCountsQueryResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def query_urlcrawlerrorscount(site_url, category: nil, latest_counts_only: nil, platform: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'sites/{siteUrl}/urlCrawlErrorsCounts/query'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::WebmastersV3::UrlCrawlErrorsCountsQueryResponseRepresentation
          command.response_class = Google::Apis::WebmastersV3::UrlCrawlErrorsCountsQueryResponse
          command.params['siteUrl'] = site_url unless site_url.nil?
          command.query['category'] = category unless category.nil?
          command.query['latestCountsOnly'] = latest_counts_only unless latest_counts_only.nil?
          command.query['platform'] = platform unless platform.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Retrieves details about crawl errors for a site's sample URL.
        # @param [String] site_url
        #   The site's URL, including protocol, for example 'http://www.example.com/'
        # @param [String] url
        #   The relative path (without the site) of the sample URL; must be one of the
        #   URLs returned by list
        # @param [String] category
        #   The crawl error category, for example 'authPermissions'
        # @param [String] platform
        #   The user agent type (platform) that made the request, for example 'web'
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
        # @yieldparam result [Google::Apis::WebmastersV3::UrlCrawlErrorsSample] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WebmastersV3::UrlCrawlErrorsSample]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_urlcrawlerrorssample(site_url, url, category: nil, platform: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'sites/{siteUrl}/urlCrawlErrorsSamples/{url}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::WebmastersV3::UrlCrawlErrorsSampleRepresentation
          command.response_class = Google::Apis::WebmastersV3::UrlCrawlErrorsSample
          command.params['siteUrl'] = site_url unless site_url.nil?
          command.params['url'] = url unless url.nil?
          command.query['category'] = category unless category.nil?
          command.query['platform'] = platform unless platform.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Lists a site's sample URLs for the specified crawl error category and platform.
        # @param [String] site_url
        #   The site's URL, including protocol, for example 'http://www.example.com/'
        # @param [String] category
        #   The crawl error category, for example 'authPermissions'
        # @param [String] platform
        #   The user agent type (platform) that made the request, for example 'web'
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
        # @yieldparam result [Google::Apis::WebmastersV3::UrlCrawlErrorsSamplesListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WebmastersV3::UrlCrawlErrorsSamplesListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_urlcrawlerrorssamples(site_url, category: nil, platform: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'sites/{siteUrl}/urlCrawlErrorsSamples'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::WebmastersV3::UrlCrawlErrorsSamplesListResponseRepresentation
          command.response_class = Google::Apis::WebmastersV3::UrlCrawlErrorsSamplesListResponse
          command.params['siteUrl'] = site_url unless site_url.nil?
          command.query['category'] = category unless category.nil?
          command.query['platform'] = platform unless platform.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Marks the provided site's sample URL as fixed, and removes it from the samples
        # list.
        # @param [String] site_url
        #   The site's URL, including protocol, for example 'http://www.example.com/'
        # @param [String] url
        #   The relative path (without the site) of the sample URL; must be one of the
        #   URLs returned by list
        # @param [String] category
        #   The crawl error category, for example 'authPermissions'
        # @param [String] platform
        #   The user agent type (platform) that made the request, for example 'web'
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
        def mark_as_fixed(site_url, url, category: nil, platform: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'sites/{siteUrl}/urlCrawlErrorsSamples/{url}'
          command =  make_simple_command(:delete, path, options)
          command.params['siteUrl'] = site_url unless site_url.nil?
          command.params['url'] = url unless url.nil?
          command.query['category'] = category unless category.nil?
          command.query['platform'] = platform unless platform.nil?
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
