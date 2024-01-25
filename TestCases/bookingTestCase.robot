*** Settings ***
Library    SeleniumLibrary
Resource   ../MainKeywords/bookingMainKeywords.robot

*** Test Cases ***
Booking a Free Demo
    Given user will try to open url in browser
    When user will try to click on book a free demo button
    And user will try to enter details
    Then user will try to see thank you text