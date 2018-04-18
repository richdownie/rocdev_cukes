Given /I am on the meetup page/i do
  @browser.get(@domain + '/meetup')
end

Then /each event has a unique link to meetup.com/i do
  pending
  @browser.all(class: 'meetup-event').each do |event|
    event.all(:tag_name, "a").each {|link| p link.attribute(:href) }
  end
end

Then /I should see at least one upcoming event/ do
  @meetup.upcoming_events(1)
end

Then /I should see exactly three past events/i do
  @meetup.past_events(3)
end