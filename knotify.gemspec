# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'knotify/version'

Gem::Specification.new do |spec|
  spec.name          = "knotify"
  spec.version       = Knotify::Rails::VERSION
  spec.authors       = ["Brandon Dennis"]
  spec.email         = ["toady00@gmail.com"]
  spec.description   = %q{Web Notification Gem}
  spec.summary       = %q{Knotify is a simple js library for using web notifications.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.add_dependency "railties", ">= 3.0", "< 5.0"
end
