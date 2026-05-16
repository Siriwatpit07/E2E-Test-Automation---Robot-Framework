# E2E Test Automation - Robot Framework

This project is a set of End-to-End (E2E) tests for an order flow, using Robot Framework to validate the system workflow from Login → Product Selection → Checkout → Logou

## Project Overview
- This test suite covers the main E-commerce system flow:
- User Login
- Product Selection
- Cart Review
- Checkout Process
- Enter User Information
- Verify Product and Price Details
- Order Confirmation
- Logout from the system

##  Test Case
### E2E Order Successfully
E2E Order Successfully
[Documentation]    This test case verifies that a user can place an order successfully.
- Open Browser To Login Page
- Login With Valid Credentials
- Select Product
- Review Cart
- Checkout
- Input Checkout Information
- Verify Product Information
- Completed Order
- Logout
- Close Browser

## How to Run Tests
### 1. Install requirements
```bash
pip install -r requirements.txt
```

### 2. Run Test Suite
```bash
py -m robot -d results tests/