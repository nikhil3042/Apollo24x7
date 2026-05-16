*** Settings ***
Library     SeleniumLibrary
Resource    ../../resource/common_resources.robot
Resource    ../../locators/Health_Records_locator.robot

*** Keywords ***

Click Login Button
    [Documentation]    Header ka login button click karo
    Wait Until Element Is Visible    ${login_btn}    timeout=15s
    Click Element                    ${login_btn}
    Log    Login modal opens
    Sleep    60s
    Log    Enter mobile number and click continue, then enter OTP and click verify

Close Image Popup
    [Documentation]    Closes the shadow DOM popup using JS
    Sleep    5s
    Wait Until Keyword Succeeds    10s    1s    Shadow Click Popup

Shadow Click Popup
    ${is_visible}=    Execute Javascript
    ...    return document.querySelector('ct-web-popup-imageonly') !== null
    IF    ${is_visible}
        Execute Javascript
        ...    document.querySelector('ct-web-popup-imageonly').shadowRoot.querySelector('#close').click()
    END

Click Health Records
    Element Should Be Visible    ${health_records}
    Click Element                ${health_records}
    Sleep    3s
    Log    Health Records clickable and clicked successfully





























