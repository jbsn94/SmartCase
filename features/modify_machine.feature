Feature: Edit Machine
    As a employee
    In order to edit machine
    I want edit machines info in the database
    
    Scenario:
      When I login the system
      Given I am on the Machines Page
      And I should see "A254"
      When I follow "Editar maquina"
      Then I should go to Edit Machine Information
      When I fill in "machine[tipping]" with "D25A"
      And I fill in "machine[description]" with "Machine was repaired"
      And I fill in "machine[model]" with "DELL25A"
      And I press on the "Salvar maquina"
      Then I should go to Edit Machine Information
      And I should see a text "User was successfully updated."
      And I should see a text "D25A"
      