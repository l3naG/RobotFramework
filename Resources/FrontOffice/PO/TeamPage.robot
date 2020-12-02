*** Settings ***
Documentation    Suite description
Library    SeleniumLibrary


*** Variables ***
${TEAM_PAGE_HEADER} =    xpath=//h2[@class='section-heading'][contains(.,'Our Amazing Team')]


*** Keywords ***
Verify Page Loaded
    wait until page contains element    ${TEAM_PAGE_HEADER}

Validate Page Contents
    ${Element_text} =    get text    ${TEAM_PAGE_HEADER}
    should be equal as strings    ${Element_text}    Our Amazing Team    ignore_case=true

