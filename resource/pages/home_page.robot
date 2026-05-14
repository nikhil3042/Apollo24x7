*** Settings ***
Library  SeleniumLibrary
Resource  ../../locators/home_page_locators.robot

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

Circle Membership
    Click Element    ${membership_link}
