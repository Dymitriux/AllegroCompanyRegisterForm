#noinspection CucumberUndefinedStep
Feature: Country validation
  Scenario: Correct chosen country
    Given user is on "create a company account" site
    When user enter country
    And chose from the list
    Then field highlight up on green

  Scenario: Entering random letter in field
    Given user is on "create a company account" site
    When user enter random letter
    And number or special signs
    Then field highlight up on red
    And information "Start writing and select a country from the list" show on

  Scenario: Empty country field
    Given user is on "create a company account" site
    When user leave empty country field
    Then field highlight up on red