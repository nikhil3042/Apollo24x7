*** Settings ***
Library  SeleniumLibrary
Resource  ../../resource/common_resources.robot
Resource  ../../resource/pages/home_page.robot
Resource  ../../resource/pages/circle_membership_page.robot

Suite Setup  Load Environment
Test Setup  Open Application
Test Teardown  Close Application

*** Test Cases ***

Opening of the apollo website
    Close Image Popup
    Sleep    100s
    Circle Membership
    Wait Until Page Contains    Plans For You