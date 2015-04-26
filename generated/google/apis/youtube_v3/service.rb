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
    module YoutubeV3
      # YouTube Data API
      #
      # Programmatic access to YouTube features.
      #
      # @example
      #    require 'google/apis/youtube_v3'
      #
      #    Youtube = Google::Apis::YoutubeV3 # Alias the module
      #    service = Youtube::YouTubeService.new
      #
      # @see https://developers.google.com/youtube/v3
      class YouTubeService < Google::Apis::Core::BaseService

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
          super('https://www.googleapis.com/', 'youtube/v3/')
        end

        # Posts a bulletin for a specific channel. (The user submitting the request must
        # be authorized to act on the channel's behalf.)
        # Note: Even though an activity resource can contain information about actions
        # like a user rating a video or marking a video as a favorite, you need to use
        # other API methods to generate those activity resources. For example, you would
        # use the API's videos.rate() method to rate a video and the playlistItems.
        # insert() method to mark a video as a favorite.
        # @param [Google::Apis::YoutubeV3::Activity] activity
        #   
        # @param [String] part
        #   The part parameter serves two purposes in this operation. It identifies the
        #   properties that the write operation will set as well as the properties that
        #   the API response will include.
        #   The part names that you can include in the parameter value are snippet and
        #   contentDetails.
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
        # @yieldparam result [Google::Apis::YoutubeV3::Activity] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::Activity]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_activity(activity = nil, part: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'activities'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::YoutubeV3::ActivityRepresentation
          command.request_object = activity
          command.response_representation = Google::Apis::YoutubeV3::ActivityRepresentation
          command.response_class = Google::Apis::YoutubeV3::Activity
          command.query['part'] = part unless part.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Returns a list of channel activity events that match the request criteria. For
        # example, you can retrieve events associated with a particular channel, events
        # associated with the user's subscriptions and Google+ friends, or the YouTube
        # home page feed, which is customized for each user.
        # @param [String] channel_id
        #   The channelId parameter specifies a unique YouTube channel ID. The API will
        #   then return a list of that channel's activities.
        # @param [Boolean] home
        #   Set this parameter's value to true to retrieve the activity feed that displays
        #   on the YouTube home page for the currently authenticated user.
        # @param [Fixnum] max_results
        #   The maxResults parameter specifies the maximum number of items that should be
        #   returned in the result set.
        # @param [Boolean] mine
        #   Set this parameter's value to true to retrieve a feed of the authenticated
        #   user's activities.
        # @param [String] page_token
        #   The pageToken parameter identifies a specific page in the result set that
        #   should be returned. In an API response, the nextPageToken and prevPageToken
        #   properties identify other pages that could be retrieved.
        # @param [String] part
        #   The part parameter specifies a comma-separated list of one or more activity
        #   resource properties that the API response will include. The part names that
        #   you can include in the parameter value are id, snippet, and contentDetails.
        #   If the parameter identifies a property that contains child properties, the
        #   child properties will be included in the response. For example, in a activity
        #   resource, the snippet property contains other properties that identify the
        #   type of activity, a display title for the activity, and so forth. If you set
        #   part=snippet, the API response will also contain all of those nested
        #   properties.
        # @param [DateTime] published_after
        #   The publishedAfter parameter specifies the earliest date and time that an
        #   activity could have occurred for that activity to be included in the API
        #   response. If the parameter value specifies a day, but not a time, then any
        #   activities that occurred that day will be included in the result set. The
        #   value is specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format.
        # @param [DateTime] published_before
        #   The publishedBefore parameter specifies the date and time before which an
        #   activity must have occurred for that activity to be included in the API
        #   response. If the parameter value specifies a day, but not a time, then any
        #   activities that occurred that day will be excluded from the result set. The
        #   value is specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format.
        # @param [String] region_code
        #   The regionCode parameter instructs the API to return results for the specified
        #   country. The parameter value is an ISO 3166-1 alpha-2 country code. YouTube
        #   uses this value when the authorized user's previous activity on YouTube does
        #   not provide enough information to generate the activity feed.
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
        # @yieldparam result [Google::Apis::YoutubeV3::ActivityListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::ActivityListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_activities(channel_id: nil, home: nil, max_results: nil, mine: nil, page_token: nil, part: nil, published_after: nil, published_before: nil, region_code: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'activities'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::YoutubeV3::ActivityListResponseRepresentation
          command.response_class = Google::Apis::YoutubeV3::ActivityListResponse
          command.query['channelId'] = channel_id unless channel_id.nil?
          command.query['home'] = home unless home.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['mine'] = mine unless mine.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['part'] = part unless part.nil?
          command.query['publishedAfter'] = published_after unless published_after.nil?
          command.query['publishedBefore'] = published_before unless published_before.nil?
          command.query['regionCode'] = region_code unless region_code.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Deletes a specified caption track.
        # @param [String] debug_project_id_override
        #   The debugProjectIdOverride parameter should be used for mimicking a request
        #   for a certain project ID
        # @param [String] id
        #   The id parameter identifies the caption track that is being deleted. The value
        #   is a caption track ID as identified by the id property in a caption resource.
        # @param [String] on_behalf_of
        #   ID of the Google+ Page for the channel that the request is be on behalf of
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
        def delete_caption(debug_project_id_override: nil, id: nil, on_behalf_of: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'captions'
          command =  make_simple_command(:delete, path, options)
          command.query['debugProjectIdOverride'] = debug_project_id_override unless debug_project_id_override.nil?
          command.query['id'] = id unless id.nil?
          command.query['onBehalfOf'] = on_behalf_of unless on_behalf_of.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Downloads a caption track. The caption track is returned in its original
        # format unless the request specifies a value for the tfmt parameter and in its
        # original language unless the request specifies a value for the tlang parameter.
        # @param [String] id
        #   The id parameter identifies the caption track that is being retrieved. The
        #   value is a caption track ID as identified by the id property in a caption
        #   resource.
        # @param [String] debug_project_id_override
        #   The debugProjectIdOverride parameter should be used for mimicking a request
        #   for a certain project ID
        # @param [String] on_behalf_of
        #   ID of the Google+ Page for the channel that the request is be on behalf of
        # @param [String] tfmt
        #   The tfmt parameter specifies that the caption track should be returned in a
        #   specific format. If the parameter is not included in the request, the track is
        #   returned in its original format.
        # @param [String] tlang
        #   The tlang parameter specifies that the API response should return a
        #   translation of the specified caption track. The parameter value is an ISO 639-
        #   1 two-letter language code that identifies the desired caption language. The
        #   translation is generated by using machine translation, such as Google
        #   Translate.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [IO, String] download_dest
        #   IO stream or filename to receive content download
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
        def download_caption(id, debug_project_id_override: nil, on_behalf_of: nil, tfmt: nil, tlang: nil, fields: nil, quota_user: nil, user_ip: nil, download_dest: nil, options: nil, &block)
          path = 'captions/{id}'
          if download_dest.nil?
            command =  make_simple_command(:get, path, options)
          else
            command = make_download_command(:get, path, options)
            command.download_dest = download_dest
          end
          command.params['id'] = id unless id.nil?
          command.query['debugProjectIdOverride'] = debug_project_id_override unless debug_project_id_override.nil?
          command.query['onBehalfOf'] = on_behalf_of unless on_behalf_of.nil?
          command.query['tfmt'] = tfmt unless tfmt.nil?
          command.query['tlang'] = tlang unless tlang.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Uploads a caption track.
        # @param [Google::Apis::YoutubeV3::Caption] caption
        #   
        # @param [String] debug_project_id_override
        #   The debugProjectIdOverride parameter should be used for mimicking a request
        #   for a certain project ID.
        # @param [String] on_behalf_of
        #   ID of the Google+ Page for the channel that the request is be on behalf of
        # @param [String] part
        #   The part parameter specifies the caption resource parts that the API response
        #   will include. Set the parameter value to snippet.
        # @param [Boolean] sync
        #   The sync parameter indicates whether YouTube should automatically synchronize
        #   the caption file with the audio track of the video. If you set the value to
        #   true, YouTube will disregard any time codes that are in the uploaded caption
        #   file and generate new time codes for the captions.
        #   You should set the sync parameter to true if you are uploading a transcript,
        #   which has no time codes, or if you suspect the time codes in your file are
        #   incorrect and want YouTube to try to fix them.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [IO, String] upload_source
        #   IO stream or filename containing content to upload
        # @param [String] content_type
        #   Content type of the uploaded content.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::YoutubeV3::Caption] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::Caption]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_caption(caption = nil, debug_project_id_override: nil, on_behalf_of: nil, part: nil, sync: nil, fields: nil, quota_user: nil, user_ip: nil, upload_source: nil, content_type: nil, options: nil, &block)
          path = 'captions'
          if upload_source.nil?
            command =  make_simple_command(:post, path, options)
          else
            command = make_upload_command(:post, path, options)
            command.upload_source = upload_source
            command.upload_content_type = content_type
          end
          command.request_representation = Google::Apis::YoutubeV3::CaptionRepresentation
          command.request_object = caption
          command.response_representation = Google::Apis::YoutubeV3::CaptionRepresentation
          command.response_class = Google::Apis::YoutubeV3::Caption
          command.query['debugProjectIdOverride'] = debug_project_id_override unless debug_project_id_override.nil?
          command.query['onBehalfOf'] = on_behalf_of unless on_behalf_of.nil?
          command.query['part'] = part unless part.nil?
          command.query['sync'] = sync unless sync.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Returns a list of caption tracks that are associated with a specified video.
        # Note that the API response does not contain the actual captions and that the
        # captions.download method provides the ability to retrieve a caption track.
        # @param [String] debug_project_id_override
        #   The debugProjectIdOverride parameter should be used for mimicking a request
        #   for a certain project ID.
        # @param [String] id
        #   The id parameter specifies a comma-separated list of IDs that identify the
        #   caption resources that should be retrieved. Each ID must identify a caption
        #   track associated with the specified video.
        # @param [String] on_behalf_of
        #   ID of the Google+ Page for the channel that the request is on behalf of.
        # @param [String] part
        #   The part parameter specifies a comma-separated list of one or more caption
        #   resource parts that the API response will include. The part names that you can
        #   include in the parameter value are id and snippet.
        # @param [String] video_id
        #   The videoId parameter specifies the YouTube video ID of the video for which
        #   the API should return caption tracks.
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
        # @yieldparam result [Google::Apis::YoutubeV3::CaptionListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::CaptionListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_captions(debug_project_id_override: nil, id: nil, on_behalf_of: nil, part: nil, video_id: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'captions'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::YoutubeV3::CaptionListResponseRepresentation
          command.response_class = Google::Apis::YoutubeV3::CaptionListResponse
          command.query['debugProjectIdOverride'] = debug_project_id_override unless debug_project_id_override.nil?
          command.query['id'] = id unless id.nil?
          command.query['onBehalfOf'] = on_behalf_of unless on_behalf_of.nil?
          command.query['part'] = part unless part.nil?
          command.query['videoId'] = video_id unless video_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Updates a caption track. When updating a caption track, you can change the
        # track's draft status, upload a new caption file for the track, or both.
        # @param [Google::Apis::YoutubeV3::Caption] caption
        #   
        # @param [String] debug_project_id_override
        #   The debugProjectIdOverride parameter should be used for mimicking a request
        #   for a certain project ID.
        # @param [String] on_behalf_of
        #   ID of the Google+ Page for the channel that the request is be on behalf of
        # @param [String] part
        #   The part parameter serves two purposes in this operation. It identifies the
        #   properties that the write operation will set as well as the properties that
        #   the API response will include. Set the property value to snippet if you are
        #   updating the track's draft status. Otherwise, set the property value to id.
        # @param [Boolean] sync
        #   Note: The API server only processes the parameter value if the request
        #   contains an updated caption file.
        #   The sync parameter indicates whether YouTube should automatically synchronize
        #   the caption file with the audio track of the video. If you set the value to
        #   true, YouTube will automatically synchronize the caption track with the audio
        #   track.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [IO, String] upload_source
        #   IO stream or filename containing content to upload
        # @param [String] content_type
        #   Content type of the uploaded content.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::YoutubeV3::Caption] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::Caption]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_caption(caption = nil, debug_project_id_override: nil, on_behalf_of: nil, part: nil, sync: nil, fields: nil, quota_user: nil, user_ip: nil, upload_source: nil, content_type: nil, options: nil, &block)
          path = 'captions'
          if upload_source.nil?
            command =  make_simple_command(:put, path, options)
          else
            command = make_upload_command(:put, path, options)
            command.upload_source = upload_source
            command.upload_content_type = content_type
          end
          command.request_representation = Google::Apis::YoutubeV3::CaptionRepresentation
          command.request_object = caption
          command.response_representation = Google::Apis::YoutubeV3::CaptionRepresentation
          command.response_class = Google::Apis::YoutubeV3::Caption
          command.query['debugProjectIdOverride'] = debug_project_id_override unless debug_project_id_override.nil?
          command.query['onBehalfOf'] = on_behalf_of unless on_behalf_of.nil?
          command.query['part'] = part unless part.nil?
          command.query['sync'] = sync unless sync.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Uploads a channel banner image to YouTube. This method represents the first
        # two steps in a three-step process to update the banner image for a channel:
        # - Call the channelBanners.insert method to upload the binary image data to
        # YouTube. The image must have a 16:9 aspect ratio and be at least 2120x1192
        # pixels.
        # - Extract the url property's value from the response that the API returns for
        # step 1.
        # - Call the channels.update method to update the channel's branding settings.
        # Set the brandingSettings.image.bannerExternalUrl property's value to the URL
        # obtained in step 2.
        # @param [Google::Apis::YoutubeV3::ChannelBannerResource] channel_banner_resource
        #   
        # @param [String] on_behalf_of_content_owner
        #   Note: This parameter is intended exclusively for YouTube content partners.
        #   The onBehalfOfContentOwner parameter indicates that the request's
        #   authorization credentials identify a YouTube CMS user who is acting on behalf
        #   of the content owner specified in the parameter value. This parameter is
        #   intended for YouTube content partners that own and manage many different
        #   YouTube channels. It allows content owners to authenticate once and get access
        #   to all their video and channel data, without having to provide authentication
        #   credentials for each individual channel. The CMS account that the user
        #   authenticates with must be linked to the specified YouTube content owner.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [IO, String] upload_source
        #   IO stream or filename containing content to upload
        # @param [String] content_type
        #   Content type of the uploaded content.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::YoutubeV3::ChannelBannerResource] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::ChannelBannerResource]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_channel_banner(channel_banner_resource = nil, on_behalf_of_content_owner: nil, fields: nil, quota_user: nil, user_ip: nil, upload_source: nil, content_type: nil, options: nil, &block)
          path = 'channelBanners/insert'
          if upload_source.nil?
            command =  make_simple_command(:post, path, options)
          else
            command = make_upload_command(:post, path, options)
            command.upload_source = upload_source
            command.upload_content_type = content_type
          end
          command.request_representation = Google::Apis::YoutubeV3::ChannelBannerResourceRepresentation
          command.request_object = channel_banner_resource
          command.response_representation = Google::Apis::YoutubeV3::ChannelBannerResourceRepresentation
          command.response_class = Google::Apis::YoutubeV3::ChannelBannerResource
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Deletes a channelSection.
        # @param [String] id
        #   The id parameter specifies the YouTube channelSection ID for the resource that
        #   is being deleted. In a channelSection resource, the id property specifies the
        #   YouTube channelSection ID.
        # @param [String] on_behalf_of_content_owner
        #   Note: This parameter is intended exclusively for YouTube content partners.
        #   The onBehalfOfContentOwner parameter indicates that the request's
        #   authorization credentials identify a YouTube CMS user who is acting on behalf
        #   of the content owner specified in the parameter value. This parameter is
        #   intended for YouTube content partners that own and manage many different
        #   YouTube channels. It allows content owners to authenticate once and get access
        #   to all their video and channel data, without having to provide authentication
        #   credentials for each individual channel. The CMS account that the user
        #   authenticates with must be linked to the specified YouTube content owner.
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
        def delete_channel_section(id: nil, on_behalf_of_content_owner: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'channelSections'
          command =  make_simple_command(:delete, path, options)
          command.query['id'] = id unless id.nil?
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Adds a channelSection for the authenticated user's channel.
        # @param [Google::Apis::YoutubeV3::ChannelSection] channel_section
        #   
        # @param [String] on_behalf_of_content_owner
        #   Note: This parameter is intended exclusively for YouTube content partners.
        #   The onBehalfOfContentOwner parameter indicates that the request's
        #   authorization credentials identify a YouTube CMS user who is acting on behalf
        #   of the content owner specified in the parameter value. This parameter is
        #   intended for YouTube content partners that own and manage many different
        #   YouTube channels. It allows content owners to authenticate once and get access
        #   to all their video and channel data, without having to provide authentication
        #   credentials for each individual channel. The CMS account that the user
        #   authenticates with must be linked to the specified YouTube content owner.
        # @param [String] on_behalf_of_content_owner_channel
        #   This parameter can only be used in a properly authorized request. Note: This
        #   parameter is intended exclusively for YouTube content partners.
        #   The onBehalfOfContentOwnerChannel parameter specifies the YouTube channel ID
        #   of the channel to which a video is being added. This parameter is required
        #   when a request specifies a value for the onBehalfOfContentOwner parameter, and
        #   it can only be used in conjunction with that parameter. In addition, the
        #   request must be authorized using a CMS account that is linked to the content
        #   owner that the onBehalfOfContentOwner parameter specifies. Finally, the
        #   channel that the onBehalfOfContentOwnerChannel parameter value specifies must
        #   be linked to the content owner that the onBehalfOfContentOwner parameter
        #   specifies.
        #   This parameter is intended for YouTube content partners that own and manage
        #   many different YouTube channels. It allows content owners to authenticate once
        #   and perform actions on behalf of the channel specified in the parameter value,
        #   without having to provide authentication credentials for each separate channel.
        # @param [String] part
        #   The part parameter serves two purposes in this operation. It identifies the
        #   properties that the write operation will set as well as the properties that
        #   the API response will include.
        #   The part names that you can include in the parameter value are snippet and
        #   contentDetails.
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
        # @yieldparam result [Google::Apis::YoutubeV3::ChannelSection] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::ChannelSection]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_channel_section(channel_section = nil, on_behalf_of_content_owner: nil, on_behalf_of_content_owner_channel: nil, part: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'channelSections'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::YoutubeV3::ChannelSectionRepresentation
          command.request_object = channel_section
          command.response_representation = Google::Apis::YoutubeV3::ChannelSectionRepresentation
          command.response_class = Google::Apis::YoutubeV3::ChannelSection
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['onBehalfOfContentOwnerChannel'] = on_behalf_of_content_owner_channel unless on_behalf_of_content_owner_channel.nil?
          command.query['part'] = part unless part.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Returns channelSection resources that match the API request criteria.
        # @param [String] channel_id
        #   The channelId parameter specifies a YouTube channel ID. The API will only
        #   return that channel's channelSections.
        # @param [String] hl
        #   The hl parameter indicates that the snippet.localized property values in the
        #   returned channelSection resources should be in the specified language if
        #   localized values for that language are available. For example, if the API
        #   request specifies hl=de, the snippet.localized properties in the API response
        #   will contain German titles if German titles are available. Channel owners can
        #   provide localized channel section titles using either the channelSections.
        #   insert or channelSections.update method.
        # @param [String] id
        #   The id parameter specifies a comma-separated list of the YouTube
        #   channelSection ID(s) for the resource(s) that are being retrieved. In a
        #   channelSection resource, the id property specifies the YouTube channelSection
        #   ID.
        # @param [Boolean] mine
        #   Set this parameter's value to true to retrieve a feed of the authenticated
        #   user's channelSections.
        # @param [String] on_behalf_of_content_owner
        #   Note: This parameter is intended exclusively for YouTube content partners.
        #   The onBehalfOfContentOwner parameter indicates that the request's
        #   authorization credentials identify a YouTube CMS user who is acting on behalf
        #   of the content owner specified in the parameter value. This parameter is
        #   intended for YouTube content partners that own and manage many different
        #   YouTube channels. It allows content owners to authenticate once and get access
        #   to all their video and channel data, without having to provide authentication
        #   credentials for each individual channel. The CMS account that the user
        #   authenticates with must be linked to the specified YouTube content owner.
        # @param [String] part
        #   The part parameter specifies a comma-separated list of one or more
        #   channelSection resource properties that the API response will include. The
        #   part names that you can include in the parameter value are id, snippet, and
        #   contentDetails.
        #   If the parameter identifies a property that contains child properties, the
        #   child properties will be included in the response. For example, in a
        #   channelSection resource, the snippet property contains other properties, such
        #   as a display title for the channelSection. If you set part=snippet, the API
        #   response will also contain all of those nested properties.
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
        # @yieldparam result [Google::Apis::YoutubeV3::ChannelSectionListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::ChannelSectionListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_channel_sections(channel_id: nil, hl: nil, id: nil, mine: nil, on_behalf_of_content_owner: nil, part: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'channelSections'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::YoutubeV3::ChannelSectionListResponseRepresentation
          command.response_class = Google::Apis::YoutubeV3::ChannelSectionListResponse
          command.query['channelId'] = channel_id unless channel_id.nil?
          command.query['hl'] = hl unless hl.nil?
          command.query['id'] = id unless id.nil?
          command.query['mine'] = mine unless mine.nil?
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['part'] = part unless part.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Update a channelSection.
        # @param [Google::Apis::YoutubeV3::ChannelSection] channel_section
        #   
        # @param [String] on_behalf_of_content_owner
        #   Note: This parameter is intended exclusively for YouTube content partners.
        #   The onBehalfOfContentOwner parameter indicates that the request's
        #   authorization credentials identify a YouTube CMS user who is acting on behalf
        #   of the content owner specified in the parameter value. This parameter is
        #   intended for YouTube content partners that own and manage many different
        #   YouTube channels. It allows content owners to authenticate once and get access
        #   to all their video and channel data, without having to provide authentication
        #   credentials for each individual channel. The CMS account that the user
        #   authenticates with must be linked to the specified YouTube content owner.
        # @param [String] part
        #   The part parameter serves two purposes in this operation. It identifies the
        #   properties that the write operation will set as well as the properties that
        #   the API response will include.
        #   The part names that you can include in the parameter value are snippet and
        #   contentDetails.
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
        # @yieldparam result [Google::Apis::YoutubeV3::ChannelSection] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::ChannelSection]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_channel_section(channel_section = nil, on_behalf_of_content_owner: nil, part: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'channelSections'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::YoutubeV3::ChannelSectionRepresentation
          command.request_object = channel_section
          command.response_representation = Google::Apis::YoutubeV3::ChannelSectionRepresentation
          command.response_class = Google::Apis::YoutubeV3::ChannelSection
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['part'] = part unless part.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Returns a collection of zero or more channel resources that match the request
        # criteria.
        # @param [String] category_id
        #   The categoryId parameter specifies a YouTube guide category, thereby
        #   requesting YouTube channels associated with that category.
        # @param [String] for_username
        #   The forUsername parameter specifies a YouTube username, thereby requesting the
        #   channel associated with that username.
        # @param [String] hl
        #   The hl parameter should be used for filter out the properties that are not in
        #   the given language. Used for the brandingSettings part.
        # @param [String] id
        #   The id parameter specifies a comma-separated list of the YouTube channel ID(s)
        #   for the resource(s) that are being retrieved. In a channel resource, the id
        #   property specifies the channel's YouTube channel ID.
        # @param [Boolean] managed_by_me
        #   Set this parameter's value to true to instruct the API to only return channels
        #   managed by the content owner that the onBehalfOfContentOwner parameter
        #   specifies. The user must be authenticated as a CMS account linked to the
        #   specified content owner and onBehalfOfContentOwner must be provided.
        # @param [Fixnum] max_results
        #   The maxResults parameter specifies the maximum number of items that should be
        #   returned in the result set.
        # @param [Boolean] mine
        #   Set this parameter's value to true to instruct the API to only return channels
        #   owned by the authenticated user.
        # @param [Boolean] my_subscribers
        #   Set this parameter's value to true to retrieve a list of channels that
        #   subscribed to the authenticated user's channel.
        # @param [String] on_behalf_of_content_owner
        #   The onBehalfOfContentOwner parameter indicates that the authenticated user is
        #   acting on behalf of the content owner specified in the parameter value. This
        #   parameter is intended for YouTube content partners that own and manage many
        #   different YouTube channels. It allows content owners to authenticate once and
        #   get access to all their video and channel data, without having to provide
        #   authentication credentials for each individual channel. The actual CMS account
        #   that the user authenticates with needs to be linked to the specified YouTube
        #   content owner.
        # @param [String] page_token
        #   The pageToken parameter identifies a specific page in the result set that
        #   should be returned. In an API response, the nextPageToken and prevPageToken
        #   properties identify other pages that could be retrieved.
        # @param [String] part
        #   The part parameter specifies a comma-separated list of one or more channel
        #   resource properties that the API response will include. The part names that
        #   you can include in the parameter value are id, snippet, contentDetails,
        #   statistics, topicDetails, and invideoPromotion.
        #   If the parameter identifies a property that contains child properties, the
        #   child properties will be included in the response. For example, in a channel
        #   resource, the contentDetails property contains other properties, such as the
        #   uploads properties. As such, if you set part=contentDetails, the API response
        #   will also contain all of those nested properties.
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
        # @yieldparam result [Google::Apis::YoutubeV3::ChannelListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::ChannelListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_channels(category_id: nil, for_username: nil, hl: nil, id: nil, managed_by_me: nil, max_results: nil, mine: nil, my_subscribers: nil, on_behalf_of_content_owner: nil, page_token: nil, part: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'channels'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::YoutubeV3::ChannelListResponseRepresentation
          command.response_class = Google::Apis::YoutubeV3::ChannelListResponse
          command.query['categoryId'] = category_id unless category_id.nil?
          command.query['forUsername'] = for_username unless for_username.nil?
          command.query['hl'] = hl unless hl.nil?
          command.query['id'] = id unless id.nil?
          command.query['managedByMe'] = managed_by_me unless managed_by_me.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['mine'] = mine unless mine.nil?
          command.query['mySubscribers'] = my_subscribers unless my_subscribers.nil?
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['part'] = part unless part.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Updates a channel's metadata.
        # @param [Google::Apis::YoutubeV3::Channel] channel
        #   
        # @param [String] on_behalf_of_content_owner
        #   The onBehalfOfContentOwner parameter indicates that the authenticated user is
        #   acting on behalf of the content owner specified in the parameter value. This
        #   parameter is intended for YouTube content partners that own and manage many
        #   different YouTube channels. It allows content owners to authenticate once and
        #   get access to all their video and channel data, without having to provide
        #   authentication credentials for each individual channel. The actual CMS account
        #   that the user authenticates with needs to be linked to the specified YouTube
        #   content owner.
        # @param [String] part
        #   The part parameter serves two purposes in this operation. It identifies the
        #   properties that the write operation will set as well as the properties that
        #   the API response will include.
        #   The part names that you can include in the parameter value are id and
        #   invideoPromotion.
        #   Note that this method will override the existing values for all of the mutable
        #   properties that are contained in any parts that the parameter value specifies.
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
        # @yieldparam result [Google::Apis::YoutubeV3::Channel] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::Channel]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_channel(channel = nil, on_behalf_of_content_owner: nil, part: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'channels'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::YoutubeV3::ChannelRepresentation
          command.request_object = channel
          command.response_representation = Google::Apis::YoutubeV3::ChannelRepresentation
          command.response_class = Google::Apis::YoutubeV3::Channel
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['part'] = part unless part.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Creates a new comment thread and top level comment.
        # @param [Google::Apis::YoutubeV3::CommentThread] comment_thread
        #   
        # @param [String] part
        #   The part parameter serves two purposes in this operation. It identifies the
        #   properties that the write operation will set as well as the properties that
        #   the API response will include.
        #   The part names that you can include in the parameter value are id and snippet.
        #   However only snippet contains properties that can be set.
        # @param [Boolean] share_on_google_plus
        #   The shareOnGooglePlus determines whether this thread should also be posted on
        #   Google+.
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
        # @yieldparam result [Google::Apis::YoutubeV3::CommentThread] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::CommentThread]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_comment_thread(comment_thread = nil, part: nil, share_on_google_plus: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'commentThreads'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::YoutubeV3::CommentThreadRepresentation
          command.request_object = comment_thread
          command.response_representation = Google::Apis::YoutubeV3::CommentThreadRepresentation
          command.response_class = Google::Apis::YoutubeV3::CommentThread
          command.query['part'] = part unless part.nil?
          command.query['shareOnGooglePlus'] = share_on_google_plus unless share_on_google_plus.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Returns a list of comment threads that match the API request parameters.
        # @param [String] all_threads_related_to_channel_id
        #   The allThreadsRelatedToChannelId parameter instructs the API to return the
        #   comment threads of all videos of the channel and the channel comments as well.
        # @param [String] channel_id
        #   The channelId parameter instructs the API to return the comment threads for
        #   all the channel comments (not including comments left on videos).
        # @param [String] id
        #   The id parameter specifies a comma-separated list of comment thread IDs for
        #   the resources that should be retrieved.
        # @param [Fixnum] max_results
        #   The maxResults parameter specifies the maximum number of items that should be
        #   returned in the result set.
        #   Note: This parameter is not supported for use in conjunction with the id
        #   parameter.
        # @param [String] moderation_status
        #   Set this parameter to limit the returned comment threads to a particular
        #   moderation state.
        #   Note: This parameter is not supported for use in conjunction with the id
        #   parameter.
        # @param [String] page_token
        #   The pageToken parameter identifies a specific page in the result set that
        #   should be returned. In an API response, the nextPageToken property identifies
        #   the next page of the result that can be retrieved.
        #   Note: This parameter is not supported for use in conjunction with the id
        #   parameter.
        # @param [String] part
        #   The part parameter specifies the commentThread resource parts that the API
        #   response will include. Supported values are id, snippet and replies.
        # @param [String] search_terms
        #   The searchTerms parameter instructs the API to limit the returned comments to
        #   those which contain the specified search terms.
        #   Note: This parameter is not supported for use in conjunction with the id
        #   parameter.
        # @param [String] text_format
        #   Set this parameter's value to html or plainText to instruct the API to return
        #   the comments left by users in html formatted or in plain text.
        # @param [String] video_id
        #   The videoId parameter instructs the API to return the comment threads for the
        #   video specified by the video id.
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
        # @yieldparam result [Google::Apis::YoutubeV3::CommentThreadListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::CommentThreadListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_comment_threads(all_threads_related_to_channel_id: nil, channel_id: nil, id: nil, max_results: nil, moderation_status: nil, page_token: nil, part: nil, search_terms: nil, text_format: nil, video_id: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'commentThreads'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::YoutubeV3::CommentThreadListResponseRepresentation
          command.response_class = Google::Apis::YoutubeV3::CommentThreadListResponse
          command.query['allThreadsRelatedToChannelId'] = all_threads_related_to_channel_id unless all_threads_related_to_channel_id.nil?
          command.query['channelId'] = channel_id unless channel_id.nil?
          command.query['id'] = id unless id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['moderationStatus'] = moderation_status unless moderation_status.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['part'] = part unless part.nil?
          command.query['searchTerms'] = search_terms unless search_terms.nil?
          command.query['textFormat'] = text_format unless text_format.nil?
          command.query['videoId'] = video_id unless video_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Modifies an existing comment.
        # @param [Google::Apis::YoutubeV3::CommentThread] comment_thread
        #   
        # @param [String] part
        #   The part parameter serves two purposes in this operation. It identifies the
        #   properties that the write operation will set as well as the properties that
        #   the API response will include.
        #   The part names that you can include in the parameter value are id, snippet and
        #   replies. However only snippet contains properties that can be updated.
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
        # @yieldparam result [Google::Apis::YoutubeV3::CommentThread] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::CommentThread]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_comment_thread(comment_thread = nil, part: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'commentThreads'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::YoutubeV3::CommentThreadRepresentation
          command.request_object = comment_thread
          command.response_representation = Google::Apis::YoutubeV3::CommentThreadRepresentation
          command.response_class = Google::Apis::YoutubeV3::CommentThread
          command.query['part'] = part unless part.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Deletes a comment.
        # @param [String] id
        #   The id parameter specifies the comment ID for the resource that should be
        #   deleted.
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
        def delete_comment(id: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'comments'
          command =  make_simple_command(:delete, path, options)
          command.query['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Creates a new comment.
        # Note: to create a top level comment it is also necessary to create a comment
        # thread. Both are accomplished through the commentThreads resource.
        # @param [Google::Apis::YoutubeV3::Comment] comment
        #   
        # @param [String] part
        #   The part parameter serves two purposes in this operation. It identifies the
        #   properties that the write operation will set as well as the properties that
        #   the API response will include.
        #   The part names that you can include in the parameter value are id and snippet.
        #   However only snippet contains properties that can be set.
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
        # @yieldparam result [Google::Apis::YoutubeV3::Comment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::Comment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_comment(comment = nil, part: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'comments'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::YoutubeV3::CommentRepresentation
          command.request_object = comment
          command.response_representation = Google::Apis::YoutubeV3::CommentRepresentation
          command.response_class = Google::Apis::YoutubeV3::Comment
          command.query['part'] = part unless part.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Returns a list of comments that match the API request parameters.
        # @param [String] id
        #   The id parameter specifies a comma-separated list of comment IDs for the
        #   resources that should be retrieved.
        # @param [Fixnum] max_results
        #   The maxResults parameter specifies the maximum number of items that should be
        #   returned in the result set.
        #   Note: This parameter is not supported for use in conjunction with the id
        #   parameter.
        # @param [String] page_token
        #   The pageToken parameter identifies a specific page in the result set that
        #   should be returned. In an API response, the nextPageToken property identifies
        #   the next page of the result that can be retrieved.
        #   Note: This parameter is not supported for use in conjunction with the id
        #   parameter.
        # @param [String] parent_id
        #   The parentId parameter specifies the ID of the comment for which replies
        #   should be retrieved.
        #   Note: Currently YouTube features only one level of replies (ie replies to top
        #   level comments). However replies to replies may be supported in the future.
        # @param [String] part
        #   The part parameter specifies the comment resource parts that the API response
        #   will include. Supported values are id and snippet.
        # @param [String] text_format
        #   Set this parameter's value to html or plainText to instruct the API to return
        #   the comments left by users formatted as HTML or as plain text.
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
        # @yieldparam result [Google::Apis::YoutubeV3::CommentListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::CommentListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_comments(id: nil, max_results: nil, page_token: nil, parent_id: nil, part: nil, text_format: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'comments'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::YoutubeV3::CommentListResponseRepresentation
          command.response_class = Google::Apis::YoutubeV3::CommentListResponse
          command.query['id'] = id unless id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['parentId'] = parent_id unless parent_id.nil?
          command.query['part'] = part unless part.nil?
          command.query['textFormat'] = text_format unless text_format.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Expresses the caller's opinion that a comment is spam.
        # @param [String] id
        #   The id parameter specifies a comma-separated list of IDs of comments which
        #   should get flagged as spam.
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
        def mark_as_spam_comment(id: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'comments/markAsSpam'
          command =  make_simple_command(:post, path, options)
          command.query['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Sets the moderation status of one or more comments.
        # @param [Boolean] ban_author
        #   The banAuthor paramter, if set to true, adds the author of the comment to the
        #   ban list. This means all future comments of the author will autmomatically be
        #   rejected.
        #   Note: This parameter is only valid in combination with moderationStatus '
        #   rejected'.
        # @param [String] id
        #   The id parameter specifies a comma-separated list of IDs of comments whose
        #   moderation status should be updated.
        # @param [String] moderation_status
        #   Determines the new moderation status of the specified comments.
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
        def set_moderation_status_comment(ban_author: nil, id: nil, moderation_status: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'comments/setModerationStatus'
          command =  make_simple_command(:post, path, options)
          command.query['banAuthor'] = ban_author unless ban_author.nil?
          command.query['id'] = id unless id.nil?
          command.query['moderationStatus'] = moderation_status unless moderation_status.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Modifies an existing comment.
        # @param [Google::Apis::YoutubeV3::Comment] comment
        #   
        # @param [String] part
        #   The part parameter serves two purposes in this operation. It identifies the
        #   properties that the write operation will set as well as the properties that
        #   the API response will include.
        #   The part names that you can include in the parameter value are id and snippet.
        #   However only snippet contains properties that can be updated.
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
        # @yieldparam result [Google::Apis::YoutubeV3::Comment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::Comment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_comment(comment = nil, part: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'comments'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::YoutubeV3::CommentRepresentation
          command.request_object = comment
          command.response_representation = Google::Apis::YoutubeV3::CommentRepresentation
          command.response_class = Google::Apis::YoutubeV3::Comment
          command.query['part'] = part unless part.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Returns a list of categories that can be associated with YouTube channels.
        # @param [String] hl
        #   The hl parameter specifies the language that will be used for text values in
        #   the API response.
        # @param [String] id
        #   The id parameter specifies a comma-separated list of the YouTube channel
        #   category ID(s) for the resource(s) that are being retrieved. In a
        #   guideCategory resource, the id property specifies the YouTube channel category
        #   ID.
        # @param [String] part
        #   The part parameter specifies a comma-separated list of one or more
        #   guideCategory resource properties that the API response will include. The part
        #   names that you can include in the parameter value are id and snippet.
        #   If the parameter identifies a property that contains child properties, the
        #   child properties will be included in the response. For example, in a
        #   guideCategory resource, the snippet property contains other properties, such
        #   as the category's title. If you set part=snippet, the API response will also
        #   contain all of those nested properties.
        # @param [String] region_code
        #   The regionCode parameter instructs the API to return the list of guide
        #   categories available in the specified country. The parameter value is an ISO
        #   3166-1 alpha-2 country code.
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
        # @yieldparam result [Google::Apis::YoutubeV3::GuideCategoryListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::GuideCategoryListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_guide_categories(hl: nil, id: nil, part: nil, region_code: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'guideCategories'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::YoutubeV3::GuideCategoryListResponseRepresentation
          command.response_class = Google::Apis::YoutubeV3::GuideCategoryListResponse
          command.query['hl'] = hl unless hl.nil?
          command.query['id'] = id unless id.nil?
          command.query['part'] = part unless part.nil?
          command.query['regionCode'] = region_code unless region_code.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Returns a list of supported languages.
        # @param [String] hl
        #   The hl parameter specifies the language that should be used for text values in
        #   the API response.
        # @param [String] part
        #   The part parameter specifies a comma-separated list of one or more
        #   i18nLanguage resource properties that the API response will include. The part
        #   names that you can include in the parameter value are id and snippet.
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
        # @yieldparam result [Google::Apis::YoutubeV3::I18nLanguageListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::I18nLanguageListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_i18n_languages(hl: nil, part: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'i18nLanguages'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::YoutubeV3::I18nLanguageListResponseRepresentation
          command.response_class = Google::Apis::YoutubeV3::I18nLanguageListResponse
          command.query['hl'] = hl unless hl.nil?
          command.query['part'] = part unless part.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Returns a list of supported regions.
        # @param [String] hl
        #   The hl parameter specifies the language that should be used for text values in
        #   the API response.
        # @param [String] part
        #   The part parameter specifies a comma-separated list of one or more i18nRegion
        #   resource properties that the API response will include. The part names that
        #   you can include in the parameter value are id and snippet.
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
        # @yieldparam result [Google::Apis::YoutubeV3::I18nRegionListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::I18nRegionListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_i18n_regions(hl: nil, part: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'i18nRegions'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::YoutubeV3::I18nRegionListResponseRepresentation
          command.response_class = Google::Apis::YoutubeV3::I18nRegionListResponse
          command.query['hl'] = hl unless hl.nil?
          command.query['part'] = part unless part.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Binds a YouTube broadcast to a stream or removes an existing binding between a
        # broadcast and a stream. A broadcast can only be bound to one video stream.
        # @param [String] id
        #   The id parameter specifies the unique ID of the broadcast that is being bound
        #   to a video stream.
        # @param [String] on_behalf_of_content_owner
        #   Note: This parameter is intended exclusively for YouTube content partners.
        #   The onBehalfOfContentOwner parameter indicates that the request's
        #   authorization credentials identify a YouTube CMS user who is acting on behalf
        #   of the content owner specified in the parameter value. This parameter is
        #   intended for YouTube content partners that own and manage many different
        #   YouTube channels. It allows content owners to authenticate once and get access
        #   to all their video and channel data, without having to provide authentication
        #   credentials for each individual channel. The CMS account that the user
        #   authenticates with must be linked to the specified YouTube content owner.
        # @param [String] on_behalf_of_content_owner_channel
        #   This parameter can only be used in a properly authorized request. Note: This
        #   parameter is intended exclusively for YouTube content partners.
        #   The onBehalfOfContentOwnerChannel parameter specifies the YouTube channel ID
        #   of the channel to which a video is being added. This parameter is required
        #   when a request specifies a value for the onBehalfOfContentOwner parameter, and
        #   it can only be used in conjunction with that parameter. In addition, the
        #   request must be authorized using a CMS account that is linked to the content
        #   owner that the onBehalfOfContentOwner parameter specifies. Finally, the
        #   channel that the onBehalfOfContentOwnerChannel parameter value specifies must
        #   be linked to the content owner that the onBehalfOfContentOwner parameter
        #   specifies.
        #   This parameter is intended for YouTube content partners that own and manage
        #   many different YouTube channels. It allows content owners to authenticate once
        #   and perform actions on behalf of the channel specified in the parameter value,
        #   without having to provide authentication credentials for each separate channel.
        # @param [String] part
        #   The part parameter specifies a comma-separated list of one or more
        #   liveBroadcast resource properties that the API response will include. The part
        #   names that you can include in the parameter value are id, snippet,
        #   contentDetails, and status.
        # @param [String] stream_id
        #   The streamId parameter specifies the unique ID of the video stream that is
        #   being bound to a broadcast. If this parameter is omitted, the API will remove
        #   any existing binding between the broadcast and a video stream.
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
        # @yieldparam result [Google::Apis::YoutubeV3::LiveBroadcast] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::LiveBroadcast]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def bind_live_broadcast(id: nil, on_behalf_of_content_owner: nil, on_behalf_of_content_owner_channel: nil, part: nil, stream_id: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'liveBroadcasts/bind'
          command =  make_simple_command(:post, path, options)
          command.response_representation = Google::Apis::YoutubeV3::LiveBroadcastRepresentation
          command.response_class = Google::Apis::YoutubeV3::LiveBroadcast
          command.query['id'] = id unless id.nil?
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['onBehalfOfContentOwnerChannel'] = on_behalf_of_content_owner_channel unless on_behalf_of_content_owner_channel.nil?
          command.query['part'] = part unless part.nil?
          command.query['streamId'] = stream_id unless stream_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Controls the settings for a slate that can be displayed in the broadcast
        # stream.
        # @param [Boolean] display_slate
        #   The displaySlate parameter specifies whether the slate is being enabled or
        #   disabled.
        # @param [String] id
        #   The id parameter specifies the YouTube live broadcast ID that uniquely
        #   identifies the broadcast in which the slate is being updated.
        # @param [String] offset_time_ms
        #   The offsetTimeMs parameter specifies a positive time offset when the specified
        #   slate change will occur. The value is measured in milliseconds from the
        #   beginning of the broadcast's monitor stream, which is the time that the
        #   testing phase for the broadcast began. Even though it is specified in
        #   milliseconds, the value is actually an approximation, and YouTube completes
        #   the requested action as closely as possible to that time.
        #   If you do not specify a value for this parameter, then YouTube performs the
        #   action as soon as possible. See the Getting started guide for more details.
        #   Important: You should only specify a value for this parameter if your
        #   broadcast stream is delayed.
        # @param [String] on_behalf_of_content_owner
        #   Note: This parameter is intended exclusively for YouTube content partners.
        #   The onBehalfOfContentOwner parameter indicates that the request's
        #   authorization credentials identify a YouTube CMS user who is acting on behalf
        #   of the content owner specified in the parameter value. This parameter is
        #   intended for YouTube content partners that own and manage many different
        #   YouTube channels. It allows content owners to authenticate once and get access
        #   to all their video and channel data, without having to provide authentication
        #   credentials for each individual channel. The CMS account that the user
        #   authenticates with must be linked to the specified YouTube content owner.
        # @param [String] on_behalf_of_content_owner_channel
        #   This parameter can only be used in a properly authorized request. Note: This
        #   parameter is intended exclusively for YouTube content partners.
        #   The onBehalfOfContentOwnerChannel parameter specifies the YouTube channel ID
        #   of the channel to which a video is being added. This parameter is required
        #   when a request specifies a value for the onBehalfOfContentOwner parameter, and
        #   it can only be used in conjunction with that parameter. In addition, the
        #   request must be authorized using a CMS account that is linked to the content
        #   owner that the onBehalfOfContentOwner parameter specifies. Finally, the
        #   channel that the onBehalfOfContentOwnerChannel parameter value specifies must
        #   be linked to the content owner that the onBehalfOfContentOwner parameter
        #   specifies.
        #   This parameter is intended for YouTube content partners that own and manage
        #   many different YouTube channels. It allows content owners to authenticate once
        #   and perform actions on behalf of the channel specified in the parameter value,
        #   without having to provide authentication credentials for each separate channel.
        # @param [String] part
        #   The part parameter specifies a comma-separated list of one or more
        #   liveBroadcast resource properties that the API response will include. The part
        #   names that you can include in the parameter value are id, snippet,
        #   contentDetails, and status.
        # @param [DateTime] walltime
        #   The walltime parameter specifies the wall clock time at which the specified
        #   slate change will occur. The value is specified in ISO 8601 (YYYY-MM-DDThh:mm:
        #   ss.sssZ) format.
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
        # @yieldparam result [Google::Apis::YoutubeV3::LiveBroadcast] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::LiveBroadcast]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def control_live_broadcast(display_slate: nil, id: nil, offset_time_ms: nil, on_behalf_of_content_owner: nil, on_behalf_of_content_owner_channel: nil, part: nil, walltime: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'liveBroadcasts/control'
          command =  make_simple_command(:post, path, options)
          command.response_representation = Google::Apis::YoutubeV3::LiveBroadcastRepresentation
          command.response_class = Google::Apis::YoutubeV3::LiveBroadcast
          command.query['displaySlate'] = display_slate unless display_slate.nil?
          command.query['id'] = id unless id.nil?
          command.query['offsetTimeMs'] = offset_time_ms unless offset_time_ms.nil?
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['onBehalfOfContentOwnerChannel'] = on_behalf_of_content_owner_channel unless on_behalf_of_content_owner_channel.nil?
          command.query['part'] = part unless part.nil?
          command.query['walltime'] = walltime unless walltime.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Deletes a broadcast.
        # @param [String] id
        #   The id parameter specifies the YouTube live broadcast ID for the resource that
        #   is being deleted.
        # @param [String] on_behalf_of_content_owner
        #   Note: This parameter is intended exclusively for YouTube content partners.
        #   The onBehalfOfContentOwner parameter indicates that the request's
        #   authorization credentials identify a YouTube CMS user who is acting on behalf
        #   of the content owner specified in the parameter value. This parameter is
        #   intended for YouTube content partners that own and manage many different
        #   YouTube channels. It allows content owners to authenticate once and get access
        #   to all their video and channel data, without having to provide authentication
        #   credentials for each individual channel. The CMS account that the user
        #   authenticates with must be linked to the specified YouTube content owner.
        # @param [String] on_behalf_of_content_owner_channel
        #   This parameter can only be used in a properly authorized request. Note: This
        #   parameter is intended exclusively for YouTube content partners.
        #   The onBehalfOfContentOwnerChannel parameter specifies the YouTube channel ID
        #   of the channel to which a video is being added. This parameter is required
        #   when a request specifies a value for the onBehalfOfContentOwner parameter, and
        #   it can only be used in conjunction with that parameter. In addition, the
        #   request must be authorized using a CMS account that is linked to the content
        #   owner that the onBehalfOfContentOwner parameter specifies. Finally, the
        #   channel that the onBehalfOfContentOwnerChannel parameter value specifies must
        #   be linked to the content owner that the onBehalfOfContentOwner parameter
        #   specifies.
        #   This parameter is intended for YouTube content partners that own and manage
        #   many different YouTube channels. It allows content owners to authenticate once
        #   and perform actions on behalf of the channel specified in the parameter value,
        #   without having to provide authentication credentials for each separate channel.
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
        def delete_live_broadcast(id: nil, on_behalf_of_content_owner: nil, on_behalf_of_content_owner_channel: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'liveBroadcasts'
          command =  make_simple_command(:delete, path, options)
          command.query['id'] = id unless id.nil?
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['onBehalfOfContentOwnerChannel'] = on_behalf_of_content_owner_channel unless on_behalf_of_content_owner_channel.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Creates a broadcast.
        # @param [Google::Apis::YoutubeV3::LiveBroadcast] live_broadcast
        #   
        # @param [String] on_behalf_of_content_owner
        #   Note: This parameter is intended exclusively for YouTube content partners.
        #   The onBehalfOfContentOwner parameter indicates that the request's
        #   authorization credentials identify a YouTube CMS user who is acting on behalf
        #   of the content owner specified in the parameter value. This parameter is
        #   intended for YouTube content partners that own and manage many different
        #   YouTube channels. It allows content owners to authenticate once and get access
        #   to all their video and channel data, without having to provide authentication
        #   credentials for each individual channel. The CMS account that the user
        #   authenticates with must be linked to the specified YouTube content owner.
        # @param [String] on_behalf_of_content_owner_channel
        #   This parameter can only be used in a properly authorized request. Note: This
        #   parameter is intended exclusively for YouTube content partners.
        #   The onBehalfOfContentOwnerChannel parameter specifies the YouTube channel ID
        #   of the channel to which a video is being added. This parameter is required
        #   when a request specifies a value for the onBehalfOfContentOwner parameter, and
        #   it can only be used in conjunction with that parameter. In addition, the
        #   request must be authorized using a CMS account that is linked to the content
        #   owner that the onBehalfOfContentOwner parameter specifies. Finally, the
        #   channel that the onBehalfOfContentOwnerChannel parameter value specifies must
        #   be linked to the content owner that the onBehalfOfContentOwner parameter
        #   specifies.
        #   This parameter is intended for YouTube content partners that own and manage
        #   many different YouTube channels. It allows content owners to authenticate once
        #   and perform actions on behalf of the channel specified in the parameter value,
        #   without having to provide authentication credentials for each separate channel.
        # @param [String] part
        #   The part parameter serves two purposes in this operation. It identifies the
        #   properties that the write operation will set as well as the properties that
        #   the API response will include.
        #   The part properties that you can include in the parameter value are id,
        #   snippet, contentDetails, and status.
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
        # @yieldparam result [Google::Apis::YoutubeV3::LiveBroadcast] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::LiveBroadcast]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_live_broadcast(live_broadcast = nil, on_behalf_of_content_owner: nil, on_behalf_of_content_owner_channel: nil, part: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'liveBroadcasts'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::YoutubeV3::LiveBroadcastRepresentation
          command.request_object = live_broadcast
          command.response_representation = Google::Apis::YoutubeV3::LiveBroadcastRepresentation
          command.response_class = Google::Apis::YoutubeV3::LiveBroadcast
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['onBehalfOfContentOwnerChannel'] = on_behalf_of_content_owner_channel unless on_behalf_of_content_owner_channel.nil?
          command.query['part'] = part unless part.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Returns a list of YouTube broadcasts that match the API request parameters.
        # @param [String] broadcast_status
        #   The broadcastStatus parameter filters the API response to only include
        #   broadcasts with the specified status.
        # @param [String] id
        #   The id parameter specifies a comma-separated list of YouTube broadcast IDs
        #   that identify the broadcasts being retrieved. In a liveBroadcast resource, the
        #   id property specifies the broadcast's ID.
        # @param [Fixnum] max_results
        #   The maxResults parameter specifies the maximum number of items that should be
        #   returned in the result set.
        # @param [Boolean] mine
        #   The mine parameter can be used to instruct the API to only return broadcasts
        #   owned by the authenticated user. Set the parameter value to true to only
        #   retrieve your own broadcasts.
        # @param [String] on_behalf_of_content_owner
        #   Note: This parameter is intended exclusively for YouTube content partners.
        #   The onBehalfOfContentOwner parameter indicates that the request's
        #   authorization credentials identify a YouTube CMS user who is acting on behalf
        #   of the content owner specified in the parameter value. This parameter is
        #   intended for YouTube content partners that own and manage many different
        #   YouTube channels. It allows content owners to authenticate once and get access
        #   to all their video and channel data, without having to provide authentication
        #   credentials for each individual channel. The CMS account that the user
        #   authenticates with must be linked to the specified YouTube content owner.
        # @param [String] on_behalf_of_content_owner_channel
        #   This parameter can only be used in a properly authorized request. Note: This
        #   parameter is intended exclusively for YouTube content partners.
        #   The onBehalfOfContentOwnerChannel parameter specifies the YouTube channel ID
        #   of the channel to which a video is being added. This parameter is required
        #   when a request specifies a value for the onBehalfOfContentOwner parameter, and
        #   it can only be used in conjunction with that parameter. In addition, the
        #   request must be authorized using a CMS account that is linked to the content
        #   owner that the onBehalfOfContentOwner parameter specifies. Finally, the
        #   channel that the onBehalfOfContentOwnerChannel parameter value specifies must
        #   be linked to the content owner that the onBehalfOfContentOwner parameter
        #   specifies.
        #   This parameter is intended for YouTube content partners that own and manage
        #   many different YouTube channels. It allows content owners to authenticate once
        #   and perform actions on behalf of the channel specified in the parameter value,
        #   without having to provide authentication credentials for each separate channel.
        # @param [String] page_token
        #   The pageToken parameter identifies a specific page in the result set that
        #   should be returned. In an API response, the nextPageToken and prevPageToken
        #   properties identify other pages that could be retrieved.
        # @param [String] part
        #   The part parameter specifies a comma-separated list of one or more
        #   liveBroadcast resource properties that the API response will include. The part
        #   names that you can include in the parameter value are id, snippet,
        #   contentDetails, and status.
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
        # @yieldparam result [Google::Apis::YoutubeV3::LiveBroadcastListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::LiveBroadcastListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_live_broadcasts(broadcast_status: nil, id: nil, max_results: nil, mine: nil, on_behalf_of_content_owner: nil, on_behalf_of_content_owner_channel: nil, page_token: nil, part: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'liveBroadcasts'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::YoutubeV3::LiveBroadcastListResponseRepresentation
          command.response_class = Google::Apis::YoutubeV3::LiveBroadcastListResponse
          command.query['broadcastStatus'] = broadcast_status unless broadcast_status.nil?
          command.query['id'] = id unless id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['mine'] = mine unless mine.nil?
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['onBehalfOfContentOwnerChannel'] = on_behalf_of_content_owner_channel unless on_behalf_of_content_owner_channel.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['part'] = part unless part.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Changes the status of a YouTube live broadcast and initiates any processes
        # associated with the new status. For example, when you transition a broadcast's
        # status to testing, YouTube starts to transmit video to that broadcast's
        # monitor stream. Before calling this method, you should confirm that the value
        # of the status.streamStatus property for the stream bound to your broadcast is
        # active.
        # @param [String] broadcast_status
        #   The broadcastStatus parameter identifies the state to which the broadcast is
        #   changing. Note that to transition a broadcast to either the testing or live
        #   state, the status.streamStatus must be active for the stream that the
        #   broadcast is bound to.
        # @param [String] id
        #   The id parameter specifies the unique ID of the broadcast that is
        #   transitioning to another status.
        # @param [String] on_behalf_of_content_owner
        #   Note: This parameter is intended exclusively for YouTube content partners.
        #   The onBehalfOfContentOwner parameter indicates that the request's
        #   authorization credentials identify a YouTube CMS user who is acting on behalf
        #   of the content owner specified in the parameter value. This parameter is
        #   intended for YouTube content partners that own and manage many different
        #   YouTube channels. It allows content owners to authenticate once and get access
        #   to all their video and channel data, without having to provide authentication
        #   credentials for each individual channel. The CMS account that the user
        #   authenticates with must be linked to the specified YouTube content owner.
        # @param [String] on_behalf_of_content_owner_channel
        #   This parameter can only be used in a properly authorized request. Note: This
        #   parameter is intended exclusively for YouTube content partners.
        #   The onBehalfOfContentOwnerChannel parameter specifies the YouTube channel ID
        #   of the channel to which a video is being added. This parameter is required
        #   when a request specifies a value for the onBehalfOfContentOwner parameter, and
        #   it can only be used in conjunction with that parameter. In addition, the
        #   request must be authorized using a CMS account that is linked to the content
        #   owner that the onBehalfOfContentOwner parameter specifies. Finally, the
        #   channel that the onBehalfOfContentOwnerChannel parameter value specifies must
        #   be linked to the content owner that the onBehalfOfContentOwner parameter
        #   specifies.
        #   This parameter is intended for YouTube content partners that own and manage
        #   many different YouTube channels. It allows content owners to authenticate once
        #   and perform actions on behalf of the channel specified in the parameter value,
        #   without having to provide authentication credentials for each separate channel.
        # @param [String] part
        #   The part parameter specifies a comma-separated list of one or more
        #   liveBroadcast resource properties that the API response will include. The part
        #   names that you can include in the parameter value are id, snippet,
        #   contentDetails, and status.
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
        # @yieldparam result [Google::Apis::YoutubeV3::LiveBroadcast] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::LiveBroadcast]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def transition_live_broadcast(broadcast_status: nil, id: nil, on_behalf_of_content_owner: nil, on_behalf_of_content_owner_channel: nil, part: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'liveBroadcasts/transition'
          command =  make_simple_command(:post, path, options)
          command.response_representation = Google::Apis::YoutubeV3::LiveBroadcastRepresentation
          command.response_class = Google::Apis::YoutubeV3::LiveBroadcast
          command.query['broadcastStatus'] = broadcast_status unless broadcast_status.nil?
          command.query['id'] = id unless id.nil?
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['onBehalfOfContentOwnerChannel'] = on_behalf_of_content_owner_channel unless on_behalf_of_content_owner_channel.nil?
          command.query['part'] = part unless part.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Updates a broadcast. For example, you could modify the broadcast settings
        # defined in the liveBroadcast resource's contentDetails object.
        # @param [Google::Apis::YoutubeV3::LiveBroadcast] live_broadcast
        #   
        # @param [String] on_behalf_of_content_owner
        #   Note: This parameter is intended exclusively for YouTube content partners.
        #   The onBehalfOfContentOwner parameter indicates that the request's
        #   authorization credentials identify a YouTube CMS user who is acting on behalf
        #   of the content owner specified in the parameter value. This parameter is
        #   intended for YouTube content partners that own and manage many different
        #   YouTube channels. It allows content owners to authenticate once and get access
        #   to all their video and channel data, without having to provide authentication
        #   credentials for each individual channel. The CMS account that the user
        #   authenticates with must be linked to the specified YouTube content owner.
        # @param [String] on_behalf_of_content_owner_channel
        #   This parameter can only be used in a properly authorized request. Note: This
        #   parameter is intended exclusively for YouTube content partners.
        #   The onBehalfOfContentOwnerChannel parameter specifies the YouTube channel ID
        #   of the channel to which a video is being added. This parameter is required
        #   when a request specifies a value for the onBehalfOfContentOwner parameter, and
        #   it can only be used in conjunction with that parameter. In addition, the
        #   request must be authorized using a CMS account that is linked to the content
        #   owner that the onBehalfOfContentOwner parameter specifies. Finally, the
        #   channel that the onBehalfOfContentOwnerChannel parameter value specifies must
        #   be linked to the content owner that the onBehalfOfContentOwner parameter
        #   specifies.
        #   This parameter is intended for YouTube content partners that own and manage
        #   many different YouTube channels. It allows content owners to authenticate once
        #   and perform actions on behalf of the channel specified in the parameter value,
        #   without having to provide authentication credentials for each separate channel.
        # @param [String] part
        #   The part parameter serves two purposes in this operation. It identifies the
        #   properties that the write operation will set as well as the properties that
        #   the API response will include.
        #   The part properties that you can include in the parameter value are id,
        #   snippet, contentDetails, and status.
        #   Note that this method will override the existing values for all of the mutable
        #   properties that are contained in any parts that the parameter value specifies.
        #   For example, a broadcast's privacy status is defined in the status part. As
        #   such, if your request is updating a private or unlisted broadcast, and the
        #   request's part parameter value includes the status part, the broadcast's
        #   privacy setting will be updated to whatever value the request body specifies.
        #   If the request body does not specify a value, the existing privacy setting
        #   will be removed and the broadcast will revert to the default privacy setting.
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
        # @yieldparam result [Google::Apis::YoutubeV3::LiveBroadcast] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::LiveBroadcast]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_live_broadcast(live_broadcast = nil, on_behalf_of_content_owner: nil, on_behalf_of_content_owner_channel: nil, part: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'liveBroadcasts'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::YoutubeV3::LiveBroadcastRepresentation
          command.request_object = live_broadcast
          command.response_representation = Google::Apis::YoutubeV3::LiveBroadcastRepresentation
          command.response_class = Google::Apis::YoutubeV3::LiveBroadcast
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['onBehalfOfContentOwnerChannel'] = on_behalf_of_content_owner_channel unless on_behalf_of_content_owner_channel.nil?
          command.query['part'] = part unless part.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Deletes a video stream.
        # @param [String] id
        #   The id parameter specifies the YouTube live stream ID for the resource that is
        #   being deleted.
        # @param [String] on_behalf_of_content_owner
        #   Note: This parameter is intended exclusively for YouTube content partners.
        #   The onBehalfOfContentOwner parameter indicates that the request's
        #   authorization credentials identify a YouTube CMS user who is acting on behalf
        #   of the content owner specified in the parameter value. This parameter is
        #   intended for YouTube content partners that own and manage many different
        #   YouTube channels. It allows content owners to authenticate once and get access
        #   to all their video and channel data, without having to provide authentication
        #   credentials for each individual channel. The CMS account that the user
        #   authenticates with must be linked to the specified YouTube content owner.
        # @param [String] on_behalf_of_content_owner_channel
        #   This parameter can only be used in a properly authorized request. Note: This
        #   parameter is intended exclusively for YouTube content partners.
        #   The onBehalfOfContentOwnerChannel parameter specifies the YouTube channel ID
        #   of the channel to which a video is being added. This parameter is required
        #   when a request specifies a value for the onBehalfOfContentOwner parameter, and
        #   it can only be used in conjunction with that parameter. In addition, the
        #   request must be authorized using a CMS account that is linked to the content
        #   owner that the onBehalfOfContentOwner parameter specifies. Finally, the
        #   channel that the onBehalfOfContentOwnerChannel parameter value specifies must
        #   be linked to the content owner that the onBehalfOfContentOwner parameter
        #   specifies.
        #   This parameter is intended for YouTube content partners that own and manage
        #   many different YouTube channels. It allows content owners to authenticate once
        #   and perform actions on behalf of the channel specified in the parameter value,
        #   without having to provide authentication credentials for each separate channel.
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
        def delete_live_stream(id: nil, on_behalf_of_content_owner: nil, on_behalf_of_content_owner_channel: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'liveStreams'
          command =  make_simple_command(:delete, path, options)
          command.query['id'] = id unless id.nil?
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['onBehalfOfContentOwnerChannel'] = on_behalf_of_content_owner_channel unless on_behalf_of_content_owner_channel.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Creates a video stream. The stream enables you to send your video to YouTube,
        # which can then broadcast the video to your audience.
        # @param [Google::Apis::YoutubeV3::LiveStream] live_stream
        #   
        # @param [String] on_behalf_of_content_owner
        #   Note: This parameter is intended exclusively for YouTube content partners.
        #   The onBehalfOfContentOwner parameter indicates that the request's
        #   authorization credentials identify a YouTube CMS user who is acting on behalf
        #   of the content owner specified in the parameter value. This parameter is
        #   intended for YouTube content partners that own and manage many different
        #   YouTube channels. It allows content owners to authenticate once and get access
        #   to all their video and channel data, without having to provide authentication
        #   credentials for each individual channel. The CMS account that the user
        #   authenticates with must be linked to the specified YouTube content owner.
        # @param [String] on_behalf_of_content_owner_channel
        #   This parameter can only be used in a properly authorized request. Note: This
        #   parameter is intended exclusively for YouTube content partners.
        #   The onBehalfOfContentOwnerChannel parameter specifies the YouTube channel ID
        #   of the channel to which a video is being added. This parameter is required
        #   when a request specifies a value for the onBehalfOfContentOwner parameter, and
        #   it can only be used in conjunction with that parameter. In addition, the
        #   request must be authorized using a CMS account that is linked to the content
        #   owner that the onBehalfOfContentOwner parameter specifies. Finally, the
        #   channel that the onBehalfOfContentOwnerChannel parameter value specifies must
        #   be linked to the content owner that the onBehalfOfContentOwner parameter
        #   specifies.
        #   This parameter is intended for YouTube content partners that own and manage
        #   many different YouTube channels. It allows content owners to authenticate once
        #   and perform actions on behalf of the channel specified in the parameter value,
        #   without having to provide authentication credentials for each separate channel.
        # @param [String] part
        #   The part parameter serves two purposes in this operation. It identifies the
        #   properties that the write operation will set as well as the properties that
        #   the API response will include.
        #   The part properties that you can include in the parameter value are id,
        #   snippet, cdn, and status.
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
        # @yieldparam result [Google::Apis::YoutubeV3::LiveStream] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::LiveStream]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_live_stream(live_stream = nil, on_behalf_of_content_owner: nil, on_behalf_of_content_owner_channel: nil, part: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'liveStreams'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::YoutubeV3::LiveStreamRepresentation
          command.request_object = live_stream
          command.response_representation = Google::Apis::YoutubeV3::LiveStreamRepresentation
          command.response_class = Google::Apis::YoutubeV3::LiveStream
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['onBehalfOfContentOwnerChannel'] = on_behalf_of_content_owner_channel unless on_behalf_of_content_owner_channel.nil?
          command.query['part'] = part unless part.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Returns a list of video streams that match the API request parameters.
        # @param [String] id
        #   The id parameter specifies a comma-separated list of YouTube stream IDs that
        #   identify the streams being retrieved. In a liveStream resource, the id
        #   property specifies the stream's ID.
        # @param [Fixnum] max_results
        #   The maxResults parameter specifies the maximum number of items that should be
        #   returned in the result set. Acceptable values are 0 to 50, inclusive. The
        #   default value is 5.
        # @param [Boolean] mine
        #   The mine parameter can be used to instruct the API to only return streams
        #   owned by the authenticated user. Set the parameter value to true to only
        #   retrieve your own streams.
        # @param [String] on_behalf_of_content_owner
        #   Note: This parameter is intended exclusively for YouTube content partners.
        #   The onBehalfOfContentOwner parameter indicates that the request's
        #   authorization credentials identify a YouTube CMS user who is acting on behalf
        #   of the content owner specified in the parameter value. This parameter is
        #   intended for YouTube content partners that own and manage many different
        #   YouTube channels. It allows content owners to authenticate once and get access
        #   to all their video and channel data, without having to provide authentication
        #   credentials for each individual channel. The CMS account that the user
        #   authenticates with must be linked to the specified YouTube content owner.
        # @param [String] on_behalf_of_content_owner_channel
        #   This parameter can only be used in a properly authorized request. Note: This
        #   parameter is intended exclusively for YouTube content partners.
        #   The onBehalfOfContentOwnerChannel parameter specifies the YouTube channel ID
        #   of the channel to which a video is being added. This parameter is required
        #   when a request specifies a value for the onBehalfOfContentOwner parameter, and
        #   it can only be used in conjunction with that parameter. In addition, the
        #   request must be authorized using a CMS account that is linked to the content
        #   owner that the onBehalfOfContentOwner parameter specifies. Finally, the
        #   channel that the onBehalfOfContentOwnerChannel parameter value specifies must
        #   be linked to the content owner that the onBehalfOfContentOwner parameter
        #   specifies.
        #   This parameter is intended for YouTube content partners that own and manage
        #   many different YouTube channels. It allows content owners to authenticate once
        #   and perform actions on behalf of the channel specified in the parameter value,
        #   without having to provide authentication credentials for each separate channel.
        # @param [String] page_token
        #   The pageToken parameter identifies a specific page in the result set that
        #   should be returned. In an API response, the nextPageToken and prevPageToken
        #   properties identify other pages that could be retrieved.
        # @param [String] part
        #   The part parameter specifies a comma-separated list of one or more liveStream
        #   resource properties that the API response will include. The part names that
        #   you can include in the parameter value are id, snippet, cdn, and status.
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
        # @yieldparam result [Google::Apis::YoutubeV3::LiveStreamListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::LiveStreamListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_live_streams(id: nil, max_results: nil, mine: nil, on_behalf_of_content_owner: nil, on_behalf_of_content_owner_channel: nil, page_token: nil, part: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'liveStreams'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::YoutubeV3::LiveStreamListResponseRepresentation
          command.response_class = Google::Apis::YoutubeV3::LiveStreamListResponse
          command.query['id'] = id unless id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['mine'] = mine unless mine.nil?
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['onBehalfOfContentOwnerChannel'] = on_behalf_of_content_owner_channel unless on_behalf_of_content_owner_channel.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['part'] = part unless part.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Updates a video stream. If the properties that you want to change cannot be
        # updated, then you need to create a new stream with the proper settings.
        # @param [Google::Apis::YoutubeV3::LiveStream] live_stream
        #   
        # @param [String] on_behalf_of_content_owner
        #   Note: This parameter is intended exclusively for YouTube content partners.
        #   The onBehalfOfContentOwner parameter indicates that the request's
        #   authorization credentials identify a YouTube CMS user who is acting on behalf
        #   of the content owner specified in the parameter value. This parameter is
        #   intended for YouTube content partners that own and manage many different
        #   YouTube channels. It allows content owners to authenticate once and get access
        #   to all their video and channel data, without having to provide authentication
        #   credentials for each individual channel. The CMS account that the user
        #   authenticates with must be linked to the specified YouTube content owner.
        # @param [String] on_behalf_of_content_owner_channel
        #   This parameter can only be used in a properly authorized request. Note: This
        #   parameter is intended exclusively for YouTube content partners.
        #   The onBehalfOfContentOwnerChannel parameter specifies the YouTube channel ID
        #   of the channel to which a video is being added. This parameter is required
        #   when a request specifies a value for the onBehalfOfContentOwner parameter, and
        #   it can only be used in conjunction with that parameter. In addition, the
        #   request must be authorized using a CMS account that is linked to the content
        #   owner that the onBehalfOfContentOwner parameter specifies. Finally, the
        #   channel that the onBehalfOfContentOwnerChannel parameter value specifies must
        #   be linked to the content owner that the onBehalfOfContentOwner parameter
        #   specifies.
        #   This parameter is intended for YouTube content partners that own and manage
        #   many different YouTube channels. It allows content owners to authenticate once
        #   and perform actions on behalf of the channel specified in the parameter value,
        #   without having to provide authentication credentials for each separate channel.
        # @param [String] part
        #   The part parameter serves two purposes in this operation. It identifies the
        #   properties that the write operation will set as well as the properties that
        #   the API response will include.
        #   The part properties that you can include in the parameter value are id,
        #   snippet, cdn, and status.
        #   Note that this method will override the existing values for all of the mutable
        #   properties that are contained in any parts that the parameter value specifies.
        #   If the request body does not specify a value for a mutable property, the
        #   existing value for that property will be removed.
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
        # @yieldparam result [Google::Apis::YoutubeV3::LiveStream] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::LiveStream]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_live_stream(live_stream = nil, on_behalf_of_content_owner: nil, on_behalf_of_content_owner_channel: nil, part: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'liveStreams'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::YoutubeV3::LiveStreamRepresentation
          command.request_object = live_stream
          command.response_representation = Google::Apis::YoutubeV3::LiveStreamRepresentation
          command.response_class = Google::Apis::YoutubeV3::LiveStream
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['onBehalfOfContentOwnerChannel'] = on_behalf_of_content_owner_channel unless on_behalf_of_content_owner_channel.nil?
          command.query['part'] = part unless part.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Deletes a playlist item.
        # @param [String] id
        #   The id parameter specifies the YouTube playlist item ID for the playlist item
        #   that is being deleted. In a playlistItem resource, the id property specifies
        #   the playlist item's ID.
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
        def delete_playlist_item(id: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'playlistItems'
          command =  make_simple_command(:delete, path, options)
          command.query['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Adds a resource to a playlist.
        # @param [Google::Apis::YoutubeV3::PlaylistItem] playlist_item
        #   
        # @param [String] on_behalf_of_content_owner
        #   Note: This parameter is intended exclusively for YouTube content partners.
        #   The onBehalfOfContentOwner parameter indicates that the request's
        #   authorization credentials identify a YouTube CMS user who is acting on behalf
        #   of the content owner specified in the parameter value. This parameter is
        #   intended for YouTube content partners that own and manage many different
        #   YouTube channels. It allows content owners to authenticate once and get access
        #   to all their video and channel data, without having to provide authentication
        #   credentials for each individual channel. The CMS account that the user
        #   authenticates with must be linked to the specified YouTube content owner.
        # @param [String] part
        #   The part parameter serves two purposes in this operation. It identifies the
        #   properties that the write operation will set as well as the properties that
        #   the API response will include.
        #   The part names that you can include in the parameter value are snippet,
        #   contentDetails, and status.
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
        # @yieldparam result [Google::Apis::YoutubeV3::PlaylistItem] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::PlaylistItem]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_playlist_item(playlist_item = nil, on_behalf_of_content_owner: nil, part: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'playlistItems'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::YoutubeV3::PlaylistItemRepresentation
          command.request_object = playlist_item
          command.response_representation = Google::Apis::YoutubeV3::PlaylistItemRepresentation
          command.response_class = Google::Apis::YoutubeV3::PlaylistItem
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['part'] = part unless part.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Returns a collection of playlist items that match the API request parameters.
        # You can retrieve all of the playlist items in a specified playlist or retrieve
        # one or more playlist items by their unique IDs.
        # @param [String] id
        #   The id parameter specifies a comma-separated list of one or more unique
        #   playlist item IDs.
        # @param [Fixnum] max_results
        #   The maxResults parameter specifies the maximum number of items that should be
        #   returned in the result set.
        # @param [String] on_behalf_of_content_owner
        #   Note: This parameter is intended exclusively for YouTube content partners.
        #   The onBehalfOfContentOwner parameter indicates that the request's
        #   authorization credentials identify a YouTube CMS user who is acting on behalf
        #   of the content owner specified in the parameter value. This parameter is
        #   intended for YouTube content partners that own and manage many different
        #   YouTube channels. It allows content owners to authenticate once and get access
        #   to all their video and channel data, without having to provide authentication
        #   credentials for each individual channel. The CMS account that the user
        #   authenticates with must be linked to the specified YouTube content owner.
        # @param [String] page_token
        #   The pageToken parameter identifies a specific page in the result set that
        #   should be returned. In an API response, the nextPageToken and prevPageToken
        #   properties identify other pages that could be retrieved.
        # @param [String] part
        #   The part parameter specifies a comma-separated list of one or more
        #   playlistItem resource properties that the API response will include. The part
        #   names that you can include in the parameter value are id, snippet,
        #   contentDetails, and status.
        #   If the parameter identifies a property that contains child properties, the
        #   child properties will be included in the response. For example, in a
        #   playlistItem resource, the snippet property contains numerous fields,
        #   including the title, description, position, and resourceId properties. As such,
        #   if you set part=snippet, the API response will contain all of those
        #   properties.
        # @param [String] playlist_id
        #   The playlistId parameter specifies the unique ID of the playlist for which you
        #   want to retrieve playlist items. Note that even though this is an optional
        #   parameter, every request to retrieve playlist items must specify a value for
        #   either the id parameter or the playlistId parameter.
        # @param [String] video_id
        #   The videoId parameter specifies that the request should return only the
        #   playlist items that contain the specified video.
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
        # @yieldparam result [Google::Apis::YoutubeV3::PlaylistItemListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::PlaylistItemListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_playlist_items(id: nil, max_results: nil, on_behalf_of_content_owner: nil, page_token: nil, part: nil, playlist_id: nil, video_id: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'playlistItems'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::YoutubeV3::PlaylistItemListResponseRepresentation
          command.response_class = Google::Apis::YoutubeV3::PlaylistItemListResponse
          command.query['id'] = id unless id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['part'] = part unless part.nil?
          command.query['playlistId'] = playlist_id unless playlist_id.nil?
          command.query['videoId'] = video_id unless video_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Modifies a playlist item. For example, you could update the item's position in
        # the playlist.
        # @param [Google::Apis::YoutubeV3::PlaylistItem] playlist_item
        #   
        # @param [String] part
        #   The part parameter serves two purposes in this operation. It identifies the
        #   properties that the write operation will set as well as the properties that
        #   the API response will include.
        #   The part names that you can include in the parameter value are snippet,
        #   contentDetails, and status.
        #   Note that this method will override the existing values for all of the mutable
        #   properties that are contained in any parts that the parameter value specifies.
        #   For example, a playlist item can specify a start time and end time, which
        #   identify the times portion of the video that should play when users watch the
        #   video in the playlist. If your request is updating a playlist item that sets
        #   these values, and the request's part parameter value includes the
        #   contentDetails part, the playlist item's start and end times will be updated
        #   to whatever value the request body specifies. If the request body does not
        #   specify values, the existing start and end times will be removed and replaced
        #   with the default settings.
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
        # @yieldparam result [Google::Apis::YoutubeV3::PlaylistItem] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::PlaylistItem]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_playlist_item(playlist_item = nil, part: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'playlistItems'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::YoutubeV3::PlaylistItemRepresentation
          command.request_object = playlist_item
          command.response_representation = Google::Apis::YoutubeV3::PlaylistItemRepresentation
          command.response_class = Google::Apis::YoutubeV3::PlaylistItem
          command.query['part'] = part unless part.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Deletes a playlist.
        # @param [String] id
        #   The id parameter specifies the YouTube playlist ID for the playlist that is
        #   being deleted. In a playlist resource, the id property specifies the playlist'
        #   s ID.
        # @param [String] on_behalf_of_content_owner
        #   Note: This parameter is intended exclusively for YouTube content partners.
        #   The onBehalfOfContentOwner parameter indicates that the request's
        #   authorization credentials identify a YouTube CMS user who is acting on behalf
        #   of the content owner specified in the parameter value. This parameter is
        #   intended for YouTube content partners that own and manage many different
        #   YouTube channels. It allows content owners to authenticate once and get access
        #   to all their video and channel data, without having to provide authentication
        #   credentials for each individual channel. The CMS account that the user
        #   authenticates with must be linked to the specified YouTube content owner.
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
        def delete_playlist(id: nil, on_behalf_of_content_owner: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'playlists'
          command =  make_simple_command(:delete, path, options)
          command.query['id'] = id unless id.nil?
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Creates a playlist.
        # @param [Google::Apis::YoutubeV3::Playlist] playlist
        #   
        # @param [String] on_behalf_of_content_owner
        #   Note: This parameter is intended exclusively for YouTube content partners.
        #   The onBehalfOfContentOwner parameter indicates that the request's
        #   authorization credentials identify a YouTube CMS user who is acting on behalf
        #   of the content owner specified in the parameter value. This parameter is
        #   intended for YouTube content partners that own and manage many different
        #   YouTube channels. It allows content owners to authenticate once and get access
        #   to all their video and channel data, without having to provide authentication
        #   credentials for each individual channel. The CMS account that the user
        #   authenticates with must be linked to the specified YouTube content owner.
        # @param [String] on_behalf_of_content_owner_channel
        #   This parameter can only be used in a properly authorized request. Note: This
        #   parameter is intended exclusively for YouTube content partners.
        #   The onBehalfOfContentOwnerChannel parameter specifies the YouTube channel ID
        #   of the channel to which a video is being added. This parameter is required
        #   when a request specifies a value for the onBehalfOfContentOwner parameter, and
        #   it can only be used in conjunction with that parameter. In addition, the
        #   request must be authorized using a CMS account that is linked to the content
        #   owner that the onBehalfOfContentOwner parameter specifies. Finally, the
        #   channel that the onBehalfOfContentOwnerChannel parameter value specifies must
        #   be linked to the content owner that the onBehalfOfContentOwner parameter
        #   specifies.
        #   This parameter is intended for YouTube content partners that own and manage
        #   many different YouTube channels. It allows content owners to authenticate once
        #   and perform actions on behalf of the channel specified in the parameter value,
        #   without having to provide authentication credentials for each separate channel.
        # @param [String] part
        #   The part parameter serves two purposes in this operation. It identifies the
        #   properties that the write operation will set as well as the properties that
        #   the API response will include.
        #   The part names that you can include in the parameter value are snippet and
        #   status.
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
        # @yieldparam result [Google::Apis::YoutubeV3::Playlist] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::Playlist]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_playlist(playlist = nil, on_behalf_of_content_owner: nil, on_behalf_of_content_owner_channel: nil, part: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'playlists'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::YoutubeV3::PlaylistRepresentation
          command.request_object = playlist
          command.response_representation = Google::Apis::YoutubeV3::PlaylistRepresentation
          command.response_class = Google::Apis::YoutubeV3::Playlist
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['onBehalfOfContentOwnerChannel'] = on_behalf_of_content_owner_channel unless on_behalf_of_content_owner_channel.nil?
          command.query['part'] = part unless part.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Returns a collection of playlists that match the API request parameters. For
        # example, you can retrieve all playlists that the authenticated user owns, or
        # you can retrieve one or more playlists by their unique IDs.
        # @param [String] channel_id
        #   This value indicates that the API should only return the specified channel's
        #   playlists.
        # @param [String] hl
        #   The hl parameter should be used for filter out the properties that are not in
        #   the given language. Used for the snippet part.
        # @param [String] id
        #   The id parameter specifies a comma-separated list of the YouTube playlist ID(s)
        #   for the resource(s) that are being retrieved. In a playlist resource, the id
        #   property specifies the playlist's YouTube playlist ID.
        # @param [Fixnum] max_results
        #   The maxResults parameter specifies the maximum number of items that should be
        #   returned in the result set.
        # @param [Boolean] mine
        #   Set this parameter's value to true to instruct the API to only return
        #   playlists owned by the authenticated user.
        # @param [String] on_behalf_of_content_owner
        #   Note: This parameter is intended exclusively for YouTube content partners.
        #   The onBehalfOfContentOwner parameter indicates that the request's
        #   authorization credentials identify a YouTube CMS user who is acting on behalf
        #   of the content owner specified in the parameter value. This parameter is
        #   intended for YouTube content partners that own and manage many different
        #   YouTube channels. It allows content owners to authenticate once and get access
        #   to all their video and channel data, without having to provide authentication
        #   credentials for each individual channel. The CMS account that the user
        #   authenticates with must be linked to the specified YouTube content owner.
        # @param [String] on_behalf_of_content_owner_channel
        #   This parameter can only be used in a properly authorized request. Note: This
        #   parameter is intended exclusively for YouTube content partners.
        #   The onBehalfOfContentOwnerChannel parameter specifies the YouTube channel ID
        #   of the channel to which a video is being added. This parameter is required
        #   when a request specifies a value for the onBehalfOfContentOwner parameter, and
        #   it can only be used in conjunction with that parameter. In addition, the
        #   request must be authorized using a CMS account that is linked to the content
        #   owner that the onBehalfOfContentOwner parameter specifies. Finally, the
        #   channel that the onBehalfOfContentOwnerChannel parameter value specifies must
        #   be linked to the content owner that the onBehalfOfContentOwner parameter
        #   specifies.
        #   This parameter is intended for YouTube content partners that own and manage
        #   many different YouTube channels. It allows content owners to authenticate once
        #   and perform actions on behalf of the channel specified in the parameter value,
        #   without having to provide authentication credentials for each separate channel.
        # @param [String] page_token
        #   The pageToken parameter identifies a specific page in the result set that
        #   should be returned. In an API response, the nextPageToken and prevPageToken
        #   properties identify other pages that could be retrieved.
        # @param [String] part
        #   The part parameter specifies a comma-separated list of one or more playlist
        #   resource properties that the API response will include. The part names that
        #   you can include in the parameter value are id, snippet, status, and
        #   contentDetails.
        #   If the parameter identifies a property that contains child properties, the
        #   child properties will be included in the response. For example, in a playlist
        #   resource, the snippet property contains properties like author, title,
        #   description, tags, and timeCreated. As such, if you set part=snippet, the API
        #   response will contain all of those properties.
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
        # @yieldparam result [Google::Apis::YoutubeV3::PlaylistListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::PlaylistListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_playlists(channel_id: nil, hl: nil, id: nil, max_results: nil, mine: nil, on_behalf_of_content_owner: nil, on_behalf_of_content_owner_channel: nil, page_token: nil, part: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'playlists'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::YoutubeV3::PlaylistListResponseRepresentation
          command.response_class = Google::Apis::YoutubeV3::PlaylistListResponse
          command.query['channelId'] = channel_id unless channel_id.nil?
          command.query['hl'] = hl unless hl.nil?
          command.query['id'] = id unless id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['mine'] = mine unless mine.nil?
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['onBehalfOfContentOwnerChannel'] = on_behalf_of_content_owner_channel unless on_behalf_of_content_owner_channel.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['part'] = part unless part.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Modifies a playlist. For example, you could change a playlist's title,
        # description, or privacy status.
        # @param [Google::Apis::YoutubeV3::Playlist] playlist
        #   
        # @param [String] on_behalf_of_content_owner
        #   Note: This parameter is intended exclusively for YouTube content partners.
        #   The onBehalfOfContentOwner parameter indicates that the request's
        #   authorization credentials identify a YouTube CMS user who is acting on behalf
        #   of the content owner specified in the parameter value. This parameter is
        #   intended for YouTube content partners that own and manage many different
        #   YouTube channels. It allows content owners to authenticate once and get access
        #   to all their video and channel data, without having to provide authentication
        #   credentials for each individual channel. The CMS account that the user
        #   authenticates with must be linked to the specified YouTube content owner.
        # @param [String] part
        #   The part parameter serves two purposes in this operation. It identifies the
        #   properties that the write operation will set as well as the properties that
        #   the API response will include.
        #   The part names that you can include in the parameter value are snippet and
        #   status.
        #   Note that this method will override the existing values for all of the mutable
        #   properties that are contained in any parts that the parameter value specifies.
        #   For example, a playlist's privacy setting is contained in the status part. As
        #   such, if your request is updating a private playlist, and the request's part
        #   parameter value includes the status part, the playlist's privacy setting will
        #   be updated to whatever value the request body specifies. If the request body
        #   does not specify a value, the existing privacy setting will be removed and the
        #   playlist will revert to the default privacy setting.
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
        # @yieldparam result [Google::Apis::YoutubeV3::Playlist] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::Playlist]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_playlist(playlist = nil, on_behalf_of_content_owner: nil, part: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'playlists'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::YoutubeV3::PlaylistRepresentation
          command.request_object = playlist
          command.response_representation = Google::Apis::YoutubeV3::PlaylistRepresentation
          command.response_class = Google::Apis::YoutubeV3::Playlist
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['part'] = part unless part.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Returns a collection of search results that match the query parameters
        # specified in the API request. By default, a search result set identifies
        # matching video, channel, and playlist resources, but you can also configure
        # queries to only retrieve a specific type of resource.
        # @param [String] channel_id
        #   The channelId parameter indicates that the API response should only contain
        #   resources created by the channel
        # @param [String] channel_type
        #   The channelType parameter lets you restrict a search to a particular type of
        #   channel.
        # @param [String] event_type
        #   The eventType parameter restricts a search to broadcast events.
        # @param [Boolean] for_content_owner
        #   Note: This parameter is intended exclusively for YouTube content partners.
        #   The forContentOwner parameter restricts the search to only retrieve resources
        #   owned by the content owner specified by the onBehalfOfContentOwner parameter.
        #   The user must be authenticated using a CMS account linked to the specified
        #   content owner and onBehalfOfContentOwner must be provided.
        # @param [Boolean] for_developer
        #   The forDeveloper parameter restricts the search to only retrieve videos
        #   uploaded via the developer's application or website. The API server uses the
        #   request's authorization credentials to identify the developer. Therefore, a
        #   developer can restrict results to videos uploaded through the developer's own
        #   app or website but not to videos uploaded through other apps or sites.
        # @param [Boolean] for_mine
        #   The forMine parameter restricts the search to only retrieve videos owned by
        #   the authenticated user. If you set this parameter to true, then the type
        #   parameter's value must also be set to video.
        # @param [String] location
        #   The location parameter restricts a search to videos that have a geographical
        #   location specified in their metadata. The value is a string that specifies
        #   geographic latitude/longitude coordinates e.g. (37.42307,-122.08427)
        # @param [String] location_radius
        #   The locationRadius, in conjunction with the location parameter, defines a
        #   geographic area. If the geographic coordinates associated with a video fall
        #   within that area, then the video may be included in search results. This
        #   parameter value must be a floating point number followed by a measurement unit.
        #   Valid measurement units are m, km, ft, and mi. For example, valid parameter
        #   values include 1500m, 5km, 10000ft, and 0.75mi. The API does not support
        #   locationRadius parameter values larger than 1000 kilometers.
        # @param [Fixnum] max_results
        #   The maxResults parameter specifies the maximum number of items that should be
        #   returned in the result set.
        # @param [String] on_behalf_of_content_owner
        #   Note: This parameter is intended exclusively for YouTube content partners.
        #   The onBehalfOfContentOwner parameter indicates that the request's
        #   authorization credentials identify a YouTube CMS user who is acting on behalf
        #   of the content owner specified in the parameter value. This parameter is
        #   intended for YouTube content partners that own and manage many different
        #   YouTube channels. It allows content owners to authenticate once and get access
        #   to all their video and channel data, without having to provide authentication
        #   credentials for each individual channel. The CMS account that the user
        #   authenticates with must be linked to the specified YouTube content owner.
        # @param [String] order
        #   The order parameter specifies the method that will be used to order resources
        #   in the API response.
        # @param [String] page_token
        #   The pageToken parameter identifies a specific page in the result set that
        #   should be returned. In an API response, the nextPageToken and prevPageToken
        #   properties identify other pages that could be retrieved.
        # @param [String] part
        #   The part parameter specifies a comma-separated list of one or more search
        #   resource properties that the API response will include. The part names that
        #   you can include in the parameter value are id and snippet.
        #   If the parameter identifies a property that contains child properties, the
        #   child properties will be included in the response. For example, in a search
        #   result, the snippet property contains other properties that identify the
        #   result's title, description, and so forth. If you set part=snippet, the API
        #   response will also contain all of those nested properties.
        # @param [DateTime] published_after
        #   The publishedAfter parameter indicates that the API response should only
        #   contain resources created after the specified time. The value is an RFC 3339
        #   formatted date-time value (1970-01-01T00:00:00Z).
        # @param [DateTime] published_before
        #   The publishedBefore parameter indicates that the API response should only
        #   contain resources created before the specified time. The value is an RFC 3339
        #   formatted date-time value (1970-01-01T00:00:00Z).
        # @param [String] q
        #   The q parameter specifies the query term to search for.
        # @param [String] region_code
        #   The regionCode parameter instructs the API to return search results for the
        #   specified country. The parameter value is an ISO 3166-1 alpha-2 country code.
        # @param [String] related_to_video_id
        #   The relatedToVideoId parameter retrieves a list of videos that are related to
        #   the video that the parameter value identifies. The parameter value must be set
        #   to a YouTube video ID and, if you are using this parameter, the type parameter
        #   must be set to video.
        # @param [String] relevance_language
        #   The relevanceLanguage parameter instructs the API to return search results
        #   that are most relevant to the specified language. The parameter value is
        #   typically an ISO 639-1 two-letter language code. However, you should use the
        #   values zh-Hans for simplified Chinese and zh-Hant for traditional Chinese.
        #   Please note that results in other languages will still be returned if they are
        #   highly relevant to the search query term.
        # @param [String] safe_search
        #   The safeSearch parameter indicates whether the search results should include
        #   restricted content as well as standard content.
        # @param [String] topic_id
        #   The topicId parameter indicates that the API response should only contain
        #   resources associated with the specified topic. The value identifies a Freebase
        #   topic ID.
        # @param [String] type
        #   The type parameter restricts a search query to only retrieve a particular type
        #   of resource. The value is a comma-separated list of resource types.
        # @param [String] video_caption
        #   The videoCaption parameter indicates whether the API should filter video
        #   search results based on whether they have captions.
        # @param [String] video_category_id
        #   The videoCategoryId parameter filters video search results based on their
        #   category.
        # @param [String] video_definition
        #   The videoDefinition parameter lets you restrict a search to only include
        #   either high definition (HD) or standard definition (SD) videos. HD videos are
        #   available for playback in at least 720p, though higher resolutions, like 1080p,
        #   might also be available.
        # @param [String] video_dimension
        #   The videoDimension parameter lets you restrict a search to only retrieve 2D or
        #   3D videos.
        # @param [String] video_duration
        #   The videoDuration parameter filters video search results based on their
        #   duration.
        # @param [String] video_embeddable
        #   The videoEmbeddable parameter lets you to restrict a search to only videos
        #   that can be embedded into a webpage.
        # @param [String] video_license
        #   The videoLicense parameter filters search results to only include videos with
        #   a particular license. YouTube lets video uploaders choose to attach either the
        #   Creative Commons license or the standard YouTube license to each of their
        #   videos.
        # @param [String] video_syndicated
        #   The videoSyndicated parameter lets you to restrict a search to only videos
        #   that can be played outside youtube.com.
        # @param [String] video_type
        #   The videoType parameter lets you restrict a search to a particular type of
        #   videos.
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
        # @yieldparam result [Google::Apis::YoutubeV3::SearchListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::SearchListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_searches(channel_id: nil, channel_type: nil, event_type: nil, for_content_owner: nil, for_developer: nil, for_mine: nil, location: nil, location_radius: nil, max_results: nil, on_behalf_of_content_owner: nil, order: nil, page_token: nil, part: nil, published_after: nil, published_before: nil, q: nil, region_code: nil, related_to_video_id: nil, relevance_language: nil, safe_search: nil, topic_id: nil, type: nil, video_caption: nil, video_category_id: nil, video_definition: nil, video_dimension: nil, video_duration: nil, video_embeddable: nil, video_license: nil, video_syndicated: nil, video_type: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'search'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::YoutubeV3::SearchListResponseRepresentation
          command.response_class = Google::Apis::YoutubeV3::SearchListResponse
          command.query['channelId'] = channel_id unless channel_id.nil?
          command.query['channelType'] = channel_type unless channel_type.nil?
          command.query['eventType'] = event_type unless event_type.nil?
          command.query['forContentOwner'] = for_content_owner unless for_content_owner.nil?
          command.query['forDeveloper'] = for_developer unless for_developer.nil?
          command.query['forMine'] = for_mine unless for_mine.nil?
          command.query['location'] = location unless location.nil?
          command.query['locationRadius'] = location_radius unless location_radius.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['order'] = order unless order.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['part'] = part unless part.nil?
          command.query['publishedAfter'] = published_after unless published_after.nil?
          command.query['publishedBefore'] = published_before unless published_before.nil?
          command.query['q'] = q unless q.nil?
          command.query['regionCode'] = region_code unless region_code.nil?
          command.query['relatedToVideoId'] = related_to_video_id unless related_to_video_id.nil?
          command.query['relevanceLanguage'] = relevance_language unless relevance_language.nil?
          command.query['safeSearch'] = safe_search unless safe_search.nil?
          command.query['topicId'] = topic_id unless topic_id.nil?
          command.query['type'] = type unless type.nil?
          command.query['videoCaption'] = video_caption unless video_caption.nil?
          command.query['videoCategoryId'] = video_category_id unless video_category_id.nil?
          command.query['videoDefinition'] = video_definition unless video_definition.nil?
          command.query['videoDimension'] = video_dimension unless video_dimension.nil?
          command.query['videoDuration'] = video_duration unless video_duration.nil?
          command.query['videoEmbeddable'] = video_embeddable unless video_embeddable.nil?
          command.query['videoLicense'] = video_license unless video_license.nil?
          command.query['videoSyndicated'] = video_syndicated unless video_syndicated.nil?
          command.query['videoType'] = video_type unless video_type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Deletes a subscription.
        # @param [String] id
        #   The id parameter specifies the YouTube subscription ID for the resource that
        #   is being deleted. In a subscription resource, the id property specifies the
        #   YouTube subscription ID.
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
        def delete_subscription(id: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'subscriptions'
          command =  make_simple_command(:delete, path, options)
          command.query['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Adds a subscription for the authenticated user's channel.
        # @param [Google::Apis::YoutubeV3::Subscription] subscription
        #   
        # @param [String] part
        #   The part parameter serves two purposes in this operation. It identifies the
        #   properties that the write operation will set as well as the properties that
        #   the API response will include.
        #   The part names that you can include in the parameter value are snippet and
        #   contentDetails.
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
        # @yieldparam result [Google::Apis::YoutubeV3::Subscription] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::Subscription]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_subscription(subscription = nil, part: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'subscriptions'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::YoutubeV3::SubscriptionRepresentation
          command.request_object = subscription
          command.response_representation = Google::Apis::YoutubeV3::SubscriptionRepresentation
          command.response_class = Google::Apis::YoutubeV3::Subscription
          command.query['part'] = part unless part.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Returns subscription resources that match the API request criteria.
        # @param [String] channel_id
        #   The channelId parameter specifies a YouTube channel ID. The API will only
        #   return that channel's subscriptions.
        # @param [String] for_channel_id
        #   The forChannelId parameter specifies a comma-separated list of channel IDs.
        #   The API response will then only contain subscriptions matching those channels.
        # @param [String] id
        #   The id parameter specifies a comma-separated list of the YouTube subscription
        #   ID(s) for the resource(s) that are being retrieved. In a subscription resource,
        #   the id property specifies the YouTube subscription ID.
        # @param [Fixnum] max_results
        #   The maxResults parameter specifies the maximum number of items that should be
        #   returned in the result set.
        # @param [Boolean] mine
        #   Set this parameter's value to true to retrieve a feed of the authenticated
        #   user's subscriptions.
        # @param [Boolean] my_subscribers
        #   Set this parameter's value to true to retrieve a feed of the subscribers of
        #   the authenticated user.
        # @param [String] on_behalf_of_content_owner
        #   Note: This parameter is intended exclusively for YouTube content partners.
        #   The onBehalfOfContentOwner parameter indicates that the request's
        #   authorization credentials identify a YouTube CMS user who is acting on behalf
        #   of the content owner specified in the parameter value. This parameter is
        #   intended for YouTube content partners that own and manage many different
        #   YouTube channels. It allows content owners to authenticate once and get access
        #   to all their video and channel data, without having to provide authentication
        #   credentials for each individual channel. The CMS account that the user
        #   authenticates with must be linked to the specified YouTube content owner.
        # @param [String] on_behalf_of_content_owner_channel
        #   This parameter can only be used in a properly authorized request. Note: This
        #   parameter is intended exclusively for YouTube content partners.
        #   The onBehalfOfContentOwnerChannel parameter specifies the YouTube channel ID
        #   of the channel to which a video is being added. This parameter is required
        #   when a request specifies a value for the onBehalfOfContentOwner parameter, and
        #   it can only be used in conjunction with that parameter. In addition, the
        #   request must be authorized using a CMS account that is linked to the content
        #   owner that the onBehalfOfContentOwner parameter specifies. Finally, the
        #   channel that the onBehalfOfContentOwnerChannel parameter value specifies must
        #   be linked to the content owner that the onBehalfOfContentOwner parameter
        #   specifies.
        #   This parameter is intended for YouTube content partners that own and manage
        #   many different YouTube channels. It allows content owners to authenticate once
        #   and perform actions on behalf of the channel specified in the parameter value,
        #   without having to provide authentication credentials for each separate channel.
        # @param [String] order
        #   The order parameter specifies the method that will be used to sort resources
        #   in the API response.
        # @param [String] page_token
        #   The pageToken parameter identifies a specific page in the result set that
        #   should be returned. In an API response, the nextPageToken and prevPageToken
        #   properties identify other pages that could be retrieved.
        # @param [String] part
        #   The part parameter specifies a comma-separated list of one or more
        #   subscription resource properties that the API response will include. The part
        #   names that you can include in the parameter value are id, snippet, and
        #   contentDetails.
        #   If the parameter identifies a property that contains child properties, the
        #   child properties will be included in the response. For example, in a
        #   subscription resource, the snippet property contains other properties, such as
        #   a display title for the subscription. If you set part=snippet, the API
        #   response will also contain all of those nested properties.
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
        # @yieldparam result [Google::Apis::YoutubeV3::SubscriptionListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::SubscriptionListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_subscriptions(channel_id: nil, for_channel_id: nil, id: nil, max_results: nil, mine: nil, my_subscribers: nil, on_behalf_of_content_owner: nil, on_behalf_of_content_owner_channel: nil, order: nil, page_token: nil, part: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'subscriptions'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::YoutubeV3::SubscriptionListResponseRepresentation
          command.response_class = Google::Apis::YoutubeV3::SubscriptionListResponse
          command.query['channelId'] = channel_id unless channel_id.nil?
          command.query['forChannelId'] = for_channel_id unless for_channel_id.nil?
          command.query['id'] = id unless id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['mine'] = mine unless mine.nil?
          command.query['mySubscribers'] = my_subscribers unless my_subscribers.nil?
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['onBehalfOfContentOwnerChannel'] = on_behalf_of_content_owner_channel unless on_behalf_of_content_owner_channel.nil?
          command.query['order'] = order unless order.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['part'] = part unless part.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Uploads a custom video thumbnail to YouTube and sets it for a video.
        # @param [String] on_behalf_of_content_owner
        #   The onBehalfOfContentOwner parameter indicates that the authenticated user is
        #   acting on behalf of the content owner specified in the parameter value. This
        #   parameter is intended for YouTube content partners that own and manage many
        #   different YouTube channels. It allows content owners to authenticate once and
        #   get access to all their video and channel data, without having to provide
        #   authentication credentials for each individual channel. The actual CMS account
        #   that the user authenticates with needs to be linked to the specified YouTube
        #   content owner.
        # @param [String] video_id
        #   The videoId parameter specifies a YouTube video ID for which the custom video
        #   thumbnail is being provided.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [IO, String] upload_source
        #   IO stream or filename containing content to upload
        # @param [String] content_type
        #   Content type of the uploaded content.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::YoutubeV3::ThumbnailSetResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::ThumbnailSetResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_thumbnail(on_behalf_of_content_owner: nil, video_id: nil, fields: nil, quota_user: nil, user_ip: nil, upload_source: nil, content_type: nil, options: nil, &block)
          path = 'thumbnails/set'
          if upload_source.nil?
            command =  make_simple_command(:post, path, options)
          else
            command = make_upload_command(:post, path, options)
            command.upload_source = upload_source
            command.upload_content_type = content_type
          end
          command.response_representation = Google::Apis::YoutubeV3::ThumbnailSetResponseRepresentation
          command.response_class = Google::Apis::YoutubeV3::ThumbnailSetResponse
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['videoId'] = video_id unless video_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Returns a list of abuse reasons that can be used for reporting abusive videos.
        # @param [String] hl
        #   The hl parameter specifies the language that should be used for text values in
        #   the API response.
        # @param [String] part
        #   The part parameter specifies the videoCategory resource parts that the API
        #   response will include. Supported values are id and snippet.
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
        # @yieldparam result [Google::Apis::YoutubeV3::VideoAbuseReportReasonListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::VideoAbuseReportReasonListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_video_abuse_report_reasons(hl: nil, part: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'videoAbuseReportReasons'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::YoutubeV3::VideoAbuseReportReasonListResponseRepresentation
          command.response_class = Google::Apis::YoutubeV3::VideoAbuseReportReasonListResponse
          command.query['hl'] = hl unless hl.nil?
          command.query['part'] = part unless part.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Returns a list of categories that can be associated with YouTube videos.
        # @param [String] hl
        #   The hl parameter specifies the language that should be used for text values in
        #   the API response.
        # @param [String] id
        #   The id parameter specifies a comma-separated list of video category IDs for
        #   the resources that you are retrieving.
        # @param [String] part
        #   The part parameter specifies the videoCategory resource parts that the API
        #   response will include. Supported values are id and snippet.
        # @param [String] region_code
        #   The regionCode parameter instructs the API to return the list of video
        #   categories available in the specified country. The parameter value is an ISO
        #   3166-1 alpha-2 country code.
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
        # @yieldparam result [Google::Apis::YoutubeV3::VideoCategoryListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::VideoCategoryListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_video_categories(hl: nil, id: nil, part: nil, region_code: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'videoCategories'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::YoutubeV3::VideoCategoryListResponseRepresentation
          command.response_class = Google::Apis::YoutubeV3::VideoCategoryListResponse
          command.query['hl'] = hl unless hl.nil?
          command.query['id'] = id unless id.nil?
          command.query['part'] = part unless part.nil?
          command.query['regionCode'] = region_code unless region_code.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Deletes a YouTube video.
        # @param [String] id
        #   The id parameter specifies the YouTube video ID for the resource that is being
        #   deleted. In a video resource, the id property specifies the video's ID.
        # @param [String] on_behalf_of_content_owner
        #   Note: This parameter is intended exclusively for YouTube content partners.
        #   The onBehalfOfContentOwner parameter indicates that the request's
        #   authorization credentials identify a YouTube CMS user who is acting on behalf
        #   of the content owner specified in the parameter value. This parameter is
        #   intended for YouTube content partners that own and manage many different
        #   YouTube channels. It allows content owners to authenticate once and get access
        #   to all their video and channel data, without having to provide authentication
        #   credentials for each individual channel. The actual CMS account that the user
        #   authenticates with must be linked to the specified YouTube content owner.
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
        def delete_video(id: nil, on_behalf_of_content_owner: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'videos'
          command =  make_simple_command(:delete, path, options)
          command.query['id'] = id unless id.nil?
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Retrieves the ratings that the authorized user gave to a list of specified
        # videos.
        # @param [String] id
        #   The id parameter specifies a comma-separated list of the YouTube video ID(s)
        #   for the resource(s) for which you are retrieving rating data. In a video
        #   resource, the id property specifies the video's ID.
        # @param [String] on_behalf_of_content_owner
        #   Note: This parameter is intended exclusively for YouTube content partners.
        #   The onBehalfOfContentOwner parameter indicates that the request's
        #   authorization credentials identify a YouTube CMS user who is acting on behalf
        #   of the content owner specified in the parameter value. This parameter is
        #   intended for YouTube content partners that own and manage many different
        #   YouTube channels. It allows content owners to authenticate once and get access
        #   to all their video and channel data, without having to provide authentication
        #   credentials for each individual channel. The CMS account that the user
        #   authenticates with must be linked to the specified YouTube content owner.
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
        # @yieldparam result [Google::Apis::YoutubeV3::VideoGetRatingResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::VideoGetRatingResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_rating_video(id: nil, on_behalf_of_content_owner: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'videos/getRating'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::YoutubeV3::VideoGetRatingResponseRepresentation
          command.response_class = Google::Apis::YoutubeV3::VideoGetRatingResponse
          command.query['id'] = id unless id.nil?
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Uploads a video to YouTube and optionally sets the video's metadata.
        # @param [Google::Apis::YoutubeV3::Video] video
        #   
        # @param [Boolean] auto_levels
        #   The autoLevels parameter indicates whether YouTube should automatically
        #   enhance the video's lighting and color.
        # @param [Boolean] notify_subscribers
        #   The notifySubscribers parameter indicates whether YouTube should send
        #   notification to subscribers about the inserted video.
        # @param [String] on_behalf_of_content_owner
        #   Note: This parameter is intended exclusively for YouTube content partners.
        #   The onBehalfOfContentOwner parameter indicates that the request's
        #   authorization credentials identify a YouTube CMS user who is acting on behalf
        #   of the content owner specified in the parameter value. This parameter is
        #   intended for YouTube content partners that own and manage many different
        #   YouTube channels. It allows content owners to authenticate once and get access
        #   to all their video and channel data, without having to provide authentication
        #   credentials for each individual channel. The CMS account that the user
        #   authenticates with must be linked to the specified YouTube content owner.
        # @param [String] on_behalf_of_content_owner_channel
        #   This parameter can only be used in a properly authorized request. Note: This
        #   parameter is intended exclusively for YouTube content partners.
        #   The onBehalfOfContentOwnerChannel parameter specifies the YouTube channel ID
        #   of the channel to which a video is being added. This parameter is required
        #   when a request specifies a value for the onBehalfOfContentOwner parameter, and
        #   it can only be used in conjunction with that parameter. In addition, the
        #   request must be authorized using a CMS account that is linked to the content
        #   owner that the onBehalfOfContentOwner parameter specifies. Finally, the
        #   channel that the onBehalfOfContentOwnerChannel parameter value specifies must
        #   be linked to the content owner that the onBehalfOfContentOwner parameter
        #   specifies.
        #   This parameter is intended for YouTube content partners that own and manage
        #   many different YouTube channels. It allows content owners to authenticate once
        #   and perform actions on behalf of the channel specified in the parameter value,
        #   without having to provide authentication credentials for each separate channel.
        # @param [String] part
        #   The part parameter serves two purposes in this operation. It identifies the
        #   properties that the write operation will set as well as the properties that
        #   the API response will include.
        #   The part names that you can include in the parameter value are snippet,
        #   contentDetails, fileDetails, liveStreamingDetails, localizations, player,
        #   processingDetails, recordingDetails, statistics, status, suggestions, and
        #   topicDetails. However, not all of those parts contain properties that can be
        #   set when setting or updating a video's metadata. For example, the statistics
        #   object encapsulates statistics that YouTube calculates for a video and does
        #   not contain values that you can set or modify. If the parameter value
        #   specifies a part that does not contain mutable values, that part will still be
        #   included in the API response.
        # @param [Boolean] stabilize
        #   The stabilize parameter indicates whether YouTube should adjust the video to
        #   remove shaky camera motions.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [IO, String] upload_source
        #   IO stream or filename containing content to upload
        # @param [String] content_type
        #   Content type of the uploaded content.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::YoutubeV3::Video] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::Video]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_video(video = nil, auto_levels: nil, notify_subscribers: nil, on_behalf_of_content_owner: nil, on_behalf_of_content_owner_channel: nil, part: nil, stabilize: nil, fields: nil, quota_user: nil, user_ip: nil, upload_source: nil, content_type: nil, options: nil, &block)
          path = 'videos'
          if upload_source.nil?
            command =  make_simple_command(:post, path, options)
          else
            command = make_upload_command(:post, path, options)
            command.upload_source = upload_source
            command.upload_content_type = content_type
          end
          command.request_representation = Google::Apis::YoutubeV3::VideoRepresentation
          command.request_object = video
          command.response_representation = Google::Apis::YoutubeV3::VideoRepresentation
          command.response_class = Google::Apis::YoutubeV3::Video
          command.query['autoLevels'] = auto_levels unless auto_levels.nil?
          command.query['notifySubscribers'] = notify_subscribers unless notify_subscribers.nil?
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['onBehalfOfContentOwnerChannel'] = on_behalf_of_content_owner_channel unless on_behalf_of_content_owner_channel.nil?
          command.query['part'] = part unless part.nil?
          command.query['stabilize'] = stabilize unless stabilize.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Returns a list of videos that match the API request parameters.
        # @param [String] chart
        #   The chart parameter identifies the chart that you want to retrieve.
        # @param [String] hl
        #   The hl parameter instructs the API to return a localized version of the video
        #   details. If localized text is nor available for the requested language, the
        #   localizations object in the API response will contain the requested
        #   information in the default language instead. The parameter value is a BCP-47
        #   language code. Your application can determine whether the requested
        #   localization was returned by checking the value of the snippet.localized.
        #   language property in the API response.
        # @param [String] id
        #   The id parameter specifies a comma-separated list of the YouTube video ID(s)
        #   for the resource(s) that are being retrieved. In a video resource, the id
        #   property specifies the video's ID.
        # @param [String] locale
        #   DEPRECATED
        # @param [Fixnum] max_results
        #   The maxResults parameter specifies the maximum number of items that should be
        #   returned in the result set.
        #   Note: This parameter is supported for use in conjunction with the myRating
        #   parameter, but it is not supported for use in conjunction with the id
        #   parameter.
        # @param [String] my_rating
        #   Set this parameter's value to like or dislike to instruct the API to only
        #   return videos liked or disliked by the authenticated user.
        # @param [String] on_behalf_of_content_owner
        #   Note: This parameter is intended exclusively for YouTube content partners.
        #   The onBehalfOfContentOwner parameter indicates that the request's
        #   authorization credentials identify a YouTube CMS user who is acting on behalf
        #   of the content owner specified in the parameter value. This parameter is
        #   intended for YouTube content partners that own and manage many different
        #   YouTube channels. It allows content owners to authenticate once and get access
        #   to all their video and channel data, without having to provide authentication
        #   credentials for each individual channel. The CMS account that the user
        #   authenticates with must be linked to the specified YouTube content owner.
        # @param [String] page_token
        #   The pageToken parameter identifies a specific page in the result set that
        #   should be returned. In an API response, the nextPageToken and prevPageToken
        #   properties identify other pages that could be retrieved.
        #   Note: This parameter is supported for use in conjunction with the myRating
        #   parameter, but it is not supported for use in conjunction with the id
        #   parameter.
        # @param [String] part
        #   The part parameter specifies a comma-separated list of one or more video
        #   resource properties that the API response will include. The part names that
        #   you can include in the parameter value are id, snippet, contentDetails,
        #   fileDetails, liveStreamingDetails, localizations, player, processingDetails,
        #   recordingDetails, statistics, status, suggestions, and topicDetails.
        #   If the parameter identifies a property that contains child properties, the
        #   child properties will be included in the response. For example, in a video
        #   resource, the snippet property contains the channelId, title, description,
        #   tags, and categoryId properties. As such, if you set part=snippet, the API
        #   response will contain all of those properties.
        # @param [String] region_code
        #   The regionCode parameter instructs the API to select a video chart available
        #   in the specified region. This parameter can only be used in conjunction with
        #   the chart parameter. The parameter value is an ISO 3166-1 alpha-2 country code.
        # @param [String] video_category_id
        #   The videoCategoryId parameter identifies the video category for which the
        #   chart should be retrieved. This parameter can only be used in conjunction with
        #   the chart parameter. By default, charts are not restricted to a particular
        #   category.
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
        # @yieldparam result [Google::Apis::YoutubeV3::VideoListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::VideoListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_videos(chart: nil, hl: nil, id: nil, locale: nil, max_results: nil, my_rating: nil, on_behalf_of_content_owner: nil, page_token: nil, part: nil, region_code: nil, video_category_id: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'videos'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::YoutubeV3::VideoListResponseRepresentation
          command.response_class = Google::Apis::YoutubeV3::VideoListResponse
          command.query['chart'] = chart unless chart.nil?
          command.query['hl'] = hl unless hl.nil?
          command.query['id'] = id unless id.nil?
          command.query['locale'] = locale unless locale.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['myRating'] = my_rating unless my_rating.nil?
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['part'] = part unless part.nil?
          command.query['regionCode'] = region_code unless region_code.nil?
          command.query['videoCategoryId'] = video_category_id unless video_category_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Add a like or dislike rating to a video or remove a rating from a video.
        # @param [String] id
        #   The id parameter specifies the YouTube video ID of the video that is being
        #   rated or having its rating removed.
        # @param [String] on_behalf_of_content_owner
        #   Note: This parameter is intended exclusively for YouTube content partners.
        #   The onBehalfOfContentOwner parameter indicates that the request's
        #   authorization credentials identify a YouTube CMS user who is acting on behalf
        #   of the content owner specified in the parameter value. This parameter is
        #   intended for YouTube content partners that own and manage many different
        #   YouTube channels. It allows content owners to authenticate once and get access
        #   to all their video and channel data, without having to provide authentication
        #   credentials for each individual channel. The CMS account that the user
        #   authenticates with must be linked to the specified YouTube content owner.
        # @param [String] rating
        #   Specifies the rating to record.
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
        def rate_video(id: nil, on_behalf_of_content_owner: nil, rating: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'videos/rate'
          command =  make_simple_command(:post, path, options)
          command.query['id'] = id unless id.nil?
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['rating'] = rating unless rating.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Report abuse for a video.
        # @param [Google::Apis::YoutubeV3::VideoAbuseReport] video_abuse_report
        #   
        # @param [String] on_behalf_of_content_owner
        #   Note: This parameter is intended exclusively for YouTube content partners.
        #   The onBehalfOfContentOwner parameter indicates that the request's
        #   authorization credentials identify a YouTube CMS user who is acting on behalf
        #   of the content owner specified in the parameter value. This parameter is
        #   intended for YouTube content partners that own and manage many different
        #   YouTube channels. It allows content owners to authenticate once and get access
        #   to all their video and channel data, without having to provide authentication
        #   credentials for each individual channel. The CMS account that the user
        #   authenticates with must be linked to the specified YouTube content owner.
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
        def report_abuse_video(video_abuse_report = nil, on_behalf_of_content_owner: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'videos/reportAbuse'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::YoutubeV3::VideoAbuseReportRepresentation
          command.request_object = video_abuse_report
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Updates a video's metadata.
        # @param [Google::Apis::YoutubeV3::Video] video
        #   
        # @param [String] on_behalf_of_content_owner
        #   Note: This parameter is intended exclusively for YouTube content partners.
        #   The onBehalfOfContentOwner parameter indicates that the request's
        #   authorization credentials identify a YouTube CMS user who is acting on behalf
        #   of the content owner specified in the parameter value. This parameter is
        #   intended for YouTube content partners that own and manage many different
        #   YouTube channels. It allows content owners to authenticate once and get access
        #   to all their video and channel data, without having to provide authentication
        #   credentials for each individual channel. The actual CMS account that the user
        #   authenticates with must be linked to the specified YouTube content owner.
        # @param [String] part
        #   The part parameter serves two purposes in this operation. It identifies the
        #   properties that the write operation will set as well as the properties that
        #   the API response will include.
        #   The part names that you can include in the parameter value are snippet,
        #   contentDetails, fileDetails, liveStreamingDetails, localizations, player,
        #   processingDetails, recordingDetails, statistics, status, suggestions, and
        #   topicDetails.
        #   Note that this method will override the existing values for all of the mutable
        #   properties that are contained in any parts that the parameter value specifies.
        #   For example, a video's privacy setting is contained in the status part. As
        #   such, if your request is updating a private video, and the request's part
        #   parameter value includes the status part, the video's privacy setting will be
        #   updated to whatever value the request body specifies. If the request body does
        #   not specify a value, the existing privacy setting will be removed and the
        #   video will revert to the default privacy setting.
        #   In addition, not all of those parts contain properties that can be set when
        #   setting or updating a video's metadata. For example, the statistics object
        #   encapsulates statistics that YouTube calculates for a video and does not
        #   contain values that you can set or modify. If the parameter value specifies a
        #   part that does not contain mutable values, that part will still be included in
        #   the API response.
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
        # @yieldparam result [Google::Apis::YoutubeV3::Video] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::Video]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_video(video = nil, on_behalf_of_content_owner: nil, part: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'videos'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::YoutubeV3::VideoRepresentation
          command.request_object = video
          command.response_representation = Google::Apis::YoutubeV3::VideoRepresentation
          command.response_class = Google::Apis::YoutubeV3::Video
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['part'] = part unless part.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Uploads a watermark image to YouTube and sets it for a channel.
        # @param [Google::Apis::YoutubeV3::InvideoBranding] invideo_branding
        #   
        # @param [String] channel_id
        #   The channelId parameter specifies a YouTube channel ID for which the watermark
        #   is being provided.
        # @param [String] on_behalf_of_content_owner
        #   The onBehalfOfContentOwner parameter indicates that the authenticated user is
        #   acting on behalf of the content owner specified in the parameter value. This
        #   parameter is intended for YouTube content partners that own and manage many
        #   different YouTube channels. It allows content owners to authenticate once and
        #   get access to all their video and channel data, without having to provide
        #   authentication credentials for each individual channel. The actual CMS account
        #   that the user authenticates with needs to be linked to the specified YouTube
        #   content owner.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [IO, String] upload_source
        #   IO stream or filename containing content to upload
        # @param [String] content_type
        #   Content type of the uploaded content.
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
        def set_watermark(invideo_branding = nil, channel_id: nil, on_behalf_of_content_owner: nil, fields: nil, quota_user: nil, user_ip: nil, upload_source: nil, content_type: nil, options: nil, &block)
          path = 'watermarks/set'
          if upload_source.nil?
            command =  make_simple_command(:post, path, options)
          else
            command = make_upload_command(:post, path, options)
            command.upload_source = upload_source
            command.upload_content_type = content_type
          end
          command.request_representation = Google::Apis::YoutubeV3::InvideoBrandingRepresentation
          command.request_object = invideo_branding
          command.query['channelId'] = channel_id unless channel_id.nil?
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Deletes a watermark.
        # @param [String] channel_id
        #   The channelId parameter specifies a YouTube channel ID for which the watermark
        #   is being unset.
        # @param [String] on_behalf_of_content_owner
        #   The onBehalfOfContentOwner parameter indicates that the authenticated user is
        #   acting on behalf of the content owner specified in the parameter value. This
        #   parameter is intended for YouTube content partners that own and manage many
        #   different YouTube channels. It allows content owners to authenticate once and
        #   get access to all their video and channel data, without having to provide
        #   authentication credentials for each individual channel. The actual CMS account
        #   that the user authenticates with needs to be linked to the specified YouTube
        #   content owner.
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
        def unset_watermark(channel_id: nil, on_behalf_of_content_owner: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'watermarks/unset'
          command =  make_simple_command(:post, path, options)
          command.query['channelId'] = channel_id unless channel_id.nil?
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
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
