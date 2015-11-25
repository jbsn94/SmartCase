Feature: Remove Machine
  As a employee
  In order i need to remove a machine
  I want to remove a machine in the database
  
Scenario:
  When I login the system
  Given I am on the Machines Page
  And I should see "A254"
  When I follow "Deletar"
  Then I should back to the Machines Page
  And I should see a text "Machine was successfully destroyed"
  And I should not see the machine "A254"