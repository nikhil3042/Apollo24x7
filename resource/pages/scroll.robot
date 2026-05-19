*** Settings ***
Library  SeleniumLibrary
Resource  ../../locators/Ask_ai.robot

*** Keywords ***
scroll_to_Apollo_ai
    Scroll Element Into View    ${scroll}
    Sleep    3