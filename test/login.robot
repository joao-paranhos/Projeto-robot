*** Settings ***
Library    SeleniumLibrary

Resource    ../resources/login_keywords.resource
Suite Setup    open browser    browser=chrome

*** Variables ***

${USERNAME}    standard_user
${PASSWORD}    secret_sauce


*** Test Cases ***
Successful Login
    I navegate to the login page    
    I input correct credentials 
    I Click on the button login
    I am able view the home page


Unsuccessful login - No credentials
    I navegate to the login page    
    I Click on the button login
    I m able to see the expected error message for no credentials

Incorrect login - No user
    I navegate to the login page    
    Input only Password
    I Click on the button login
    I m able to see the expected error message for no username

Incorrect login - No password

    I navegate to the login page    
    Input only the Username     
    I Click on the button login
    I m able to see the expected error message for no password

Incorrect login - invalid credentials
    I navegate to the login page    
    I input wrog credentials  
    I Click on the button login
    I m able to see the expected error message for wrong credentials

