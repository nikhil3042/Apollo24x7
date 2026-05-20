*** Settings ***
Library  SeleniumLibrary
Resource  ../../resource/common_resources.robot
Resource  ../../locators/home_page_locators.robot
Resource  ../../locators/find_doctor_locators.robot
Resource    ../../resource/pages/find_doctor_page.robot
Resource    ../../resource/pages/login_page.robot
Resource    ../../resource/pages/invalid_OTP_page.robot

Suite Setup  Load Environment
Test Setup  Open Application
Test Teardown  Close Application

*** Test Cases ***
TC_I_003 Book doctor slot
    [Documentation]  Test case for booking doctor slot
    [Tags]  integration
    Close Image Popup

    Login With Mobile Number
    Navigate To Find Doctors Page
    Select Doctor By Speciality
    Book Appointment
