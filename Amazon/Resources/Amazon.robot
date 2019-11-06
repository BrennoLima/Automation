*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Keywords ***
Search for products
    LandingPage.Load
    LandingPage.Verify Page Loaded
    TopNav.Enter Search Term
    TopNav.Submit Search
    SearchResults.Verify Search Completed

Select product from search results
    SearchResults.Click Product Link
    ProductPage.Verify Product Loaded

Add product to cart
    ProductPage.Add Product to Cart
    Cart.Verify Product Added

Begin checkout
    Cart.Proceed to Checkout
    SignIn.Verify SignIn Loaded

