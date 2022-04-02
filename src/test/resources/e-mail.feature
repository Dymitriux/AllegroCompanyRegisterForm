#noinspection CucumberUndefinedStep
Feature: E-mail validation
  Scenario: Correct e-mail
    Given user is on "create a company account" site
    When user enter correct e-mail
    Then field highlight up on green

  Scenario: Empty e-mail field
    Given user in on "create a company account" site
    When user leave empty field
    Then field highlight up on red
    And information "Enter Your e-mail address" show on

  Scenario: E-mail with special signs
    Given user is on create a company account" site
    When user enter e-mail with special signs
    But there can be one at sign
    Then field highlight up on red
    And information "Invalid e-mail address" show on

  Scenario: E-mail without at sign
    Given user is on "create a company account" site
    When user enter e-mail without at sign
    Then field highlight up on red
    And information "Invalid e-mail address" show on