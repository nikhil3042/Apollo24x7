*** Settings ***
Library  SeleniumLibrary
Resource    ../../locators/home_page_locators.robot

*** Keywords ***

Get First Banner Image
    [Documentation]  Gets the first banner image element
    ${img}=   Get Element Attribute    ${banner_1}    src
    RETURN  ${img}

Get Second Banner Image
    [Documentation]  Gets the second banner image element
    ${img}=   Get Element Attribute    ${banner_2}    src
    RETURN  ${img}

Wait For Banner Slide
    Sleep    5s
