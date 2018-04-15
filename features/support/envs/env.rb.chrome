require 'cucumber'
require 'selenium-webdriver'
require 'pry'
require 'rspec'
require 'page-object'
require 'cukehub'

Before do
  @browser = Selenium::WebDriver.for :chrome
end

After do 
  @browser.quit
end