*** Settings ***
Resource    settings.robot
Resource    ../variables/config.robot

*** Keywords ***
Open Eraspace App
    Open Application    ${URL}
    ...    platformName=${PLATFORM_NAME_ANDROID}
    ...    automationName=${AUTOMATION_NAME}
    ...    udid=${UDID_ANDROID}
    ...    appPackage=${APP_PACKAGE}
    ...    appActivity=${APP_ACTIVITY}
    ...    appWaitActivity=${APP_WAIT_ACTIVITY}
    ...    noReset=${NO_RESET}
    ...    autoGrantPermissions=${AUTO_GRANT_PERMISSIONS}
    ...    newCommandTimeout=${NEW_COMMAND_TIMEOUT}
    Set Appium Timeout    ${IMPLICIT_WAIT}

Close Application Safely
    ${status}=    Run Keyword And Return Status    Close Application
    IF    not ${status}
        Log    Sesi sudah tertutup atau tidak aktif
    END