*** Settings ***
Library  SeleniumLibrary
Resource  ../../locators/home_page_locators.robot

*** Keywords ***
Circle Membership
    Wait Until Element Is Visible    ${membership_link}
    Click Element    ${membership_link}
