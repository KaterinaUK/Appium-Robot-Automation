*** Settings ***
Library  AppiumLibrary
Resource  ../Resources/Login_Page_Locators.robot

*** Keywords ***
Start Application
    Open Application  http://localhost:4723/wd/hub    platformName=Android   deviceName=emulator-5554   	appPackage=com.instagram.android   appActivity=com.instagram.mainactivity.LauncherActivity   automationName=UIAutomator2

Login to Application
    AppiumLibrary.Wait Until Page Contains Element   ${MAIN-PAGE-LOGIN-BUTTON}
    Tap  ${MAIN-PAGE-LOGIN-BUTTON}
    AppiumLibrary.Input Text  ${MAIN-PAGE-USERNAME-FIELD}  yourusername
    AppiumLibrary.Input Text  ${MAIN-PAGE-PASSWORD-FIELD}  yourpassword
    Tap   ${MAIN-PAGE-NEXT-BUTTON}

Finish Test
    Close All Applications