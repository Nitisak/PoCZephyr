*** Settings ***
Suite Setup       Set Active User

*** Variables ***
# Default system address. Override when tested agains other instances.
${SERVER URL}     http://sre-12.example.com/
${USER}           Actual value set dynamically at suite setup

*** Keywords ***
Set Active User
    ${USER} =    Get Current User    ${SERVER URL}
    Set Suite Variable    ${USER}