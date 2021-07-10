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

require 'spec_helper'
require 'google/apis/core/http_command'

module Google
  module Apis
    module CloudkmsV1
      class DecryptResponse
      end
    end
  end
end

RSpec.describe Google::Apis::Core::HttpCommand do
  include TestHelpers
  include_context 'HTTP client'

  context('with credentials') do
    let(:command) do
      command = Google::Apis::Core::HttpCommand.new(:get, 'https://www.googleapis.com/zoo/animals')
      command.options.authorization = Signet::OAuth2::Client.new({
        :token_credential_uri => 'https://accounts.google.com/o/oauth2/token'
      })
      command
    end

    context('with one token error') do
      before(:example) do
        stub_request(:post, 'https://accounts.google.com/o/oauth2/token').to_return(
          { status: [500, 'Server error'] },
          { status: [200, ''], headers: { 'Content-Type' => 'application/json' }, body: '{"access_token": "foo"}' })
        stub_request(:get, 'https://www.googleapis.com/zoo/animals').to_return(body: %(Hello world))
      end

      it 'should send credentials' do
        result = command.execute(client)
        expect(a_request(:get, 'https://www.googleapis.com/zoo/animals')
          .with { |req| req.headers['Authorization'] == 'Bearer foo' }).to have_been_made
        expect(result).to eql 'Hello world'
      end
    end

    context('with two token errors') do
      before(:example) do
        stub_request(:post, 'https://accounts.google.com/o/oauth2/token').to_return(
          { status: [500, 'Server error'] },
          { status: [401, 'Unauthorized'] })
      end

      it 'should raise error' do
        expect { command.execute(client) }.to raise_error(Signet::AuthorizationError)
      end
    end
  end

  context('with credentials') do
    let(:command) do
      command = Google::Apis::Core::HttpCommand.new(:get, 'https://www.googleapis.com/zoo/animals')
      command.options.authorization = authorization
      command
    end

    context('that are refreshable') do
      let(:authorization) do
        calls = 0
        auth = object_double(Signet::OAuth2::Client.new)
        allow(auth).to receive(:apply!) do |header|
          header['Authorization'] = sprintf('Bearer a_token_value_%d', calls)
          calls += 1
        end
        auth
      end

      it 'should send credentials' do
        stub_request(:get, 'https://www.googleapis.com/zoo/animals').to_return(body: %(Hello world))
        result = command.execute(client)
        expect(a_request(:get, 'https://www.googleapis.com/zoo/animals')
          .with { |req| req.headers['Authorization'] == 'Bearer a_token_value_0' }).to have_been_made
      end

      context('with authorizaton error') do
        before(:example) do
          stub_request(:get, 'https://www.googleapis.com/zoo/animals')
            .to_return(status: [401, 'Unauthorized'])
            .to_return(body: %(Hello world))
        end

        it 'should refresh if auth error received' do
          result = command.execute(client)
          expect(a_request(:get, 'https://www.googleapis.com/zoo/animals')
            .with { |req| req.headers['Authorization'] == 'Bearer a_token_value_1' }).to have_been_made
        end

        it 'should ignore retry count' do
          command.options.retries = 0
          result = command.execute(client)
          expect(a_request(:get, 'https://www.googleapis.com/zoo/animals')
            .with { |req| req.headers['Authorization'] == 'Bearer a_token_value_1' }).to have_been_made
        end
      end
    end

    context('that are bare tokens`') do
      let(:authorization) { 'a_token_value' }

      it 'should send credentials' do
        stub_request(:get, 'https://www.googleapis.com/zoo/animals').to_return(body: %(Hello world))
        result = command.execute(client)
        expect(a_request(:get, 'https://www.googleapis.com/zoo/animals')
          .with { |req| expect(req.headers['Authorization']).to eql 'Bearer a_token_value' }).to have_been_made
      end

      it 'should send not refresh' do
        stub_request(:get, 'https://www.googleapis.com/zoo/animals').to_return(status: [401, 'Unauthorized'])
        expect { command.execute(client) }.to raise_error(Google::Apis::AuthorizationError)
      end
    end
  end

  context('with a successful response') do
    let(:command) do
      Google::Apis::Core::HttpCommand.new(:get, 'https://www.googleapis.com/zoo/animals')
    end

    before(:example) do
      stub_request(:get, 'https://www.googleapis.com/zoo/animals').to_return(body: %(Hello world))
    end

    it 'should return the response body if block not present' do
      result = command.execute(client)
      expect(result).to eql 'Hello world'
    end

    it 'should call block if present' do
      expect { |b| command.execute(client, &b) }.to yield_with_args('Hello world', nil)
    end
  end

  context('with server errors') do
    let(:command) do
      Google::Apis::Core::HttpCommand.new(:get, 'https://www.googleapis.com/zoo/animals')
    end

    before(:example) do
      stub_request(:get, 'https://www.googleapis.com/zoo/animals')
        .to_return(status: [500, 'Server error']).times(2)
        .to_return(body: %(Hello world))
    end

    it 'should return the response body' do
      result = command.execute(client)
      expect(result).to eql 'Hello world'
    end

    it 'should raise error if retries exceeded' do
      command.options.retries = 1
      expect { command.execute(client) }.to raise_error(Google::Apis::ServerError)
    end


    context('with retries exceeded') do
      before(:example) do
        command.options.retries = 1
      end

      let(:err) do
        begin
          command.execute(client)
        rescue Google::Apis::Error => e
          e
        end
      end

      it 'should raise error with HTTP status code' do
        expect(err.status_code).to eq 500
      end

    end

    context('with callbacks') do
      it 'should return the response body after retries' do
        expect { |b| command.execute(client, &b) }.to yield_with_args('Hello world', nil)
      end
    end
  end

  context('with unknown errors') do
    let(:command) do
      Google::Apis::Core::HttpCommand.new(:get, 'https://www.googleapis.com/zoo/animals')
    end

    before(:example) do
      stub_request(:get, 'https://www.googleapis.com/zoo/animals')
        .to_raise(HTTPClient::BadResponseError) # empty error, no res value
    end

    it 'should raise transmission error' do
      command.options.retries = 1

      err = nil
      begin
        command.execute(client)
      rescue Google::Apis::Error => e
        err = e
      end

      expect(err).to be_a(Google::Apis::TransmissionError)
      expect(err.cause).to be_a(HTTPClient::BadResponseError)
      expect(err.cause.res).to be_nil # no res value
    end
  end

  context('with options') do
    let(:command) do
      command = Google::Apis::Core::HttpCommand.new(:get, 'https://www.googleapis.com/zoo/animals')
      command.options.header = { 'X-Foo' => 'bar' }
      command
    end

    before(:example) do
      stub_request(:get, 'https://www.googleapis.com/zoo/animals')
        .to_return(body: %(Hello world))
    end

    it 'should send user headers' do
      result = command.execute(client)
      expect(a_request(:get, 'https://www.googleapis.com/zoo/animals')
        .with { |req| req.headers['X-Foo'] == 'bar' }).to have_been_made
    end
  end


  context('with redirects') do
    let(:command) do
      Google::Apis::Core::HttpCommand.new(:get, 'https://www.googleapis.com/zoo/animals')
    end

    before(:example) do
      stub_request(:get, 'https://www.googleapis.com/zoo/animals')
        .to_return(status: [302, 'Redirect'], headers: { 'Location' => 'https://zoo.googleapis.com/animals' })
      stub_request(:get, 'https://zoo.googleapis.com/animals')
        .to_return(body: %(Hello world))
    end

    it 'should return the response body' do
      result = command.execute(client)
      expect(result).to eql 'Hello world'
    end
  end

  context('with too many redirects') do
    let(:command) do
      Google::Apis::Core::HttpCommand.new(:get, 'https://www.googleapis.com/zoo/animals')
    end

    before(:example) do
      stub_request(:get, 'https://www.googleapis.com/zoo/animals')
        .to_return(status: [302, 'Redirect'], headers: { 'Location' => 'https://www.googleapis.com/zoo/animals' }).times(6)
    end

    it 'should raise error if retries exceeded' do
      expect { command.execute(client) }.to raise_error(Google::Apis::RedirectError)
    end
  end

  context('with no server response') do
    let(:command) do
      Google::Apis::Core::HttpCommand.new(:get, 'https://www.googleapis.com/zoo/animals')
    end

    before(:example) do
      stub_request(:get, 'https://www.googleapis.com/zoo/animals').to_timeout
    end

    it 'should raise transmission error' do
      expect { command.execute(client) }.to raise_error(Google::Apis::TransmissionError)
    end
  end

  context('with invalid status code') do
    let(:command) do
      Google::Apis::Core::HttpCommand.new(:get, 'https://www.googleapis.com/zoo/animals')
    end

    before(:example) do
      stub_request(:get, 'https://www.googleapis.com/zoo/animals')
        .to_return(status: [0, 'Wat!?'])
    end

    it 'should raise transmission error' do
      expect { command.execute(client) }.to raise_error(Google::Apis::TransmissionError)
    end
  end

  context('with client errors') do
    let(:command) do
      Google::Apis::Core::HttpCommand.new(:get, 'https://www.googleapis.com/zoo/animals')
    end

    before(:example) do
      stub_request(:get, 'https://www.googleapis.com/zoo/animals')
        .to_return(status: [400, 'Invalid request'])
    end

    it 'should raise error without retry' do
      command.options.retries = 1
      expect { command.execute(client) }.to raise_error(Google::Apis::ClientError)
    end

    it 'should call block if present' do
      expect { |b| command.execute(client, &b) }.to yield_with_args(nil, an_instance_of(Google::Apis::ClientError))
    end

    it 'should not swallow errors raised in block' do
      expect { command.execute(client) { raise "Potatoes detected in tailpipe" } }.to raise_error("Potatoes detected in tailpipe")
    end
  end

  context('with opencensus integration') do
    it 'should create an opencensus span for a successful call' do
      stub_request(:get, 'https://www.googleapis.com/zoo/animals').to_return(status: [200, ''], body: "Hello world")
      command = Google::Apis::Core::HttpCommand.new(:get, 'https://www.googleapis.com/zoo/animals')
      OpenCensus::Trace.start_request_trace do |span_context|
        command.execute(client)
        spans = span_context.build_contained_spans
        expect(spans.size).to eql 1
        span = spans.first
        expect(span.name.value).to eql '/zoo/animals'
        expect(span.status.code).to eql 0
        attrs = span.attributes
        expect(attrs['http.host'].value).to eql 'www.googleapis.com'
        expect(attrs['http.method'].value).to eql 'GET'
        expect(attrs['http.path'].value).to eql '/zoo/animals'
        expect(attrs['http.status_code']).to eql 200
        events = span.time_events
        expect(events.size).to eql 2
        expect(events[0].type).to eql :SENT
        expect(events[0].uncompressed_size).to eql 0
        expect(events[1].type).to eql :RECEIVED
        expect(events[1].uncompressed_size).to eql 11
      end
    end

    it 'should create an opencensus span for a call failure' do
      stub_request(:get, 'https://www.googleapis.com/zoo/animals').to_return(status: [403, ''])
      command = Google::Apis::Core::HttpCommand.new(:get, 'https://www.googleapis.com/zoo/animals')
      OpenCensus::Trace.start_request_trace do |span_context|
        expect { command.execute(client) }.to raise_error(Google::Apis::ClientError)
        spans = span_context.build_contained_spans
        expect(spans.size).to eql 1
        span = spans.first
        expect(span.name.value).to eql '/zoo/animals'
        expect(span.status.code).to eql 7
        attrs = span.attributes
        expect(attrs['http.host'].value).to eql 'www.googleapis.com'
        expect(attrs['http.method'].value).to eql 'GET'
        expect(attrs['http.path'].value).to eql '/zoo/animals'
        expect(attrs['http.status_code']).to eql 403
      end
    end

    it 'should propagate trace context header' do
      stub_request(:get, 'https://www.googleapis.com/zoo/animals').to_return(body: %(Hello world))
      command = Google::Apis::Core::HttpCommand.new(:get, 'https://www.googleapis.com/zoo/animals')
      OpenCensus::Trace.start_request_trace do |span_context|
        result = command.execute(client)
        expect(a_request(:get, 'https://www.googleapis.com/zoo/animals')
          .with { |req| !req.headers['Traceparent'].empty? }).to have_been_made
      end
    end

    it 'should not create an opencensus span if disabled' do
      stub_request(:get, 'https://www.googleapis.com/zoo/animals').to_return(status: [200, ''])
      command = Google::Apis::Core::HttpCommand.new(:get, 'https://www.googleapis.com/zoo/animals')
      command.options.use_opencensus = false
      OpenCensus::Trace.start_request_trace do |span_context|
        command.execute(client)
        spans = span_context.build_contained_spans
        expect(spans.size).to eql 0
      end
    end
  end if Google::Apis::Core::HttpCommand::OPENCENSUS_AVAILABLE

  context('with opentelemetry sdk configured') do
    require 'opentelemetry-sdk'

    EXPORTER = OpenTelemetry::SDK::Trace::Export::InMemorySpanExporter.new
    SPAN_PROCESSOR = OpenTelemetry::SDK::Trace::Export::SimpleSpanProcessor.new(EXPORTER)

    OpenTelemetry::SDK.configure do |c|
      c.add_span_processor SPAN_PROCESSOR
    end

    let(:span) { EXPORTER.finished_spans.first }

    before { EXPORTER.reset }

    it 'should create an OpenTelemetry span for a successful call' do
      stub_request(:get, 'https://www.googleapis.com/zoo/animals').to_return(status: [200, ''], body: "Hello world")
      command = Google::Apis::Core::HttpCommand.new(:get, 'https://www.googleapis.com/zoo/animals')
      command.execute(client)

      expect(span.name).to eq('www.googleapis.com')
      expect(span.status).to be_ok
      expect(span.instrumentation_library.name).to eq('Google::Apis::Core::HttpCommand')
      expect(span.instrumentation_library.version).to eq(Google::Apis::Core::VERSION)
    end

    it 'should create an OpenTelemetry span for a call failure' do
      stub_request(:get, 'https://www.googleapis.com/zoo/animals').to_return(status: [403, ''])
      command = Google::Apis::Core::HttpCommand.new(:get, 'https://www.googleapis.com/zoo/animals')
      expect { command.execute(client) }.to raise_error(Google::Apis::ClientError)

      expect(span.name).to eq('www.googleapis.com')
      expect(span.status).not_to be_ok
      expect(span.events.first.attributes['exception.type']).to eq('Google::Apis::ClientError')
      expect(span.events.first.attributes['exception.message']).to eq('Invalid request')
      expect(span.events.first.attributes['exception.stacktrace']).not_to be_empty
    end
  end

  it 'should send repeated query parameters' do
    stub_request(:get, 'https://www.googleapis.com/zoo/animals?a=1&a=2&a=3')
      .to_return(status: [200, ''])
    command = Google::Apis::Core::HttpCommand.new(:get, 'https://www.googleapis.com/zoo/animals')
    command.query['a'] = [1,2,3]
    command.execute(client)
  end

  it 'should not remove initial query parameters' do
    stub_request(:get, 'https://www.googleapis.com/zoo/animals?a=1&a=2&a=3&foo=bar')
      .to_return(status: [200, ''])
    command = Google::Apis::Core::HttpCommand.new(:get, 'https://www.googleapis.com/zoo/animals?foo=bar')
    command.query['a'] = [1,2,3]
    command.execute(client)
  end

  it 'should send falsey query parameters' do
    stub_request(:get, 'https://www.googleapis.com/zoo/animals?a=0&b=false')
      .to_return(status: [200, ''])
    command = Google::Apis::Core::HttpCommand.new(:get, 'https://www.googleapis.com/zoo/animals')
    command.query['a'] = 0
    command.query['b'] = false
    command.execute(client)
  end

  it 'should send DateTime query parameters' do
    stub_request(:get, 'https://www.googleapis.com/zoo/animals?a=2019-06-22T13:51:37-07:00&b=2019-06-22T13:51:37-07:00&b=2019-07-23T14:54:12-07:00')
      .to_return(status: [200, ''])
    command = Google::Apis::Core::HttpCommand.new(:get, 'https://www.googleapis.com/zoo/animals')
    date1 = DateTime.new(2019, 6, 22, 13, 51, 37, "-0700")
    date2 = DateTime.new(2019, 7, 23, 14, 54, 12, "-0700")
    command.query['a'] = date1
    command.query['b'] = [date1, date2]
    command.execute(client)
  end

  it 'should form encode parameters when method is POST and no body present' do
    stub_request(:post, 'https://www.googleapis.com/zoo/animals')
        .with(body: 'a=1&a=2&a=3&b=hello&c=&d=0')
        .to_return(status: [200, ''])
    command = Google::Apis::Core::HttpCommand.new(:post, 'https://www.googleapis.com/zoo/animals')
    command.query['a'] = [1,2,3]
    command.query['b'] = 'hello'
    command.query['c'] = nil
    command.query['d'] = 0
    command.execute(client)
  end

  it 'should prepend user query parameters from options and not remove initial query parameters' do
    stub_request(:get, 'https://www.googleapis.com/zoo/animals?a=1&a=2&a=3&b=false&foo=bar')
      .to_return(status: [200, ''])
    command = Google::Apis::Core::HttpCommand.new(:get, 'https://www.googleapis.com/zoo/animals?foo=bar')
    command.options.query = {
      'a' => [1,2,3],
      'b' => false
    }
    command.execute(client)
  end

  it 'should raise transmission error instead of socket error' do
    stub_request(:get, 'https://www.googleapis.com/zoo/animals').to_raise(SocketError)
    command = Google::Apis::Core::HttpCommand.new(:get, 'https://www.googleapis.com/zoo/animals')
    command.options.retries = 0
    expect { command.execute(client) }.to raise_error(Google::Apis::TransmissionError)
  end

  it 'should raise rate limit error for 429 status codes' do
    stub_request(:get, 'https://www.googleapis.com/zoo/animals').to_return(status: [429, ''])
    command = Google::Apis::Core::HttpCommand.new(:get, 'https://www.googleapis.com/zoo/animals')
    command.options.retries = 0
    expect { command.execute(client) }.to raise_error(Google::Apis::RateLimitError)
  end

  it 'should not normalize unicode values by default' do
    stub_request(:get, 'https://www.googleapis.com/Cafe%CC%81').to_return(status: [200, ''])
    template = Addressable::Template.new('https://www.googleapis.com/{path}')
    command = Google::Apis::Core::HttpCommand.new(:get, template)
    command.params[:path] = "Cafe\u0301"
    command.options.retries = 0
    command.execute(client)
  end

  it 'should normalize unicode values when requested' do
    stub_request(:get, 'https://www.googleapis.com/Caf%C3%A9').to_return(status: [200, ''])
    template = Addressable::Template.new('https://www.googleapis.com/{path}')
    command = Google::Apis::Core::HttpCommand.new(:get, template)
    command.params[:path] = "Cafe\u0301"
    command.options.retries = 0
    command.options.normalize_unicode = true
    command.execute(client)
  end

  describe "#safe_object_representation" do
    let(:command) do
      Google::Apis::Core::HttpCommand.new(:get, 'https://www.googleapis.com/zoo/animals')
    end

    it "should show fields in a normal object" do
      obj = Object.new
      obj.instance_variable_set(:@foobar, "hi")
      str = command.send(:safe_object_representation, obj)
      expect(str).to match /@foobar/
    end

    it "should not show fields in a restricted object" do
      obj = Google::Apis::CloudkmsV1::DecryptResponse.new
      obj.instance_variable_set(:@foobar, "hi")
      str = command.send(:safe_object_representation, obj)
      expect(str).not_to match /@foobar/
    end
  end
end
