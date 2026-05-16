*** Settings ***
Library    SeleniumLibrary
Resource    ../../locators/lab_test_loc.robot

*** Keywords ***
Browse Lab Test
    [Documentation]    clicking lab test page
    Click Element    ${lab_test_page}
    Sleep    5s
    
    Click Element    ${view_all_button}
    Sleep    2s

    Click Element    ${filter}
    Sleep    10s

Add Test To Cart
    [Documentation]    adding test to cart
    Click Element    ${select_test}
    Sleep    2s

    Click Element    ${add_to_cart}
    Sleep    2s

    Click Element    ${cart_icon}
    Sleep    2s



