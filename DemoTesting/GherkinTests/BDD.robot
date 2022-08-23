*** Settings ***
Library     SeleniumLibrary
Documentation  Some Information about testing
Resource  ../Resources/PageObjectModel/MainPage.robot
Resource  ../Resources/Common.robot
Resource  ../Resources/PageObjectModel/ProductsPage.robot
Resource  ../Resources/PageObjectModel/CartPage.robot
Resource  ../Resources/PageObjectModel/TodayDealsPage.robot
#Suite Setup  Insert Test Data
Test Setup  Open Firefox Browser
Test Teardown   End Test
#Suite Teardown  Cleanup Testing Data

*** Test Cases ***
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


