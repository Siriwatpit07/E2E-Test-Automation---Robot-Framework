***Settings***
Library    SeleniumLibrary
Resource  ../locators/products_locator.robot

***Keywords***
Select Product
    Click Product Button    @{ฺฺBTN_ADD_TO_CART}    

Click Product Button
    [Arguments]    @{products}  ${timeout}=10s

    FOR    ${product}    IN    @{products}
    
        Wait Until Element Is Visible    ${product}  ${timeout}
        Click Button    ${product}

    END