Feature: Remove users
  As a employee
  In order i need to remove users
  I want to remove users in the database
  
Scenario:
  When I login the system
  Given I am on the users home page
  And I should see "User Name 2"
  When I follow "Deletar usuário_2"
  Then I should back to the users home page
  And I should not see the user "User Name 2"