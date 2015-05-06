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
    module YoutubeV3
      
      class AccessPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Activity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ActivityContentDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ActivityContentDetailsBulletin
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ActivityContentDetailsChannelItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ActivityContentDetailsComment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ActivityContentDetailsFavorite
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ActivityContentDetailsLike
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ActivityContentDetailsPlaylistItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ActivityContentDetailsPromotedItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ActivityContentDetailsRecommendation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ActivityContentDetailsSocial
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ActivityContentDetailsSubscription
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ActivityContentDetailsUpload
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListActivitiesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ActivitySnippet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Caption
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListCaptionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class CaptionSnippet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class CdnSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Channel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ChannelAuditDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ChannelBannerResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ChannelBrandingSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ChannelContentDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class RelatedPlaylists
          class Representation < Google::Apis::Core::JsonRepresentation; end
        end
      end
      
      class ChannelContentOwnerDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ChannelConversionPing
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ChannelConversionPings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ChannelId
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListChannelsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ChannelLocalization
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ChannelSection
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ChannelSectionContentDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListChannelSectionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ChannelSectionLocalization
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ChannelSectionSnippet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ChannelSectionTargeting
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ChannelSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ChannelSnippet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ChannelStatistics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ChannelStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ChannelTopicDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Comment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListCommentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class CommentSnippet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class CommentThread
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListCommentThreadsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class CommentThreadReplies
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class CommentThreadSnippet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ContentRating
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class GeoPoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class GuideCategory
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListGuideCategoriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class GuideCategorySnippet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class I18nLanguage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListI18nLanguagesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class I18nLanguageSnippet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class I18nRegion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListI18nRegionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class I18nRegionSnippet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ImageSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class IngestionInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class InvideoBranding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class InvideoPosition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class InvideoPromotion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class InvideoTiming
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class LanguageTag
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class LiveBroadcast
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class LiveBroadcastContentDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListLiveBroadcastsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class LiveBroadcastSnippet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class LiveBroadcastStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class LiveStream
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class LiveStreamContentDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListLiveStreamsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class LiveStreamSnippet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class LiveStreamStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class LocalizedProperty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class LocalizedString
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class MonitorStreamInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class PageInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Playlist
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class PlaylistContentDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class PlaylistItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class PlaylistItemContentDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListPlaylistItemsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class PlaylistItemSnippet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class PlaylistItemStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListPlaylistResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class PlaylistLocalization
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class PlaylistPlayer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class PlaylistSnippet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class PlaylistStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class PromotedItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class PromotedItemId
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class PropertyValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ResourceId
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class SearchListsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class SearchResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class SearchResultSnippet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Subscription
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class SubscriptionContentDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListSubscriptionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class SubscriptionSnippet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class SubscriptionSubscriberSnippet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Thumbnail
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ThumbnailDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class SetThumbnailResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class TokenPagination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Video
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class VideoAbuseReport
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class VideoAbuseReportReason
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListVideoAbuseReportReasonResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class VideoAbuseReportReasonSnippet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class VideoAbuseReportSecondaryReason
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class VideoAgeGating
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class VideoCategory
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListVideoCategoryResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class VideoCategorySnippet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class VideoContentDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class VideoContentDetailsRegionRestriction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class VideoConversionPing
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class VideoConversionPings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class VideoFileDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class VideoFileDetailsAudioStream
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class VideoFileDetailsVideoStream
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class GetVideoRatingResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListVideosResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class VideoLiveStreamingDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class VideoLocalization
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class VideoMonetizationDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class VideoPlayer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class VideoProcessingDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class VideoProcessingDetailsProcessingProgress
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class VideoProjectDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class VideoRating
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class VideoRecordingDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class VideoSnippet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class VideoStatistics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class VideoStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class VideoSuggestions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class VideoSuggestionsTagSuggestion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class VideoTopicDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class WatchSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      # @private
      class AccessPolicy
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allowed, as: 'allowed'
          collection :exception, as: 'exception'
        end
      end
      
      # @private
      class Activity
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content_details, as: 'contentDetails', class: Google::Apis::YoutubeV3::ActivityContentDetails, decorator: Google::Apis::YoutubeV3::ActivityContentDetails::Representation
      
          property :etag, as: 'etag'
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :snippet, as: 'snippet', class: Google::Apis::YoutubeV3::ActivitySnippet, decorator: Google::Apis::YoutubeV3::ActivitySnippet::Representation
      
        end
      end
      
      # @private
      class ActivityContentDetails
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bulletin, as: 'bulletin', class: Google::Apis::YoutubeV3::ActivityContentDetailsBulletin, decorator: Google::Apis::YoutubeV3::ActivityContentDetailsBulletin::Representation
      
          property :channel_item, as: 'channelItem', class: Google::Apis::YoutubeV3::ActivityContentDetailsChannelItem, decorator: Google::Apis::YoutubeV3::ActivityContentDetailsChannelItem::Representation
      
          property :comment, as: 'comment', class: Google::Apis::YoutubeV3::ActivityContentDetailsComment, decorator: Google::Apis::YoutubeV3::ActivityContentDetailsComment::Representation
      
          property :favorite, as: 'favorite', class: Google::Apis::YoutubeV3::ActivityContentDetailsFavorite, decorator: Google::Apis::YoutubeV3::ActivityContentDetailsFavorite::Representation
      
          property :like, as: 'like', class: Google::Apis::YoutubeV3::ActivityContentDetailsLike, decorator: Google::Apis::YoutubeV3::ActivityContentDetailsLike::Representation
      
          property :playlist_item, as: 'playlistItem', class: Google::Apis::YoutubeV3::ActivityContentDetailsPlaylistItem, decorator: Google::Apis::YoutubeV3::ActivityContentDetailsPlaylistItem::Representation
      
          property :promoted_item, as: 'promotedItem', class: Google::Apis::YoutubeV3::ActivityContentDetailsPromotedItem, decorator: Google::Apis::YoutubeV3::ActivityContentDetailsPromotedItem::Representation
      
          property :recommendation, as: 'recommendation', class: Google::Apis::YoutubeV3::ActivityContentDetailsRecommendation, decorator: Google::Apis::YoutubeV3::ActivityContentDetailsRecommendation::Representation
      
          property :social, as: 'social', class: Google::Apis::YoutubeV3::ActivityContentDetailsSocial, decorator: Google::Apis::YoutubeV3::ActivityContentDetailsSocial::Representation
      
          property :subscription, as: 'subscription', class: Google::Apis::YoutubeV3::ActivityContentDetailsSubscription, decorator: Google::Apis::YoutubeV3::ActivityContentDetailsSubscription::Representation
      
          property :upload, as: 'upload', class: Google::Apis::YoutubeV3::ActivityContentDetailsUpload, decorator: Google::Apis::YoutubeV3::ActivityContentDetailsUpload::Representation
      
        end
      end
      
      # @private
      class ActivityContentDetailsBulletin
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource_id, as: 'resourceId', class: Google::Apis::YoutubeV3::ResourceId, decorator: Google::Apis::YoutubeV3::ResourceId::Representation
      
        end
      end
      
      # @private
      class ActivityContentDetailsChannelItem
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource_id, as: 'resourceId', class: Google::Apis::YoutubeV3::ResourceId, decorator: Google::Apis::YoutubeV3::ResourceId::Representation
      
        end
      end
      
      # @private
      class ActivityContentDetailsComment
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource_id, as: 'resourceId', class: Google::Apis::YoutubeV3::ResourceId, decorator: Google::Apis::YoutubeV3::ResourceId::Representation
      
        end
      end
      
      # @private
      class ActivityContentDetailsFavorite
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource_id, as: 'resourceId', class: Google::Apis::YoutubeV3::ResourceId, decorator: Google::Apis::YoutubeV3::ResourceId::Representation
      
        end
      end
      
      # @private
      class ActivityContentDetailsLike
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource_id, as: 'resourceId', class: Google::Apis::YoutubeV3::ResourceId, decorator: Google::Apis::YoutubeV3::ResourceId::Representation
      
        end
      end
      
      # @private
      class ActivityContentDetailsPlaylistItem
        class Representation < Google::Apis::Core::JsonRepresentation
          property :playlist_id, as: 'playlistId'
          property :playlist_item_id, as: 'playlistItemId'
          property :resource_id, as: 'resourceId', class: Google::Apis::YoutubeV3::ResourceId, decorator: Google::Apis::YoutubeV3::ResourceId::Representation
      
        end
      end
      
      # @private
      class ActivityContentDetailsPromotedItem
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ad_tag, as: 'adTag'
          property :click_tracking_url, as: 'clickTrackingUrl'
          property :creative_view_url, as: 'creativeViewUrl'
          property :cta_type, as: 'ctaType'
          property :custom_cta_button_text, as: 'customCtaButtonText'
          property :description_text, as: 'descriptionText'
          property :destination_url, as: 'destinationUrl'
          collection :forecasting_url, as: 'forecastingUrl'
          collection :impression_url, as: 'impressionUrl'
          property :video_id, as: 'videoId'
        end
      end
      
      # @private
      class ActivityContentDetailsRecommendation
        class Representation < Google::Apis::Core::JsonRepresentation
          property :reason, as: 'reason'
          property :resource_id, as: 'resourceId', class: Google::Apis::YoutubeV3::ResourceId, decorator: Google::Apis::YoutubeV3::ResourceId::Representation
      
          property :seed_resource_id, as: 'seedResourceId', class: Google::Apis::YoutubeV3::ResourceId, decorator: Google::Apis::YoutubeV3::ResourceId::Representation
      
        end
      end
      
      # @private
      class ActivityContentDetailsSocial
        class Representation < Google::Apis::Core::JsonRepresentation
          property :author, as: 'author'
          property :image_url, as: 'imageUrl'
          property :reference_url, as: 'referenceUrl'
          property :resource_id, as: 'resourceId', class: Google::Apis::YoutubeV3::ResourceId, decorator: Google::Apis::YoutubeV3::ResourceId::Representation
      
          property :type, as: 'type'
        end
      end
      
      # @private
      class ActivityContentDetailsSubscription
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource_id, as: 'resourceId', class: Google::Apis::YoutubeV3::ResourceId, decorator: Google::Apis::YoutubeV3::ResourceId::Representation
      
        end
      end
      
      # @private
      class ActivityContentDetailsUpload
        class Representation < Google::Apis::Core::JsonRepresentation
          property :video_id, as: 'videoId'
        end
      end
      
      # @private
      class ListActivitiesResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :event_id, as: 'eventId'
          collection :items, as: 'items', class: Google::Apis::YoutubeV3::Activity, decorator: Google::Apis::YoutubeV3::Activity::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :page_info, as: 'pageInfo', class: Google::Apis::YoutubeV3::PageInfo, decorator: Google::Apis::YoutubeV3::PageInfo::Representation
      
          property :prev_page_token, as: 'prevPageToken'
          property :token_pagination, as: 'tokenPagination', class: Google::Apis::YoutubeV3::TokenPagination, decorator: Google::Apis::YoutubeV3::TokenPagination::Representation
      
          property :visitor_id, as: 'visitorId'
        end
      end
      
      # @private
      class ActivitySnippet
        class Representation < Google::Apis::Core::JsonRepresentation
          property :channel_id, as: 'channelId'
          property :channel_title, as: 'channelTitle'
          property :description, as: 'description'
          property :group_id, as: 'groupId'
          property :published_at, as: 'publishedAt', type: DateTime
      
          property :thumbnails, as: 'thumbnails', class: Google::Apis::YoutubeV3::ThumbnailDetails, decorator: Google::Apis::YoutubeV3::ThumbnailDetails::Representation
      
          property :title, as: 'title'
          property :type, as: 'type'
        end
      end
      
      # @private
      class Caption
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :snippet, as: 'snippet', class: Google::Apis::YoutubeV3::CaptionSnippet, decorator: Google::Apis::YoutubeV3::CaptionSnippet::Representation
      
        end
      end
      
      # @private
      class ListCaptionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :event_id, as: 'eventId'
          collection :items, as: 'items', class: Google::Apis::YoutubeV3::Caption, decorator: Google::Apis::YoutubeV3::Caption::Representation
      
          property :kind, as: 'kind'
          property :visitor_id, as: 'visitorId'
        end
      end
      
      # @private
      class CaptionSnippet
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audio_track_type, as: 'audioTrackType'
          property :failure_reason, as: 'failureReason'
          property :is_auto_synced, as: 'isAutoSynced'
          property :is_cc, as: 'isCC'
          property :is_draft, as: 'isDraft'
          property :is_easy_reader, as: 'isEasyReader'
          property :is_large, as: 'isLarge'
          property :language, as: 'language'
          property :last_updated, as: 'lastUpdated', type: DateTime
      
          property :name, as: 'name'
          property :status, as: 'status'
          property :track_kind, as: 'trackKind'
          property :video_id, as: 'videoId'
        end
      end
      
      # @private
      class CdnSettings
        class Representation < Google::Apis::Core::JsonRepresentation
          property :format, as: 'format'
          property :ingestion_info, as: 'ingestionInfo', class: Google::Apis::YoutubeV3::IngestionInfo, decorator: Google::Apis::YoutubeV3::IngestionInfo::Representation
      
          property :ingestion_type, as: 'ingestionType'
        end
      end
      
      # @private
      class Channel
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audit_details, as: 'auditDetails', class: Google::Apis::YoutubeV3::ChannelAuditDetails, decorator: Google::Apis::YoutubeV3::ChannelAuditDetails::Representation
      
          property :branding_settings, as: 'brandingSettings', class: Google::Apis::YoutubeV3::ChannelBrandingSettings, decorator: Google::Apis::YoutubeV3::ChannelBrandingSettings::Representation
      
          property :content_details, as: 'contentDetails', class: Google::Apis::YoutubeV3::ChannelContentDetails, decorator: Google::Apis::YoutubeV3::ChannelContentDetails::Representation
      
          property :content_owner_details, as: 'contentOwnerDetails', class: Google::Apis::YoutubeV3::ChannelContentOwnerDetails, decorator: Google::Apis::YoutubeV3::ChannelContentOwnerDetails::Representation
      
          property :conversion_pings, as: 'conversionPings', class: Google::Apis::YoutubeV3::ChannelConversionPings, decorator: Google::Apis::YoutubeV3::ChannelConversionPings::Representation
      
          property :etag, as: 'etag'
          property :id, as: 'id'
          property :invideo_promotion, as: 'invideoPromotion', class: Google::Apis::YoutubeV3::InvideoPromotion, decorator: Google::Apis::YoutubeV3::InvideoPromotion::Representation
      
          property :kind, as: 'kind'
          hash :localizations, as: 'localizations', class: Google::Apis::YoutubeV3::ChannelLocalization, decorator: Google::Apis::YoutubeV3::ChannelLocalization::Representation
      
          property :snippet, as: 'snippet', class: Google::Apis::YoutubeV3::ChannelSnippet, decorator: Google::Apis::YoutubeV3::ChannelSnippet::Representation
      
          property :statistics, as: 'statistics', class: Google::Apis::YoutubeV3::ChannelStatistics, decorator: Google::Apis::YoutubeV3::ChannelStatistics::Representation
      
          property :status, as: 'status', class: Google::Apis::YoutubeV3::ChannelStatus, decorator: Google::Apis::YoutubeV3::ChannelStatus::Representation
      
          property :topic_details, as: 'topicDetails', class: Google::Apis::YoutubeV3::ChannelTopicDetails, decorator: Google::Apis::YoutubeV3::ChannelTopicDetails::Representation
      
        end
      end
      
      # @private
      class ChannelAuditDetails
        class Representation < Google::Apis::Core::JsonRepresentation
          property :community_guidelines_good_standing, as: 'communityGuidelinesGoodStanding'
          property :content_id_claims_good_standing, as: 'contentIdClaimsGoodStanding'
          property :copyright_strikes_good_standing, as: 'copyrightStrikesGoodStanding'
          property :overall_good_standing, as: 'overallGoodStanding'
        end
      end
      
      # @private
      class ChannelBannerResource
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :kind, as: 'kind'
          property :url, as: 'url'
        end
      end
      
      # @private
      class ChannelBrandingSettings
        class Representation < Google::Apis::Core::JsonRepresentation
          property :channel, as: 'channel', class: Google::Apis::YoutubeV3::ChannelSettings, decorator: Google::Apis::YoutubeV3::ChannelSettings::Representation
      
          collection :hints, as: 'hints', class: Google::Apis::YoutubeV3::PropertyValue, decorator: Google::Apis::YoutubeV3::PropertyValue::Representation
      
          property :image, as: 'image', class: Google::Apis::YoutubeV3::ImageSettings, decorator: Google::Apis::YoutubeV3::ImageSettings::Representation
      
          property :watch, as: 'watch', class: Google::Apis::YoutubeV3::WatchSettings, decorator: Google::Apis::YoutubeV3::WatchSettings::Representation
      
        end
      end
      
      # @private
      class ChannelContentDetails
        class Representation < Google::Apis::Core::JsonRepresentation
          property :google_plus_user_id, as: 'googlePlusUserId'
          property :related_playlists, as: 'relatedPlaylists', class: Google::Apis::YoutubeV3::ChannelContentDetails::RelatedPlaylists, decorator: Google::Apis::YoutubeV3::ChannelContentDetails::RelatedPlaylists::Representation
      
        end
        
        # @private
        class RelatedPlaylists
          class Representation < Google::Apis::Core::JsonRepresentation
            property :favorites, as: 'favorites'
            property :likes, as: 'likes'
            property :uploads, as: 'uploads'
            property :watch_history, as: 'watchHistory'
            property :watch_later, as: 'watchLater'
          end
        end
      end
      
      # @private
      class ChannelContentOwnerDetails
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content_owner, as: 'contentOwner'
          property :time_linked, as: 'timeLinked', type: DateTime
      
        end
      end
      
      # @private
      class ChannelConversionPing
        class Representation < Google::Apis::Core::JsonRepresentation
          property :context, as: 'context'
          property :conversion_url, as: 'conversionUrl'
        end
      end
      
      # @private
      class ChannelConversionPings
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :pings, as: 'pings', class: Google::Apis::YoutubeV3::ChannelConversionPing, decorator: Google::Apis::YoutubeV3::ChannelConversionPing::Representation
      
        end
      end
      
      # @private
      class ChannelId
        class Representation < Google::Apis::Core::JsonRepresentation
          property :value, as: 'value'
        end
      end
      
      # @private
      class ListChannelsResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :event_id, as: 'eventId'
          collection :items, as: 'items', class: Google::Apis::YoutubeV3::Channel, decorator: Google::Apis::YoutubeV3::Channel::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :page_info, as: 'pageInfo', class: Google::Apis::YoutubeV3::PageInfo, decorator: Google::Apis::YoutubeV3::PageInfo::Representation
      
          property :prev_page_token, as: 'prevPageToken'
          property :token_pagination, as: 'tokenPagination', class: Google::Apis::YoutubeV3::TokenPagination, decorator: Google::Apis::YoutubeV3::TokenPagination::Representation
      
          property :visitor_id, as: 'visitorId'
        end
      end
      
      # @private
      class ChannelLocalization
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :title, as: 'title'
        end
      end
      
      # @private
      class ChannelSection
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content_details, as: 'contentDetails', class: Google::Apis::YoutubeV3::ChannelSectionContentDetails, decorator: Google::Apis::YoutubeV3::ChannelSectionContentDetails::Representation
      
          property :etag, as: 'etag'
          property :id, as: 'id'
          property :kind, as: 'kind'
          hash :localizations, as: 'localizations', class: Google::Apis::YoutubeV3::ChannelSectionLocalization, decorator: Google::Apis::YoutubeV3::ChannelSectionLocalization::Representation
      
          property :snippet, as: 'snippet', class: Google::Apis::YoutubeV3::ChannelSectionSnippet, decorator: Google::Apis::YoutubeV3::ChannelSectionSnippet::Representation
      
          property :targeting, as: 'targeting', class: Google::Apis::YoutubeV3::ChannelSectionTargeting, decorator: Google::Apis::YoutubeV3::ChannelSectionTargeting::Representation
      
        end
      end
      
      # @private
      class ChannelSectionContentDetails
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :channels, as: 'channels'
          collection :playlists, as: 'playlists'
        end
      end
      
      # @private
      class ListChannelSectionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :event_id, as: 'eventId'
          collection :items, as: 'items', class: Google::Apis::YoutubeV3::ChannelSection, decorator: Google::Apis::YoutubeV3::ChannelSection::Representation
      
          property :kind, as: 'kind'
          property :visitor_id, as: 'visitorId'
        end
      end
      
      # @private
      class ChannelSectionLocalization
        class Representation < Google::Apis::Core::JsonRepresentation
          property :title, as: 'title'
        end
      end
      
      # @private
      class ChannelSectionSnippet
        class Representation < Google::Apis::Core::JsonRepresentation
          property :channel_id, as: 'channelId'
          property :default_language, as: 'defaultLanguage'
          property :localized, as: 'localized', class: Google::Apis::YoutubeV3::ChannelSectionLocalization, decorator: Google::Apis::YoutubeV3::ChannelSectionLocalization::Representation
      
          property :position, as: 'position'
          property :style, as: 'style'
          property :title, as: 'title'
          property :type, as: 'type'
        end
      end
      
      # @private
      class ChannelSectionTargeting
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :countries, as: 'countries'
          collection :languages, as: 'languages'
          collection :regions, as: 'regions'
        end
      end
      
      # @private
      class ChannelSettings
        class Representation < Google::Apis::Core::JsonRepresentation
          property :country, as: 'country'
          property :default_language, as: 'defaultLanguage'
          property :default_tab, as: 'defaultTab'
          property :description, as: 'description'
          property :featured_channels_title, as: 'featuredChannelsTitle'
          collection :featured_channels_urls, as: 'featuredChannelsUrls'
          property :keywords, as: 'keywords'
          property :moderate_comments, as: 'moderateComments'
          property :profile_color, as: 'profileColor'
          property :show_browse_view, as: 'showBrowseView'
          property :show_related_channels, as: 'showRelatedChannels'
          property :title, as: 'title'
          property :tracking_analytics_account_id, as: 'trackingAnalyticsAccountId'
          property :unsubscribed_trailer, as: 'unsubscribedTrailer'
        end
      end
      
      # @private
      class ChannelSnippet
        class Representation < Google::Apis::Core::JsonRepresentation
          property :country, as: 'country'
          property :default_language, as: 'defaultLanguage'
          property :description, as: 'description'
          property :localized, as: 'localized', class: Google::Apis::YoutubeV3::ChannelLocalization, decorator: Google::Apis::YoutubeV3::ChannelLocalization::Representation
      
          property :published_at, as: 'publishedAt', type: DateTime
      
          property :thumbnails, as: 'thumbnails', class: Google::Apis::YoutubeV3::ThumbnailDetails, decorator: Google::Apis::YoutubeV3::ThumbnailDetails::Representation
      
          property :title, as: 'title'
        end
      end
      
      # @private
      class ChannelStatistics
        class Representation < Google::Apis::Core::JsonRepresentation
          property :comment_count, as: 'commentCount'
          property :hidden_subscriber_count, as: 'hiddenSubscriberCount'
          property :subscriber_count, as: 'subscriberCount'
          property :video_count, as: 'videoCount'
          property :view_count, as: 'viewCount'
        end
      end
      
      # @private
      class ChannelStatus
        class Representation < Google::Apis::Core::JsonRepresentation
          property :is_linked, as: 'isLinked'
          property :long_uploads_status, as: 'longUploadsStatus'
          property :privacy_status, as: 'privacyStatus'
        end
      end
      
      # @private
      class ChannelTopicDetails
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :topic_ids, as: 'topicIds'
        end
      end
      
      # @private
      class Comment
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :snippet, as: 'snippet', class: Google::Apis::YoutubeV3::CommentSnippet, decorator: Google::Apis::YoutubeV3::CommentSnippet::Representation
      
        end
      end
      
      # @private
      class ListCommentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :event_id, as: 'eventId'
          collection :items, as: 'items', class: Google::Apis::YoutubeV3::Comment, decorator: Google::Apis::YoutubeV3::Comment::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :page_info, as: 'pageInfo', class: Google::Apis::YoutubeV3::PageInfo, decorator: Google::Apis::YoutubeV3::PageInfo::Representation
      
          property :token_pagination, as: 'tokenPagination', class: Google::Apis::YoutubeV3::TokenPagination, decorator: Google::Apis::YoutubeV3::TokenPagination::Representation
      
          property :visitor_id, as: 'visitorId'
        end
      end
      
      # @private
      class CommentSnippet
        class Representation < Google::Apis::Core::JsonRepresentation
          property :author_channel_id, as: 'authorChannelId', class: Google::Apis::YoutubeV3::ChannelId, decorator: Google::Apis::YoutubeV3::ChannelId::Representation
      
          property :author_channel_url, as: 'authorChannelUrl'
          property :author_display_name, as: 'authorDisplayName'
          property :author_googleplus_profile_url, as: 'authorGoogleplusProfileUrl'
          property :author_profile_image_url, as: 'authorProfileImageUrl'
          property :can_rate, as: 'canRate'
          property :channel_id, as: 'channelId'
          property :like_count, as: 'likeCount'
          property :moderation_status, as: 'moderationStatus'
          property :parent_id, as: 'parentId'
          property :published_at, as: 'publishedAt', type: DateTime
      
          property :text_display, as: 'textDisplay'
          property :text_original, as: 'textOriginal'
          property :updated_at, as: 'updatedAt', type: DateTime
      
          property :video_id, as: 'videoId'
          property :viewer_rating, as: 'viewerRating'
        end
      end
      
      # @private
      class CommentThread
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :replies, as: 'replies', class: Google::Apis::YoutubeV3::CommentThreadReplies, decorator: Google::Apis::YoutubeV3::CommentThreadReplies::Representation
      
          property :snippet, as: 'snippet', class: Google::Apis::YoutubeV3::CommentThreadSnippet, decorator: Google::Apis::YoutubeV3::CommentThreadSnippet::Representation
      
        end
      end
      
      # @private
      class ListCommentThreadsResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :event_id, as: 'eventId'
          collection :items, as: 'items', class: Google::Apis::YoutubeV3::CommentThread, decorator: Google::Apis::YoutubeV3::CommentThread::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :page_info, as: 'pageInfo', class: Google::Apis::YoutubeV3::PageInfo, decorator: Google::Apis::YoutubeV3::PageInfo::Representation
      
          property :token_pagination, as: 'tokenPagination', class: Google::Apis::YoutubeV3::TokenPagination, decorator: Google::Apis::YoutubeV3::TokenPagination::Representation
      
          property :visitor_id, as: 'visitorId'
        end
      end
      
      # @private
      class CommentThreadReplies
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :comments, as: 'comments', class: Google::Apis::YoutubeV3::Comment, decorator: Google::Apis::YoutubeV3::Comment::Representation
      
        end
      end
      
      # @private
      class CommentThreadSnippet
        class Representation < Google::Apis::Core::JsonRepresentation
          property :can_reply, as: 'canReply'
          property :channel_id, as: 'channelId'
          property :is_public, as: 'isPublic'
          property :top_level_comment, as: 'topLevelComment', class: Google::Apis::YoutubeV3::Comment, decorator: Google::Apis::YoutubeV3::Comment::Representation
      
          property :total_reply_count, as: 'totalReplyCount'
          property :video_id, as: 'videoId'
        end
      end
      
      # @private
      class ContentRating
        class Representation < Google::Apis::Core::JsonRepresentation
          property :acb_rating, as: 'acbRating'
          property :agcom_rating, as: 'agcomRating'
          property :anatel_rating, as: 'anatelRating'
          property :bbfc_rating, as: 'bbfcRating'
          property :bfvc_rating, as: 'bfvcRating'
          property :bmukk_rating, as: 'bmukkRating'
          property :catv_rating, as: 'catvRating'
          property :catvfr_rating, as: 'catvfrRating'
          property :cbfc_rating, as: 'cbfcRating'
          property :ccc_rating, as: 'cccRating'
          property :cce_rating, as: 'cceRating'
          property :chfilm_rating, as: 'chfilmRating'
          property :chvrs_rating, as: 'chvrsRating'
          property :cicf_rating, as: 'cicfRating'
          property :cna_rating, as: 'cnaRating'
          property :csa_rating, as: 'csaRating'
          property :cscf_rating, as: 'cscfRating'
          property :czfilm_rating, as: 'czfilmRating'
          property :djctq_rating, as: 'djctqRating'
          collection :djctq_rating_reasons, as: 'djctqRatingReasons'
          property :eefilm_rating, as: 'eefilmRating'
          property :egfilm_rating, as: 'egfilmRating'
          property :eirin_rating, as: 'eirinRating'
          property :fcbm_rating, as: 'fcbmRating'
          property :fco_rating, as: 'fcoRating'
          property :fmoc_rating, as: 'fmocRating'
          property :fpb_rating, as: 'fpbRating'
          property :fsk_rating, as: 'fskRating'
          property :grfilm_rating, as: 'grfilmRating'
          property :icaa_rating, as: 'icaaRating'
          property :ifco_rating, as: 'ifcoRating'
          property :ilfilm_rating, as: 'ilfilmRating'
          property :incaa_rating, as: 'incaaRating'
          property :kfcb_rating, as: 'kfcbRating'
          property :kijkwijzer_rating, as: 'kijkwijzerRating'
          property :kmrb_rating, as: 'kmrbRating'
          property :lsf_rating, as: 'lsfRating'
          property :mccaa_rating, as: 'mccaaRating'
          property :mccyp_rating, as: 'mccypRating'
          property :mda_rating, as: 'mdaRating'
          property :medietilsynet_rating, as: 'medietilsynetRating'
          property :meku_rating, as: 'mekuRating'
          property :mibac_rating, as: 'mibacRating'
          property :moc_rating, as: 'mocRating'
          property :moctw_rating, as: 'moctwRating'
          property :mpaa_rating, as: 'mpaaRating'
          property :mtrcb_rating, as: 'mtrcbRating'
          property :nbc_rating, as: 'nbcRating'
          property :nbcpl_rating, as: 'nbcplRating'
          property :nfrc_rating, as: 'nfrcRating'
          property :nfvcb_rating, as: 'nfvcbRating'
          property :nkclv_rating, as: 'nkclvRating'
          property :oflc_rating, as: 'oflcRating'
          property :pefilm_rating, as: 'pefilmRating'
          property :rcnof_rating, as: 'rcnofRating'
          property :resorteviolencia_rating, as: 'resorteviolenciaRating'
          property :rtc_rating, as: 'rtcRating'
          property :rte_rating, as: 'rteRating'
          property :russia_rating, as: 'russiaRating'
          property :skfilm_rating, as: 'skfilmRating'
          property :smais_rating, as: 'smaisRating'
          property :smsa_rating, as: 'smsaRating'
          property :tvpg_rating, as: 'tvpgRating'
          property :yt_rating, as: 'ytRating'
        end
      end
      
      # @private
      class GeoPoint
        class Representation < Google::Apis::Core::JsonRepresentation
          property :altitude, as: 'altitude'
          property :latitude, as: 'latitude'
          property :longitude, as: 'longitude'
        end
      end
      
      # @private
      class GuideCategory
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :snippet, as: 'snippet', class: Google::Apis::YoutubeV3::GuideCategorySnippet, decorator: Google::Apis::YoutubeV3::GuideCategorySnippet::Representation
      
        end
      end
      
      # @private
      class ListGuideCategoriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :event_id, as: 'eventId'
          collection :items, as: 'items', class: Google::Apis::YoutubeV3::GuideCategory, decorator: Google::Apis::YoutubeV3::GuideCategory::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :page_info, as: 'pageInfo', class: Google::Apis::YoutubeV3::PageInfo, decorator: Google::Apis::YoutubeV3::PageInfo::Representation
      
          property :prev_page_token, as: 'prevPageToken'
          property :token_pagination, as: 'tokenPagination', class: Google::Apis::YoutubeV3::TokenPagination, decorator: Google::Apis::YoutubeV3::TokenPagination::Representation
      
          property :visitor_id, as: 'visitorId'
        end
      end
      
      # @private
      class GuideCategorySnippet
        class Representation < Google::Apis::Core::JsonRepresentation
          property :channel_id, as: 'channelId'
          property :title, as: 'title'
        end
      end
      
      # @private
      class I18nLanguage
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :snippet, as: 'snippet', class: Google::Apis::YoutubeV3::I18nLanguageSnippet, decorator: Google::Apis::YoutubeV3::I18nLanguageSnippet::Representation
      
        end
      end
      
      # @private
      class ListI18nLanguagesResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :event_id, as: 'eventId'
          collection :items, as: 'items', class: Google::Apis::YoutubeV3::I18nLanguage, decorator: Google::Apis::YoutubeV3::I18nLanguage::Representation
      
          property :kind, as: 'kind'
          property :visitor_id, as: 'visitorId'
        end
      end
      
      # @private
      class I18nLanguageSnippet
        class Representation < Google::Apis::Core::JsonRepresentation
          property :hl, as: 'hl'
          property :name, as: 'name'
        end
      end
      
      # @private
      class I18nRegion
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :snippet, as: 'snippet', class: Google::Apis::YoutubeV3::I18nRegionSnippet, decorator: Google::Apis::YoutubeV3::I18nRegionSnippet::Representation
      
        end
      end
      
      # @private
      class ListI18nRegionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :event_id, as: 'eventId'
          collection :items, as: 'items', class: Google::Apis::YoutubeV3::I18nRegion, decorator: Google::Apis::YoutubeV3::I18nRegion::Representation
      
          property :kind, as: 'kind'
          property :visitor_id, as: 'visitorId'
        end
      end
      
      # @private
      class I18nRegionSnippet
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gl, as: 'gl'
          property :name, as: 'name'
        end
      end
      
      # @private
      class ImageSettings
        class Representation < Google::Apis::Core::JsonRepresentation
          property :background_image_url, as: 'backgroundImageUrl', class: Google::Apis::YoutubeV3::LocalizedProperty, decorator: Google::Apis::YoutubeV3::LocalizedProperty::Representation
      
          property :banner_external_url, as: 'bannerExternalUrl'
          property :banner_image_url, as: 'bannerImageUrl'
          property :banner_mobile_extra_hd_image_url, as: 'bannerMobileExtraHdImageUrl'
          property :banner_mobile_hd_image_url, as: 'bannerMobileHdImageUrl'
          property :banner_mobile_image_url, as: 'bannerMobileImageUrl'
          property :banner_mobile_low_image_url, as: 'bannerMobileLowImageUrl'
          property :banner_mobile_medium_hd_image_url, as: 'bannerMobileMediumHdImageUrl'
          property :banner_tablet_extra_hd_image_url, as: 'bannerTabletExtraHdImageUrl'
          property :banner_tablet_hd_image_url, as: 'bannerTabletHdImageUrl'
          property :banner_tablet_image_url, as: 'bannerTabletImageUrl'
          property :banner_tablet_low_image_url, as: 'bannerTabletLowImageUrl'
          property :banner_tv_high_image_url, as: 'bannerTvHighImageUrl'
          property :banner_tv_image_url, as: 'bannerTvImageUrl'
          property :banner_tv_low_image_url, as: 'bannerTvLowImageUrl'
          property :banner_tv_medium_image_url, as: 'bannerTvMediumImageUrl'
          property :large_branded_banner_image_imap_script, as: 'largeBrandedBannerImageImapScript', class: Google::Apis::YoutubeV3::LocalizedProperty, decorator: Google::Apis::YoutubeV3::LocalizedProperty::Representation
      
          property :large_branded_banner_image_url, as: 'largeBrandedBannerImageUrl', class: Google::Apis::YoutubeV3::LocalizedProperty, decorator: Google::Apis::YoutubeV3::LocalizedProperty::Representation
      
          property :small_branded_banner_image_imap_script, as: 'smallBrandedBannerImageImapScript', class: Google::Apis::YoutubeV3::LocalizedProperty, decorator: Google::Apis::YoutubeV3::LocalizedProperty::Representation
      
          property :small_branded_banner_image_url, as: 'smallBrandedBannerImageUrl', class: Google::Apis::YoutubeV3::LocalizedProperty, decorator: Google::Apis::YoutubeV3::LocalizedProperty::Representation
      
          property :tracking_image_url, as: 'trackingImageUrl'
          property :watch_icon_image_url, as: 'watchIconImageUrl'
        end
      end
      
      # @private
      class IngestionInfo
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup_ingestion_address, as: 'backupIngestionAddress'
          property :ingestion_address, as: 'ingestionAddress'
          property :stream_name, as: 'streamName'
        end
      end
      
      # @private
      class InvideoBranding
        class Representation < Google::Apis::Core::JsonRepresentation
          property :image_bytes, :base64 => true, as: 'imageBytes'
          property :image_url, as: 'imageUrl'
          property :position, as: 'position', class: Google::Apis::YoutubeV3::InvideoPosition, decorator: Google::Apis::YoutubeV3::InvideoPosition::Representation
      
          property :target_channel_id, as: 'targetChannelId'
          property :timing, as: 'timing', class: Google::Apis::YoutubeV3::InvideoTiming, decorator: Google::Apis::YoutubeV3::InvideoTiming::Representation
      
        end
      end
      
      # @private
      class InvideoPosition
        class Representation < Google::Apis::Core::JsonRepresentation
          property :corner_position, as: 'cornerPosition'
          property :type, as: 'type'
        end
      end
      
      # @private
      class InvideoPromotion
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_timing, as: 'defaultTiming', class: Google::Apis::YoutubeV3::InvideoTiming, decorator: Google::Apis::YoutubeV3::InvideoTiming::Representation
      
          collection :items, as: 'items', class: Google::Apis::YoutubeV3::PromotedItem, decorator: Google::Apis::YoutubeV3::PromotedItem::Representation
      
          property :position, as: 'position', class: Google::Apis::YoutubeV3::InvideoPosition, decorator: Google::Apis::YoutubeV3::InvideoPosition::Representation
      
          property :use_smart_timing, as: 'useSmartTiming'
        end
      end
      
      # @private
      class InvideoTiming
        class Representation < Google::Apis::Core::JsonRepresentation
          property :duration_ms, as: 'durationMs'
          property :offset_ms, as: 'offsetMs'
          property :type, as: 'type'
        end
      end
      
      # @private
      class LanguageTag
        class Representation < Google::Apis::Core::JsonRepresentation
          property :value, as: 'value'
        end
      end
      
      # @private
      class LiveBroadcast
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content_details, as: 'contentDetails', class: Google::Apis::YoutubeV3::LiveBroadcastContentDetails, decorator: Google::Apis::YoutubeV3::LiveBroadcastContentDetails::Representation
      
          property :etag, as: 'etag'
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :snippet, as: 'snippet', class: Google::Apis::YoutubeV3::LiveBroadcastSnippet, decorator: Google::Apis::YoutubeV3::LiveBroadcastSnippet::Representation
      
          property :status, as: 'status', class: Google::Apis::YoutubeV3::LiveBroadcastStatus, decorator: Google::Apis::YoutubeV3::LiveBroadcastStatus::Representation
      
        end
      end
      
      # @private
      class LiveBroadcastContentDetails
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bound_stream_id, as: 'boundStreamId'
          property :enable_closed_captions, as: 'enableClosedCaptions'
          property :enable_content_encryption, as: 'enableContentEncryption'
          property :enable_dvr, as: 'enableDvr'
          property :enable_embed, as: 'enableEmbed'
          property :monitor_stream, as: 'monitorStream', class: Google::Apis::YoutubeV3::MonitorStreamInfo, decorator: Google::Apis::YoutubeV3::MonitorStreamInfo::Representation
      
          property :record_from_start, as: 'recordFromStart'
          property :start_with_slate, as: 'startWithSlate'
        end
      end
      
      # @private
      class ListLiveBroadcastsResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :event_id, as: 'eventId'
          collection :items, as: 'items', class: Google::Apis::YoutubeV3::LiveBroadcast, decorator: Google::Apis::YoutubeV3::LiveBroadcast::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :page_info, as: 'pageInfo', class: Google::Apis::YoutubeV3::PageInfo, decorator: Google::Apis::YoutubeV3::PageInfo::Representation
      
          property :prev_page_token, as: 'prevPageToken'
          property :token_pagination, as: 'tokenPagination', class: Google::Apis::YoutubeV3::TokenPagination, decorator: Google::Apis::YoutubeV3::TokenPagination::Representation
      
          property :visitor_id, as: 'visitorId'
        end
      end
      
      # @private
      class LiveBroadcastSnippet
        class Representation < Google::Apis::Core::JsonRepresentation
          property :actual_end_time, as: 'actualEndTime', type: DateTime
      
          property :actual_start_time, as: 'actualStartTime', type: DateTime
      
          property :channel_id, as: 'channelId'
          property :description, as: 'description'
          property :published_at, as: 'publishedAt', type: DateTime
      
          property :scheduled_end_time, as: 'scheduledEndTime', type: DateTime
      
          property :scheduled_start_time, as: 'scheduledStartTime', type: DateTime
      
          property :thumbnails, as: 'thumbnails', class: Google::Apis::YoutubeV3::ThumbnailDetails, decorator: Google::Apis::YoutubeV3::ThumbnailDetails::Representation
      
          property :title, as: 'title'
        end
      end
      
      # @private
      class LiveBroadcastStatus
        class Representation < Google::Apis::Core::JsonRepresentation
          property :is_default_broadcast, as: 'isDefaultBroadcast'
          property :life_cycle_status, as: 'lifeCycleStatus'
          property :live_broadcast_priority, as: 'liveBroadcastPriority'
          property :privacy_status, as: 'privacyStatus'
          property :recording_status, as: 'recordingStatus'
        end
      end
      
      # @private
      class LiveStream
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cdn, as: 'cdn', class: Google::Apis::YoutubeV3::CdnSettings, decorator: Google::Apis::YoutubeV3::CdnSettings::Representation
      
          property :content_details, as: 'contentDetails', class: Google::Apis::YoutubeV3::LiveStreamContentDetails, decorator: Google::Apis::YoutubeV3::LiveStreamContentDetails::Representation
      
          property :etag, as: 'etag'
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :snippet, as: 'snippet', class: Google::Apis::YoutubeV3::LiveStreamSnippet, decorator: Google::Apis::YoutubeV3::LiveStreamSnippet::Representation
      
          property :status, as: 'status', class: Google::Apis::YoutubeV3::LiveStreamStatus, decorator: Google::Apis::YoutubeV3::LiveStreamStatus::Representation
      
        end
      end
      
      # @private
      class LiveStreamContentDetails
        class Representation < Google::Apis::Core::JsonRepresentation
          property :closed_captions_ingestion_url, as: 'closedCaptionsIngestionUrl'
          property :is_reusable, as: 'isReusable'
        end
      end
      
      # @private
      class ListLiveStreamsResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :event_id, as: 'eventId'
          collection :items, as: 'items', class: Google::Apis::YoutubeV3::LiveStream, decorator: Google::Apis::YoutubeV3::LiveStream::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :page_info, as: 'pageInfo', class: Google::Apis::YoutubeV3::PageInfo, decorator: Google::Apis::YoutubeV3::PageInfo::Representation
      
          property :prev_page_token, as: 'prevPageToken'
          property :token_pagination, as: 'tokenPagination', class: Google::Apis::YoutubeV3::TokenPagination, decorator: Google::Apis::YoutubeV3::TokenPagination::Representation
      
          property :visitor_id, as: 'visitorId'
        end
      end
      
      # @private
      class LiveStreamSnippet
        class Representation < Google::Apis::Core::JsonRepresentation
          property :channel_id, as: 'channelId'
          property :description, as: 'description'
          property :published_at, as: 'publishedAt', type: DateTime
      
          property :title, as: 'title'
        end
      end
      
      # @private
      class LiveStreamStatus
        class Representation < Google::Apis::Core::JsonRepresentation
          property :is_default_stream, as: 'isDefaultStream'
          property :stream_status, as: 'streamStatus'
        end
      end
      
      # @private
      class LocalizedProperty
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default, as: 'default'
          property :default_language, as: 'defaultLanguage', class: Google::Apis::YoutubeV3::LanguageTag, decorator: Google::Apis::YoutubeV3::LanguageTag::Representation
      
          collection :localized, as: 'localized', class: Google::Apis::YoutubeV3::LocalizedString, decorator: Google::Apis::YoutubeV3::LocalizedString::Representation
      
        end
      end
      
      # @private
      class LocalizedString
        class Representation < Google::Apis::Core::JsonRepresentation
          property :language, as: 'language'
          property :value, as: 'value'
        end
      end
      
      # @private
      class MonitorStreamInfo
        class Representation < Google::Apis::Core::JsonRepresentation
          property :broadcast_stream_delay_ms, as: 'broadcastStreamDelayMs'
          property :embed_html, as: 'embedHtml'
          property :enable_monitor_stream, as: 'enableMonitorStream'
        end
      end
      
      # @private
      class PageInfo
        class Representation < Google::Apis::Core::JsonRepresentation
          property :results_per_page, as: 'resultsPerPage'
          property :total_results, as: 'totalResults'
        end
      end
      
      # @private
      class Playlist
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content_details, as: 'contentDetails', class: Google::Apis::YoutubeV3::PlaylistContentDetails, decorator: Google::Apis::YoutubeV3::PlaylistContentDetails::Representation
      
          property :etag, as: 'etag'
          property :id, as: 'id'
          property :kind, as: 'kind'
          hash :localizations, as: 'localizations', class: Google::Apis::YoutubeV3::PlaylistLocalization, decorator: Google::Apis::YoutubeV3::PlaylistLocalization::Representation
      
          property :player, as: 'player', class: Google::Apis::YoutubeV3::PlaylistPlayer, decorator: Google::Apis::YoutubeV3::PlaylistPlayer::Representation
      
          property :snippet, as: 'snippet', class: Google::Apis::YoutubeV3::PlaylistSnippet, decorator: Google::Apis::YoutubeV3::PlaylistSnippet::Representation
      
          property :status, as: 'status', class: Google::Apis::YoutubeV3::PlaylistStatus, decorator: Google::Apis::YoutubeV3::PlaylistStatus::Representation
      
        end
      end
      
      # @private
      class PlaylistContentDetails
        class Representation < Google::Apis::Core::JsonRepresentation
          property :item_count, as: 'itemCount'
        end
      end
      
      # @private
      class PlaylistItem
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content_details, as: 'contentDetails', class: Google::Apis::YoutubeV3::PlaylistItemContentDetails, decorator: Google::Apis::YoutubeV3::PlaylistItemContentDetails::Representation
      
          property :etag, as: 'etag'
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :snippet, as: 'snippet', class: Google::Apis::YoutubeV3::PlaylistItemSnippet, decorator: Google::Apis::YoutubeV3::PlaylistItemSnippet::Representation
      
          property :status, as: 'status', class: Google::Apis::YoutubeV3::PlaylistItemStatus, decorator: Google::Apis::YoutubeV3::PlaylistItemStatus::Representation
      
        end
      end
      
      # @private
      class PlaylistItemContentDetails
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_at, as: 'endAt'
          property :note, as: 'note'
          property :start_at, as: 'startAt'
          property :video_id, as: 'videoId'
        end
      end
      
      # @private
      class ListPlaylistItemsResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :event_id, as: 'eventId'
          collection :items, as: 'items', class: Google::Apis::YoutubeV3::PlaylistItem, decorator: Google::Apis::YoutubeV3::PlaylistItem::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :page_info, as: 'pageInfo', class: Google::Apis::YoutubeV3::PageInfo, decorator: Google::Apis::YoutubeV3::PageInfo::Representation
      
          property :prev_page_token, as: 'prevPageToken'
          property :token_pagination, as: 'tokenPagination', class: Google::Apis::YoutubeV3::TokenPagination, decorator: Google::Apis::YoutubeV3::TokenPagination::Representation
      
          property :visitor_id, as: 'visitorId'
        end
      end
      
      # @private
      class PlaylistItemSnippet
        class Representation < Google::Apis::Core::JsonRepresentation
          property :channel_id, as: 'channelId'
          property :channel_title, as: 'channelTitle'
          property :description, as: 'description'
          property :playlist_id, as: 'playlistId'
          property :position, as: 'position'
          property :published_at, as: 'publishedAt', type: DateTime
      
          property :resource_id, as: 'resourceId', class: Google::Apis::YoutubeV3::ResourceId, decorator: Google::Apis::YoutubeV3::ResourceId::Representation
      
          property :thumbnails, as: 'thumbnails', class: Google::Apis::YoutubeV3::ThumbnailDetails, decorator: Google::Apis::YoutubeV3::ThumbnailDetails::Representation
      
          property :title, as: 'title'
        end
      end
      
      # @private
      class PlaylistItemStatus
        class Representation < Google::Apis::Core::JsonRepresentation
          property :privacy_status, as: 'privacyStatus'
        end
      end
      
      # @private
      class ListPlaylistResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :event_id, as: 'eventId'
          collection :items, as: 'items', class: Google::Apis::YoutubeV3::Playlist, decorator: Google::Apis::YoutubeV3::Playlist::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :page_info, as: 'pageInfo', class: Google::Apis::YoutubeV3::PageInfo, decorator: Google::Apis::YoutubeV3::PageInfo::Representation
      
          property :prev_page_token, as: 'prevPageToken'
          property :token_pagination, as: 'tokenPagination', class: Google::Apis::YoutubeV3::TokenPagination, decorator: Google::Apis::YoutubeV3::TokenPagination::Representation
      
          property :visitor_id, as: 'visitorId'
        end
      end
      
      # @private
      class PlaylistLocalization
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :title, as: 'title'
        end
      end
      
      # @private
      class PlaylistPlayer
        class Representation < Google::Apis::Core::JsonRepresentation
          property :embed_html, as: 'embedHtml'
        end
      end
      
      # @private
      class PlaylistSnippet
        class Representation < Google::Apis::Core::JsonRepresentation
          property :channel_id, as: 'channelId'
          property :channel_title, as: 'channelTitle'
          property :default_language, as: 'defaultLanguage'
          property :description, as: 'description'
          property :localized, as: 'localized', class: Google::Apis::YoutubeV3::PlaylistLocalization, decorator: Google::Apis::YoutubeV3::PlaylistLocalization::Representation
      
          property :published_at, as: 'publishedAt', type: DateTime
      
          collection :tags, as: 'tags'
          property :thumbnails, as: 'thumbnails', class: Google::Apis::YoutubeV3::ThumbnailDetails, decorator: Google::Apis::YoutubeV3::ThumbnailDetails::Representation
      
          property :title, as: 'title'
        end
      end
      
      # @private
      class PlaylistStatus
        class Representation < Google::Apis::Core::JsonRepresentation
          property :privacy_status, as: 'privacyStatus'
        end
      end
      
      # @private
      class PromotedItem
        class Representation < Google::Apis::Core::JsonRepresentation
          property :custom_message, as: 'customMessage'
          property :id, as: 'id', class: Google::Apis::YoutubeV3::PromotedItemId, decorator: Google::Apis::YoutubeV3::PromotedItemId::Representation
      
          property :promoted_by_content_owner, as: 'promotedByContentOwner'
          property :timing, as: 'timing', class: Google::Apis::YoutubeV3::InvideoTiming, decorator: Google::Apis::YoutubeV3::InvideoTiming::Representation
      
        end
      end
      
      # @private
      class PromotedItemId
        class Representation < Google::Apis::Core::JsonRepresentation
          property :recently_uploaded_by, as: 'recentlyUploadedBy'
          property :type, as: 'type'
          property :video_id, as: 'videoId'
          property :website_url, as: 'websiteUrl'
        end
      end
      
      # @private
      class PropertyValue
        class Representation < Google::Apis::Core::JsonRepresentation
          property :property, as: 'property'
          property :value, as: 'value'
        end
      end
      
      # @private
      class ResourceId
        class Representation < Google::Apis::Core::JsonRepresentation
          property :channel_id, as: 'channelId'
          property :kind, as: 'kind'
          property :playlist_id, as: 'playlistId'
          property :video_id, as: 'videoId'
        end
      end
      
      # @private
      class SearchListsResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :event_id, as: 'eventId'
          collection :items, as: 'items', class: Google::Apis::YoutubeV3::SearchResult, decorator: Google::Apis::YoutubeV3::SearchResult::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :page_info, as: 'pageInfo', class: Google::Apis::YoutubeV3::PageInfo, decorator: Google::Apis::YoutubeV3::PageInfo::Representation
      
          property :prev_page_token, as: 'prevPageToken'
          property :token_pagination, as: 'tokenPagination', class: Google::Apis::YoutubeV3::TokenPagination, decorator: Google::Apis::YoutubeV3::TokenPagination::Representation
      
          property :visitor_id, as: 'visitorId'
        end
      end
      
      # @private
      class SearchResult
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :id, as: 'id', class: Google::Apis::YoutubeV3::ResourceId, decorator: Google::Apis::YoutubeV3::ResourceId::Representation
      
          property :kind, as: 'kind'
          property :snippet, as: 'snippet', class: Google::Apis::YoutubeV3::SearchResultSnippet, decorator: Google::Apis::YoutubeV3::SearchResultSnippet::Representation
      
        end
      end
      
      # @private
      class SearchResultSnippet
        class Representation < Google::Apis::Core::JsonRepresentation
          property :channel_id, as: 'channelId'
          property :channel_title, as: 'channelTitle'
          property :description, as: 'description'
          property :live_broadcast_content, as: 'liveBroadcastContent'
          property :published_at, as: 'publishedAt', type: DateTime
      
          property :thumbnails, as: 'thumbnails', class: Google::Apis::YoutubeV3::ThumbnailDetails, decorator: Google::Apis::YoutubeV3::ThumbnailDetails::Representation
      
          property :title, as: 'title'
        end
      end
      
      # @private
      class Subscription
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content_details, as: 'contentDetails', class: Google::Apis::YoutubeV3::SubscriptionContentDetails, decorator: Google::Apis::YoutubeV3::SubscriptionContentDetails::Representation
      
          property :etag, as: 'etag'
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :snippet, as: 'snippet', class: Google::Apis::YoutubeV3::SubscriptionSnippet, decorator: Google::Apis::YoutubeV3::SubscriptionSnippet::Representation
      
          property :subscriber_snippet, as: 'subscriberSnippet', class: Google::Apis::YoutubeV3::SubscriptionSubscriberSnippet, decorator: Google::Apis::YoutubeV3::SubscriptionSubscriberSnippet::Representation
      
        end
      end
      
      # @private
      class SubscriptionContentDetails
        class Representation < Google::Apis::Core::JsonRepresentation
          property :activity_type, as: 'activityType'
          property :new_item_count, as: 'newItemCount'
          property :total_item_count, as: 'totalItemCount'
        end
      end
      
      # @private
      class ListSubscriptionResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :event_id, as: 'eventId'
          collection :items, as: 'items', class: Google::Apis::YoutubeV3::Subscription, decorator: Google::Apis::YoutubeV3::Subscription::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :page_info, as: 'pageInfo', class: Google::Apis::YoutubeV3::PageInfo, decorator: Google::Apis::YoutubeV3::PageInfo::Representation
      
          property :prev_page_token, as: 'prevPageToken'
          property :token_pagination, as: 'tokenPagination', class: Google::Apis::YoutubeV3::TokenPagination, decorator: Google::Apis::YoutubeV3::TokenPagination::Representation
      
          property :visitor_id, as: 'visitorId'
        end
      end
      
      # @private
      class SubscriptionSnippet
        class Representation < Google::Apis::Core::JsonRepresentation
          property :channel_id, as: 'channelId'
          property :channel_title, as: 'channelTitle'
          property :description, as: 'description'
          property :published_at, as: 'publishedAt', type: DateTime
      
          property :resource_id, as: 'resourceId', class: Google::Apis::YoutubeV3::ResourceId, decorator: Google::Apis::YoutubeV3::ResourceId::Representation
      
          property :thumbnails, as: 'thumbnails', class: Google::Apis::YoutubeV3::ThumbnailDetails, decorator: Google::Apis::YoutubeV3::ThumbnailDetails::Representation
      
          property :title, as: 'title'
        end
      end
      
      # @private
      class SubscriptionSubscriberSnippet
        class Representation < Google::Apis::Core::JsonRepresentation
          property :channel_id, as: 'channelId'
          property :description, as: 'description'
          property :thumbnails, as: 'thumbnails', class: Google::Apis::YoutubeV3::ThumbnailDetails, decorator: Google::Apis::YoutubeV3::ThumbnailDetails::Representation
      
          property :title, as: 'title'
        end
      end
      
      # @private
      class Thumbnail
        class Representation < Google::Apis::Core::JsonRepresentation
          property :height, as: 'height'
          property :url, as: 'url'
          property :width, as: 'width'
        end
      end
      
      # @private
      class ThumbnailDetails
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default, as: 'default', class: Google::Apis::YoutubeV3::Thumbnail, decorator: Google::Apis::YoutubeV3::Thumbnail::Representation
      
          property :high, as: 'high', class: Google::Apis::YoutubeV3::Thumbnail, decorator: Google::Apis::YoutubeV3::Thumbnail::Representation
      
          property :maxres, as: 'maxres', class: Google::Apis::YoutubeV3::Thumbnail, decorator: Google::Apis::YoutubeV3::Thumbnail::Representation
      
          property :medium, as: 'medium', class: Google::Apis::YoutubeV3::Thumbnail, decorator: Google::Apis::YoutubeV3::Thumbnail::Representation
      
          property :standard, as: 'standard', class: Google::Apis::YoutubeV3::Thumbnail, decorator: Google::Apis::YoutubeV3::Thumbnail::Representation
      
        end
      end
      
      # @private
      class SetThumbnailResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :event_id, as: 'eventId'
          collection :items, as: 'items', class: Google::Apis::YoutubeV3::ThumbnailDetails, decorator: Google::Apis::YoutubeV3::ThumbnailDetails::Representation
      
          property :kind, as: 'kind'
          property :visitor_id, as: 'visitorId'
        end
      end
      
      # @private
      class TokenPagination
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      # @private
      class Video
        class Representation < Google::Apis::Core::JsonRepresentation
          property :age_gating, as: 'ageGating', class: Google::Apis::YoutubeV3::VideoAgeGating, decorator: Google::Apis::YoutubeV3::VideoAgeGating::Representation
      
          property :content_details, as: 'contentDetails', class: Google::Apis::YoutubeV3::VideoContentDetails, decorator: Google::Apis::YoutubeV3::VideoContentDetails::Representation
      
          property :conversion_pings, as: 'conversionPings', class: Google::Apis::YoutubeV3::VideoConversionPings, decorator: Google::Apis::YoutubeV3::VideoConversionPings::Representation
      
          property :etag, as: 'etag'
          property :file_details, as: 'fileDetails', class: Google::Apis::YoutubeV3::VideoFileDetails, decorator: Google::Apis::YoutubeV3::VideoFileDetails::Representation
      
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :live_streaming_details, as: 'liveStreamingDetails', class: Google::Apis::YoutubeV3::VideoLiveStreamingDetails, decorator: Google::Apis::YoutubeV3::VideoLiveStreamingDetails::Representation
      
          hash :localizations, as: 'localizations', class: Google::Apis::YoutubeV3::VideoLocalization, decorator: Google::Apis::YoutubeV3::VideoLocalization::Representation
      
          property :monetization_details, as: 'monetizationDetails', class: Google::Apis::YoutubeV3::VideoMonetizationDetails, decorator: Google::Apis::YoutubeV3::VideoMonetizationDetails::Representation
      
          property :player, as: 'player', class: Google::Apis::YoutubeV3::VideoPlayer, decorator: Google::Apis::YoutubeV3::VideoPlayer::Representation
      
          property :processing_details, as: 'processingDetails', class: Google::Apis::YoutubeV3::VideoProcessingDetails, decorator: Google::Apis::YoutubeV3::VideoProcessingDetails::Representation
      
          property :project_details, as: 'projectDetails', class: Google::Apis::YoutubeV3::VideoProjectDetails, decorator: Google::Apis::YoutubeV3::VideoProjectDetails::Representation
      
          property :recording_details, as: 'recordingDetails', class: Google::Apis::YoutubeV3::VideoRecordingDetails, decorator: Google::Apis::YoutubeV3::VideoRecordingDetails::Representation
      
          property :snippet, as: 'snippet', class: Google::Apis::YoutubeV3::VideoSnippet, decorator: Google::Apis::YoutubeV3::VideoSnippet::Representation
      
          property :statistics, as: 'statistics', class: Google::Apis::YoutubeV3::VideoStatistics, decorator: Google::Apis::YoutubeV3::VideoStatistics::Representation
      
          property :status, as: 'status', class: Google::Apis::YoutubeV3::VideoStatus, decorator: Google::Apis::YoutubeV3::VideoStatus::Representation
      
          property :suggestions, as: 'suggestions', class: Google::Apis::YoutubeV3::VideoSuggestions, decorator: Google::Apis::YoutubeV3::VideoSuggestions::Representation
      
          property :topic_details, as: 'topicDetails', class: Google::Apis::YoutubeV3::VideoTopicDetails, decorator: Google::Apis::YoutubeV3::VideoTopicDetails::Representation
      
        end
      end
      
      # @private
      class VideoAbuseReport
        class Representation < Google::Apis::Core::JsonRepresentation
          property :comments, as: 'comments'
          property :language, as: 'language'
          property :reason_id, as: 'reasonId'
          property :secondary_reason_id, as: 'secondaryReasonId'
          property :video_id, as: 'videoId'
        end
      end
      
      # @private
      class VideoAbuseReportReason
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :snippet, as: 'snippet', class: Google::Apis::YoutubeV3::VideoAbuseReportReasonSnippet, decorator: Google::Apis::YoutubeV3::VideoAbuseReportReasonSnippet::Representation
      
        end
      end
      
      # @private
      class ListVideoAbuseReportReasonResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :event_id, as: 'eventId'
          collection :items, as: 'items', class: Google::Apis::YoutubeV3::VideoAbuseReportReason, decorator: Google::Apis::YoutubeV3::VideoAbuseReportReason::Representation
      
          property :kind, as: 'kind'
          property :visitor_id, as: 'visitorId'
        end
      end
      
      # @private
      class VideoAbuseReportReasonSnippet
        class Representation < Google::Apis::Core::JsonRepresentation
          property :label, as: 'label'
          collection :secondary_reasons, as: 'secondaryReasons', class: Google::Apis::YoutubeV3::VideoAbuseReportSecondaryReason, decorator: Google::Apis::YoutubeV3::VideoAbuseReportSecondaryReason::Representation
      
        end
      end
      
      # @private
      class VideoAbuseReportSecondaryReason
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :label, as: 'label'
        end
      end
      
      # @private
      class VideoAgeGating
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alcohol_content, as: 'alcoholContent'
          property :restricted, as: 'restricted'
          property :video_game_rating, as: 'videoGameRating'
        end
      end
      
      # @private
      class VideoCategory
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :snippet, as: 'snippet', class: Google::Apis::YoutubeV3::VideoCategorySnippet, decorator: Google::Apis::YoutubeV3::VideoCategorySnippet::Representation
      
        end
      end
      
      # @private
      class ListVideoCategoryResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :event_id, as: 'eventId'
          collection :items, as: 'items', class: Google::Apis::YoutubeV3::VideoCategory, decorator: Google::Apis::YoutubeV3::VideoCategory::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :page_info, as: 'pageInfo', class: Google::Apis::YoutubeV3::PageInfo, decorator: Google::Apis::YoutubeV3::PageInfo::Representation
      
          property :prev_page_token, as: 'prevPageToken'
          property :token_pagination, as: 'tokenPagination', class: Google::Apis::YoutubeV3::TokenPagination, decorator: Google::Apis::YoutubeV3::TokenPagination::Representation
      
          property :visitor_id, as: 'visitorId'
        end
      end
      
      # @private
      class VideoCategorySnippet
        class Representation < Google::Apis::Core::JsonRepresentation
          property :assignable, as: 'assignable'
          property :channel_id, as: 'channelId'
          property :title, as: 'title'
        end
      end
      
      # @private
      class VideoContentDetails
        class Representation < Google::Apis::Core::JsonRepresentation
          property :caption, as: 'caption'
          property :content_rating, as: 'contentRating', class: Google::Apis::YoutubeV3::ContentRating, decorator: Google::Apis::YoutubeV3::ContentRating::Representation
      
          property :country_restriction, as: 'countryRestriction', class: Google::Apis::YoutubeV3::AccessPolicy, decorator: Google::Apis::YoutubeV3::AccessPolicy::Representation
      
          property :definition, as: 'definition'
          property :dimension, as: 'dimension'
          property :duration, as: 'duration'
          property :licensed_content, as: 'licensedContent'
          property :region_restriction, as: 'regionRestriction', class: Google::Apis::YoutubeV3::VideoContentDetailsRegionRestriction, decorator: Google::Apis::YoutubeV3::VideoContentDetailsRegionRestriction::Representation
      
        end
      end
      
      # @private
      class VideoContentDetailsRegionRestriction
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allowed, as: 'allowed'
          collection :blocked, as: 'blocked'
        end
      end
      
      # @private
      class VideoConversionPing
        class Representation < Google::Apis::Core::JsonRepresentation
          property :context, as: 'context'
          property :conversion_url, as: 'conversionUrl'
        end
      end
      
      # @private
      class VideoConversionPings
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :pings, as: 'pings', class: Google::Apis::YoutubeV3::VideoConversionPing, decorator: Google::Apis::YoutubeV3::VideoConversionPing::Representation
      
        end
      end
      
      # @private
      class VideoFileDetails
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audio_streams, as: 'audioStreams', class: Google::Apis::YoutubeV3::VideoFileDetailsAudioStream, decorator: Google::Apis::YoutubeV3::VideoFileDetailsAudioStream::Representation
      
          property :bitrate_bps, as: 'bitrateBps'
          property :container, as: 'container'
          property :creation_time, as: 'creationTime'
          property :duration_ms, as: 'durationMs'
          property :file_name, as: 'fileName'
          property :file_size, as: 'fileSize'
          property :file_type, as: 'fileType'
          property :recording_location, as: 'recordingLocation', class: Google::Apis::YoutubeV3::GeoPoint, decorator: Google::Apis::YoutubeV3::GeoPoint::Representation
      
          collection :video_streams, as: 'videoStreams', class: Google::Apis::YoutubeV3::VideoFileDetailsVideoStream, decorator: Google::Apis::YoutubeV3::VideoFileDetailsVideoStream::Representation
      
        end
      end
      
      # @private
      class VideoFileDetailsAudioStream
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bitrate_bps, as: 'bitrateBps'
          property :channel_count, as: 'channelCount'
          property :codec, as: 'codec'
          property :vendor, as: 'vendor'
        end
      end
      
      # @private
      class VideoFileDetailsVideoStream
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aspect_ratio, as: 'aspectRatio'
          property :bitrate_bps, as: 'bitrateBps'
          property :codec, as: 'codec'
          property :frame_rate_fps, as: 'frameRateFps'
          property :height_pixels, as: 'heightPixels'
          property :rotation, as: 'rotation'
          property :vendor, as: 'vendor'
          property :width_pixels, as: 'widthPixels'
        end
      end
      
      # @private
      class GetVideoRatingResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :event_id, as: 'eventId'
          collection :items, as: 'items', class: Google::Apis::YoutubeV3::VideoRating, decorator: Google::Apis::YoutubeV3::VideoRating::Representation
      
          property :kind, as: 'kind'
          property :visitor_id, as: 'visitorId'
        end
      end
      
      # @private
      class ListVideosResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :event_id, as: 'eventId'
          collection :items, as: 'items', class: Google::Apis::YoutubeV3::Video, decorator: Google::Apis::YoutubeV3::Video::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :page_info, as: 'pageInfo', class: Google::Apis::YoutubeV3::PageInfo, decorator: Google::Apis::YoutubeV3::PageInfo::Representation
      
          property :prev_page_token, as: 'prevPageToken'
          property :token_pagination, as: 'tokenPagination', class: Google::Apis::YoutubeV3::TokenPagination, decorator: Google::Apis::YoutubeV3::TokenPagination::Representation
      
          property :visitor_id, as: 'visitorId'
        end
      end
      
      # @private
      class VideoLiveStreamingDetails
        class Representation < Google::Apis::Core::JsonRepresentation
          property :actual_end_time, as: 'actualEndTime', type: DateTime
      
          property :actual_start_time, as: 'actualStartTime', type: DateTime
      
          property :concurrent_viewers, as: 'concurrentViewers'
          property :scheduled_end_time, as: 'scheduledEndTime', type: DateTime
      
          property :scheduled_start_time, as: 'scheduledStartTime', type: DateTime
      
        end
      end
      
      # @private
      class VideoLocalization
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :title, as: 'title'
        end
      end
      
      # @private
      class VideoMonetizationDetails
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access, as: 'access', class: Google::Apis::YoutubeV3::AccessPolicy, decorator: Google::Apis::YoutubeV3::AccessPolicy::Representation
      
        end
      end
      
      # @private
      class VideoPlayer
        class Representation < Google::Apis::Core::JsonRepresentation
          property :embed_html, as: 'embedHtml'
        end
      end
      
      # @private
      class VideoProcessingDetails
        class Representation < Google::Apis::Core::JsonRepresentation
          property :editor_suggestions_availability, as: 'editorSuggestionsAvailability'
          property :file_details_availability, as: 'fileDetailsAvailability'
          property :processing_failure_reason, as: 'processingFailureReason'
          property :processing_issues_availability, as: 'processingIssuesAvailability'
          property :processing_progress, as: 'processingProgress', class: Google::Apis::YoutubeV3::VideoProcessingDetailsProcessingProgress, decorator: Google::Apis::YoutubeV3::VideoProcessingDetailsProcessingProgress::Representation
      
          property :processing_status, as: 'processingStatus'
          property :tag_suggestions_availability, as: 'tagSuggestionsAvailability'
          property :thumbnails_availability, as: 'thumbnailsAvailability'
        end
      end
      
      # @private
      class VideoProcessingDetailsProcessingProgress
        class Representation < Google::Apis::Core::JsonRepresentation
          property :parts_processed, as: 'partsProcessed'
          property :parts_total, as: 'partsTotal'
          property :time_left_ms, as: 'timeLeftMs'
        end
      end
      
      # @private
      class VideoProjectDetails
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :tags, as: 'tags'
        end
      end
      
      # @private
      class VideoRating
        class Representation < Google::Apis::Core::JsonRepresentation
          property :rating, as: 'rating'
          property :video_id, as: 'videoId'
        end
      end
      
      # @private
      class VideoRecordingDetails
        class Representation < Google::Apis::Core::JsonRepresentation
          property :location, as: 'location', class: Google::Apis::YoutubeV3::GeoPoint, decorator: Google::Apis::YoutubeV3::GeoPoint::Representation
      
          property :location_description, as: 'locationDescription'
          property :recording_date, as: 'recordingDate', type: DateTime
      
        end
      end
      
      # @private
      class VideoSnippet
        class Representation < Google::Apis::Core::JsonRepresentation
          property :category_id, as: 'categoryId'
          property :channel_id, as: 'channelId'
          property :channel_title, as: 'channelTitle'
          property :default_language, as: 'defaultLanguage'
          property :description, as: 'description'
          property :live_broadcast_content, as: 'liveBroadcastContent'
          property :localized, as: 'localized', class: Google::Apis::YoutubeV3::VideoLocalization, decorator: Google::Apis::YoutubeV3::VideoLocalization::Representation
      
          property :published_at, as: 'publishedAt', type: DateTime
      
          collection :tags, as: 'tags'
          property :thumbnails, as: 'thumbnails', class: Google::Apis::YoutubeV3::ThumbnailDetails, decorator: Google::Apis::YoutubeV3::ThumbnailDetails::Representation
      
          property :title, as: 'title'
        end
      end
      
      # @private
      class VideoStatistics
        class Representation < Google::Apis::Core::JsonRepresentation
          property :comment_count, as: 'commentCount'
          property :dislike_count, as: 'dislikeCount'
          property :favorite_count, as: 'favoriteCount'
          property :like_count, as: 'likeCount'
          property :view_count, as: 'viewCount'
        end
      end
      
      # @private
      class VideoStatus
        class Representation < Google::Apis::Core::JsonRepresentation
          property :embeddable, as: 'embeddable'
          property :failure_reason, as: 'failureReason'
          property :license, as: 'license'
          property :privacy_status, as: 'privacyStatus'
          property :public_stats_viewable, as: 'publicStatsViewable'
          property :publish_at, as: 'publishAt', type: DateTime
      
          property :rejection_reason, as: 'rejectionReason'
          property :upload_status, as: 'uploadStatus'
        end
      end
      
      # @private
      class VideoSuggestions
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :editor_suggestions, as: 'editorSuggestions'
          collection :processing_errors, as: 'processingErrors'
          collection :processing_hints, as: 'processingHints'
          collection :processing_warnings, as: 'processingWarnings'
          collection :tag_suggestions, as: 'tagSuggestions', class: Google::Apis::YoutubeV3::VideoSuggestionsTagSuggestion, decorator: Google::Apis::YoutubeV3::VideoSuggestionsTagSuggestion::Representation
      
        end
      end
      
      # @private
      class VideoSuggestionsTagSuggestion
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :category_restricts, as: 'categoryRestricts'
          property :tag, as: 'tag'
        end
      end
      
      # @private
      class VideoTopicDetails
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :relevant_topic_ids, as: 'relevantTopicIds'
          collection :topic_ids, as: 'topicIds'
        end
      end
      
      # @private
      class WatchSettings
        class Representation < Google::Apis::Core::JsonRepresentation
          property :background_color, as: 'backgroundColor'
          property :featured_playlist_id, as: 'featuredPlaylistId'
          property :text_color, as: 'textColor'
        end
      end
    end
  end
end
