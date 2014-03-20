# rake spec:browser [defaults: suite=smoke type=local browser=firefox]
# rake spec:browser suite=regression [defaults: type=local browser=firefox]
# rake spec:browser suite=smoke type=remote browser=chrome
# rake spec:browser suite=smoke type=remote browser=firefox

require 'rake'
require 'builder'
require 'rubygems'
require 'rspec/core/rake_task'
require_relative 'spec/spec_helper'

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
    when 'test' then
    else
      puts 'usage: suite=[smoke, regression, test]'
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
    when 'htmlunit' then
    when 'firefox' then
    when 'ios7' then
    else
      puts 'usage: browser=[chrome, firefox, ios7]'
      exit
  end
end

namespace :spec do
  desc 'Run the code examples in spec/browser'
  RSpec::Core::RakeTask.new(:browser) do |t|
    parseParams
    t.pattern = 'spec/browser/*_spec.rb'

    if @suite == 'smoke'
      t.rspec_opts = ['--tag suite:smoke', '--tag ~browser:false']
    else
      if @suite == 'test'
        t.rspec_opts = ['--tag suite:test', '--tag ~browser:false']
      else
        t.rspec_opts = ['--tag browser']
      end
    end
  end
  desc 'Run the setup spec in spec/setup/browser'
  RSpec::Core::RakeTask.new(:browser_setup) do |t|
    parseParams
    t.pattern = 'spec/browser/setup/*_spec.rb'
    t.rspec_opts = ['--tag browser']
  end
end

