*** Settings ***
Library  SeleniumLibrary

*** Keywords ***

search results are displayed
    wait until page contains    results for

I click on product
    click element  xpath=/html/body/div[1]/div[2]/div[1]/div[1]/div/span[3]/div[2]/div[2]

I add product to cart
    click button  id=add-to-cart-button

I open the cart
   click element  id=nav-cart-count