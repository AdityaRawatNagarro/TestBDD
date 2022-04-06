@Scenario1
Feature: Verify Login Test cases

  @Xray="Id-123"
  Scenario: As a user I should be able to Login using valid credentials
    Given As a user I should be on Espo CRM application
    When I logged in using username "admin" and password "nagarro@123"
    Then I should be able to login into the Espo CRM Application

  Scenario: As a user I should be not able to Login using in-valid credentials
    Given As a user I should be on Espo CRM application
    When I logged in using username "admin1" and password "nagarro@123"
    Then I should be not able to login into the Espo CRM Application
