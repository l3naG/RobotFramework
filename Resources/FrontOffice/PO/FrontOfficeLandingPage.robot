*** Settings ***
Library    SeleniumLibrary
Resource   /Data/InputData.robot

*** Variables ***
${LANDING_NAV_ELEMENT} =    id=mainNav
${CONTACT_PAGE} =    xpath=//a[contains(.,'Contact')]

*** Keywords ***
Navigate To
    go to    ${FRONT_OFFICE_URL}

Verify Page Loaded
    wait until page contains element    ${LANDING_NAV_ELEMENT}




