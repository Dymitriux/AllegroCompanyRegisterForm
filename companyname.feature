#noinspection CucumberUndefinedStep
Feature: Company name validation
  Scenario: Correct company name
    Given user is on "create a company account" site
    When user enter correct company name
    Then field highlight up on green

  Scenario: Empty company name field
    Given user is on "create a company account" site
    When user leave empty company name field
    Then field highlight up on red
    And information "Enter a company name" show on

  Scenario: Too long company name
    Given user is on "create a company account" site
    When user enter company name longer then 150
    Then field highlight up on red
    And information "Size of company name must be between 0 and 150" show on