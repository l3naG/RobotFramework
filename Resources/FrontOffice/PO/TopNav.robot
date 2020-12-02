*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${TOP_NAV_TEAM_LINK} =    xpath=//a[@href='#team']
${TOP_NAV_CONTACT} =    xpath=//a[@href='#contact']

*** Keywords ***
Select "Team" Page
    click element    ${TOP_NAV_TEAM_LINK}
    sleep    3s

Select "Contact" Page
    click element    ${TOP_NAV_CONTACT}
    sleep    3 s