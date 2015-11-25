Feature: Remove users
  As a employee
  In order i need to remove users
  I want to remove users in the database
  
Scenario:
<<<<<<< HEAD
  When I login the system
  Given I am on the users home page
  And I should see "User Name 2"
  When I follow "Deletar usuário_2"
  Then I should back to the users home page
  And I should not see the user "User Name 2"
=======
  Given I login the system
  And I have two or more Users
  When I am on the Users Page
  And I should see "User Name Teste"
  When I follow delete user "Deletar"
  Then I should back to the users home page
    And I should see a text "User was successfully destroyed"
  And I should not see the user "User Name Teste"
>>>>>>> BDD
