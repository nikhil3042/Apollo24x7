*** Settings ***
Resource    ../../locators/Health_Records_locator.robot
Resource    ../../resource/common_resources.robot
Resource    ../../resource/pages/Health_Records_page.robot

Suite Setup     Load Environment
Test Setup      Open Application
Test Teardown   Close Application

*** Test Cases ***

TC_F_028 Verify Health Records Visible And Clickable
    [Documentation]    Login then check if the health records section is visible and clickable
    [Tags]    functional
    Close Image Popup
    Click Login Button
    Click Health Records
