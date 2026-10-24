*** Settings ***
Variables         ../variables/env_loader.py
Resource          ../utils/driver.robot
Resource          ../pages/onboarding_page.robot
Resource          ../pages/home_page.robot
Resource          ../pages/login_page.robot
Suite Setup       Pastikan Kredensial Tersedia
Test Setup        Open Eraspace App
Test Teardown     Close Application Safely

*** Test Cases ***
Login Dengan Data Valid
    click button lanjutkan
    click button lewati
    click button btn_masuk
    input email eraspace       ${ERASPACE_USER}
    input password eraspace    ${ERASPACE_PASSWORD}
    click button Login
    Verify Toast Login Berhasil
    Capture Page Screenshot
    Verify Homepage Tampil
    Verify List Menu Tampil
    Verify List Point Tampil

*** Keywords ***
Pastikan Kredensial Tersedia
    Should Not Be Empty    ${ERASPACE_USER}
    Should Not Be Empty    ${ERASPACE_PASSWORD}