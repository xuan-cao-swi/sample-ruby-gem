# frozen_string_literal: true

# Adds the build, install and release Rake tasks by calling Bundler::GemHelper.install_tasks
# - build: builds the gem and stores it under the pkg folder
# - install: builds and installs the gem to the system
# - release: pushes the gem to RubyGems (used by rubygems/release-gem action)
require "bundler/gem_tasks"
require "rake/testtask"

Rake::TestTask.new(:test) do |t|
  t.libs << "test"
  t.libs << "lib"
  t.test_files = FileList["test/**/*_test.rb"]
end

require "rubocop/rake_task"

RuboCop::RakeTask.new

task default: %i[test rubocop]
