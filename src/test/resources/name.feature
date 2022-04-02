#noinspection CucumberUndefinedStep
Feature: Name validation
  Scenario: Correct name
    Given user is on "create a company account" site
    When user enter correct name
    Then field highlight up on green

  Scenario: Empty name field
    Given user is on "create a company account" site
    When user leave empty field
    Then field highlight up on red
    And information "Enter your name" show on

  Scenario: Name with number or special signs
    Given user is on "create a company account" site
    When user enter number or special signs in name field
    Then field highlight up on red
    And information "First name does not match expected pattern" show on

  Scenario: Too long name
    Given user is on "create a company account" site
    When user enter name longer then 150 signs
    Then field highlight up on red
    And information "Size of first name must be between 1 and 150" show on