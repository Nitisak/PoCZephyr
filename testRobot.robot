*** Settings ***
Library  Selenium2Library


*** Variables ***
${SERVER URL}     http://www.google.co.th/
${USER}           Actual value set dynamically at suite setup
${USER_PASSED}    test0001

*** Keywords ***
Set Active User Failed
    ${USER} =    Get Current User    ${SERVER URL}
    Set Suite Variable    ${USER}

Set Active User Passed
    Set Suite Variable    ${USER_PASSED}

*** Test Cases ***
ZEP11 Validate that when automation test failed the Zehpyr test should show Fail status.
    Set Active User Failed

ZEP12 Validate that when automation test failed the Zehpyr test should show Fail status.
    Set Active User Failed

ZEP13 Validate that when automation test Passed the Zehpyr test should show Pass status.
    Set Active User Failed

ZEP04 Validate that when automation test Passed the Zehpyr test should show Pass status.
    Set Active User Passed

ZEP05 Validate that when automation test Passed the Zehpyr test should show Pass status.
    Set Active User Failed

ZEP06 Validate that when automation test Passed the Zehpyr test should show Pass status.
    Set Active User Passed

ZEP07 Validate that when automation test Passed the Zehpyr test should show Pass status.
    Set Active User Passed