***Settings***
Resource  ../resources/keywords/login_keywords.robot
Resource  ../resources/keywords/products_keywords.robot
Resource  ../resources/keywords/cart_keywords.robot
Resource  ../resources/keywords/checkout_keywords.robot
Resource  ../resources/keywords/verify_pricing_keywords.robot
Resource  ../resources/keywords/complete_order_keywords.robot
Resource  ../resources/keywords/logout_keywords.robot

***Test Cases***
E2E Order Successfully
    [Documentation]    This test case verifies that a user can place an order successfully.
    Open Browser To Login Page
    Login With Valid Credentials
    Select Product
    Review Cart
    Checkout
    Input Checkout Information
    Verify Product Information
    Completed Order
    Logout
    Close Browser