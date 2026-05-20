*** Settings ***
Library    SeleniumLibrary
Resource    ../../resource/common_resources.robot
Resource    ../../locators/discount_locators.robot
Resource    ../../locators/home_page_locators.robot
Resource    ../../resource/pages/discount_page.robot

Suite Setup    Run Keywords
...            Load Environment    AND
...            Open Application
Suite Teardown  Close Application

*** Test Cases ***
TC_F_025 Apply discount
    [Documentation]  Test case for applying discount
    [Tags]  functional
    Sleep  40s
    Navigate to Discount Page
    Page Should Contain    % off
TC_F_026 Invalid discount code
    [Documentation]  Test case for applying invalid discount code
    [Tags]  functional

    Sleep  40s
    Wait Until Element Is Visible    ${Offers}    timeout=20s
    Click Element    ${Offers}
    Press Keys    ${Search}    abc
    Press Keys    ${Search}    ENTER
    Wait Until Page Contains    Invalid    timeout=20s
    Page Should Contain    Invalid