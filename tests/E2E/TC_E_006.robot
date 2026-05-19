*** Settings ***
Resource    ../../resource/pages/login_page.robot
Resource    ../../resource/pages/family_member_page.robot

*** Test Cases ***
TC_E_006 Family member doctor appointment

    [Documentation]    Verify that user can add family member and book doctor appointment for the family member.

    Close Image Popup
    Shadow Click Popup
    Login With Mobile Number

