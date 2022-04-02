#noinspection CucumberUndefinedStep
Feature: KRS validation
  Scenario: Correct KRS number
    Given user is on "create a company account" site
    When user enter correct KRS number
    Then field highlight up on green

  Scenario: Empty KRS field
    Given user is on "create a company account" site
    When user leave empty field
    Then field highlight up on red
    And information "Enter KRS number" dhow on

  Scenario: Using letter or special signs in KRS field
    Given user is on "create a company account" site
    When user enter letter or special signs in KRS number field
    Then field highlight up on red
    And information "Company register number (KRS) can contain only digits" show on

  Scenario: Too short KRS number
    Given user is on "create a company account" site
    When user enter KRS number shorter then 10 digits
    Then field highlight up on red
    And information "The KRS number should be 10 characters long"

  Scenario: Too long KRS number
    Given user is on "create a company account" site
    When user enter KRS number longer then 10 digits
    Then field highlight up on red
    And information "The KRS number should be 10 characters long"