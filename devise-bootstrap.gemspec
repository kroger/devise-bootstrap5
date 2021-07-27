# frozen_string_literal: true

require_relative "lib/version"

Gem::Specification.new do |spec|
  spec.name          = "devise-bootstrap"
  spec.version       = DeviseBootstrap::VERSION
  spec.authors       = ["Pedro Kroger"]
  spec.email         = ["kroger@pedrokroger.net"]

  spec.summary       = "Devise with Bootstrap 5"
  spec.description   = 'Devise views with Bootstrap 5 and i18n support.'
  spec.homepage      = "https://defclass.net/devise-bootstrap"
  spec.required_ruby_version = ">= 2.4.0"

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/kroger/devise-bootstrap"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
