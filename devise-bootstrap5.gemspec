# frozen_string_literal: true

require_relative "lib/version"

Gem::Specification.new do |spec|
  spec.name          = "devise-bootstrap5"
  spec.version       = DeviseBootstrap5::VERSION
  spec.authors       = ["Pedro Kroger"]
  spec.email         = ["kroger@pedrokroger.net"]

  spec.summary       = "Devise with Bootstrap 5"
  spec.description   = 'Devise views with Bootstrap 5 and i18n support for Rails 6 and above.'
  spec.homepage      = "https://defclass.net/devise-bootstrap5"
  spec.required_ruby_version = ">= 2.4.0"

  spec.license = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/kroger/devise-bootstrap5"

  spec.files = Dir.glob("{app,lib}/**/*") + %w(LICENSE README.md)
  spec.require_paths = ["lib"]
end
