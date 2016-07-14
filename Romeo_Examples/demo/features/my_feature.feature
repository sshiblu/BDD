Feature: Login

  @smoke
  Scenario: Logging in as a registered user
    Given I am on the Login screen
    And I have submitted my valid credentials
    Then I should see the Dashboard

  @romeo @wip
  Scenario: A work in progress
    Given this is a work in progress
    Then it should not be executed if I run cucumber
