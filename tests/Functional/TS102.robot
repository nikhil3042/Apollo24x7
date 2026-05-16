*** Settings ***
Resource    ../../resource/pages/Resend_Otp_page.robot
Resource    ../../resource/common_resources.robot
Resource  ../../resource/pages/login_page.robot
Resource  ../../locators/login_locator.robot
Resource  ../../resource/common_resources.robot

Suite Setup   Load Environment
Test Setup     Open Application
Test Teardown  Close Application

*** Test Cases ***
TC_F_005 - OTP Verification – Resend OTP
    [Tags]  Functional
    Close Image Popup
    Login With Mobile Number
    Resend OTP
    Sleep   3s

TC_F_006 - Successful Login – Returning User
    [Tags]  Functional
    Close Image Popup
    Login With Mobile Number
    Sleep   3s




