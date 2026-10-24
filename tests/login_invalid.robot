*** Settings ***
Resource    ../utils/driver.robot
Resource    ../pages/onboarding_page.robot
Resource    ../pages/home_page.robot
Resource    ../pages/login_page.robot
Resource    ../variables/test_data.robot


Test Setup    Open Eraspace App
Test Teardown    Close Application Safely
Test Template     Login Gagal Harus Menampilkan Pesan Error


*** Test Cases ***                          USERNAME                    PASSWORD             EXPECTED MESSAGE
Login Akun Belum Terverifikasi        ${EMAIL_UNVERIFIED}         ${PASSWORD_INVALID}  ${MSG_UNVERIFIED}
Login Email Atau Password Salah       ${EMAIL_WRONG_CREDENTIAL}   ${PASSWORD_INVALID}  ${MSG_WRONG_CREDENTIAL}
Login Email Belum Terdaftar           ${EMAIL_UNREGISTERED}       ${PASSWORD_INVALID}  ${MSG_UNREGISTERED}

*** Keywords ***
Login Gagal Harus Menampilkan Pesan Error
    [Arguments]    ${username}    ${password}    ${expected_message}
    click button lanjutkan
    click button lewati
    click button btn_masuk
    Capture Page Screenshot
    input email eraspace    ${username}
    input password eraspace    ${password}
    click button Login
    Capture Page Screenshot
    Verify Error Message       ${expected_message}