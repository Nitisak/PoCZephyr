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
Test011 test test11
    Set Active User

Test012 test test22
    Set Active User

Test013 test test22
    Set Active User