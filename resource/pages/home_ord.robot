*** Settings ***
Library  SeleniumLibrary
Resource  ../../locators/home_ord.robot

*** Keywords ***
click_profile
    Wait Until Element Is Visible    ${account}
    Click Element    ${account}
    Sleep    1
