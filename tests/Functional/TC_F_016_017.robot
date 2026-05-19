*** Settings ***
Documentation    TC_F_016 and TC_F_017 - Functional Tests
Library    SeleniumLibrary
Resource    ../../resource/common_resources.robot
Resource    ../../resource/pages/func_pages.robot
Resource    ../../locators/func_locators.robot




Suite Setup  Run Keywords    Load Environment  Open Application
Suite Teardown  Run Keyword    Close Application

*** Test Cases ***
TC_F_016 - Buy Medicines Redirects To Apollo Pharmacy
    [Documentation]    Clicks Buy Medicines and verifies redirect to apollopharmacy.in
    Sleep    5s
    Click Buy Medicines

#
#TC_F_017 - Product Category Links Redirect To Correct Pages
TC_F_017 - Click All Product Category Links
    [Documentation]    Clicks each category link and verifies redirect to expected pages
    Click Apollo Products
    Click Baby Care
    Click Nutritional Drinks
    Click Women Care
    Click Personal Care
    Click Ayurveda
    Click Health Devices
    Click Home Essentials
    Click Shop By Category
