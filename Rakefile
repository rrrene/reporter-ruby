require "bundler/gem_tasks"
require "cane/rake_task"
require "inch/rake"
require "rake/testtask"

# test - Runs entire MiniTest spec suite at spec/
Rake::TestTask.new do |t|
  t.pattern = "spec/**/*_spec.rb"
end

# quality - Runs Cane to check code quality
Cane::RakeTask.new :quality do |t|
  t.canefile = File.join File.dirname(__FILE__), ".cane"
end

# quality:docs - Checks documentation quality using Inch
Inch::Rake::Suggest.new :"quality:docs"

task default: [:test, :quality]
