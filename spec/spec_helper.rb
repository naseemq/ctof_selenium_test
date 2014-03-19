require 'rails/all'
require 'selenium-webdriver'
require 'faker'
require 'gmail'

RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.filter_run_excluding :browser
end
