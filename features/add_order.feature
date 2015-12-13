Feature: Add Order
    As a employee
    In order add order
    I want to add order in the database
    
    Scenario:
      When I login the system like a user
      Given I am on the Orders Page
      When I follow "Criar Chamado"
      Then I should be on the Create a New Order
      When I fill in "order[title]" with "Machine with problem"
      And I fill in "order[local]" with "CCSA"
      And I fill in "order[description]" with "Machine needs repair on diplay of the monitor"
      And I press "Salvar Chamado"
      And I should see a text "Chamado criado com sucesso."
