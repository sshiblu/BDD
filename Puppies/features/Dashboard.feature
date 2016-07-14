Feature: Dashboard

Background:
  Given I am on the Dashboard page

@passed
Scenario: On The First Page
  And I am on the first page
  Then clicking the next button should take me to the second page
@passed
Scenario: Redirection to Puppy info page
  When I click on view details button for a puppy
  Then I am redirected to the Puppy info page

@wip
Scenario: Header for Dashboard
  Then The header for the dashboard should be "Home for the Happy Puppy"

@not_started_yet
Scenario: Verifying if the right number of puppies is displayed on the Dashboard
  Then There should a be a list of four puppies
