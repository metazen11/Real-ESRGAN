@echo off
setlocal

set folder=C:\up\toupscale

for %%f in ("%folder%\*.*") do (
    call up.bat "%%~f"
)

endlocal