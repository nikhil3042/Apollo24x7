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