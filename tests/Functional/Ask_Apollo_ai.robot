*** Settings ***
Resource    ../../resource/common_resources.robot
Resource    ../../resource/pages/scroll.robot
Resource    ../../resource/pages/Apollo_ai.robot
Resource    ../../resource/pages/Apollo_ai.robot
Resource    ../../resource/pages/scroll.robot

Suite Setup  Load Environment
Test Setup  Open Application
Test Teardown  Close Application

*** Test Cases ***
TC_F_029 Ask Apollo – AI Redirect
    [Documentation]  view my orders
    [Tags]  Functional

    scroll_to_Apollo_ai
    click_Apollo_ai