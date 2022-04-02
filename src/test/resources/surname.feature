#noinspection CucumberUndefinedStep
Feature: Surname validation
  Scenario: Correct surname
    Given user is on "create a company account" site
    When user enter correct surname
    Then field highlight up on green

  Scenario: Empty surname field
    Given user is on "create a company account" site
    When user leave empty field
    Then field highlight up on red
    And information "Enter your surname" show on

  Scenario: Surname with number or special signs
    Given user is on "create a company account" site
    When user enter number or special signs in surname field
    Then field highlight up on red
    And information "Last name does not match expected pattern" show on

  Scenario: Too long surname
    Given user is on "create a company account" site
    When user enter surname longer then 64 signs
    Then field highlight up on red
    And information "Size of last name must be between 1 and 64" show on