# Define the process name and desired affinity mask
$processName = "example"
$processPath = "example"
$initializationOptions = "-InitOptionExample" # Example initialization options
$affinityMask = 0x554 # Example affinity mask (0x1F corresponds to CPU cores 0, 1, 2, 3, and 4)

# Start the process and get its ID
$process = Start-Process -FilePath $processPath -ArgumentList $initializationOptions -PassThru

# Wait for 5 seconds (adjust the duration as needed)
Start-Sleep -Seconds 5

# Get the process ID of the specified process
$process = Get-Process -Name $processName -ErrorAction SilentlyContinue

# Check if the process exists
if ($process -ne $null) {
    # Set the affinity mask for the process
    $process.ProcessorAffinity = $affinityMask

    Write-Output "Affinity for process $processName set to $affinityMask."
} else {
    Write-Output "Process $processName not found."
}