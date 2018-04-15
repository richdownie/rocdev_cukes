Before do
  @cukehub_api_key = ""
  @domain = "https://rocdev.org"
  puts @browser.capabilities.browser_name + " " + @browser.capabilities.version
  @homepage = HomePage.new(@browser)
end