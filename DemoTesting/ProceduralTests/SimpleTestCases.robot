*** Settings ***
Documentation  Some Information about demo testing
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
Open the website in explorer
    [Documentation]  Running website on Internet Explorer
    [Tags]  Browsers
    open browser  https://www.amazon.com/  ie
    sleep  3s
    close browser
    #Logs
    Log   Browser is opened
    log to console   Browser is opened
Open the website in firefox
    [Documentation]  Running website on Firefox
    [Tags]  Browsers
    open browser  https://www.amazon.com/  firefox
    sleep  3s
    close browser
Assertions with locators on page
    [Documentation]  Making assertions based on the search
    [Tags]  Assertions
    open browser  https://www.amazon.com/  firefox
    #
    set selenium speed  5 seconds
    set selenium implicit wait  5 seconds
    set selenium timeout  5 seconds
    #
    wait until page contains  Moldova, Republic of
    input text  id=twotabsearchtextbox    amdaris
    click button  id=nav-search-submit-button
    #Screenshots
    capture element screenshot  id=nav-search-submit-button
    capture page screenshot  C:\Users\daniel.pogorevici\PycharmProjects\DemoTesting\Results\Capture1.png
    #Mouse commands
    mouse down
    double click element
    mouse up
    mouse over

    wait until page contains    results for "amdaris
    close browser
    log  Some text
*** Keywords ***

