*** Settings ***
Resource    ../../resource/common_resources.robot
Resource    ../../resource/pages/login_page.robot
Resource    ../../resource/pages/func_pages.robot
Resource    ../../locators/add_to_cart_locator.robot

Suite Setup    Load Environment
Test Setup    Open Application
Test Teardown    Close Application

*** Test Cases ***
TC_E_004 - Shop By Category
    [Documentation]    This test case verifies that the user can shop by category successfully.
    [Tags]    E2E    ShopByCategory
    Close Image Popup
    Shadow Click Popup
    Login With Mobile Number
    Click Element    ${buy_medicines_nav}
    Sleep   5s
    Close Image Popup
    Shadow Click Popup
    Click Element    ${baby_care}
    Sleep  5s
    Click Element    ${add_to_cart_button}                                                                                    
    Sleep    10s
    Click Element    ${cart_icon}
    Sleep    10s
    Page Should Contain    Cetaphil Baby Daily lotion, 400 ml
    Sleep   5s




