*** Settings ***
Library  AppiumLibrary
Resource  ../Resources/Login_Page.robot
Resource  ../Resources/Home_Page.robot
Resource  ../Resources/Search_Page.robot
Test Setup  Start Application
Test Teardown  Finish Test

*** Test Cases ***
Like Random Post
    Given I Am Logged In To The Home Page
    When I Will Like A Random Post
    Then Verify Likes On The Post

Hide first post on homepage
    Given I Am Logged In To The Home Page
    When I Will Hide The First Post
    Then The Post Is Hidden