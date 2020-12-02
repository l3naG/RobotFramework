*** Settings ***
Resource    ./PO/BackOfficeLandingPage.robot

*** Keywords ***
Go to Landing Page
    BackOfficeLandingPage.Navigate To

Verify Page Loaded
    BackOfficeLandingPage.Navigate To
    BackOfficeLandingPage.Verify Page Loaded
    BackOfficeLandingPage.Validate Page Contents






