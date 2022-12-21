#All locators used to automate a login page
*** Variables ***
${ANDROID_AUTOMATION_NAME}    UIAutomator2
${ANDROID_APP_PACKAGE}              com.instagram.android
${ANDROID_PLATFORM_NAME}      Android
${ANDROID_DEVICE_NAME}   deviceName=emulator-5554
${ANDROID_LOCAL_HOST}   http://localhost:4723/wd/hub
${ANDROID_APP_ACTIVITY}   com.instagram.mainactivity.LauncherActivity

${MAIN-PAGE-LOGIN-BUTTON}   id=com.instagram.android:id/log_in_button
${MAIN-PAGE-USERNAME-FIELD}  id=com.instagram.android:id/login_username
${MAIN-PAGE-PASSWORD-FIELD}  com.instagram.android:id/password
${MAIN-PAGE-NEXT-BUTTON}  id=com.instagram.android:id/next_button
