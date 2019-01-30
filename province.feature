#noinspection CucumberUndefinedStep
Feature: Province validation
  Scenario: Selecting province field
    Given user is on "create a company account" site
    When user chose province
    Then field highlight up on green

  Scenario: Not selecting province field
    Given user is on "create a company account" site
    When user leave empty province field
    Then field hightlight up on red