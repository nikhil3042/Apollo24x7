*** Settings ***
Library    SeleniumLibrary
Resource    ../../resource/common_resources.robot
Resource    ../../resource/pages/login_page.robot
Resource    ../../resource/pages/home_page.robot
Resource    ../../resource/pages/lab_test_page.robot

Suite Setup    Run Keywords
...    Load Environment
...    Open Application

Suite Teardown    Close Application

*** Test Cases ***
TC_E2E_001_Step_1_Login_To_Apollo
    [Documentation]    Step 1: Login to Apollo 247
    [Tags]    E2E    Login    Step1


    Close Image Popup1
    Sleep    2s

    Shadow Click Popup1


    Login With Mobile Number
    Sleep    3s




TC_E2E_001_Step_2_Browse_And_Add_Lab_Tests
    [Documentation]    Step 2: Browse lab tests and add multiple tests to cart using existing keywords
    [Tags]    E2E    LabTest    Step2

    Browse Lab Test
    Sleep    2s

    Add Test To Cart
    Sleep    2s

    # add another test using the same existing keyword






