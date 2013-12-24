require "rubygems"
require "cucumber"
require "cucumber/rake/task"

Cucumber::Rake::Task.new(:int) do |t|
  t.profile = "int"
end

Cucumber::Rake::Task.new(:dev) do |t|
  t.profile = "dev"
end

task :default => :dev
