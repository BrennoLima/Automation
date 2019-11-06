*** Settings ***
Resource  ../Resources/CarsApp.robot
Resource  ../Resources/Common.robot
Resource  ../Data/InputData.robot

Test Setup  Begin Web Test
Test Teardown  End Web Test

*** Variables ***

*** Test Cases ***
Valid users should be able to login
    [Tags]  LoginTest
    CarsApp.Go to Login
    CarsApp.Attemp Login  ${VALID_USER}
    CarsApp.Check Valid Login

User should be able to search for a car
    [Tags]  SearchTest
    Valid user logged
    CarsApp.Search

*** Keywords ***
Valid user logged
    CarsApp.Go to Login
    CarsApp.Attemp Login  ${VALID_USER}
    CarsApp.Check Valid Login