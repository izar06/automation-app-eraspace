*** Settings ***
Resource    ../locators/loc_home_page.robot


Library    AppiumLibrary

*** Keywords ***
click button lewati
    Wait Until Element Is Visible    ${HOMEPAGE_BTN_LEWATI}    5s
    Click Element    ${HOMEPAGE_BTN_LEWATI}

click button btn_masuk
    Element Should Be Enabled    ${HOMEPAGE_BTN_LOGIN}
    Click Element    ${HOMEPAGE_BTN_LOGIN}

Verify Toast Login Berhasil
    Wait Until Page Contains    Selamat, kamu berhasil masuk    5s

Verify Homepage Tampil
    Wait Until Element Is Visible    ${HOME_NAV_HOME}    10s
    Element Attribute Should Match   ${HOME_NAV_HOME}    selected    true

Verify List Menu Tampil
    Wait Until Element Is Visible    ${HOME_LIST_MENU}
    Wait Until Element Is Visible    ${HOME_MENU_MOBILE}

Verify List Point Tampil
    Wait Until Element Is Visible    ${HOME_LAYER_POINT}
    Wait Until Element Is Visible    ${HOME_POINT_VALUE}
    Element Text Should Be       ${HOME_POINT_LABEL}    Cek Poin

