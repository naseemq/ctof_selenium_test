require 'singleton'

module SeleniumHelpers
  class SeleniumConfiguration
    include Singleton
    attr_accessor :config

    def initialize
      @config = YAML.load(ERB.new(File.read(File.join(File.dirname(__FILE__), '..', 'conf', 'selenium.default.yml'))).result)
    end
  end
end