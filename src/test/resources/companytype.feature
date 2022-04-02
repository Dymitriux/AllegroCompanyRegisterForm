#noinspection CucumberUndefinedStep
Feature: Company type validation
  Scenario: Selecting company type
    Given user is on "create a company account" site
    When user select any company type
    Then field highlight up on green

  Scenario: Not selecting company type
    Given user is on "create a company account" site
    When user leave empty field
    Then field highlight up on red
    And information "Enter a company name" show on