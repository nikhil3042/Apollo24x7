*** Settings ***
Documentation    Page actions for Functional Tests
Library    SeleniumLibrary
Resource    ../../locators/func_locators.robot
Resource    ../common_resources.robot

*** Keywords ***
Click Buy Medicines
    Sleep    3s
    Click Element                    ${buy_medicines_nav}
    Sleep    3s

Click Category And Verify Redirect
    [Arguments]    ${locator}    ${expected_url}
    Wait Until Element Is Visible    ${locator}    timeout=15s
    Scroll Element Into View         ${locator}
    Click Element                    ${locator}
    Sleep    3s
    Location Should Contain          ${expected_url}



Click Apollo Products
    Click Category And Verify Redirect    ${apollo_products}    apollo-products

Click Baby Care
    Click Category And Verify Redirect    ${baby_care}    baby-care

Click Nutritional Drinks
    Click Category And Verify Redirect    ${nutritional_drinks}    nutritional-drinks

Click Women Care
    Click Category And Verify Redirect    ${women_care}    women-care

Click Personal Care
    Click Category And Verify Redirect    ${personal_care}    personal-care

Click Ayurveda
    Click Category And Verify Redirect    ${ayurveda}    ayurveda

Click Health Devices
    Click Category And Verify Redirect    ${health_devices}    health-devices

Click Home Essentials
    Click Category And Verify Redirect    ${home_essentials}    home-essentials

Click Shop By Category

    Click Category And Verify Redirect    ${shop_by_category}    shop-by-category
