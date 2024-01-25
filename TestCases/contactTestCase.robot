*** Settings ***
Library    SeleniumLibrary
Resource    ../MainKeywords/contactMainKeywords.robot

*** Test Cases ***
Contact Sales Validation
    Given user will try to launch url in browser
    When user will try to click on contact sales button
    And user will try to enter the details
    Then user will try to see the thank you message
