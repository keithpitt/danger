# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'danger/version'

Gem::Specification.new do |spec|
  spec.name          = "danger"
  spec.version       = Danger::VERSION
  spec.authors       = ["Orta Therox", "Felix Krause"]
  spec.email         = ["orta.therox@gmail.com", "danger@krausefx.com"]
  spec.license       = "MIT"

  spec.summary       = Danger::DESCRIPTION
  spec.description   = 'Create a Dangerfile to introspect your pull request in CI, makes it easy to enforce social conventions like changelogs and tests.'
  spec.homepage      = "http://github.com/orta/danger"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.required_ruby_version = ">= 2.0.0"

  spec.add_runtime_dependency 'claide', "~> 0.8"
  spec.add_runtime_dependency 'git', "~> 1.2.9"
  spec.add_runtime_dependency 'colored'
  spec.add_runtime_dependency 'nap'

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
