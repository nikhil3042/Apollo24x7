*** Settings ***
Library  SeleniumLibrary
Resource  ../../locators/Circle_membership_locators.robot

*** Keywords ***
TC01_Close_Popup
    Sleep    5s
    [Documentation]    Closes the shadow DOM popup using JS
    Wait Until Keyword Succeeds    10s    1s    TC02_Shadow_Popup

TC02_Shadow_Popup
    ${is_visible}=    Execute Javascript
    ...    return document.querySelector('ct-web-popup-imageonly') !== null
    IF    ${is_visible}
        Execute Javascript
        ...    document.querySelector('ct-web-popup-imageonly').shadowRoot.querySelector('#close').click()
    END

Circle Membership
    Wait Until Element Is Visible    ${membership_link}
    Click Element    ${membership_link}
