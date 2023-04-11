# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'apartment/sidekiq/version'

Gem::Specification.new do |spec|
  spec.name          = "apartment-sidekiq"
  spec.version       = Apartment::Sidekiq::VERSION
  spec.authors       = ["Brad Robertson"]
  spec.email         = ["brad@influitive.com"]
  spec.description   = %q{Enable Multi-tenant supported jobs to work with Sidekiq background worker}
  spec.summary       = %q{Sidekiq support for Apartment}
  spec.homepage      = "https://github.com/influitive/apartment-sidekiq"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.4"
  spec.add_development_dependency "rake"
  spec.add_development_dependency 'minitest'

  spec.add_dependency 'sidekiq', '>= 6.5', '~> 7.0'
end
