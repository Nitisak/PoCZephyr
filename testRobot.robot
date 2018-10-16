*** Settings ***
Suite Setup     Set Active User

*** Variables ***
${SERVER URL}     http://sre-12.example.com/
${USER}           Actual value set dynamically at suite setup
${USER_PASSED}    test0001

*** Keywords ***
Set Active User Failed
    ${USER} =    Get Current User    ${SERVER URL}
    Set Suite Variable    ${USER}

Set Active User Passed
    Set Suite Variable    ${USER_PASSED}

*** Test Cases ***
Test011 test test11
    Set Active User Failed

Test012 test test22
    Set Active User Failed

Test013 test test22
    Set Active User Passed