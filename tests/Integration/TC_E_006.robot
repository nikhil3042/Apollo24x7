*** Settings ***
Resource    ../../resource/common_resources.robot
Resource    ../../resource/pages/login_page.robot
Resource    ../../resource/pages/family_member_page.robot
Resource    ../../resource/pages/find_doctor_page.robot
Resource    ../../resource/pages/My_appointment_page.robot

Suite Setup     Load Environment
Test Setup      Open Application
Test Teardown   Close Application

*** Test Cases ***
Verify Appointment Booking For Family Member

    Close Image Popup
    Sleep    5s
    Login With Mobile Number    

    Open Manage Family Member Section
    Click Add New Profile
    Enter First Name    Monika
    Enter Last Name     Agarwal
    Enter Date Of Birth    10/10/2000
    Select Female Gender
    Select Relation As Sister
    Click Save Button
    Click Confirmation Button
    Click OK Button

    Navigate To Find Doctors Page
    Select Doctor By Speciality
    Book Appointment

    Go To My Appointment Page