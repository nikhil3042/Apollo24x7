*** Settings ***
Library    SeleniumLibrary
Resource    ../../resource/common_resources.robot
Resource    ../../locators/discount_locators.robot
Resource    ../../locators/home_page_locators.robot
Resource    ../../resource/pages/discount_page.robot

Suite Setup    Load Environment
Test Setup     Open Application
Test Teardown  Close Application

*** Test Cases ***
TC_F_025 Apply discount
    [Documentation]  Test case for applying discount
    [Tags]  functional
    Sleep  40s
    Navigate to Discount Page
    Page Should Contain    % off
