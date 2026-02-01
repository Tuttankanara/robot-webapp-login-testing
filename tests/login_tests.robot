*** Settings ***
Resource    ../resources/keywords.robot
Resource    ../resources/variables.robot

Test Setup     Open Browser To Login Page
Test Teardown  Close Browser Session

*** Test Cases ***
Valid Login Should Succeed
    Input Username    ${VALID_USER}       # Enter valid username
    Input Password    ${VALID_PASS}       # Enter valid password
    Click Submit Button                   # Submit login form
    Verify Login Success                  # Verify login was successful

Invalid Password Should Fail
    Input Username    ${VALID_USER}       # Enter valid username
    Input Password    ${INVALID_PASS}     # Enter invalid password
    Click Submit Button                   # Submit login form
    Verify Invalid Password               # Verify error message

Invalid User Should Fail
    Input Username    ${INVALID_USER}     # Enter invalid username
    Input Password    ${VALID_PASS}       # Enter valid password
    Click Submit Button                   # Submit login form
    Verify Invalid User                   # Verify error message
