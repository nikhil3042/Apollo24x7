*** Settings ***
Library  SeleniumLibrary
Library  ../config/env_loader.py
<<<<<<< Updated upstream
#Library  env_loader
=======
Resource  ../locators/common_locators.resource
>>>>>>> Stashed changes

*** Variables ***
${BROWSER}  chrome
${ENV}  qa

*** Keywords ***
Load Environment
    Load Env    ${ENV}
    ${url}=  Get Env    baseurl
    ${phone_no}=  Get Env    ph_no

    Set Global Variable    ${BASE_URL}  ${url}
    Set Global Variable    ${USER_PHONE}  ${phone_no}

Open Application
    [Documentation]  Opens the application
    Open Browser  ${BASE_URL}  ${BROWSER}
    Maximize Browser Window
    Sleep    30

Close Application
    [Documentation]  Closing the application
    Close All Browsers

Login
    Click Element    ${login_button}
    Wait Until Page Contains Element    ${enter_number}
    Input Text    ${enter_number}    ${USER_PHONE}
    Wait Until Element Is Enabled    ${continue_button}
    Click Element    ${continue_button}
    Wait Until Element Is Enabled    ${verify_button}  timeout=30s
    Click Element    ${verify_button}
    Wait Until Page Contains Element    ${home_button}  timeout=10s

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