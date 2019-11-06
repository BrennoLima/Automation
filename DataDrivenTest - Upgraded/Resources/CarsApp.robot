*** Settings ***
Resource  PO/LandingPage.robot
Resource  PO/LoginPage.robot
Resource  PO/LoggedPage.robot
Resource  PO/SearchPage.robot

*** Variables ***

*** Keywords ***
Go to Login
    LandingPage.Load
    LandingPage.Verify Page Loaded
    LandingPage.Open Login Page
    LoginPage.Verify Page Loaded
    LoginPage.Click Login

Attemp Login
    [Arguments]  ${Credentials}
    LoginPage.Enter Credentials  ${Credentials}

Check Invalid Login
    [Arguments]  ${Credentials}
    LoginPage.Check Error Message  ${Credentials}

Test Multiple Failed Login Scenarios
    [Arguments]  ${Credentials}
    Go to Login
    Attemp Login  ${Credentials}
    Check Invalid Login  ${Credentials}

Check Valid Login
    LoggedPage.Verify Page Loaded

Search
    LoggedPage.Search Car
    SearchPage.Verify Search Page



