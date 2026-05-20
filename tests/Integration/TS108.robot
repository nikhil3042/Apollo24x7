*** Settings ***
Library  SeleniumLibrary
Resource  ../../resource/pages/login_page.robot
Resource  ../../locators/login_locator.robot
Resource  ../../resource/common_resources.robot
Resource    ../../resource/pages/logout_page.robot
Resource    ../../locators/circle_membership_locators.robot

Suite Setup  Load Environment
Test Setup  Open Application
Test Teardown  Close Application

*** Test Cases ***
TC-I-108 - Circle Membership
    [Documentation]  Verify that user is able to view circle membership page
    Close Image Popup
    Login With Mobile Number
    Click Element    ${circle_membership}
    Wait Until Element Is Visible    ${circle_membership_assert}
    Page Should Contain Element    ${circle_membership_assert}
    Logout Application