#noinspection CucumberUndefinedStep
Feature: Tax identification number validation
  Scenario: Correct tax id number
    Given user is on "create a company account" site
    When user enter 10-digit tax id number
    Then field highlight up on green

  Scenario: Empty tax id number
    Given user is on "create a company account" site
    When user leave empty field
    Then field highlight up on red
    And information "Enter a tax identification number" show on

  Scenario: Too long tax id number
    Given user is on "create a company account" site
    When user enter longer then 10-digit tax id number
    Then field highlight up on red
    And information "Tax id (NIP) does not match expected pattern" show on

  Scenario: Too short tax id number
    Given user is on "create a company account" site
    When user enter shorter then 10-digit tax id number
    Then field highlight up on red
    And information "Tax id (NIP) does not match expected pattern" show on

  Scenario: Using letter or special signs
    Given user is on "create a company account" site
    When user enter letter or special signs
    Then field highlight up on red
    And information "Tax id (NIP) does not match expected pattern" show on