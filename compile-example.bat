@echo off
echo ========================================
echo TestLang++ Compiler - Next Step
echo ========================================
echo.

echo Running compiler on examples\example.test...
echo.

java -cp "build;lib\java-cup-11b-runtime.jar" compiler.TestLangCompiler examples\example.test output\GeneratedTests.java

if errorlevel 1 (
    echo.
    echo [FAILED] Compilation failed!
    pause
    exit /b 1
)

echo.
echo ========================================
echo SUCCESS!
echo ========================================
echo.
echo Generated file: output\GeneratedTests.java
echo.
echo To view the generated code:
echo   type output\GeneratedTests.java
echo.
echo To run the tests (after starting backend):
echo   .\scripts\run-tests.ps1 output\GeneratedTests.java
echo.
pause

