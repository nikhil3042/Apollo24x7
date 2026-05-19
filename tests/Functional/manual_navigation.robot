*** Settings ***
Resource  ../../resource/Pages/home_page.robot
Resource  ../../resource/common_resources.robot
Resource  ../../resource/pages/LOGIN_SUITE.resource

Suite Setup  Load Environment
Test Setup  Open Application
Test Teardown  Close Application

*** Test Cases ***
TC_F_033 Homepage Banner – Manual Navigation
        Set Selenium Speed  2s
        Close Image Popup
        Click Left Arrow
        Click Right Arrow
        Click Right Arrow
        Click Left Arrow
