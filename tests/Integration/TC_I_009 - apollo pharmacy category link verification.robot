*** Settings ***
Documentation    TC_F_016 and TC_F_017 - Functional Tests
Library    SeleniumLibrary
Resource    ../../resource/common_resources.robot
Resource    ../../resource/pages/func_pages.robot
Resource    ../../locators/func_locators.robot
Resource    ../../resource/pages/login_page.robot




Suite Setup  Run Keywords    Load Environment  Open Application
Suite Teardown  Run Keyword    Close Application

*** Test Cases ***
TC_I_009 - apollo pharmacy category link verification
    [Documentation]    Clicks Buy Medicines and verifies redirect to apollo247.com
    Close Image Popup
    Click Buy Medicines
    Close Image Popup
    Click Apollo Products
    Click Baby Care
    Click Nutritional Drinks
    Click Women Care
    Click Personal Care
    Click Ayurveda
    Click Health Devices
    Click Home Essentials
    Click Shop By Category
