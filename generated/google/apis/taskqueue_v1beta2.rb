# Copyright 2016 Google Inc.
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

require 'google/apis/taskqueue_v1beta2/service.rb'
require 'google/apis/taskqueue_v1beta2/classes.rb'
require 'google/apis/taskqueue_v1beta2/representations.rb'

module Google
  module Apis
    # TaskQueue API
    #
    # Lets you access a Google App Engine Pull Task Queue over REST.
    #
    # @see https://developers.google.com/appengine/docs/python/taskqueue/rest
    module TaskqueueV1beta2
      VERSION = 'V1beta2'
      REVISION = '20141111'

      # Manage your Tasks and Taskqueues
      AUTH_TASKQUEUE = 'https://www.googleapis.com/auth/taskqueue'

      # Consume Tasks from your Taskqueues
      AUTH_TASKQUEUE_CONSUMER = 'https://www.googleapis.com/auth/taskqueue.consumer'
    end
  end
end
