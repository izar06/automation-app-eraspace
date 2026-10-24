*** Settings ***
Resource    ../locators/loc_login_page.robot

Library    AppiumLibrary

*** Keywords ***
input email eraspace
    [Arguments]    ${email}
    Wait Until Element Is Visible    ${LOGIN_INPUT_USERNAME}
    Input Text    ${LOGIN_INPUT_USERNAME}    ${email}

input password eraspace
    [Arguments]    ${password}
    Input Password    ${LOGIN_INPUT_PASSWORD}    ${password}


click button Login
    Click Element    ${LOGIN_BTN_MASUK}

Verify Error Message
    [Arguments]    ${expected_message}
    Wait Until Element Is Visible    ${LOGIN_ERROR_MESSAGE}    10s
    Element Text Should Be           ${LOGIN_ERROR_MESSAGE}    ${expected_message}