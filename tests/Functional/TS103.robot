*** Settings ***
Library  SeleniumLibrary
Resource  ../../resource/pages/login_page.robot
Resource  ../../locators/login_locator.robot
Resource  ../../resource/common_resources.robot
Resource    ../../resource/pages/logout_page.robot

Suite Setup  Load Environment
Test Setup  Open Application
Test Teardown  Close Application

*** Test Cases ***
TC_F_001 - Login
    Close Image Popup
    Login With Mobile Number

TC_F_002 - Logout
    Close Image Popup
    Login With Mobile Number
    Logout Application