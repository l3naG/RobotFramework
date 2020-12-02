*** Settings ***
Library    SeleniumLibrary
Resource    ../../Data/InputData.robot

*** Keywords ***
Begin Web Test
    open browser    about:blank    ${BROWSER}
    maximize browser window

End Web Test
    close all browsers