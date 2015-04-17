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
    module UrlshortenerV1
      class AnalyticsSnapshotRepresentation < Google::Apis::Core::JsonRepresentation; end
      class AnalyticsSummaryRepresentation < Google::Apis::Core::JsonRepresentation; end
      class StringCountRepresentation < Google::Apis::Core::JsonRepresentation; end
      class UrlRepresentation < Google::Apis::Core::JsonRepresentation; end
      class HistoryRepresentation < Google::Apis::Core::JsonRepresentation; end

      # @private
      class AnalyticsSnapshotRepresentation < Google::Apis::Core::JsonRepresentation
        collection :browsers, as: 'browsers', class: Google::Apis::UrlshortenerV1::StringCount, decorator: Google::Apis::UrlshortenerV1::StringCountRepresentation
        
        
        collection :countries, as: 'countries', class: Google::Apis::UrlshortenerV1::StringCount, decorator: Google::Apis::UrlshortenerV1::StringCountRepresentation
        
        
        property :long_url_clicks, as: 'longUrlClicks'
        collection :platforms, as: 'platforms', class: Google::Apis::UrlshortenerV1::StringCount, decorator: Google::Apis::UrlshortenerV1::StringCountRepresentation
        
        
        collection :referrers, as: 'referrers', class: Google::Apis::UrlshortenerV1::StringCount, decorator: Google::Apis::UrlshortenerV1::StringCountRepresentation
        
        
        property :short_url_clicks, as: 'shortUrlClicks'
      end

      # @private
      class AnalyticsSummaryRepresentation < Google::Apis::Core::JsonRepresentation
        property :all_time, as: 'allTime', class: Google::Apis::UrlshortenerV1::AnalyticsSnapshot, decorator: Google::Apis::UrlshortenerV1::AnalyticsSnapshotRepresentation
        
        property :day, as: 'day', class: Google::Apis::UrlshortenerV1::AnalyticsSnapshot, decorator: Google::Apis::UrlshortenerV1::AnalyticsSnapshotRepresentation
        
        property :month, as: 'month', class: Google::Apis::UrlshortenerV1::AnalyticsSnapshot, decorator: Google::Apis::UrlshortenerV1::AnalyticsSnapshotRepresentation
        
        property :two_hours, as: 'twoHours', class: Google::Apis::UrlshortenerV1::AnalyticsSnapshot, decorator: Google::Apis::UrlshortenerV1::AnalyticsSnapshotRepresentation
        
        property :week, as: 'week', class: Google::Apis::UrlshortenerV1::AnalyticsSnapshot, decorator: Google::Apis::UrlshortenerV1::AnalyticsSnapshotRepresentation
      end

      # @private
      class StringCountRepresentation < Google::Apis::Core::JsonRepresentation
        property :count, as: 'count'
        property :id, as: 'id'
      end

      # @private
      class UrlRepresentation < Google::Apis::Core::JsonRepresentation
        property :analytics, as: 'analytics', class: Google::Apis::UrlshortenerV1::AnalyticsSummary, decorator: Google::Apis::UrlshortenerV1::AnalyticsSummaryRepresentation
        
        property :created, as: 'created'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :long_url, as: 'longUrl'
        property :status, as: 'status'
      end

      # @private
      class HistoryRepresentation < Google::Apis::Core::JsonRepresentation
        collection :items, as: 'items', class: Google::Apis::UrlshortenerV1::Url, decorator: Google::Apis::UrlshortenerV1::UrlRepresentation
        
        
        property :items_per_page, as: 'itemsPerPage'
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        property :total_items, as: 'totalItems'
      end
    end
  end
end
