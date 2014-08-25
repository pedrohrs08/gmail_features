Feature: As a gmail user, I should be able to log in the system, and see my emails

Scenario: I should be able to log in the system when I enter valid credentials
    Given I am on the gmail page
    When I enter the username "12344" and the password "12344"
    Then I should see a error message