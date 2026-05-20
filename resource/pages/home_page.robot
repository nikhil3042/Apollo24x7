*** Settings ***
Library  SeleniumLibrary
Resource  ../../locators/home_locators.robot

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
Click Left Arrow
    [Documentation]  this keyword clicks left arrow
    Wait Until Element Is Visible    ${left_arrow}
    Click Element    ${left_arrow}

Click Right Arrow
    [Documentation]  this keyword click right arrow
    Wait Until Element Is Visible    ${right_arrow}
    Click Element    ${right_arrow}
    
