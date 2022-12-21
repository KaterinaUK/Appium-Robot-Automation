*** Settings ***
Library  AppiumLibrary
Resource  ../Resources/Search_Page_Locators.robot

*** Keywords ***

I will check the result
    Capture Page Screenshot
    Log To Console  ${SEARCH-PAGE-RESULTS}