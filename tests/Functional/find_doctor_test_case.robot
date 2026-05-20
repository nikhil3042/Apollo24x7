*** Settings ***
Library  SeleniumLibrary
Resource  ../../resource/pages/find_doctor_page.robot

Suite Setup  Run Keywords
...    Load Environment
...    Open Application

Suite Teardown  Close Application

*** Test Cases ***
TC_01 Verify that user is able to navigate to find doctors page
    [Documentation]  This test case verifies that user is able to navigate to find doctors page
    Navigate To Find Doctors Page
#    Element Should Be Visible  ${doctor_by_speciality}

TC_02 Verify that user is able to book an appointment
    [Documentation]  This test case verifies that user is able to book an appointment
    Navigate To Find Doctors Page
    Select Doctor By Speciality
    Book Appointment