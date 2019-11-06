*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Login_title} =  Cars.com | Sign Up
${Login_element} =  xpath=/html/body/div[2]/section/cars-profiles-lsp/cui-tabs/div/ul[1]/li[1]/div
${Login_field} =  xpath=/html/body/div[2]/section/cars-profiles-lsp/cui-tabs/div/ul[2]/li[1]/div/cars-login-form/div/div[3]/form/input[1]
${Password_field} =  xpath=/html/body/div[2]/section/cars-profiles-lsp/cui-tabs/div/ul[2]/li[1]/div/cars-login-form/div/div[3]/form/input[2]
${Login_btn} =  Log In

*** Keywords ***
Verify Page Loaded
    Title Should Be  ${Login_title}

Click Login
    Sleep  1s
    Click Element  ${Login_element}

Enter Credentials
    [Arguments]  ${Credentials}
    run keyword unless  '${Credentials.Email}' == '#BLANK'  Input Text  ${Login_field}  ${Credentials.Email}
    run keyword unless  '${Credentials.Password}' == '#BLANK'  Input Text  ${Password_field}  ${Credentials.Password}
    Click Button  ${Login_btn}

Check Error Message
    [Arguments]  ${Credentials}
    Sleep  1s
    Page Should Contain  ${Credentials.ExpectedErrorMessage}

Enter Email
    [Arguments]  ${Credentials}
    Input Text  ${Login_field}  ${Credentials.Email}

Enter Password
    [Arguments]  ${Credentials}
    Input Text  ${Password_field}  ${Credentials.Password}

