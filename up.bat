@echo off

set "InputPath=%~1"
set "OutputPath="

if exist "%InputPath%\" (
  set "OutputPath=up_%InputPath%"
) else if exist "%InputPath%" (
  for %%F in ("%InputPath%") do (
    set "OutputPath=%%~dpnF_up%%~xF"
  )
)

if not defined OutputPath (
  echo Invalid input path: "%InputPath%"
  exit /b 1
)

echo Input path: "%InputPath%"
echo Output path: "%OutputPath%"

c:\up\realesrgan-ncnn-vulkan.exe -i "%InputPath%" -o "%OutputPath%" -n realesrgan-x4plus -s 4 -f png

echo Upscaling complete.
