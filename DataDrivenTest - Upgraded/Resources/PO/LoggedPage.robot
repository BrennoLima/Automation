*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${logged_title} =  New Cars, Used Cars, Car Dealers, Prices & Reviews | Cars.com
${Search_btn} =  xpath=input[value='Search']

*** Keywords ***
Verify Page Loaded
    Sleep  1s
    Title Should Be  ${logged_title}

Search Car
    Click Element  ${Search_btn}
    Sleep  1s
