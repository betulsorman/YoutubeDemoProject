require 'capybara'
require 'capybara/dsl'
require 'rspec'
require 'selenium-webdriver'
require 'date'
require 'time'


include Capybara::DSL
include RSpec::Matchers

RSpec.configure do |config|
  config.include Capybara::DSL, type: :feature
end

Capybara.configure do |config|
  config.app_host = "https://www.youtube.com"
  config.default_driver = :selenium
  config.default_selector = :css
  config.default_max_wait_time =10
  config.default_normalize_ws = true
end

Dir["#{Dir.pwd}/features/utils/*.rb"].each do |file_path|
  require_relative file_path
end