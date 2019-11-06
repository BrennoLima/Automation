*** Settings ***
Resource  ../Resources/CarsApp.robot
Resource  ../Resources/Common.robot
Resource  ../Data/InputData.robot

Test Setup  Begin Web Test
Test Teardown  End Web Test

*** Variables ***

*** Test Cases ***
Invalid Login Scenarios Should Display Correct Error Message
    [Template]  CarsApp.Test Multiple Failed Login Scenarios
    ${UNREGISTERED_USER}
    ${INVALID_PASSWORD_USER}
    ${BLANK_CREDENTIALS_USER}
