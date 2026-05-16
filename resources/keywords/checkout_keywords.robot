***Settings***
Library    SeleniumLibrary
Resource   ../locators/checkout_locator.robot

***Keywords***
Checkout
    Click Element    ${CHECKOUT_BUTTON}

Input First Name
    [Arguments]    ${first_name}  ${timeout}=10s 
    Wait Until Element Is Visible  ${LOCATOR_FIRST_NAME_FIELD}  ${timeout}
    Input Text  ${LOCATOR_FIRST_NAME_FIELD}  ${first_name}

Input Last Name
    [Arguments]    ${last_name}  ${timeout}=10s 
    Wait Until Element Is Visible  ${LOCATOR_LAST_NAME_FIELD}  ${timeout}
    Input Text  ${LOCATOR_LAST_NAME_FIELD}  ${last_name}

Input Postal Code
    [Arguments]    ${postal_code}  ${timeout}=10s 
    Wait Until Element Is Visible  ${LOCATOR_POSTAL_CODE_FIELD}  ${timeout}
    Input Text  ${LOCATOR_POSTAL_CODE_FIELD}  ${postal_code}  

Click Continue Button
    [Arguments]    ${timeout}=10s
    Wait Until Element Is Visible  ${LOCATOR_CONTINUE_BUTTON}  ${timeout}
    Click Button    ${LOCATOR_CONTINUE_BUTTON}

Input Checkout Information
    Input First Name    ${FIRST_NAME}
    Input Last Name     ${LAST_NAME}
    Input Postal Code   ${ZIP_CODE}
    Click Continue Button
