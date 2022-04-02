#noinspection CucumberUndefinedStep
Feature: Phone number validation
  Scenario: Correct phone number
    Given user is on "create a company account" site
    When user enter 9 digit phone number
    Then field highlight up on green

  Scenario: Correct phone number with +48
    Given user is on "create a company account" site
    When user enter +48 in phone number field
    And 9 digit phone number
    Then field highlight up on green

  Scenario: Entering letters in phone number field
    Given user is on "create a company account" site
    When user enter letters in phone number field
    Then field highlight up on red
    And information "Invalid phone number" show on

  Scenario: Empty phone number field
    Given user is on "create a company account" site
    When user leave empty phone number field
    Then field highlight up on red
    And information"Enter your phone number" show on