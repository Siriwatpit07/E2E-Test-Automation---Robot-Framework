# E2E Test Automation - Robot Framework

โปรเจกต์นี้เป็นชุดทดสอบแบบ **End-to-End (E2E)** สำหรับการสั่งซื้อสินค้า (Order Flow) โดยใช้ **Robot Framework** เพื่อทดสอบ flow การทำงานตั้งแต่ Login → เลือกสินค้า → Checkout → จนถึง Logout

## Project Overview
Test suite นี้ครอบคลุมกระบวนการหลักของระบบ E-commerce:
- Login เข้าสู่ระบบ
- เลือกสินค้า
- ตรวจสอบตะกร้า (Cart)
- ทำการ Checkout
- กรอกข้อมูลผู้ใช้
- ตรวจสอบข้อมูลสินค้าและราคา
- ยืนยันการสั่งซื้อ
- Logout จากระบบ

##  Test Case
### E2E Order Successfully
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

## 🚀 How to Run Tests
### 1. Install requirements
```bash
pip install -r requirements.txt
```

### 2. Run Test Suite
```bash
robot -d results tests/
```

Output จะถูกเก็บไว้ในโฟลเดอร์:
results/
 ├── log.html
 ├── report.html
 └── output.xml