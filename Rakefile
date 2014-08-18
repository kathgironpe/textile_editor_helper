#!/usr/bin/env rake
require "bundler/gem_tasks"
require 'rake/testtask'
require 'cucumber/rake/task'

task(:default).clear
task default: [:cucumber, :test]

Rake::TestTask.new do |t|
  t.pattern = "test/**/*_test.rb"
end

Cucumber::Rake::Task.new
