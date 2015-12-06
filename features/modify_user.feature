Feature: Edit Users
    As a employee
    In order to edit users
    I want edit users info in the database
    
    Scenario:
      When I login the system
      Given I am on the Users Page
      And I should see "User Name"
      When I follow "Editar usuário"
      Then I should go to Edit User Information
      When I fill in "user[name]" with "User Name 2"
      And I fill in "user[email]" with "user2@email.com"
      And I fill in "user[cpf]" with "123123123-22"
      And I choose the "user[tipo]" with "Solicitante"
      And I press on "Salvar"
      Then I should go to Edit User Information
      And I should see a text "User was successfully updated."
      And I should see a text "User Name 2"
      