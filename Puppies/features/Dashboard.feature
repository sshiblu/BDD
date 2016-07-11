Feature: Dashboard

Scenario: On The First Page
  Given I am on the Dashboard page
  And I am on the first page
  Then clicking the next button should take me to the second page

Scenario: On the Second Page

Scenario: Go to next page
  Given: I am on the Dashboard page
  And: The page number is 1
  When: I press the next page button
  Then: I am on Page 2
  And: The navigation page numbers are 1 2 3

  Given: I am on the Dashboard page
  And: The page number is 3
  When: I press the next page button
  Then: I am on Page 4
  And: The navigation page numbers are 4, 5, 6

  Given: I am on the Dashboard page
  And: The page number is 9
  Then: The next page button is disabled

Scenario: Go to previous page
  Given: I am on the Dashboard page
  And: The Page number is 2
  When: I press the previous page button
  Then: I am on page 1
  And: The navigation page numbers are 1, 2, 3

  Given: I am on the Dashboard page
  And: The page number is 7
  When: I press the previous page button
  Then: I am on Page 6
  And: The navigation page numbers are 4, 5, 6

  Given: I am on the Dashboard page
  And: The page number is 1
  Then: The previous page button is disabled

Scenario: Header for Dashboard
  Given: I am on the Dashboard page
  Then: The header for the dashboard should be "Home for the Happy Puppy"

Scenario: Searchbar for Dashboard
  Given: I am on the Dashboard page and clicked the search bar
  When: I search by "Puppy Name" or "Breed"
  Then: The page should have a title of "Puppy name" or "Breed"

Scenario: Verifying if the right number of puppies is displayed on the Dashboard
  Given: I am on the Dashboard page
  Then: There should a be a list of four puppies

Scenario: Redirection to Puppy info page
  # Given: I am on the Dashboard page
  # And: I clicked on a puppy
  # Then: There should be a 'vdetails' button
  # And: Extra details available on the puppy
  # When: I pressed the 'vdetails' button
  # Then: I should be redirected to the 'Puppy Info' page

  Given I am on the Dashboard page
  When I click on view details button for a puppy
  # Then I should be sent to the view details page for the puppy
