*** Settings ***
Library  SeleniumLibrary
Resource  ../../resource/common_resources.robot
Resource  ../../resource/pages/Circle_membership_page.robot

Suite Setup  Load Environment
Test Setup  Open Application
Test Teardown  Close Application

*** Test Cases ***

Opening of the apollo website
    TC01_Close Image Popup
    Sleep    100s
    Circle Membership

    Wait Until Page Contains    Plans For You

    
