# Copyright 2019 Google Inc.
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

require 'google/apis/webmasters_v3/service.rb'
require 'google/apis/webmasters_v3/classes.rb'
require 'google/apis/webmasters_v3/representations.rb'

module Google
  module Apis
    # Search Console API
    #
    # View Google Search Console data for your verified sites.
    #
    # @see https://developers.google.com/webmaster-tools/
    module WebmastersV3
      VERSION = 'V3'
      REVISION = '20180627'

      # View and manage Search Console data for your verified sites
      AUTH_WEBMASTERS = 'https://www.googleapis.com/auth/webmasters'

      # View Search Console data for your verified sites
      AUTH_WEBMASTERS_READONLY = 'https://www.googleapis.com/auth/webmasters.readonly'
    end
  end
end
