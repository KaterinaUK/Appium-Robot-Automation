*** Settings ***
Library  AppiumLibrary
Resource  ../Resources/Login_Page.robot
Resource  ../Resources/Home_Page.robot
Resource  ../Resources/Search_Page.robot
Test Setup  Start Application
Test Teardown  Finish Test
Test Template   Search for some varying search terms

*** Test Cases ***
            # SEARCH TERM
Test 1        car
Test 2        cute dogs

*** Keywords ***
Search for some varying search terms
    [Arguments]    ${searchterm}
#I am logged in to the home page
    Login to Application
    Wait Until Page Contains Element  ${HOME-PAGE-HEADER}
    Capture Page Screenshot
#I try to search a random value
    Click Element  ${HOME-PAGE-SEARCH-BUTTON}
    Input Text  ${SEARCH-PAGE-FIELD}   ${searchterm}
#I Will Check The Result
    Page Should Contain Text    ${searchterm}
    Log To Console  ${searchterm}