*** Settings ***
Library    SeleniumLibrary
Resource    ../../resource/common_resources.robot
Resource    ../../locators/lab_test_loc.robot
Resource    ../../resource/pages/lab_test_page.robot
Resource    ../../resource/pages/login_page.robot


Suite Setup  Load Environment
Test Setup  Open Application
Test Teardown  Close Application

*** Test Cases ***
TC_I_007 - Lab Test Booking
    [Tags]    Integration

    Close Image Popup

    Login With Mobile Number
    Browse Lab Test
    Add Test To Cart