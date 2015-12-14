Feature: Add comment
    As a employee
    In order add comment
    I want to add comment in the database
    
    Scenario:
      When I login the system
      Given I am on the Order Information
      When I follow "Adicionar Atividade"
      When I fill in "comment[description]" with "The monitor was replaced"
      And I press "Salvar"
      Then I am on the Order Information
      And I should see a text "Order was successfully created."
