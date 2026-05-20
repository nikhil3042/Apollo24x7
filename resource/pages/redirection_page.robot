*** Settings ***
Library    SeleniumLibrary
Resource    ../../resource/common_resources.robot
Resource    ../../locators/redirection_locators.robot

*** Keywords ***
Click Buy Medicine
    [Documentation]  Click on buy medicine now button

    Click Element    ${buy_medicines_loc}
    Sleep  2s

Click Find Doctor
    [Documentation]  Click on find doctor button

    Click Element    ${find_doctors_loc}
    Sleep  2s
    
Click Lab Tests
    [Documentation]  Click on lab tests button
    
    Click Element    ${lab_tests_loc}
    Sleep  2s
    
Click Circle Membership
    [Documentation]  Click on circle membership button
    
    Click Element    ${circle_membership_loc}
    Sleep  2s

Click Health Records
    [Documentation]  Click on health records button

    Click Element    ${health_records_loc}
    Sleep  2s