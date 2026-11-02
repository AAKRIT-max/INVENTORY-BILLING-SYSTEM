@echo off
if not exist "bin\inventory_billing.exe" (
    echo Executable not found. Running build first...
    call build.bat
)
echo Launching Inventory & Billing System...
bin\inventory_billing.exe
