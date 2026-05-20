*** Settings ***
Resource    ../../resource/common_resources.robot
Resource    ../../resource/pages/login_page.robot
Resource    ../../resource/pages/func_pages.robot

Suite Setup  Load Environment
Test Setup  Open Application
Test Teardown  Close Application

*** Test Cases ***
TC_E_003
    [Documentation]    E2E – Login and Buy Medicines via Apollo Pharmacy

    Close Image Popup
    Login With Mobile Number

    Click Buy Medicines
    Sleep    1s

    Location Should Contain    apollopharmacy
    Sleep    1s