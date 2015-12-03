Feature: Remove users
  As a employee
  In order i need to remove users
  I want to remove users in the database
  
Scenario:
  Given I login the system
  And I have two or more Users
  When I am on the Users Page
  And I should see "User Name Teste"
  When I follow delete user "Deletar usuário"
  Then I should back to the users home page
  And I should see a text "O usuário foi deletado com sucesso."
  And I should not see the user "User Name Teste"
