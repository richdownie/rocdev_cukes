@meetup
Feature: Meetup scenarios

Scenario: I verify there is at least one upcoming event
  Given I am on the homepage
  And I click the sign up with Meetup link
  Then I should be on the "/meetup" page
  And I should see at least one upcoming event

Scenario: I verify there are exactly three past events
  Given I am on the homepage
  And I click the sign up with Meetup link
  Then I should be on the "/meetup" page
  And I should see exactly three past events

Scenario: I verify each event has a link to meetup.com
  Given I am on the meetup page
  Then each event has a unique link to meetup.com