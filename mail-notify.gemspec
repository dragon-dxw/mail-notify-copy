# frozen_string_literal: true

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "mail/notify/version"

Gem::Specification.new do |spec|
  spec.name = "mail-notify"
  spec.version = Mail::Notify::VERSION
  spec.authors = ["Stuart Harrison", "Meyric Rawlings"]
  spec.email = ["pezholio@gmail.com"]

  spec.summary = "Rails plugin, send and preview email with GOV.UK Notify"
  spec.homepage = "https://github.com/dxw/mail-notify"
  spec.license = "MIT"

  spec.required_ruby_version = ">= 2.7.8"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "simplecov", "~> 0.21"
  spec.add_development_dependency "simplecov-lcov"
  spec.add_development_dependency "debug"
  spec.add_development_dependency "rails", "7.2.2.1"
  spec.add_development_dependency "rake", "~> 13.2.1"
  spec.add_development_dependency "rspec-rails", "~> 7.1"
  spec.add_development_dependency "standard", "~> 1"
  spec.add_development_dependency "sqlite3", "~> 1.7.2"
  spec.add_development_dependency "webmock", "~> 3.23.0"
  spec.add_development_dependency "rspec-mocks", "~> 3.13.0"

  spec.add_dependency "rack", ">= 2.1.4.1"
  spec.add_dependency "actionmailer", ">= 5.2.8.1"
  spec.add_dependency "activesupport", ">= 5.2.8.1"
  spec.add_dependency "actionpack", ">= 5.2.8.1"
  spec.add_dependency "actionview", ">= 5.2.8.1"
  spec.add_dependency "notifications-ruby-client", "~> 6.0"
end
