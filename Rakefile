require "bundler/gem_tasks"
require "cane/rake_task"
require "inch"
require "rake/testtask"

# test - Runs entire MiniTest spec suite at spec/
Rake::TestTask.new do |t|
  t.pattern = "spec/**/*_spec.rb"
end

# quality - Runs Cane to check code quality
Cane::RakeTask.new :quality do |t|
  t.canefile = File.join File.dirname(__FILE__), ".cane"
end

task :"quality:docs" do
  codebase = Inch::Codebase.parse(Dir.pwd)
  options = Inch::CLI::Command::Options::Stats.new
  context = Inch::API::Stats.new(codebase, options)

  # Find all undocumented objects
  undocumented = context.objects.find_all { |o| o.undocumented? }

  if undocumented.count == 0
    puts "All code documented!"
  else
    # Some undocumented objects found, generate a list
    file_list = undocumented.map do |object|
      "#{object.fullname} -- #{object.filename.relative_path}"
    end

    # Raise an exception containing the list
    raise <<-END.gsub(/ {6}/, '')
      #{undocumented.count} undocumented objects found!

        #{file_list.join("\n  ")}

    END
  end
end

task default: [:test, :quality, :"quality:docs"]
