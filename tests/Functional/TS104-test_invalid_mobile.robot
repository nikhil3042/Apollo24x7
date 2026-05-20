*** Settings ***
Library  SeleniumLibrary
Resource  ../../resource/pages/login_page.robot
Resource  ../../locators/login_locator.robot
Resource  ../../resource/common_resources.robot
Resource    ../../resource/pages/invalid_OTP_page.robot

Suite Setup  Load Environment
Test Setup  Open Application
Test Teardown  Close Application

*** Test Cases ***
TC_F_009 - Invalid Mobile Number
    Close Image Popup
    Wait Until Element Is Visible    ${login_button}    10s
    Click Element    ${login_button}
    Sleep    2s
    Wait Until Element Is Visible    ${mob}    10s
    Input Text  ${mob}  123456780
    Page Should Contain  This seems like a wrong number

TC_F_010 - Multiple Invalid OTP Attempts
    Close Image Popup
    Enter Mobile Number And Request OTP
    Verify Otp button
    Sleep    5s
    Page should contain   Incorrect OTP
    Sleep    10s
    Verify Otp Button
    Sleep    5s
    Page should contain  Incorrect OTP
    Sleep    10s
    Verify Otp Button
    Sleep    5s
    Page should contain  You entered an incorrect OTP 3 times. Please try again after some time
    Sleep    10s




