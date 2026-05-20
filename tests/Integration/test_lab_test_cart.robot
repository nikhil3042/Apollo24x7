*** Settings ***
Library  SeleniumLibrary
Resource  ../../resource/pages/login_page.robot
Resource  ../../resource/common_resources.robot
Resource  ../../resource/pages/lab_test_page.robot

Suite Setup  Load Environment
Test Setup  Open Application
Test Teardown  Close Application


*** Test Cases ***
Lab Test Cart
    Close Image Popup
    Login With Mobile Number
    Sleep    2s
    Browse Lab Test
    Add Test To Cart


