*** Settings ***
Library  SeleniumLibrary
Library  JSONLibrary

*** Keywords ***

I am not logged in
       wait until page contains  Sign in

I perform a search
       input text  id=twotabsearchtextbox    amdaris
       click button  id=nav-search-submit-button


I press all categories button
       click element  xpath=//*[@id="nav-hamburger-menu"]

Click on cart
       click button  id=nav-cart-count

Click returns and orders
       click button  id=nav-orders
