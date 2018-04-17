require 'webdrivers'
Before do
  @cukehub_api_key = "rfviq96hKK7VzuQLnR985q82"
  @domain = "https://rocdev.org"
  puts @browser.capabilities.browser_name + " " + @browser.capabilities.version
  @homepage = HomePage.new(@browser)
end