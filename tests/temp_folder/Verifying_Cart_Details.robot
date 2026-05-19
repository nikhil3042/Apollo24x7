*** Settings ***
Library           SeleniumLibrary
Resource          ../../locators/Verify_Cart_Details_locator.robot
Resource          ../../resource/common_resources.robot
Resource          ../../resource/pages/Verify_Cart_Details_page.robot
Suite Setup     Load Environment
Test Setup      Open Application
Test Teardown   Close Application
*** Test Cases ***
TC_F_023 Lab Test Verify Details
    [Documentation]    Verifying cart details.
    [Tags]   Functional
    Sleep    40s
    Verify Cart Details