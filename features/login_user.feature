Feature: Login User
    As a user and employee
    In order i login
    I want to log in the system
    
    Scenario:
      Given I am on the login page
      When I fill in "session[cpf]" with "12345"
      And I fill in "session[password]" with "12345"
      When I press login button "Entrar"
      Then I should be on the Index Page
    