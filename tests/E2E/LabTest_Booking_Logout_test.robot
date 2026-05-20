*** Settings ***
Library           SeleniumLibrary
Resource          ../../locators/login_locator.robot
Resource          ../../locators/lab_test_loc.robot
Resource          ../../resource/common_resources.robot
Resource          ../../resource/pages/lab_test_page.robot
Resource          ../../locators/logout_locators.robot
Resource          ../../resource/pages/login_page.robot
Resource          ../../resource/pages/logout_page.robot

Suite Setup    Load Environment
Test Setup      Open Application
Test Teardown   Close Application

*** Test Cases ***
TC_E_008 Login to website
    [Documentation]    This test case verifies that the user can book a lab test and logout successfully
    [Tags]   E2E  Login  Step1
    Sleep    4s
    Close Image Popup
    Shadow Click Popup
    Sleep    2s
    Login With Mobile Number
    Sleep    2s

    Browse Lab Test
    Sleep    2s

    Add Test To Cart
    Sleep    4s

    Logout Application
