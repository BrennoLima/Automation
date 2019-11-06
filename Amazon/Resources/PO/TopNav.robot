*** Settings ***
Library  SeleniumLibrary

*** Variables ***
*** Keywords ***

Enter Search Term
    Input Text  //*[@id="twotabsearchtextbox"]  ${SEARCH_TERM}

Submit Search
    Click Button  Go