*** Settings ***
Library  SeleniumLibrary

*** Keywords ***

I see product in my cart
        wait until page contains  Subtotal (1 item):