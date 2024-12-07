*** Settings ***

Library    SeleniumLibrary

Variables    ../variables/variables.py

*** Keywords ***

I navegate to the login page
    [Arguments]    ${URL}
    Go To    ${URL}

I input correct credentials
   
    Wait Until Element Is Visible    user-name
    Wait Until Element Is Visible    password
    Input Text    user-name    ${LOGIN_DATA["correctData"]["username"]}   
    Input Password    password    ${LOGIN_DATA["correctData"]["password"]}    

I input wrog credentials
    
    Wait Until Element Is Visible    user-name
    Wait Until Element Is Visible    password
    Input Text    user-name    ${LOGIN_DATA["WrongData"]["username"]}
    Input Password    password    ${LOGIN_DATA["WrongData"]["password"]}

Input only the Username
    
    Wait Until Element Is Visible    user-name
    Input Text    user-name    ${LOGIN_DATA["correctData"]["username"]}


Input only Password

    Wait Until Element Is Visible    password
    Input Password    password    ${LOGIN_DATA["WrongData"]["password"]}


I Click on the button login
    Click Button    login-button

I am able view the home page
    ${Location}    Get Location
    Should Be Equal    ${Location}    https://www.saucedemo.com/inventory.html


I m able to see the expected error message for no credentials

    Wait Until Element Contains    login_button_container    ${ERROR_MESSAGES["noCredentials"]}

I m able to see the expected error message for no username

    Wait Until Element Contains    login_button_container    ${ERROR_MESSAGES["noUsername"]}


I m able to see the expected error message for no password

    Wait Until Element Contains    login_button_container    ${ERROR_MESSAGES["noPassword"]}

I m able to see the expected error message for wrong credentials

    Wait Until Element Contains    login_button_container    ${ERROR_MESSAGES["wrongCredentials"]}




