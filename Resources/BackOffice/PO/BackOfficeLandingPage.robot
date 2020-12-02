*** Settings ***
Documentation    Back Office Landing Page Keywords
Library    SeleniumLibrary
Resource   /Data/InputData.robot

*** Variables ***
${LANDING_NAVIGATION_ELEMENT} =    xpath=//a[contains(.,'Dashboard')]

*** Keywords ***
Navigate To
    go to    ${BACK_OFFICE_URL}


Verify Page Loaded
    wait until page contains element    ${LANDING_NAVIGATION_ELEMENT}

Validate Page Contents
    ${Element_text} =    get text    ${LANDING_NAVIGATION_ELEMENT}
    should be equal as strings    ${LANDING_NAVIGATION_ELEMENT}    Dashboard    ignore_case=true