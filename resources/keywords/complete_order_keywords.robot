***Settings***
Library    SeleniumLibrary
Resource   ../locators/complete_order_locator.robot

***Keywords***
Completed Order
    Click Button Finish
    Click Button Back To Products

Click Button Finish 
    [Arguments]   ${timeout}=10s
    Wait Until Element Is Visible    ${FINISH_ORDER_BUTTON}  ${timeout}
    Click Element    ${FINISH_ORDER_BUTTON}

Click Button Back To Products
    [Arguments]   ${timeout}=10s
    Wait Until Element Is Visible    ${BACK_TO_PRODUCTS_BUTTON}  ${timeout}
    Click Element    ${BACK_TO_PRODUCTS_BUTTON}