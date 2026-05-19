*** Settings ***
Library  SeleniumLibrary
Resource  ../../locators/logout_locators.robot
*** Keywords ***
Logout Application
    [Documentation]  checking if user is able to logout
     Click Element    ${account}
     Wait Until Element Is Enabled    ${logout}
     Click Element    ${logout}
