# frozen_string_literal: true

Given /I am on the homepage/i do
  @browser.get(@domain + '/')
end

And /I click the sign up with Meetup link/i do
  @homepage.sign_up_with_meetup.click
end
