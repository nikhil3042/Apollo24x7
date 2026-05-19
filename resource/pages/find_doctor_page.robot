*** Settings ***
Library  SeleniumLibrary
Resource    ../common_resources.robot
Resource    ../../locators/find_doctor_locators.robot

*** Keywords ***
Navigate To Find Doctors Page
    [Documentation]  Navigates to the find doctors page
    Sleep  5s
    Click Element  ${Find_Doctors}
    Wait Until Page Contains Element  ${doctor_by_speciality}  timeout=10s

Select Doctor By Speciality
    [Documentation]  Selects a doctor by speciality
    Click Element  ${doctor_by_speciality}
    Wait Until Page Contains Element  ${doctors}  timeout=10s

Book Appointment
    [Documentation]  Books an appointment with the selected doctor
    Click Element  ${book_appointment}
    Wait Until Page Contains Element  ${book_appointment}  timeout=10s