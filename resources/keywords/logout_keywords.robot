***Settings***
Library    SeleniumLibrary
Resource   ../locators/logout_locator.robot

**Keywords***
Logout
    Click Burger Menu
    Click Logout Button

Click Burger Menu
    [Arguments]   ${timeout}=10s    
    Wait Until Element Is Visible    ${BURGER_MENU_BUTTON}    timeout=${timeout}
    Click Element    ${BURGER_MENU_BUTTON}

Click Logout Button
    [Arguments]   ${timeout}=10s
    Wait Until Element Is Visible    ${LOGOUT_BUTTON}    timeout=${timeout}
    Click Element    ${LOGOUT_BUTTON}