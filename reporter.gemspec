# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "reporter/version"

Gem::Specification.new do |spec|
  spec.name          = "reporter"
  spec.version       = Reporter::VERSION
  spec.authors       = ["Brad Feehan"]
  spec.email         = ["git@bradfeehan.com"]
  spec.summary       = %q{Parses data exported from Reporter}
  spec.description   = %q{A Ruby library for parsing and processing data exported from the Reporter app for iOS.}
  spec.homepage      = "https://github.com/bradfeehan/reporter-ruby"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
