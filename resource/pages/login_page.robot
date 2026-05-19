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

    Sleep    15s

    Execute Javascript    window.scrollTo(0,0)

    Wait Until Element Is Visible    ${login_button}    20s

    Execute Javascript    document.evaluate("//div[contains(@title,'Login')]", document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.click();

    Sleep    10s

    Capture Page Screenshot

    Page Should Contain Element    ${mob}

    Input Text    ${mob}    ${USER_PHONE}

    Click Button    ${go_to_otp}

    Sleep    30s