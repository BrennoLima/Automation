*** Settings ***
Documentation  This is some basic info about the whole suite
Resource  ../Resources/Amazon.robot
Resource  ../Resources/Common.robot
Resource  ../Resources/PO/Cart.robot
Resource  ../Resources/PO/LandingPage.robot
Resource  ../Resources/PO/ProductPage.robot
Resource  ../Resources/PO/SearchResults.robot
Resource  ../Resources/PO/TopNav.robot
Resource  ../Resources/PO/SignIn.robot

Test Setup  Common.Begin Web Test   # Before every test case
Test Teardown  Common.End Web Test  # After every test test cases
# Suite Setup - Before all test cases
# Suite Teardown - After all test cases

*** Variables ***
${BROWSER} =  firefox
${START_URL} =  http://www.amazon.com
${SEARCH_TERM} =  Ferrari 458


*** Test Cases ***
User must sign in to check out
    [documentation]  This is some info about this test case
    [Tags]  Smoke
    Amazon.Search for products
    Amazon.Select product from search results
    Amazon.Add product to cart
    Amazon.Begin checkout

