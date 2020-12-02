*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${CONTACT_HEADER} =    xpath=//h2[contains(.,'Contact Us')]
${CONTACT_NAME} =    xpath=//input[contains(@id, 'name')]
${CONTACT_EMAIL} =    xpath=//input[contains(@id, 'email')]
${CONTACT_PHONE} =    xpath=//input[contains(@id, 'phone')]
${CONTACT_MESSAGE} =    xpath=//textarea[contains(@id, 'message')]
${SUBMIT_BUTTON} =    xpath=//button[@type='submit']

*** Keywords ***
Verify "Contact" Page Loaded
    ${Element_text} =    get text    ${CONTACT_HEADER}
    should be equal as strings    ${Element_text}    Contact us    ignore_case=true

Enter text for "Name" field
    [Arguments]    ${name_field}
    input text    ${CONTACT_NAME}    ${name_field}    clear=True


Enter text for "Email" field
    [Arguments]    ${email_field}
    input text    ${CONTACT_EMAIL}    ${email_field}    clear=True


Enter text for "Phone" field
    [Arguments]    ${phone_field}
    input text    ${CONTACT_PHONE}    ${phone_field}    clear=True


Enter text for "Message" field
    [Arguments]    ${message_field}
    input text    ${CONTACT_MESSAGE}    ${message_field}   clear=True


Click "Send Message" Button
    click element    ${SUBMIT_BUTTON}


