Feature: HomePage Scenarios

Scenario: I verify the RocDev Homepage
  Given I am on the homepage
  Then I should be on the "rocdev.org/" page
  
Scenario: I verify there is at least one upcoming event
  Given I am on the homepage
  And I click the "sign up with Meetup" link
  Then I should be the "/meetup" page
  And I should see at least one upcoming event

Scenario: I verify there are exactly three past events
  Given I am on the homepage
  And I click the "sign up with Meetup" link
  Then I should be the "/meetup" page
  And I should see exactly three past events
