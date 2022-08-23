*** Settings ***
Library  JSONLibrary
Library  os
Library  Collections
Documentation  Some Information about testing
Resource  ../Resources/Common.robot
Test Setup  Open Firefox Browser
Test Teardown   End Test

*** Test Cases ***

Test Case 1 - Make a search and assertions
   [Documentation]     Perform a search and assert results
    [Tags]  JSON
    Given I am not logged in
    #When I perform a search
    ${json_obj}=  load json from file   C:/Users/daniel.pogorevici/PycharmProjects/DemoTesting/Resources/Locators.json
    ${search_Field}=  get value from json  ${json_obj}   $.MainPage.search_field
    ${click_search}=  get value from json  ${json_obj}   $.MainPage.click_search
    input text  ${search_field}   amdaris
    click button  ${click_search}
    Then search results are displayed

Test Case 2 -
    [Documentation]  Check if item added to cart correctly
     [Tags]  JSON
     Given I am not logged in
     #When I perform a search
     ${json_obj} =  load json from file   C:/Users/daniel.pogorevici/PycharmProjects/DemoTesting/Resources/Locators.json
     ${search_Field} =  get value from json  ${json_obj}   $.MainPage.search_field
     ${click_search} =  get value from json  ${json_obj}   $.MainPage.click_search
     #And I click on product
     ${product} =  get value from json  ${json_obj}  $.ProductsPage.product
     click element  ${product}
     #And I add product to cart
     ${add_Cart} =  get value from json  ${json_obj}  $.ProductsPage.add-cart
     click button  ${add_cart}
     #And I open the cart
     ${open_cart} =  get value from json  ${json_obj}  $.ProductsPage.open_cart
     click element  ${open_cart}
     Then I see product in my cart

*** Keywords ***

I am not logged in
       wait until page contains  Sign in

search results are displayed
    wait until page contains    results for

I see product in my cart
        wait until page contains  Subtotal (1 item):

