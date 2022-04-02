#noinspection CucumberUndefinedStep
Feature: Login validation
  Scenario: Correct login
    Given user is on "create a company account" site
    When user enter login
    And login is available
    Then field highlight up on green

  Scenario: Login is taken
    Given user is on "create a company account" site
    When user enter login
    And its taken
    Then field highlight on red
    And information "Login is already taken by other user" show on

  Scenario: Incorrect login using special signs
    Given user is on "create a company account" site
    When user enter login with special signs
    And other then - or _
    Then field highlight up on red
    And information "Login does not match expected pattern" show on

  Scenario: Too long login
    Given user is on "create a company account"
    When user enter too long login
    Then field highlight on red
    And  information "Size of login must be below 16 characters" show on

  Scenario: Empty login field
    Given user is on "create a company account" site
    When user leave empty field
    Then field highlight up on red
    And information "Enter Your login" show on