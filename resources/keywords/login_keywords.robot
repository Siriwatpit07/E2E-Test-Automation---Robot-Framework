***Settings***
Library    SeleniumLibrary
Resource  ../variables/testdata.robot
Resource  ../locators/login_locator.robot

***Keywords***
Open Browser To Login Page
    Open Browser    ${URL}    ${BROWSER}    options=add_argument("--incognito")
    Maximize Browser Window

Input Username
    [Arguments]    ${username}  ${timeout}=10s 
    Wait Until Element Is Visible  ${LOCATOR_USERNAME}  ${timeout}
    Input Text  ${LOCATOR_USERNAME}  ${username}

Input Password
    [Arguments]    ${password}  ${timeout}=10s  
    Wait Until Element Is Visible  ${LOCATOR_PASSWORD}  ${timeout}
    Input Text  ${LOCATOR_PASSWORD}  ${password}

Click Login Button
    [Arguments]    ${timeout}=10s
    Wait Until Element Is Visible  ${LOCATOR_LOGIN_BUTTON}  ${timeout}
    Click Button    ${LOCATOR_LOGIN_BUTTON}
    
Login With Valid Credentials
    Input Username      ${VALID_USERNAME}
    Input Password      ${VALID_PASSWORD}
    Click Login Button