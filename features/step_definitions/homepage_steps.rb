Given /I am on the homepage/i do
  @browser.get(@domain + '/')
end

And /I click the sign up with Meetup link/i do
  @homepage.sign_up_with_meetup.click
end

Then /I should see at least one upcoming event/ do
  @browser.first(class: 'meetup-upcoming-events').all(class: 'fa-external-link').count.should == 1
end

Then /I should see exactly three past events/i do
  @browser.first(class: 'meetup-past-events').all(class: 'fa-external-link').count.should == 3
end

