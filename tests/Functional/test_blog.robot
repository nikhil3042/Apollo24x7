*** Settings ***
Resource    ../../resource/common_resources.robot
Resource    ../../resource/pages/blog_page.robot

Suite Setup    Load Environment
Test Setup    Open Application
Test Teardown    Close Application

*** Test Cases ***
TC_F_031 Blog Article
    [Documentation]  Verify that the user can open a blog article and read it.
    Close Image Popup
    Sleep    1s
    Open Blog