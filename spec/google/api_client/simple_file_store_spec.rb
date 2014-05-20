# encoding:utf-8

# Copyright 2013 Google Inc.
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

require 'spec_helper'

require 'google/api_client/service/simple_file_store'

describe Google::APIClient::Service::SimpleFileStore do

  FILE_NAME = 'test.cache'

  before(:all) do
    File.delete(FILE_NAME) if File.exists?(FILE_NAME)
  end

  describe 'with no cache file' do
    before(:each) do
      File.delete(FILE_NAME) if File.exists?(FILE_NAME)
      @cache = Google::APIClient::Service::SimpleFileStore.new(FILE_NAME)
    end

    it 'returns nil when asked if a key exists' do
      expect(@cache.exist?('invalid')).to be_nil
      expect(File.exists?(FILE_NAME)).to be_false
    end

    it 'returns nil when asked to read a key' do
      expect(@cache.read('invalid')).to be_nil
      expect(File.exists?(FILE_NAME)).to be_false
    end

    it 'returns nil when asked to fetch a key' do
      expect(@cache.fetch('invalid')).to be_nil
      expect(File.exists?(FILE_NAME)).to be_false
    end

    it 'creates a cache file when asked to fetch a key with a default' do
      expect(@cache.fetch('new_key') do
        'value'
      end).to eq('value')
      expect(File.exists?(FILE_NAME)).to be_true
    end

    it 'creates a cache file when asked to write a key' do
      @cache.write('new_key', 'value')
      expect(File.exists?(FILE_NAME)).to be_true
    end

    it 'returns nil when asked to delete a key' do
      expect(@cache.delete('invalid')).to be_nil
      expect(File.exists?(FILE_NAME)).to be_false
    end
  end

  describe 'with an existing cache' do
    before(:each) do
      File.delete(FILE_NAME) if File.exists?(FILE_NAME)
      @cache = Google::APIClient::Service::SimpleFileStore.new(FILE_NAME)
      @cache.write('existing_key', 'existing_value')
    end

    it 'returns true when asked if an existing key exists' do
      expect(@cache.exist?('existing_key')).to be_true
    end

    it 'returns false when asked if a nonexistent key exists' do
      expect(@cache.exist?('invalid')).to be_false
    end

    it 'returns the value for an existing key when asked to read it' do
      expect(@cache.read('existing_key')).to eq('existing_value')
    end

    it 'returns nil for a nonexistent key when asked to read it' do
      expect(@cache.read('invalid')).to be_nil
    end

    it 'returns the value for an existing key when asked to read it' do
      expect(@cache.read('existing_key')).to eq('existing_value')
    end

    it 'returns nil for a nonexistent key when asked to fetch it' do
      expect(@cache.fetch('invalid')).to be_nil
    end

    it 'returns and save the default value for a nonexistent key when asked to fetch it with a default' do
      expect(@cache.fetch('new_key') do
        'value'
      end).to eq('value')
      expect(@cache.read('new_key')).to eq('value')
    end

    it 'removes an existing value and return true when asked to delete it' do
      expect(@cache.delete('existing_key')).to be_true
      expect(@cache.read('existing_key')).to be_nil
    end

    it 'returns false when asked to delete a nonexistent key' do
      expect(@cache.delete('invalid')).to be_false
    end

    it 'converts keys to strings when storing them' do
      @cache.write(:symbol_key, 'value')
      expect(@cache.read('symbol_key')).to eq('value')
    end

    it 'converts keys to strings when reading them' do
      expect(@cache.read(:existing_key)).to eq('existing_value')
    end

    it 'converts keys to strings when fetching them' do
      expect(@cache.fetch(:existing_key)).to eq('existing_value')
    end

    it 'converts keys to strings when deleting them' do
      expect(@cache.delete(:existing_key)).to be_true
      expect(@cache.read('existing_key')).to be_nil
    end
  end

  after(:all) do
    File.delete(FILE_NAME) if File.exists?(FILE_NAME)
  end
end
