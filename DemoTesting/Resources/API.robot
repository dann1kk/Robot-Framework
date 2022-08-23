*** Settings ***
Library  RequestsLibrary
Library  SeleniumLibrary

*** Variables ***

${avatar}   https://avatars.githubusercontent.com/u/79021557?v=4

*** Keywords ***

Check Github Username
         #Create Session
         Create Session  github_session   https://api.github.com

         #Make a request
         ${response} =  Get Request  github_session  users/dann1kk

         #Check response status
         should be equal as strings  ${response.status_code}  200

         #Check response body
         ${json} =  Set Variable  ${response.json()}
         should be equal as strings  ${json['login']}  dann1kk
         Log  ${json}

Check Github avatar
         #Create Session
         Create Session  github_session   https://api.github.com

         #Make a request
         ${response} =  Get Request  github_session  users/dann1kk

          #Check response status
         should be equal as strings  ${response.status_code}  200

         #Check response body
         ${json} =  Set Variable  ${response.json()}
         ${GITHUB_AVATAR} =  Set Variable  ${json['avatar_url']}
         should be equal   ${avatar}  ${github_avatar}
         Log  ${json}

Put Request
         Create Session  dl_tool  https://delivery-toolkit-back.azurewebsites.net

         ${body}=  create dictionary  {"name":"TestD2222","includeNotes":false,"anonymous":true,"includeTimer":true,"isTemplate":true,"templates":[{"currentOrdinal":null,"ordinal":2,"retroTemplateType":"AGILE"}],"timerDuration":75,"id":59,"participantsIds":null,"time":null,"date":null}
         ${header}=  create dictionary  Authorization=Bearer eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJtYW5hZ2VyQGFtZGFyaXMuY29tIiwiaWF0IjoxNjYxMTczNTA1LCJleHAiOjE2NjEyNTk5MDV9.IcqdhHmDzQZ97G8aZ7_-euFu_v-hLX0d_weIevAqHlIAtzuQD6lYcN4DsPOMrzqyQR2RZrgYXHUl31W5OCzBxw
         ${response} =  put request  dl_tool   /api/v1/project/1/retro  data=${body}  headers=${header}



