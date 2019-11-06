*** Settings ***
Library  SeleniumLibrary

*** Variables ***
*** Keywords ***
Verify Search Completed
    Wait Until Page Contains   results for "${SEARCH_TERM}"

Click Product Link
    Click Image  https://m.media-amazon.com/images/I/61kRc4hwinL._AC_UL320_ML3_.jpg
