*** Settings ***
Documentation  API Demo Tests
Resource  ../Resources/API.robot

*** Test Cases ***
Simple REST API call
   [Tags]  API
   Check Github Username

Avatar Check
   [Tags]  API
   Check Github avatar

Put Request
   [Tags]  API
   Put Request

