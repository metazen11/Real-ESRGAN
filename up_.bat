echo off

set "InputFolder=%~1"
set "OutputFolder=up_%InputFolder%"

echo Input folder: "%InputFolder%"
echo Output folder: "%OutputFolder%"

rem if not exist "%OutputFolder%" (
rem    mkdir "%OutputFolder%"
rem    echo Created output folder: "%OutputFolder%"
rem )

c:\up\realesrgan-ncnn-vulkan.exe -i "%InputFolder%" -o "%OutputFolder%" -n realesrgan-x4plus -s 4 -f png
remc:\up\realesrgan-ncnn-vulkan.exe -i "%InputFolder%" -o "Output.png" -n realesrgan-x4plus -s 4 -f png

echo Upscaling complete.
