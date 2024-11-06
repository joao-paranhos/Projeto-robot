*** Settings ***

Library    SeleniumLibrary

*** Keywords ***

I navegate to the login page
    [Arguments]    ${URL}
    Go To    ${URL}

I input correct credentials
    [Arguments]    ${USERNAME}    ${PASSWORD}    
    Wait Until Element Is Visible    user-name
    Wait Until Element Is Visible    password
    Input Text    user-name    ${Username}   
    Input Password    password    ${PASSWORD}    

I input wrog credentials
    [Arguments]    ${WROG_USERNAME}    ${WROG_PASSWORD}
    
    Wait Until Element Is Visible    user-name
    Wait Until Element Is Visible    password
    Input Text    user-name    ${WROG_USERNAME}
    Input Password    password    ${WROG_PASSWORD}

Input only the Username
    [Arguments]    ${USERNAME}
     Wait Until Element Is Visible    user-name
    Input Text    user-name    ${USERNAME}


Input only Password
    [Arguments]     ${PASSWORD}
    Wait Until Element Is Visible    password
    Input Password    password    ${PASSWORD}


I Click on the button login
    Click Button    login-button

I am able view the home page
    ${Location}    Get Location
    Should Be Equal    ${Location}    https://www.saucedemo.com/inventory.html


I able to see the expected error message
    [Arguments]    ${Error_Message}
    Wait Until Element Contains    login_button_container    ${Error_Message}



