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

    ${test_name_on_search_page}  Get Text    ${lab_test_name}

    Click Element    ${cart_icon}
    Sleep    2s

    Wait Until Element Is Visible    ${test_name_in_cart}
    ${test_name_on_cart_page}  Get Text    ${test_name_in_cart}
    Should Be Equal    ${test_name_on_search_page}    ${test_name_on_cart_page}




