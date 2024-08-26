# Log file path
$logFile = "C:\SandboxShared\Startup\log.txt"
Add-Content -Path $logFile -Value "`n--- Starting ELK Stack Setup Script ---`n"

# Helper function to log and display progress
function Log-Step {
    param (
        [string]$message
    )
    Add-Content -Path $logFile -Value $message
    Write-Host $message
}

# Step 1: Install Java Development Kit (JDK)
Log-Step "`n[Step 1/4] Installing Java Development Kit (JDK)...`n"
$jreInstallerPath = "C:\SandboxShared\Startup\jdk-22_windows-x64_bin.exe"
Start-Process -FilePath $jreInstallerPath -ArgumentList "/s" -Wait
Log-Step "`n[Step 1/4] JDK installation completed.`n"

# Step 2: Start Elasticsearch
Log-Step "`n[Step 2/4] Starting Elasticsearch...`n"
Start-Process -FilePath "C:\SandboxShared\Startup\elasticsearch-8.15.0-windows-x86_64\bin\elasticsearch.bat" -NoNewWindow
Log-Step "`n[Step 2/4] Elasticsearch is running.`n"

# Step 3: Start Logstash
Log-Step "`n[Step 3/4] Starting Logstash...`n"
Start-Process -FilePath "C:\SandboxShared\Startup\logstash-8.15.0\bin\logstash.bat" -NoNewWindow
Log-Step "`n[Step 3/4] Logstash is running.`n"

# Step 4: Start Kibana
Log-Step "`n[Step 4/4] Starting Kibana...`n"
Start-Process -FilePath "C:\SandboxShared\Startup\kibana-8.15.0\bin\kibana.bat" -NoNewWindow
Log-Step "`n[Step 4/4] Kibana is running.`n"

# Finalization
Log-Step "`n--- ELK Stack Setup Script Completed ---`n"

# Keep the window open for user review
Start-Sleep -Seconds 30
