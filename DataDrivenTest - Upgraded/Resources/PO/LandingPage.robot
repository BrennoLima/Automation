*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Search_btn} =  css=input[value='Search']
${SignUp_link} =  css=a[title='login or signup']
*** Keywords ***
Load
    Go To  ${START_URL}

Verify Page Loaded
    Page Should Contain Element  ${Search_btn}

Open Login Page
    Click Link  ${SignUp_link}
    Sleep  1s