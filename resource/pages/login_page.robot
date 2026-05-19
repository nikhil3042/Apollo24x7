*** Settings ***
Library  SeleniumLibrary
Resource  ../../locators/login_locator.robot
Resource  ../common_resources.robot

*** Keywords ***
Close Image Popup
    Sleep    5s
    [Documentation]    Closes the shadow DOM popup using JS
    Wait Until Keyword Succeeds    10s    1s    Shadow Click Popup

Shadow Click Popup
    ${is_visible}=    Execute Javascript
    ...    return document.querySelector('ct-web-popup-imageonly') !== null
    IF    ${is_visible}
        Execute Javascript
        ...    document.querySelector('ct-web-popup-imageonly').shadowRoot.querySelector('#close').click()
    END

Login With Mobile Number
    Click Element    ${login_button}
    Wait Until Page Contains Element    ${enter_number}
    Input Text    ${enter_number}    ${USER_PHONE}
    Wait Until Element Is Enabled    ${continue_button}
    Click Element    ${continue_button}
    Wait Until Element Is Enabled    ${verify_button}  timeout=30s
    Click Element    ${verify_button}
    Wait Until Page Contains Element    ${home_button}  timeout=10s