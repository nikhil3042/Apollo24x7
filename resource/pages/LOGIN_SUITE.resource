*** Settings ***
Library  SeleniumLibrary
*** Keywords ***
Login
    Close Image Popup
    Sleep    100s

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