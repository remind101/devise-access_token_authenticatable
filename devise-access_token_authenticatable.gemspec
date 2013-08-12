# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'devise/access_token_authenticatable/version'

Gem::Specification.new do |spec|
  spec.name          = "devise-access_token_authenticatable"
  spec.version       = Devise::AccessTokenAuthenticatable::VERSION
  spec.authors       = ["Eric J. Holmes"]
  spec.email         = ["eric@ejholmes.net"]
  spec.description   = %q{Access tokens for devise}
  spec.summary       = %q{Access tokens for devise}
  spec.homepage      = "https://github.com/remind101/devise-access_token_authenticatable"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "devise"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
