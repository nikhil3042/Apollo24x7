*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Enter Mobile Number And Request OTP
    Wait Until Element Is Visible    ${login_button}    10s
    Click Element    ${login_button}
    Sleep    2s
    Wait Until Element Is Visible    ${mob}    10s
    Input Text  ${mob}  ${USER_EMAIL}
    Wait Until Element Is Visible    ${go_to_otp}    10s
    Click Button  ${go_to_otp}
    Sleep    20s

Verify Otp button
    Wait Until Element Is Visible    ${verify}    10s
    Click Button  ${verify}
