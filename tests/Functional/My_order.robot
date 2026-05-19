*** Settings ***
Resource    ../../resource/common_resources.robot
Resource    ../../resource/pages/home_ord.robot
Resource    ../../resource/pages/account_ord.robot

Suite Setup  Load Environment
Test Setup  Open Application
Test Teardown  Close Application

*** Test Cases ***
TC_F_030 View My Orders
    [Documentation]  view my orders
    [Tags]  Functional

    click_profile
    click_order