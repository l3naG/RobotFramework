*** Settings ***
Documentation    Test Cases for Front Page

Resource    ../../Resources/FrontOffice/FrontOfficeApp.robot
Resource    ../../Resources/Common/Common.robot

Test Setup    Begin Web Test
Test Teardown    End Web Test

*** Test Cases ***
Should be able to Access "Team" Page
    [Documentation]    Test 1
    [Tags]    test1
    FrontOfficeApp.Go to Landing Page
    FrontOfficeLandingPage.Verify Page Loaded
    FrontOfficeApp.Go to Team Page

"Team" page should match requirements
    [Documentation]    Test 2
    [Tags]    test2  Smoke
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Go to Team Page
    FrontOfficeApp.Validate "Team" Page

Should successfully navigate to "Contact" page
    [Tags]    test3    Prod
    FrontOfficeLandingPage.Navigate To
    TopNav.Select "Contact" Page
    ContactPage.Verify "Contact" Page Loaded

Should successfully fill up the form entering correct data into each field
    [Tags]    test4
    FrontOfficeLandingPage.Navigate To
    TopNav.Select "Contact" Page
    ContactPage.Verify "Contact" Page Loaded
    FrontOfficeApp.Enter text for text fields    Lena Gasparikova    lenagasparikova@me.com    0944 779516    This is a message

Should enter fields
    [Tags]    test5    Smoke
    FrontOfficeLandingPage.Navigate To
    TopNav.Select "Contact" Page
    ContactPage.Verify "Contact" Page Loaded
    FrontOfficeApp.Enter text for "Name" field    Lena Gasparikova
    FrontOfficeApp.Enter text for "Email" field    lenagasparikova@me.com
    FrontOfficeApp.Enter text for "Phone" field    0944 779 516
    FrontOfficeApp.Enter text for "Messge" textarea    This is the second message
    FrontOfficeApp.Click "Send Message" Button

Test Feature-2
    [Tags]   feature-2  Dev  Smoke
    Log    Testing feature-2
