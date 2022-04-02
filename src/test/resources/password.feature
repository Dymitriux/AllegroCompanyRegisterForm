#noinspection CucumberUndefinedStep
Feature: Password validation
  Scenario: Correct password
    Given user is on "create a company account" site
    When user enter correct password
    And password have 1 upper case letter
    And 1 lower case letter
    And 1 digit
    And 8 to 16 characters
    Then field highlight up on green

  Scenario: Too short password
    Given user is on "create a company account" site
    When user enter password shorter then 8 characters
    Then field highlight up on red
    And information "Enter longer password" show on

  Scenario: Too long password
    Given user is on "create a company account" site
    When user enter password longer then 16 characters
    Then field highlight on red
    And information "Enter shorter password" show on

  Scenario: Password without upper case letter
    Given user is on "create a company account" site
    When user enter password with 1 digit
    And password have 8 to 16 characters
    Then field highlight up on red
    And information "Password does not contain uppercase letter" show on

  Scenario: Password without lower case letter
    Given user is on "create a company account" site
    When user enter password with 1 digit
    And password have 8 to 16 characters
    Then field highlight up on red
    And information "Password does not contain lowercase letter" show on

  Scenario: Password without digit
    Given user is on "create a company account" site
    When user enter password with 1 upper case letter
    And with 1 lower case letter
    And password have 8 to 16 characters
    Then field highlight up on red
    And information "Password does not contain digit" show on