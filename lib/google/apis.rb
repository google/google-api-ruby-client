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

require 'google/apis/version'
require 'logger'

module Google
  module Apis

    # @!attribute [rw] logger
    # @return [Logger] The logger.
    def self.logger
      @logger ||= rails_logger || default_logger
    end

    def self.logger=(logger)
      @logger = logger
    end

    private

    def self.default_logger
      logger = Logger.new($stdout)
      logger.level = Logger::WARN
      logger
    end

    def self.rails_logger
      ::Rails.logger if defined?(::Rails) && ::Rails.respond_to?(:logger) && ::Rails.logger
    end

  end
end
