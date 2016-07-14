Feature: Login

Background:
  Given I am on the Tumblr Login Page

@passed @logging_in
Scenario: Logging in as a Valid user
  And I have entered valid credentials
  Then I should be taken to the Tumblr Dashboard

Scenario: Logging in as an Invalid user
  And I have entered an Invalid email
  Then an email error message should be shown
