#!/usr/bin/env rake
begin
  require 'bundler/setup'
rescue LoadError
  puts 'You must `gem install bundler` and `bundle install` to run rake tasks'
end

APP_RAKEFILE = File.expand_path("../spec/dummy/Rakefile", __FILE__)
load 'lib/tasks/jackpot_tasks.rake'
load 'rails/tasks/engine.rake'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)
task :default => :spec

Bundler::GemHelper.install_tasks


namespace :jackpot do
  desc "Run billing cron job"
  task :cron => :environment do
    cron = Jackpot::Cron.new(Jackpot::Customer, Rails.logger)
    cron.run
  end 
end 
