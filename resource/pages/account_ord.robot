*** Settings ***
Library  SeleniumLibrary
Resource  ../../locators/home_ord.robot

*** Keywords ***
click_order
    Click Element    ${orders}
    Wait Until Page Contains    MY ORDERS
    Sleep    1