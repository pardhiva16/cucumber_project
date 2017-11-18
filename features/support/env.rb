require 'capybara'
require 'cucumber'
require 'selenium-webdriver'
#require 'capybara/rails'
require 'capybara/cucumber'

#before
#Capybara.default_selector = :css
 
Capybara.default_driver = :selenium
Capybara.app_host = "https://www.amazon.com"
Capybara.register_driver :selenium do |app|
Capybara::Selenium::Driver.new app, browser: :chrome
end
  
World(Capybara::DSL)