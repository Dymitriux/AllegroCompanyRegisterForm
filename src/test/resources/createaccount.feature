#noinspection CucumberUndefinedStep
Feature: Create account validation
  Background:
    Given "Allegro User Agreement" accepted

  Scenario: Creating account
    Given user is on "create a company account" site
    When all field highlight up on green
    And user click "create account" button
    Then account is created

  Scenario: Not possible to create account
    Given user is on "create a company account" site
    When one or more field highlight up on red
    And user click "create account" button
    Then user cant create account
    And stay on "create a company account" site