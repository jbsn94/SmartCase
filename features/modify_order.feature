Feature: Edit Order
    As a employee
    In order to edit order
    I want edit order info in the database
    
    Scenario:
      When I login the system
      Given I am on the Orders Page
      And I should see "CCSA"
      When I follow "Editar chamado"
      Then I should go to Edit Order Information
      When I fill in "order[title]" with "Machine has no problem"
      And I fill in "order[local]" with "CCSA - Suporte"
      And I fill in "order[description]" with "Machine was repaired"
      And I choose in "order[status]" with "Encerrado"
      And I press on the order button "Salvar Chamado"
      Then I should go to Edit Order Information
      And I should see a text "User was successfully updated."
      And I should see a text "CCSA - Suporte"
      