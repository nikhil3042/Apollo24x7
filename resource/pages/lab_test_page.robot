*** Settings ***
Library    SeleniumLibrary
Resource    ../../locators/lab_test_loc.robot

*** Keywords ***
Browse Lab Test
    [Documentation]    clicking lab test page
    Click Element    ${lab_test_page}
    Sleep    5s
    Execute Javascript   window.scrollBy(0, 230);
    Sleep    2s
    Click Element    ${view_all_button}
    Sleep    2s

    Wait Until Element Is Visible    ${filter}    10s
    Click Element                    ${filter}
    Sleep    10s

Add Test To Cart
    [Documentation]    adding test to cart
    Click Element    ${select_test}
    Sleep    10s

    Wait Until Element Is Visible    ${add_to_cart}    10s
    Click Element    ${add_to_cart}
    Sleep    5s

    Click Element    ${cart_icon}
    Sleep    2s