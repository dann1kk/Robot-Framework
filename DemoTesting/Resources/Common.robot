*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Open Firefox browser
       open browser  https://www.amazon.com/  firefox  options=add_argument("--incognito");add_argument("--disable-popup-blocking");add_argument("--ignore-certificate-errors")
       maximize browser window
Open Internet Explorer browser
       open browser  https://www.amazon.com/  ie
       maximize browser window
Open Chrome browser
      open browser  https://www.amazon.com/  chrome
      maximize browser window
End Test
       close browser

