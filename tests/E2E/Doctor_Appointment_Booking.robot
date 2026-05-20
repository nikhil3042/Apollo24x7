*** Settings ***
Resource    ../../resource/common_resources.robot
Resource    ../../resource/pages/login_page.robot
Resource    ../../resource/pages/find_doctor_page.robot

Suite Setup  Load Environment
Test Setup  Open Application
Test Teardown  Close Application

*** Test Cases ***
TC_E_002 Login to Doctor Appointment Booking
    Close Image Popup
    Login With Mobile Number
    Navigate To Find Doctors Page
    Select Doctor By Speciality
    Book Appointment
    Sleep  5s