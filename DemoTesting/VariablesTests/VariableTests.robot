*** Settings ***
Library     SeleniumLibrary
Documentation  Some Information about testing
Resource  ../Resources/PageObjectModel/MainPage.robot
Resource  ../Resources/PageObjectModel/ProductsPage.robot
Resource  ../Resources/PageObjectModel/CartPage.robot
Resource  ../Resources/PageObjectModel/DeliverToPage.robot
Resource  ../VariablesTests/Resources/Common.robot

#Suite Setup  Insert Test Data
Test Setup  Open My Browser
#Suite Teardown  Cleanup Testing Data
Test Teardown   End Test

*** Variables ***

  ${BROWSER}  firefox


*** Test Cases ***
Test Case - Make a search and assertions - variables
  [Documentation]     Perform a search and assert results
    [Tags]  Variables
    Given I'm not logged in  Sign in
    When I make a search  Amdaris
    Then search result is displayed  results for "amdaris"


Test Case 1 - Make a search and assertions
   [Documentation]     Perform a search and assert results
    [Tags]  BDD
    Given I am not logged in
    When I perform a search
    Then search results are displayed

Test Case 2 -
    [Documentation]  Check if item added to cart correctly
     [Tags]  BDD
     Given I am not logged in
     When I perform a search
     And I click on product
     And I add product to cart
     And I open the cart
     Then I see product in my cart

Test Case 3 -
     [Documentation]  Change Delivery Country
     [Tags]  BDD
     Given I am not logged in
     When I press on Deliver to button
     And choose country as United Kingdom
     Then I am shown products with delivery options to UK


*** Keywords ***

I make a search
       [Arguments]  ${searchword}
        input text  id=twotabsearchtextbox   ${searchword}
        click button  id=nav-search-submit-button

search result is displayed
       [Arguments]  ${results}
       wait until page contains   ${results}

I'm not logged in
        [Arguments]  ${login}
       wait until page contains    ${login}