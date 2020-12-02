*** Settings ***
Documentation    End to End test scripts

Resource    ../../Resources/FrontOffice/FrontOfficeApp.robot
Resource    ../../Resources/BackOffice/BackOfficeApp.robot
Resource    ../../Resources/Common/Common.robot

Test Setup    Begin Web Test
Test Teardown    End Web Test


*** Test Cases ***
Should be able to access "Team" Page
    [Documentation]    Test 1
    [Tags]    test1
    FrontOfficeApp.Go to Landing Page
    BackOfficeApp.Go to Landing Page




