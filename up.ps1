param(
    [Parameter(Position=0, Mandatory=$true)]
    [string]$InputFolder
)

# Define the full path to the executable
$executablePath = "C:\Users\mzuniga\Dropbox\AI Art\Real-ESRGAN-master\realesrgan-ncnn-vulkan.exe"

# Define the output folder path
$outputFolder = "$InputFolder`_up"

# Display verbose output about the input and output folder paths
Write-Verbose "Input folder: $InputFolder"
Write-Verbose "Output folder: $outputFolder"

# Create the output folder if it does not already exist
if (-not (Test-Path $outputFolder)) {
    New-Item -ItemType Directory -Force -Path $outputFolder
    Write-Verbose "Output folder created: $outputFolder"
}

# Define the command to execute the .exe file with the specified parameters
$command = "`"$executablePath`" -i `"$InputFolder`" -o `"$outputFolder`" -n realesrgan-x4plus -s 4 -f png"

# Display verbose output about the command to be executed
Write-Verbose "Command to be executed: $command"

# Execute the command
Invoke-Expression $command
