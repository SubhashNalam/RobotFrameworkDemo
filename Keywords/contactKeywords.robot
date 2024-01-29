*** Settings ***
Library    SeleniumLibrary
Resource    ../Entities/url.robot
Resource    ../Entities/locators.robot
Resource    ../Entities/testdata.robot

*** Keywords ***
user will able to launch the url in browser
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
user will able to click on button
    Click Button    ${contact_btn}
user will able to enter all his details
    Input Text    ${name_xp}    ${name}
    Input Text    ${phone_number_xp}    ${phone_number}
    Input Text    ${email_xp}    ${email}
    Select From List By Value   ${country_xp}    ${country}
    Select From List By Value    ${num_of_employees_xp}    ${num_of_employees}
    Input Text    ${job_title_xp}    ${job_title}
    Input Text    ${message_xp}    ${message}
    Sleep    20s        #manually clicking CAPTCHA
    Click Button    ${contact_sales_btn}
user will able to see the thank you message displayed
    Page Should Contain    Thank you.
    Sleep    2s