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
    module CoordinateV1
      # Google Maps Coordinate API
      #
      # Lets you view and manage jobs in a Coordinate team.
      #
      # @example
      #    require 'google/apis/coordinate_v1'
      #
      #    Coordinate = Google::Apis::CoordinateV1 # Alias the module
      #    service = Coordinate::CoordinateService.new
      #
      # @see https://developers.google.com/coordinate/
      class CoordinateService < Google::Apis::Core::BaseService

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
          super('https://www.googleapis.com/', 'coordinate/v1/')
        end

        # Retrieves a list of custom field definitions for a team.
        # @param [String] team_id
        #   Team ID
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
        # @yieldparam result [Google::Apis::CoordinateV1::CustomFieldDefListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CoordinateV1::CustomFieldDefListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_custom_field_defs(team_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'teams/{teamId}/custom_fields'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::CoordinateV1::CustomFieldDefListResponseRepresentation
          command.response_class = Google::Apis::CoordinateV1::CustomFieldDefListResponse
          command.params['teamId'] = team_id unless team_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Retrieves a job, including all the changes made to the job.
        # @param [String] team_id
        #   Team ID
        # @param [String] job_id
        #   Job number
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
        # @yieldparam result [Google::Apis::CoordinateV1::Job] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CoordinateV1::Job]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_job(team_id, job_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'teams/{teamId}/jobs/{jobId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::CoordinateV1::JobRepresentation
          command.response_class = Google::Apis::CoordinateV1::Job
          command.params['teamId'] = team_id unless team_id.nil?
          command.params['jobId'] = job_id unless job_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Inserts a new job. Only the state field of the job should be set.
        # @param [String] team_id
        #   Team ID
        # @param [Google::Apis::CoordinateV1::Job] job
        #   
        # @param [String] address
        #   Job address as newline (Unix) separated string
        # @param [String] assignee
        #   Assignee email address, or empty string to unassign.
        # @param [Array<String>, String] custom_field
        #   Sets the value of custom fields. To set a custom field, pass the field id (
        #   from /team/teamId/custom_fields), a URL escaped '=' character, and the desired
        #   value as a parameter. For example, customField=12%3DAlice. Repeat the
        #   parameter for each custom field. Note that '=' cannot appear in the parameter
        #   value. Specifying an invalid, or inactive enum field will result in an error
        #   500.
        # @param [String] customer_name
        #   Customer name
        # @param [String] customer_phone_number
        #   Customer phone number
        # @param [Float] lat
        #   The latitude coordinate of this job's location.
        # @param [Float] lng
        #   The longitude coordinate of this job's location.
        # @param [String] note
        #   Job note as newline (Unix) separated string
        # @param [String] title
        #   Job title
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
        # @yieldparam result [Google::Apis::CoordinateV1::Job] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CoordinateV1::Job]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_job(team_id, job = nil, address: nil, assignee: nil, custom_field: nil, customer_name: nil, customer_phone_number: nil, lat: nil, lng: nil, note: nil, title: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'teams/{teamId}/jobs'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::CoordinateV1::JobRepresentation
          command.request_object = job
          command.response_representation = Google::Apis::CoordinateV1::JobRepresentation
          command.response_class = Google::Apis::CoordinateV1::Job
          command.params['teamId'] = team_id unless team_id.nil?
          command.query['address'] = address unless address.nil?
          command.query['assignee'] = assignee unless assignee.nil?
          command.query['customField'] = custom_field unless custom_field.nil?
          command.query['customerName'] = customer_name unless customer_name.nil?
          command.query['customerPhoneNumber'] = customer_phone_number unless customer_phone_number.nil?
          command.query['lat'] = lat unless lat.nil?
          command.query['lng'] = lng unless lng.nil?
          command.query['note'] = note unless note.nil?
          command.query['title'] = title unless title.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Retrieves jobs created or modified since the given timestamp.
        # @param [String] team_id
        #   Team ID
        # @param [Fixnum] max_results
        #   Maximum number of results to return in one page.
        # @param [String] min_modified_timestamp_ms
        #   Minimum time a job was modified in milliseconds since epoch.
        # @param [String] page_token
        #   Continuation token
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
        # @yieldparam result [Google::Apis::CoordinateV1::JobListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CoordinateV1::JobListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_jobs(team_id, max_results: nil, min_modified_timestamp_ms: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'teams/{teamId}/jobs'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::CoordinateV1::JobListResponseRepresentation
          command.response_class = Google::Apis::CoordinateV1::JobListResponse
          command.params['teamId'] = team_id unless team_id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['minModifiedTimestampMs'] = min_modified_timestamp_ms unless min_modified_timestamp_ms.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Updates a job. Fields that are set in the job state will be updated. This
        # method supports patch semantics.
        # @param [String] team_id
        #   Team ID
        # @param [String] job_id
        #   Job number
        # @param [Google::Apis::CoordinateV1::Job] job
        #   
        # @param [String] address
        #   Job address as newline (Unix) separated string
        # @param [String] assignee
        #   Assignee email address, or empty string to unassign.
        # @param [Array<String>, String] custom_field
        #   Sets the value of custom fields. To set a custom field, pass the field id (
        #   from /team/teamId/custom_fields), a URL escaped '=' character, and the desired
        #   value as a parameter. For example, customField=12%3DAlice. Repeat the
        #   parameter for each custom field. Note that '=' cannot appear in the parameter
        #   value. Specifying an invalid, or inactive enum field will result in an error
        #   500.
        # @param [String] customer_name
        #   Customer name
        # @param [String] customer_phone_number
        #   Customer phone number
        # @param [Float] lat
        #   The latitude coordinate of this job's location.
        # @param [Float] lng
        #   The longitude coordinate of this job's location.
        # @param [String] note
        #   Job note as newline (Unix) separated string
        # @param [String] progress
        #   Job progress
        # @param [String] title
        #   Job title
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
        # @yieldparam result [Google::Apis::CoordinateV1::Job] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CoordinateV1::Job]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_job(team_id, job_id, job = nil, address: nil, assignee: nil, custom_field: nil, customer_name: nil, customer_phone_number: nil, lat: nil, lng: nil, note: nil, progress: nil, title: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'teams/{teamId}/jobs/{jobId}'
          command =  make_simple_command(:patch, path, options)
          command.request_representation = Google::Apis::CoordinateV1::JobRepresentation
          command.request_object = job
          command.response_representation = Google::Apis::CoordinateV1::JobRepresentation
          command.response_class = Google::Apis::CoordinateV1::Job
          command.params['teamId'] = team_id unless team_id.nil?
          command.params['jobId'] = job_id unless job_id.nil?
          command.query['address'] = address unless address.nil?
          command.query['assignee'] = assignee unless assignee.nil?
          command.query['customField'] = custom_field unless custom_field.nil?
          command.query['customerName'] = customer_name unless customer_name.nil?
          command.query['customerPhoneNumber'] = customer_phone_number unless customer_phone_number.nil?
          command.query['lat'] = lat unless lat.nil?
          command.query['lng'] = lng unless lng.nil?
          command.query['note'] = note unless note.nil?
          command.query['progress'] = progress unless progress.nil?
          command.query['title'] = title unless title.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Updates a job. Fields that are set in the job state will be updated.
        # @param [String] team_id
        #   Team ID
        # @param [String] job_id
        #   Job number
        # @param [Google::Apis::CoordinateV1::Job] job
        #   
        # @param [String] address
        #   Job address as newline (Unix) separated string
        # @param [String] assignee
        #   Assignee email address, or empty string to unassign.
        # @param [Array<String>, String] custom_field
        #   Sets the value of custom fields. To set a custom field, pass the field id (
        #   from /team/teamId/custom_fields), a URL escaped '=' character, and the desired
        #   value as a parameter. For example, customField=12%3DAlice. Repeat the
        #   parameter for each custom field. Note that '=' cannot appear in the parameter
        #   value. Specifying an invalid, or inactive enum field will result in an error
        #   500.
        # @param [String] customer_name
        #   Customer name
        # @param [String] customer_phone_number
        #   Customer phone number
        # @param [Float] lat
        #   The latitude coordinate of this job's location.
        # @param [Float] lng
        #   The longitude coordinate of this job's location.
        # @param [String] note
        #   Job note as newline (Unix) separated string
        # @param [String] progress
        #   Job progress
        # @param [String] title
        #   Job title
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
        # @yieldparam result [Google::Apis::CoordinateV1::Job] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CoordinateV1::Job]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_job(team_id, job_id, job = nil, address: nil, assignee: nil, custom_field: nil, customer_name: nil, customer_phone_number: nil, lat: nil, lng: nil, note: nil, progress: nil, title: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'teams/{teamId}/jobs/{jobId}'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::CoordinateV1::JobRepresentation
          command.request_object = job
          command.response_representation = Google::Apis::CoordinateV1::JobRepresentation
          command.response_class = Google::Apis::CoordinateV1::Job
          command.params['teamId'] = team_id unless team_id.nil?
          command.params['jobId'] = job_id unless job_id.nil?
          command.query['address'] = address unless address.nil?
          command.query['assignee'] = assignee unless assignee.nil?
          command.query['customField'] = custom_field unless custom_field.nil?
          command.query['customerName'] = customer_name unless customer_name.nil?
          command.query['customerPhoneNumber'] = customer_phone_number unless customer_phone_number.nil?
          command.query['lat'] = lat unless lat.nil?
          command.query['lng'] = lng unless lng.nil?
          command.query['note'] = note unless note.nil?
          command.query['progress'] = progress unless progress.nil?
          command.query['title'] = title unless title.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Retrieves a list of locations for a worker.
        # @param [String] team_id
        #   Team ID
        # @param [String] worker_email
        #   Worker email address.
        # @param [Fixnum] max_results
        #   Maximum number of results to return in one page.
        # @param [String] page_token
        #   Continuation token
        # @param [String] start_timestamp_ms
        #   Start timestamp in milliseconds since the epoch.
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
        # @yieldparam result [Google::Apis::CoordinateV1::LocationListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CoordinateV1::LocationListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_locations(team_id, worker_email, max_results: nil, page_token: nil, start_timestamp_ms: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'teams/{teamId}/workers/{workerEmail}/locations'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::CoordinateV1::LocationListResponseRepresentation
          command.response_class = Google::Apis::CoordinateV1::LocationListResponse
          command.params['teamId'] = team_id unless team_id.nil?
          command.params['workerEmail'] = worker_email unless worker_email.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['startTimestampMs'] = start_timestamp_ms unless start_timestamp_ms.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Retrieves the schedule for a job.
        # @param [String] team_id
        #   Team ID
        # @param [String] job_id
        #   Job number
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
        # @yieldparam result [Google::Apis::CoordinateV1::Schedule] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CoordinateV1::Schedule]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_schedule(team_id, job_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'teams/{teamId}/jobs/{jobId}/schedule'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::CoordinateV1::ScheduleRepresentation
          command.response_class = Google::Apis::CoordinateV1::Schedule
          command.params['teamId'] = team_id unless team_id.nil?
          command.params['jobId'] = job_id unless job_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Replaces the schedule of a job with the provided schedule. This method
        # supports patch semantics.
        # @param [String] team_id
        #   Team ID
        # @param [String] job_id
        #   Job number
        # @param [Google::Apis::CoordinateV1::Schedule] schedule
        #   
        # @param [Boolean] all_day
        #   Whether the job is scheduled for the whole day. Time of day in start/end times
        #   is ignored if this is true.
        # @param [String] duration
        #   Job duration in milliseconds.
        # @param [String] end_time
        #   Scheduled end time in milliseconds since epoch.
        # @param [String] start_time
        #   Scheduled start time in milliseconds since epoch.
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
        # @yieldparam result [Google::Apis::CoordinateV1::Schedule] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CoordinateV1::Schedule]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_schedule(team_id, job_id, schedule = nil, all_day: nil, duration: nil, end_time: nil, start_time: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'teams/{teamId}/jobs/{jobId}/schedule'
          command =  make_simple_command(:patch, path, options)
          command.request_representation = Google::Apis::CoordinateV1::ScheduleRepresentation
          command.request_object = schedule
          command.response_representation = Google::Apis::CoordinateV1::ScheduleRepresentation
          command.response_class = Google::Apis::CoordinateV1::Schedule
          command.params['teamId'] = team_id unless team_id.nil?
          command.params['jobId'] = job_id unless job_id.nil?
          command.query['allDay'] = all_day unless all_day.nil?
          command.query['duration'] = duration unless duration.nil?
          command.query['endTime'] = end_time unless end_time.nil?
          command.query['startTime'] = start_time unless start_time.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Replaces the schedule of a job with the provided schedule.
        # @param [String] team_id
        #   Team ID
        # @param [String] job_id
        #   Job number
        # @param [Google::Apis::CoordinateV1::Schedule] schedule
        #   
        # @param [Boolean] all_day
        #   Whether the job is scheduled for the whole day. Time of day in start/end times
        #   is ignored if this is true.
        # @param [String] duration
        #   Job duration in milliseconds.
        # @param [String] end_time
        #   Scheduled end time in milliseconds since epoch.
        # @param [String] start_time
        #   Scheduled start time in milliseconds since epoch.
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
        # @yieldparam result [Google::Apis::CoordinateV1::Schedule] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CoordinateV1::Schedule]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_schedule(team_id, job_id, schedule = nil, all_day: nil, duration: nil, end_time: nil, start_time: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'teams/{teamId}/jobs/{jobId}/schedule'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::CoordinateV1::ScheduleRepresentation
          command.request_object = schedule
          command.response_representation = Google::Apis::CoordinateV1::ScheduleRepresentation
          command.response_class = Google::Apis::CoordinateV1::Schedule
          command.params['teamId'] = team_id unless team_id.nil?
          command.params['jobId'] = job_id unless job_id.nil?
          command.query['allDay'] = all_day unless all_day.nil?
          command.query['duration'] = duration unless duration.nil?
          command.query['endTime'] = end_time unless end_time.nil?
          command.query['startTime'] = start_time unless start_time.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Retrieves a list of teams for a user.
        # @param [Boolean] admin
        #   Whether to include teams for which the user has the Admin role.
        # @param [Boolean] dispatcher
        #   Whether to include teams for which the user has the Dispatcher role.
        # @param [Boolean] worker
        #   Whether to include teams for which the user has the Worker role.
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
        # @yieldparam result [Google::Apis::CoordinateV1::TeamListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CoordinateV1::TeamListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_teams(admin: nil, dispatcher: nil, worker: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'teams'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::CoordinateV1::TeamListResponseRepresentation
          command.response_class = Google::Apis::CoordinateV1::TeamListResponse
          command.query['admin'] = admin unless admin.nil?
          command.query['dispatcher'] = dispatcher unless dispatcher.nil?
          command.query['worker'] = worker unless worker.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Retrieves a list of workers in a team.
        # @param [String] team_id
        #   Team ID
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
        # @yieldparam result [Google::Apis::CoordinateV1::WorkerListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CoordinateV1::WorkerListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_workers(team_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'teams/{teamId}/workers'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::CoordinateV1::WorkerListResponseRepresentation
          command.response_class = Google::Apis::CoordinateV1::WorkerListResponse
          command.params['teamId'] = team_id unless team_id.nil?
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
