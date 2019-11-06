*** Settings ***

*** Variables ***
${BROWSER} =  chrome
${START_URL} =  https://www.cars.com/

# Input data dictionaries
&{UNREGISTERED_USER} =  Email=unregistered@gmail.com  Password=unregistered  ExpectedErrorMessage=Your username and/or password is incorrect. Please try again.
&{INVALID_PASSWORD_USER} =  Email=brennokart1@hotmail.com  Password=Wrong  ExpectedErrorMessage=Your username and/or password is incorrect. Please try again.
&{BLANK_CREDENTIALS_USER} =  Email=#BLANK  Password=#BLANK  ExpectedErrorMessage=Please enter your email address and password.
&{VALID_USER} =  Email=brennokart1@hotmail.com  Password=TestAutomation123!

