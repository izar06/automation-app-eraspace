*** Settings ***
Resource    ../locators/loc_onboarding_page.robot
Library    AppiumLibrary

*** Keywords ***
click button lanjutkan
    Wait Until Element Is Visible    ${ONBOARDING_BTN_LANJUTKAN}    5s
    Click Element    ${ONBOARDING_BTN_LANJUTKAN}
