*** Settings ***
Resource    ../../resource/common_resources.robot
Resource    ../../resource/pages/lab_test_page.robot
Resource    ../../resource/pages/login_page.robot
Resource    ../../resource/pages/discount_page.robot

Suite Setup  Load Environment
Test Setup  Open Application
Test Teardown  Close Application

*** Test Cases ***
TC_E_001 View My Orders
    [Documentation]  New registeration
    [Tags]  E2E

    Close Image Popup
    Login With Mobile Number
    Browse Lab Test
    Add Test To Cart
    Navigate to Discount Page

