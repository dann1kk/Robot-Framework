*** Settings ***
Library  SeleniumLibrary

*** Keywords ***

I press on Deliver to button
      click element  id=glow-ingress-block

choose country as United Kingdom
      click element  class=a-button-inner

I am shown products with delivery options to UK
      scroll element into view  id=GLUXCountryList_6
      click element  id=GLUXCountryList_6