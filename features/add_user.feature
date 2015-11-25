Feature: Adicionar Usuário
    As a funcionário
    In order cadastrar usuário
    I want de adicionar usuário na base de dados
    
    Scenario:
      When I login the system
      Given I am on the list of users
      When I follow "Adicionar usuário"
      Then I should be on the Create a New User
      When I fill in "user[name]" with "User Name"
      And I fill in "user[email]" with "user@email.com"
      And I fill in "user[cpf]" with "123123123-12"
      And I choose in "user[tipo]" with "Solicitante"
      And I press "Salvar usuário"
      Then I should be on the New User Page
      And I should see a text "User was successfully created."
      And I should see a text "User Name"
      
    