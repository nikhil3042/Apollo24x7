*** Settings ***
Library    SeleniumLibrary
Resource    ../common_resources.robot
Resource  ../../locators/discount_locators.robot
Resource  ../../locators/home_page_locators.robot
*** Keywords ***
Navigate to Discount Page
    [Documentation]  navigating to discount page

    Click Element    ${Lab Tests Page}
    Sleep  20s
    Click Element    ${cart_icon}
    Click Element    ${Discount}
    Sleep  5s


