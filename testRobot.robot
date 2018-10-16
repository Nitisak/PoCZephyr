*** Settings ***
Suite Setup     Set Active User

*** Variables ***
${SERVER URL}     http://sre-12.example.com/
${USER}           Actual value set dynamically at suite setup

*** Keywords ***
Set Active User
    ${USER} =    Get Current User    ${SERVER URL}
    Set Suite Variable    ${USER}

*** Test Cases ***
Test001 test test
    Set Active User