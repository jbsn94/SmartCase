Feature: Add Machine
    As a employee
    In order add machine
    I want to add machine in the database
    
    Scenario:
      When I login the system
      Given I am on the machines page
      When I press machine "Adicionar maquina"
      Then I should be on the Create a New Machine
      When I fill in "machine[tipping]" with "A254"
      And I fill in "machine[description]" with "Machine has problem"
      And I fill in "machine[model]" with "ASUS24"
      And I press "Salvar maquina"
      And I should see a text "Machine was successfully created."
      
    