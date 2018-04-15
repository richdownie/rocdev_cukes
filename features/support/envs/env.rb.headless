require 'cucumber'
require 'selenium-webdriver'
require 'pry'
require 'rspec'
require 'page-object'
require 'cukehub'

caps = Selenium::WebDriver::Remote::Capabilities.chrome(
    chromeOptions: { args: [ "--headless" ]})

Before do
  @browser = Selenium::WebDriver.for :chrome, desired_capabilities: caps
end

After do 
  @browser.quit
end