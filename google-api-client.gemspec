# -*- encoding: utf-8 -*-
require File.join(File.dirname(__FILE__), 'lib/google/api_client', 'version')

Gem::Specification.new do |s|
  s.name = "google-api-client"
  s.version = Google::APIClient::VERSION::STRING

  s.required_rubygems_version = ">= 1.3.5"
  s.require_paths = ["lib"]
  s.authors = ["Bob Aman", "Steven Bazyl"]
  s.license = "Apache-2.0"
  s.description = "The Google API Ruby Client makes it trivial to discover and access supported APIs."
  s.email = "sbazyl@google.com"
  s.extra_rdoc_files = ["README.md"]
  s.files = %w(google-api-client.gemspec Rakefile LICENSE CHANGELOG.md README.md Gemfile)
  s.files += Dir.glob("lib/**/*.rb")
  s.files += Dir.glob("lib/cacerts.pem")
  s.files += Dir.glob("spec/**/*.{rb,opts}")
  s.files += Dir.glob("vendor/**/*.rb")
  s.files += Dir.glob("tasks/**/*")
  s.files += Dir.glob("website/**/*")
  s.homepage = "https://github.com/google/google-api-ruby-client/"
  s.rdoc_options = ["--main", "README.md"]
  s.summary = "The Google API Ruby Client makes it trivial to discover and access Google's REST APIs."

  s.add_runtime_dependency 'addressable', '~> 2.3'
  s.add_runtime_dependency 'signet', '~> 0.6'
  s.add_runtime_dependency 'faraday', '~> 0.9'
  s.add_runtime_dependency 'googleauth', '~> 0.3'
  s.add_runtime_dependency 'multi_json', '~> 1.10'
  s.add_runtime_dependency 'autoparse', '~> 0.3'
  s.add_runtime_dependency 'extlib', '~> 0.9'
  s.add_runtime_dependency 'launchy', '~> 2.4'
  s.add_runtime_dependency 'retriable', '~> 1.4'
  s.add_runtime_dependency 'activesupport', '>= 3.2'

  s.add_development_dependency 'rake', '~> 10.0'
  s.add_development_dependency 'yard', '~> 0.8'
  s.add_development_dependency 'rspec', '~> 3.1'
  s.add_development_dependency 'kramdown', '~> 1.5'
  s.add_development_dependency 'simplecov', '~> 0.9.2'
  s.add_development_dependency 'coveralls', '~> 0.7.11'
end
