@Scenario
Feature: Verification of Calender functionality

  Background: User should already be logged in
    Given As a user I should be on Espo CRM application
    When I logged in using username "admin" and password "nagarro@123"
    Then I should be able to login into the Espo CRM Application

  Scenario: As a user I should be able to add Calender on my Homepage.
    When I click Add Calender in Add Widget menu
    Then I should be able see the Calender widget on my homepage

    Scenario: Adding sample file
    When I click Add Calender in Add Widget menu
    Then I should be able see the Calender widget on my homepage