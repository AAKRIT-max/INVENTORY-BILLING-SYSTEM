@echo off
if not exist "bin\test_runner.exe" (
    echo Test executable not found. Running build first...
    call build.bat
)
echo Running SBU 10-Test Case Verification Suite...
bin\test_runner.exe
pause
