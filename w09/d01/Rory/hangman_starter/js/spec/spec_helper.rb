require 'rubygems'
require 'capybara'
require 'capybara/dsl'

Capybara.run_server = false
Capybara.current_driver = :selenium

Capybara.app_host = 'file://Users/rorybudnick/dev/wdi/WDI_NYC_12/w09/d01/Rory/hangman_starter'

RSpec.configure do |config|
  config.include Capybara::DSL
end
