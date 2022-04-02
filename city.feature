#noinspection CucumberUndefinedStep
Feature: City validation
  Scenario: Correct address
    Given user is on "create a company account" site
    When user enter correct city
    Then field highlight up on green

  Scenario: City address field
    Given user is on "create a company account" site
    When user leave empty city field
    Then field highlight up on red
    And information "Enter a city" show on
