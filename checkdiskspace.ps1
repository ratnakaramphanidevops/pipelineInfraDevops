# Define the threshold for disk space (in GB)
$threshold = 10

# Function to check disk space
function Check-DiskSpace {
    # Get logical disks
    $drives = Get-WmiObject -Class Win32_LogicalDisk -Filter "DriveType=3"

    foreach ($drive in $drives) {
        # Calculate free space in GB
        $freeSpaceGB = [math]::Round($drive.FreeSpace / 1GB, 2)
        $totalSpaceGB = [math]::Round($drive.Size / 1GB, 2)

        # Display disk space info
        Write-Host "Drive $($drive.DeviceID): Total Size: $totalSpaceGB GB, Free Space: $freeSpaceGB GB"

        # Check if free space is below threshold
        if ($freeSpaceGB -lt $threshold) {
            Write-Warning "Warning: Drive $($drive.DeviceID) is running low on space. Only $freeSpaceGB GB left."
        }
    }
}

# Run the disk space check
Check-DiskSpace

# Prompt the user to press Enter to exit
Write-Host "`nPress Enter to exit."
Read-Host
