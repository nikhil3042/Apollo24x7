*** Settings ***
Library  SeleniumLibrary
Resource  ../../locators/Ask_ai.robot

*** Keywords ***
click_Apollo_ai

    Click Element    ${click}
    wait Until Page Contains    Discover Ask Apollo
    Sleep    3
