Given /I am on the meetup page/i do
  @browser.get(@domain + '/meetup')
end

Then /each event has a unique link to meetup.com/i do
  pending
  @browser.all(class: 'meetup-event').each do |event|
    event.all(:tag_name, "a").each {|link| p link.attribute(:href) }
  end
end