*** Settings ***
Library     SeleniumLibrary
#Resource    ../MainKeywords/bookingMainKeywords.robot
Resource    ../Entities/url.robot
Resource    ../Entities/xpath.robot
Resource    ../Entities/testdata.robot

*** Keywords ***
user will able to launch the url in browser
       Open Browser     ${url}    ${browser}
       Maximize Browser Window
user will able to click on button
       Click Button    ${book_button}
user will able to enter the details
       Page Should Contain     We Just Need a Few Details.
       Input Text    ${name_xp}    ${name}
       Input Text    ${email_xp}   ${email}
       Input Text    ${company_xp}    ${company}
       Select From List By Value    ${country_xp}    ${country}
       Input Text    ${phone_number_xp}    ${phone_number}
       Sleep    20s     #manually clicking captcha box
       Click Button    ${free_demo_btn_xp}
user will able to see the thank you text
       Page Should Contain    Thank you.
       Sleep    2s