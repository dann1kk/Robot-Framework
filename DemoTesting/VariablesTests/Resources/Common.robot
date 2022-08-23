*** Settings ***
Library  SeleniumLibrary



*** Keywords ***
Open My browser
       open browser  https://www.amazon.com/  firefox

End Test
       close browser