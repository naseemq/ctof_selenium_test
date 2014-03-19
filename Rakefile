# rake spec:browser [defaults: suite=smoke type=local browser=firefox]
# rake spec:browser suite=regression [defaults: type=local browser=firefox]
# rake spec:browser suite=smoke type=remote browser=chrome
# rake spec:browser suite=smoke type=remote browser=firefox

require 'rake'
require 'builder'
require 'rubygems'
require 'rspec/core/rake_task'
require 'spec_helper'

#defaults
@suite = 'smoke'
@type = 'local'
@browser = 'firefox'

def parseParams
  parseSuite
  parseType
  parseBrowser
end

def parseSuite
  suite = ENV['suite']
  if suite.present?
    @suite = suite
  end
  case @suite
    when 'smoke' then
    when 'regression' then
    else
      puts 'usage: suite=[smoke, regression]'
      exit
  end
end

def parseType
  type = ENV['type']
  if type.present?
    @type = type
  end
  case @type
    when 'local' then
    when 'remote' then
    else
      puts 'usage: type=[local, remote]'
      exit
  end
end

def parseBrowser
  browser = ENV['browser']
  if browser.present?
    @browser = browser
  end
  case @browser
    when 'chrome' then
    when 'firefox' then
    else
      puts 'usage: browser=[chrome, firefox]'
      exit
  end
end

namespace :spec do
  desc 'Run the code examples in spec/browser'
  RSpec::Core::RakeTask.new(:browser) do |t|
    parseParams
    t.pattern = 'spec/browser/*_spec.rb'

    if @suite == 'smoke'
      t.rspec_opts = ['--tag browser', '--tag suite:smoke', '--tag ~suite:regression']
    else
      t.rspec_opts = ['--tag browser']
    end
  end
  desc 'Run the setup spec in spec/setup/browser'
  RSpec::Core::RakeTask.new(:browser_setup) do |t|
    parseParams
    t.pattern = 'spec/browser/setup/*_spec.rb'
    t.rspec_opts = ['--tag browser']
  end
end

