*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Search_results} =  results

*** Keywords ***
Verify Search Page
    Page Should Contain  ${Search_results}