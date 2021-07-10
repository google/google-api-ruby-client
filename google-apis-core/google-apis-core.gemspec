require File.expand_path("lib/google/apis/core/version", __dir__)

Gem::Specification.new do |gem|
  gem.name = "google-apis-core"
  gem.version = Google::Apis::Core::VERSION
  gem.authors = ["Google LLC"]
  gem.email = "googleapis-packages@google.com"
  gem.summary = "Common utility and base classes for legacy Google REST clients"
  gem.homepage = "https://github.com/google/google-api-ruby-client"
  gem.license = "Apache-2.0"
  gem.metadata = {
    "bug_tracker_uri" => "https://github.com/googleapis/google-api-ruby-client/issues",
    "changelog_uri" => "https://github.com/googleapis/google-api-ruby-client/tree/master/google-apis-core/CHANGELOG.md",
    "documentation_uri" => "https://googleapis.dev/ruby/google-apis-core/v#{Google::Apis::Core::VERSION}",
    "source_code_uri" => "https://github.com/googleapis/google-api-ruby-client/tree/master/google-apis-core"
  }

  gem.files = Dir.glob("lib/**/*.rb") + Dir.glob("*.md") + [".yardopts"]
  gem.require_paths = ["lib"]

  gem.required_ruby_version = '>= 2.5'
  gem.add_runtime_dependency "opentelemetry-api", '~> 1.0.0.rc1'
  gem.add_runtime_dependency "representable", "~> 3.0"
  gem.add_runtime_dependency "retriable", ">= 2.0", "< 4.a"
  gem.add_runtime_dependency "addressable", "~> 2.5", ">= 2.5.1"
  gem.add_runtime_dependency "mini_mime", "~> 1.0"
  gem.add_runtime_dependency "googleauth", ">= 0.16.2", "< 2.a"
  gem.add_runtime_dependency "httpclient", ">= 2.8.1", "< 3.a"
  gem.add_runtime_dependency "rexml"
  gem.add_runtime_dependency "webrick"
end
