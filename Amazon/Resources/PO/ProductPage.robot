*** Settings ***
Library  SeleniumLibrary

*** Variables ***
*** Keywords ***
Verify Product Loaded
    Wait Until Page Contains  Back to results

Add Product to Cart
    Click Button  submit.add-to-cart