#noinspection CucumberUndefinedStep
Feature: Zip code validation
  Scenario: Enter correct zip code
    Given user is on "create a company account" site
    When user enter correct zip code
    Then field highlight up on green

  Scenario: Empty zip code field
    Given user is on "create a company account" site
    When user leave empty zip code field
    Then field highlight up on red
    And information "Enter a zip code" show on