*** Settings ***
Library           SeleniumLibrary
Library           ../../config/env_loader.py
Resource          ../../locators/My_appointment_locator.robot

*** Keywords ***
Go To My Appointment Page
    Click Element    ${account}
    Sleep    4s
    Click Element    ${my_appointment}
    Sleep    4s
    Wait Until Page Contains Element    ${appointment_list}    timeout=10s


