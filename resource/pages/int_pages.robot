*** Settings ***
Documentation    Page actions for Integration Tests
Library    SeleniumLibrary
Resource    ../../locators/int_locators.robot
Resource    ../common_resources.robot

*** Keywords ***
Click On Login
    Click Element    ${login_btn}
    Sleep    2s

Enter Mobile Number
    Input Text      ${mobile_field}    ${USER_EMAIL}
    Press Keys      ${mobile_field}    RETURN
    Sleep    3s
    Log To Console    OTP sent - You have 30 seconds to enter manually

Wait For Manual OTP Entry
    Sleep    30s

Navigate To Profile
    Click Element    ${profile_link}
    Sleep    3s

