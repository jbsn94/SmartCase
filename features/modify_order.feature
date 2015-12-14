Feature: Edit Order
    As a employee
    In order to edit order
    I want edit orders info in the database
    
    Scenario:
      When I login the system
      Given I am on the Order Information
      And I should see "Machine has problem"
      When I click in "Editar"
      Then I should go to Edit Order Information
      When I fill in "order[title]" with "Machine with problems"
      And I fill in "order[local]" with "CCSA"
      And I fill in "order[description]" with "Instead 1 reported, the machine has 2 problems"
      And I press on the order button "Salvar"
      Then I should go to Edit Order Information
      And I should see a text "User was successfully updated."
      And I should see a text "CCSA"
      