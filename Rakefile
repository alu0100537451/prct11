require "bundler/gem_tasks"

$:.unshift File.dirname(__FILE__) + 'lib'
$:.unshift './lib', './spec'

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new
task :default => :spec

desc "Run UniTest Matrices"
task :test do
   sh "ruby -Ilib -Itest test/tc_Matrices.rb"
end


