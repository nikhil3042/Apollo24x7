*** Settings ***
Library     SeleniumLibrary
Resource    ../../locators/Resend OTP_locators.robot

*** Keywords ***
Resend OTP
    Sleep    30s
    Click Element    ${Resend_OTP}

    Sleep    30s

    Click Element    ${Verify_btn}
