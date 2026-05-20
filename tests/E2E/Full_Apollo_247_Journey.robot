*** Settings ***
Library     SeleniumLibrary
Resource    ../../resource/pages/login_page.robot
Resource    ../../resource/pages/My_appointment_page.robot
Resource    ../../resource/pages/lab_test_page.robot
Resource    ../../resource/pages/find_doctor_page.robot
Resource    ../../resource/pages/account_ord.robot
Resource    ../../resource/pages/func_pages.robot
Resource    ../../resource/pages/Circle_membership_page.robot
Suite Setup     Load Environment
Test Setup      Open Application
Test Teardown   Close Application
*** Test Cases ***
TC_E2E_001 Apollo 247 Journey
    [Documentation]    This test case covers the end-to-end journey of a user from appointment and lab test booking.
    [Tags]   E2E
    Sleep    2s
    Close Image Popup
    Sleep    2s
    Shadow Click Popup
    Sleep   2s
    Login With Mobile Number
    Sleep   5s
    Navigate To Find Doctors Page
    Sleep   4s
    Select Doctor By Speciality
    Sleep   4s
    Book Appointment
    Sleep    4s
    Go To My Appointment Page
    Sleep    4s
    Go Back To Home
    Sleep    3s
    Browse Lab Test
    Sleep    2s
    Add Test To Cart
    Sleep    4s
    click_order
    Sleep    4s
    Circle Membership
    Sleep    4s
    Click Buy Medicines
    Sleep    4s
    Close Image Popup
    Sleep    2s
    Shadow Click Popup
    Sleep    2s
    Click Apollo Products
    Sleep    4s