*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Open page and search
       wait until page contains  Moldova, Republic of
       input text  id=twotabsearchtextbox    amdaris
       click button  id=nav-search-submit-button
Assert search results
       wait until page contains    results for
Click on product
       click element  xpath=/html/body/div[1]/div[2]/div[1]/div[1]/div/span[3]/div[2]/div[2]/div/div/div/div/div[2]/div[1]/h2/a/span
Click on buying options
      wait until page contains  class=a-button-text
      click button  class=a-button-text
Add item to cart
      click button  id=add-to-cart-button