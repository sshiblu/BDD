Feature: Search

Scenario: Searching Google Homepage
  Given I am on the Google Homepage
  When I search for something
  Then I should be shown results
