*** Settings ***
Library  SeleniumLibrary

*** Keywords ***

I press Today's Deals category
        wait until element is visible  xpath=/html/body/div[1]/header/div/div[4]/div[2]/div[2]/div/a[1]
        click element   xpath=/html/body/div[1]/header/div/div[4]/div[2]/div[2]/div/a[1]

