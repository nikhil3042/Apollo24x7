*** Settings ***
Library    SeleniumLibrary
Resource    ../../resource/common_resources.robot
Resource    ../../locators/blog_loc.robot

*** Keywords ***
Open Blog
    [Documentation]  Opens the blog page
    
    Scroll Element Into View    ${BLOG_ELE}
    Sleep    2s
    
    Wait Until Element Is Visible    ${BLOG_ELE}    10s
    Click Element  ${BLOG_ELE}
    Sleep    5s

    Location Should Contain    /blog/

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