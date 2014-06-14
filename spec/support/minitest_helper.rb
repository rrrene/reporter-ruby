require "simplecov"
SimpleCov.start do
  add_filter "/spec/"
  coverage_dir "build/coverage"
  minimum_coverage 100
end

require "fixture_helper"
require "minitest/spec/expect"
require "minitest/reporters"
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require "minitest/autorun"
