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

require 'spec_helper'

RSpec.describe Google::Apis::Error do
  describe 'constructor' do
    subject { described_class.new(error) }

    describe 'message' do
      context 'first arg is a string which does not respond to :backtrace' do
        let(:error) { 'an error occurred' }

        it 'creates a instance of Error with message' do
          expect(subject.message).to eq 'an error occurred'
        end
      end

      context 'first arg responds to :backtrace' do
        let(:error) { double }

        it 'creates a instance of Error with modified message' do
          allow(error).to receive(:respond_to?).with(:backtrace) { true }
          allow(error).to receive(:message) { 'error message' }
		  allow(error).to receive(:class) { 'TestError' }
          expect(subject.message).to eq 'caused by TestError: error message'
        end
      end
    end

    describe 'instance variables @body, @header, and @status_code' do
      let(:error) { 'an error occurred' }

      context 'params :body, :header, and :status_code are not given' do
        it 'instance variables @body, @header, and @status_code will be nil' do
          expect(subject.body).to be_nil
          expect(subject.header).to be_nil
          expect(subject.status_code).to be_nil
        end
      end

      context 'params :body, :header, and :status_code are given' do
        subject do
          described_class.new(
            error,
            body:       'this is body',
            header:     'this is header',
            status_code: 200)
        end

        it 'instance variables @body, @header, and @status_code will not be nil' do
          expect(subject.body).to eq 'this is body'
          expect(subject.header).to eq 'this is header'
          expect(subject.status_code).to eq 200
        end
      end
    end
  end

  describe '#backtrace' do
    subject { described_class.new('error') }
    let(:cause) { instance_double('Error', backtrace: 'this is backtrace') }

    context '@cause is truthy' do
      it 'calls @cause.backtrace' do
        subject.instance_variable_set(:@cause, cause)
        expect(subject.backtrace).to eq 'this is backtrace'
      end
    end

    context '@cause is falsy' do
      before do
        expect_any_instance_of(subject.class.superclass).to receive(:backtrace).and_return(
            "super class's #backtrace called")
      end

      it "calls super class's #backtrace" do
        subject.instance_variable_set(:@cause, false)
        expect(subject.backtrace).to eq "super class's #backtrace called"
      end
    end
  end
end
