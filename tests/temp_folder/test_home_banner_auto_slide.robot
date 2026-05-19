*** Settings ***
Resource    ../../resource/common_resources.robot
Resource    ../../resource/pages/home_page.robot

Suite Setup  Load Environment
Test Setup  Open Application
Test Teardown  Close Application

*** Test Cases ***
TC_F_032 Homepage Banner – Auto Slide
    [Documentation]  This test case verifies the auto sliding banner images on the home page.

    ${img1}=  Get First Banner Image
    Log To Console    First Banner Image: ${img1}

    Wait For Banner Slide

    ${img2}=  Get Second Banner Image
    Log To Console    Second Banner Image: ${img2}
    Should Not Be Equal    ${img1}    ${img2}    msg=The banner images should be different after sliding.
