*** Settings ***
Library    SeleniumLibrary
Resource   variables.robot

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${BASE_URL}    ${BROWSER}   # Open browser at login page
    Maximize Browser Window                     # Maximize window for better visibility

Input Username
   [Arguments]    ${username} 
   Wait Until Element Is Visible    xpath=//input[@name='username']    10s  # Wait for username field
   Input Text    xpath=//input[@name='username']    ${username}               # Enter username

Input Password
   [Arguments]    ${password} 
   Wait Until Element Is Visible    xpath=//input[@name='password']    10s  # Wait for password field
   Input Text    xpath=//input[@name='password']    ${password}               # Enter password

Click Submit Button
    Click Button        id=submit  # Click the login button

Verify Login Success
    # Check that login was successful by looking for confirmation text
    Wait Until Page Contains    Logged In Successfully    timeout=30s
    Page Should Contain         Logged In Successfully

Verify Invalid Password
    # Check error message when password is wrong
    Wait Until Page Contains    Your password is invalid!    timeout=10s
    Page Should Contain         Your password is invalid!

Verify Invalid User
    # Check error message when username is wrong
    Wait Until Page Contains    Your username is invalid!    timeout=10s
    Page Should Contain         Your username is invalid!

Close Browser Session
    Close Browser   # Close browser after test
         




        