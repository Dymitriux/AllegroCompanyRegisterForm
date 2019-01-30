#noinspection CucumberUndefinedStep
Feature: Address validation
  Scenario: Correct address
    Given user is on "create a company account" site
    When user enter correct address
    Then field highlight up on green

  Scenario: Empty address field
    Given user is on "create a company account" site
    When user leave empty address field
    Then field highlight up on red
    And information "Enter an address" show on
