*** Settings ***
Library    SeleniumLibrary
Resource    ../../resource/common_resources.robot
Resource    ../../locators/lab_test_loc.robot
Resource    ../../resource/pages/lab_test_page.robot

Suite Setup    Run Keywords
    ...    Load Environment
    ...    Open Application
Suite Teardown    Close Application

*** Test Cases ***
TC_F_021 Browse Lab Test
    [Documentation]    Navigate to lab test page and apply filter
    [Tags]    functional

    Sleep    60s
    Browse Lab Test

TC_F_022 Add Lab Test To Cart
    [Documentation]    Add lab test to cart and verify
    [Tags]    functional

    Add Test To Cart