*** Settings ***
Library           SeleniumLibrary
Resource          ../../resource/pages/My_appointment_page.robot
Resource          ../../resource/common_resources.robot

Suite Setup    Load Environment
Test Setup      Open Application
Test Teardown   Close Application

*** Test Cases ***
TC_F_020 Verify My Appointment Page
    [Documentation]    This test case verifies that the user can navigate to the My Appointment page
    [Tags]   Functional
    Sleep    40s
    Go To My Appointment Page
    Page Should Contain Element    ${appointment_list}