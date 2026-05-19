*** Settings ***
Documentation    TC_I_001 - Login and Profile Data Load
Library    SeleniumLibrary
Resource    ../../resource/common_resources.robot
Resource    ../../resource/pages/int_pages.robot
Resource    ../../locators/int_locators.robot

*** Test Cases ***
TC_I_001 - Login And Verify Profile Data Loads Correctly
    [Documentation]    Verifies name, saved addresses and family profiles load after login
    Load Environment
    Open Application
    Click On Login
    Enter Mobile Number
    Wait For Manual OTP Entry
    Navigate To Profile
    Close Application