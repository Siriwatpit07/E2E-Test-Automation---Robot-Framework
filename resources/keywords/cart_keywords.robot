***Settings***
Library    SeleniumLibrary
Resource   ../locators/cart_locator.robot

***Keywords***
Review Cart
    [Arguments]   ${timeout}=10s
    Wait Until Element Is Visible  ${CART_ICON}  ${timeout}
    Click Element    ${CART_ICON}
    