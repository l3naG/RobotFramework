*** Settings ***
Documentation    Back Office test scripts

Resource    ../../Resources/BackOffice/BackOfficeApp.robot
Resource    ../../Resources/Common/Common.robot

Test Setup    Begin Web Test
Test Teardown    End Web Test


#  robot -d results Tests/BackOffice/BackOffice.robot
*** Test Cases ***
Should be able to access "Landing" Page
    [Documentation]    Test 1
    [Tags]    test1
    BackOfficeApp.Go to Landing Page
    BackOfficeApp.Verify Page Loaded