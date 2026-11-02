@echo off
setlocal enabledelayedexpansion

echo ===================================================================
echo   Building Enterprise Inventory ^& Billing System (OOP-11)
echo ===================================================================

REM Ensure MinGW is in PATH if installed at C:\MinGW\bin
if exist "C:\MinGW\bin\g++.exe" (
    set "PATH=C:\MinGW\bin;%PATH%"
)

where g++ >nul 2>nul
if %errorlevel% neq 0 (
    echo [ERROR] g++ compiler not found in PATH or C:\MinGW\bin.
    echo Please install MinGW GCC or add it to your system PATH.
    pause
    exit /b 1
)

if not exist bin mkdir bin
if not exist data mkdir data

echo [1/2] Compiling Main Application (bin\inventory_billing.exe)...
g++ -std=c++14 -Wall -Wextra -O2 -Iinclude ^
    src\Exceptions.cpp ^
    src\Product.cpp ^
    src\StandardProduct.cpp ^
    src\PerishableProduct.cpp ^
    src\Supplier.cpp ^
    src\Invoice.cpp ^
    src\FilePersistence.cpp ^
    src\ConsoleUI.cpp ^
    src\main.cpp ^
    -o bin\inventory_billing.exe

if %errorlevel% neq 0 (
    echo [FAIL] Main Application compilation failed!
    pause
    exit /b 1
)

echo [2/2] Compiling Automated 10-Test Suite (bin\test_runner.exe)...
g++ -std=c++14 -Wall -Wextra -O2 -Iinclude ^
    src\Exceptions.cpp ^
    src\Product.cpp ^
    src\StandardProduct.cpp ^
    src\PerishableProduct.cpp ^
    src\Supplier.cpp ^
    src\Invoice.cpp ^
    src\FilePersistence.cpp ^
    tests\test_runner.cpp ^
    -o bin\test_runner.exe

if %errorlevel% neq 0 (
    echo [FAIL] Test Suite compilation failed!
    pause
    exit /b 1
)

echo.
echo ===================================================================
echo [SUCCESS] Build completed successfully!
echo   Main App  : bin\inventory_billing.exe  (Run via: run.bat)
echo   Test Suite: bin\test_runner.exe        (Run via: run_tests.bat)
echo ===================================================================
