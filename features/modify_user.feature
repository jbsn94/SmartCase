Feature: Edit Users
    As a employee
    In order to edit users
    I want remove users in the database
    
    Scenario:
      Given I am on the Users Page
      And I should see the name "User Name"
      When I click on link "Ver" in the user "User Name"
      Then I should go to User Information
      When I press the button "Edit"
      Then I should go to Edit User Information
      When I fill the field "user[name]" with "User Name 2"
      And I fill the field "user[email]" with "user2@email.com"
      And I fill the field "user[cpf]" with "123123123-22"
      And I choose the "user[tipo]" with "Solicitante"
      And I press on "Salvar usuário"
      Then I should go to Edit User Information
      And I should see the text "User was successfully updated."
      And I should see the text "User Name 2"
      