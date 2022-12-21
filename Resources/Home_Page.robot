*** Settings ***
Library  AppiumLibrary
Resource  ../Resources/Home_Page_Locators.robot
Resource  ../Resources/Login_Page.robot

*** Keywords ***

#this keyword will verify that user on the home page
I am logged in to the home page
    Login to Application
    Wait Until Page Contains Element  ${HOME-PAGE-HEADER}
    Capture Page Screenshot

#this keyword will like a random post
I will like a random post
    FOR  ${counter}     IN RANGE    2
    Log To Console  ${counter}
    ${is_element_visible}=  Run Keyword And Return Status    Element Should Be Visible   id=com.instagram.android:id/row_feed_textview_likes
    Run Keyword If    ${is_element_visible}    TapHeartButton
                ...  ELSE     SwipeScreenDownIfElementNotFound
    END

TapHeartButton
    Tap  ${HOME-PAGE-LIKE-BUTTON}

SwipeScreenDownIfElementNotFound
    Swipe By Percent  0     50     0    10    #Normal swipe fails to scale for different screen resolutions, this can be avoided using percent.

#check if like is clicked or not
Verify If I Like A Post
    Run Keyword If    '${HOME-PAGE-LIKES}'=='ACTIVE'    Log To Console    I liked it
    ...    ELSE   Log To Console    I did not like it

#this keyword will hide a random post
I Will Hide The First Post
    Wait Until Element Is Visible  ${HOME-PAGE-FEED-MORE-BUTTON}
    Click Element  ${HOME-PAGE-FEED-MORE-BUTTON}
    Wait Until Page Contains Element  ${HOME-PAGE-HIDE-BUTTON}
    Click Element  ${HOME-PAGE-HIDE-BUTTON}
    Capture Page Screenshot

The Post Is Hidden
    Wait Until Page Contains Element    ${HOME-PAGE-HIDDEN-MESSAGE}
    Element Should Contain Text  ${HOME-PAGE-HIDDEN-MESSAGE}  	This post has been hidden.

#this keyword will verify if post was liked
Verify Likes on the post
    Pass Execution If  "${HOME-PAGE-LIKES}" == "checked"  true
    Get Length   ${HOME-PAGE-LIKES}

