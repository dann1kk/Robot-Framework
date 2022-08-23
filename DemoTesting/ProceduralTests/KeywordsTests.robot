*** Settings ***
Library  SeleniumLibrary
Documentation  Some Information about testing
Resource  ../Resources/Keywords.robot
Resource  ../Resources/Common.robot
Test Setup  Open Firefox browser
Test Teardown   End Test

*** Test Cases ***
Test Case 1 - Make a search and assertions
    [Documentation]     Perform a search and assert results
    [Tags]  Keywords
     Open page and search
     Assert search results


Test Case 2 - Add an item to cart
     [Documentation]  Check if item added to cart correctly
     [Tags]  Keywords
     Open page and search
     Click on product
     Add item to cart





