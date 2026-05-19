*** Settings ***
Library  SeleniumLibrary
Library  ../config/env_loader.py
#Library  env_loader

*** Variables ***
${BROWSER}  chrome
${ENV}  qa

*** Keywords ***
Load Environment
    Load Env    ${ENV}
    ${url}=  Get Env    baseurl
    ${phone_no}=  Get Env    ph_no

    Set Global Variable    ${BASE_URL}  ${url}
    Set Global Variable    ${USER_EMAIL}  ${phone_no}

Open Application
    [Documentation]  Opens the application
    Open Browser  ${BASE_URL}  ${BROWSER}
    Maximize Browser Window
    Sleep    30

Close Application
    [Documentation]  Closing the application
    Close All Browsers