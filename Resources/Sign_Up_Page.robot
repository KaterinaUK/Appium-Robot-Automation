*** Settings ***
Library  AppiumLibrary
Resource  ../Resources/Sign_Up_Page_Locators.robot
*** Keywords ***
SignUp to Instagram
    Open Application    http://localhost:4723/wd/hub    platformName=Android   deviceName=emulator-5554   	appPackage=com.instagram.android   appActivity=com.instagram.mainactivity.LauncherActivity   automationName=UIAutomator2
    Wait Until Page Contains Element   ${MAIN-PAGE-CREATE-NEW-ACCOUNT-BUTTON}
    Log  ${MAIN-PAGE-TITLE}
    Click Element  ${MAIN-PAGE-CREATE-NEW-ACCOUNT-BUTTON}
    Capture Page Screenshot
    Wait Until Page Contains Element  ${SIGNUP-PAGE-EMAIL-TAB}
    Click Element  ${SIGNUP-PAGE-EMAIL-TAB}
    Wait Until Page Contains Element  ${SIGNUP-PAGE-EMAIL-FIELD}
    Input Text  ${SIGNUP-PAGE-EMAIL-FIELD}  blesstheday@gmail.com
    Click Element  ${SIGNUP-PAGE-NEXT-BUTTON}