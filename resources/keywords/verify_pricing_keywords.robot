***Settings***
Library    SeleniumLibrary
Resource   ../locators/verify_pricing_locator.robot
Resource   ../variables/testdata.robot

***Keywords***
Verify Product Information
    Verify Product1    ${PRODUCT_NAME_1}    ${PRODUCT_DESC_1}    ${PRODUCT_PRICE_1}
    Verify Product2    ${PRODUCT_NAME_2}    ${PRODUCT_DESC_2}    ${PRODUCT_PRICE_2}

Verify Product1
    [Arguments]   ${product_name}    ${product_desc}    ${product_price}  ${timeout}=10s
    Wait Until Element Is Visible    ${PRODUCT1_NAME}       ${timeout}
    Element Should Contain    ${PRODUCT1_NAME}    ${product_name}
    Wait Until Element Is Visible    ${PRODUCT1_DESC}       ${timeout}
    Element Should Contain    ${PRODUCT1_DESC}    ${product_desc}
    Wait Until Element Is Visible    ${PRODUCT1_PRICE}      ${timeout}
    Element Should Contain    ${PRODUCT1_PRICE}    ${product_price}

Verify Product2
    [Arguments]   ${product_name}    ${product_desc}    ${product_price}  ${timeout}=10s
    Wait Until Element Is Visible    ${PRODUCT2_NAME}       ${timeout}
    Element Should Contain    ${PRODUCT2_NAME}    ${product_name}
    Wait Until Element Is Visible    ${PRODUCT2_DESC}       ${timeout}
    Element Should Contain    ${PRODUCT2_DESC}    ${product_desc}
    Wait Until Element Is Visible    ${PRODUCT2_PRICE}      ${timeout}
    Element Should Contain    ${PRODUCT2_PRICE}    ${product_price}
