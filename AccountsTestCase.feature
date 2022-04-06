@Scenario
Feature: Verifying the data of the user

  Background: User should be on Accounts Page
    Given As a user I should be on Espo CRM application
    When I logged in using username "admin" and password "nagarro@123"
    Then I should be able to login into the Espo CRM Application
    Given I click on Accounts section on the Homepage

  Scenario Outline: As a user I should be able to verify text of the user accounts.
    When I searched for "<useraccount>" in the search text box
    Then I should be able to see the searched "<useraccount>" in the results
    When I clicked the searched "<useraccount>" in the results
    Then I should be able to see "<useraccount>" name as top heading on Overview Page

    Examples:
      | useraccount |
      | Mona Mary   |


  Scenario Outline: As a user I should be able to update the details of the user
    When I updated the "<billingaddress>", "<phone>" and "<website>" for the searched "<useraccount>"
    Then I should be able to see updated "<billingaddress>" on Overview page

    Examples:
      | useraccount | billingaddress  | phone         | website          |
      | Mona Mary   | Plot 13 Gurgaon | +91 989989878 | http://abcde.com |
