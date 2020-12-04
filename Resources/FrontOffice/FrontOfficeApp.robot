*** Settings ***
Resource    ./PO/FrontOfficeLandingPage.robot
Resource    ./PO/TeamPage.robot
Resource    ./PO/TopNav.robot
Resource    ./PO/ContactPage.robot

*** Keywords ***
Go to Landing Page
    FrontOfficeLandingPage.Navigate To
    FrontOfficeLandingPage.Verify page Loaded

Go to Team Page
    TopNav.Select "Team" Page

Validate "Team" Page
    TeamPage.Validate Page Contents

Go To Contact Page
    TopNav.Select "Contact" Page

Validate "Contact" Page
    ContactPage.Verify "Contact" Page Loaded

Enter text for text fields
    [Arguments]    ${name_field}    ${email_field}    ${phone_field}    ${message_field}
    ContactPage.Enter text for "Name" field    ${name_field}
    ContactPage.Enter text for "Email" field    ${email_field}
    ContactPage.Enter text for "Phone" field    ${phone_field}
    ContactPage.Enter text for "Message" field    ${message_field}
    ContactPage.Click "Send Message" Button

Enter text for "Name" field
    [Arguments]    ${name_field}
    ContactPage.Enter text for "Name" field    ${name_field}

Enter text for "Email" field
    [Arguments]    ${email_field}
    ContactPage.Enter text for "Email" field    ${email_field}

Enter text for "Phone" field
    [Arguments]    ${phone_field}
    ContactPage.Enter text for "Phone" field    ${phone_field}

Enter text for "Messge" textarea
    [Arguments]    ${message_field}
    ContactPage.Enter text for "Message" field    ${message_field}

Click "Send Message" Button
    ContactPage.Click "Send Message" Button


Feature-1 Test
    [Tags]    feature-1
    [Arguments]    ${name_field}    ${email_field}    ${phone_field}    ${message_field}
        ContactPage.Enter text for "Name" field    ${name_field}
        ContactPage.Enter text for "Email" field    ${email_field}
        ContactPage.Enter text for "Phone" field    ${phone_field}
        ContactPage.Enter text for "Message" field    ${message_field}
        ContactPage.Click "Send Message" Button