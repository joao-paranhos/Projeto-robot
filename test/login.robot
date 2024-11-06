*** Settings ***
Library    SeleniumLibrary

Resource    ../resources/login_keywords.resource
Test Setup    open browser    browser=chrome

*** Variables ***
${URL}    https://www.saucedemo.com/ 
${USERNAME}    standard_user
${PASSWORD}    secret_sauce


*** Test Cases ***
Successful Login
    I navegate to the login page    ${URL}
    I input correct credentials    ${USERNAME}    ${PASSWORD}
    I Click on the button login
    I am able view the home page


Unsuccessful login - No credentials
    I navegate to the login page    ${URL}
    I Click on the button login
    I able to see the expected error message    Epic sadface: Username is required
    


Incorrect login - No user
    I navegate to the login page    ${URL}
    Input only Password    ${PASSWORD}
    I Click on the button login
    I able to see the expected error message    Epic sadface: Username is required

Incorrect login - No password

    I navegate to the login page    ${URL}
    Input only the Username     ${USERNAME}
    I Click on the button login
    I able to see the expected error message    Epic sadface: Password is required

Incorrect login - invalid credentials
    I navegate to the login page    ${URL}
    I input wrog credentials    teste    teste
    I Click on the button login
    I able to see the expected error message    Epic sadface: Username and password do not match any user in this service

