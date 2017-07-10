*** Settings ***
Suite Setup       Go to homepage
Suite Teardown    Close All Browsers
Library           Selenium2Library

*** Variables ***
${HOMEPAGE}       http://www.google.com
${BROWSER}        chrome

*** Test Cases ***
Google and check results
    Google and check results    devops    www.netscout.com

*** Keywords ***
Google and check results
    [Arguments]    ${searchkey}    ${results}
    Input Text    name=q    ${searchkey}
    Click Button    name=btnG
    Wait Until Page Contains    ${results}

Go to homepage
    Open Browser    ${HOMEPAGE}    ${BROWSER}
