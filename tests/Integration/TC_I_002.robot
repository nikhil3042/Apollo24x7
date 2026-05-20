*** Settings ***
Library    SeleniumLibrary
Resource    ../../resource/common_resources.robot
Resource    ../../resource/pages/login_page.robot
Resource    ../../resource/pages/redirection_page.robot

Suite Setup  Load Environment
Test Setup  Open Application
Test Teardown  Close Application

*** Test Cases ***
TC_I_002 Redirect To Home Page
    [Documentation]    Verify Redirection to Home Page and navigation to other pages
    [Tags]    Integration
    Close Image Popup
    Login With Mobile Number

    Click Buy Medicine
    Page Should Contain    Buy Medicines and Essentials
    Sleep    10s

    Click Find Doctor
    Location Should Be    ${BASE_URL}specialties
    Sleep    2s

    Click Lab Tests
    Location Should Be    ${BASE_URL}lab-tests
    Sleep    5s

    Click Circle Membership
    Location Should Be    ${BASE_URL}circle-landing
    Sleep    2s

    Click Health Records
    Location Should Be    ${BASE_URL}health-records
    Sleep    2s

