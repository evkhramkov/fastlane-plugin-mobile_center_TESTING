# coding: utf-8

lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fastlane/plugin/mobile_center/version'

Gem::Specification.new do |spec|
  spec.name          = 'fastlane-plugin-mobile_center'
  spec.version       = Fastlane::MobileCenter::VERSION
  spec.author        = 'Evgeniy Khramkov'
  spec.email         = 'ewgeniux@gmail.com'

  spec.summary       = 'visual studio mobile center integration plugin'
  # spec.homepage      = "https://github.com/<GITHUB_USERNAME>/fastlane-plugin-mobile_center"
  spec.license       = "MIT"

  spec.files         = Dir["lib/**/*"] + %w(README.md LICENSE)
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  # Don't add a dependency to fastlane or fastlane_re
  # since this would cause a circular dependency

  # spec.add_dependency 'your-dependency', '~> 1.0.0'

  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'fastlane', '>= 2.26.1'
end
