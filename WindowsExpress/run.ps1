param([Parameter(Mandatory=$true)] [string]$port,
      [Parameter(Mandatory=$true)] [string]$password,
      [Parameter(Mandatory=$true)] [string]$image,
      [int]$TimeOut=30)

$SleepInterval = 1000

$randomName ="CoreFxSqlImage$(Get-Random)"
$timer = [Diagnostics.Stopwatch]::StartNew()

$dockerSqlCommand = "docker run -e SA_PASSWORD=$password -e ACCEPT_EULA=Y -p $($port):1433 -d  --name $($randomName) $($image)"
Write-Host $dockerSqlCommand
Invoke-Expression $dockerSqlCommand

Write-Host -NoNewline "Waiting for Sql Server"

# Check if Sql Server is ready
while ($true) {
    Start-Sleep -Milliseconds $SleepInterval
    $logOutput = Invoke-Expression "docker logs $($randomName)" | Out-String | Select -Last 2 | Select -First 1
    if($logOutput -eq $null) {
        continue;
    }
    if($logOutput.Contains("Started SQL Server") ) {
        break;
    }
    if($timer.Elapsed.TotalSeconds -gt $Timeout) {
        Write-Host "Wait Timeout exceeded"
        Write-Host "Last logs $($logOutput)"
        exit;
    }
    Write-Host -NoNewline "."
}

Invoke-Expression "sqlcmd -S localhost,$($port) -U sa -P $($password) -i restore.sql  -i CreateUdtTestDb.sql"
