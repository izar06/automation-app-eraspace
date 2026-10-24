*** Variables ***
${URL}                       http://127.0.0.1:4723
${PLATFORM_NAME_ANDROID}     Android
${AUTOMATION_NAME}           UiAutomator2
${UDID_ANDROID}              emulator-5554
${APP_PACKAGE}               com.eraspace.app
${APP_ACTIVITY}              com.eraspace.app.presentation.SplashScreenActivity
${APP_WAIT_ACTIVITY}         *
${NO_RESET}                  ${False}
${AUTO_GRANT_PERMISSIONS}    ${True}
${NEW_COMMAND_TIMEOUT}       300
${IMPLICIT_WAIT}             10s
