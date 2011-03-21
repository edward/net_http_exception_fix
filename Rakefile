require 'rake'
require 'rake/testtask'
require 'rake/clean'
require 'rake/gempackagetask'
require 'bundler'
Bundler::GemHelper.install_tasks

task :default => [:test]

desc "Run tests"
Rake::TestTask.new(:test) do |t|
  t.pattern = 'test/test_*.rb'
  t.verbose = true
  t.warning = true
end