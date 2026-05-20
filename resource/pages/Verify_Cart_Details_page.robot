*** Settings ***
Library           SeleniumLibrary
Resource          ../../locators/Verify_Cart_Details_locator.robot
Resource          ../common_resources.robot
*** Keywords ***
Verify Cart Details
    [Documentation]    Verifying cart details.
    Sleep    5s
    Click Element    ${Cart}
    Sleep    5s
    Click Element    ${Popup}
    Sleep    5s
    Select Checkbox    ${Patient}
    Sleep    5s
    Click Element    ${Slot}
    Sleep    5s
    Click Element    ${Address}
    Sleep    5s
    Click Element    ${Review_cart}
    Sleep    5s
    Wait Until Element Is Visible    ${Details}    10s
    ${name}=    Get Text    ${Details}
    Log To Console    ${name}
