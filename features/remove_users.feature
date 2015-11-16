Feature: Remove users
  As a employee
  In order i need to remove users
  I want to remove users in the database
  
Scenario:
  Given I am on the users home page
  And I should see "User Name"
  When I follow "Excluir" in the user "User Name"
  Then I should back to the users home page
  And I should not see the user "User Name"