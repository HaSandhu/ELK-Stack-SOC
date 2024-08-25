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
Log-Step "`n[Step 1/5] Installing Java Development Kit (JDK)...`n"
$jreInstallerPath = "C:\SandboxShared\Startup\ELK-Installers\jdk-22_windows-x64_bin.exe"
Start-Process -FilePath $jreInstallerPath -ArgumentList "/s" -Wait
Log-Step "`n[Step 1/5] JDK installation completed.`n"

# Step 2: Extract and Install Elasticsearch
Log-Step "`n[Step 2/5] Installing Elasticsearch...`n"
$elasticsearchZipPath = "C:\SandboxShared\Startup\ELK-Installers\elasticsearch-8.15.0-windows-x86_64.zip"
Expand-Archive -Path $elasticsearchZipPath -DestinationPath "C:\SandboxShared\elasticsearch" -Force
Start-Process -FilePath "C:\SandboxShared\elasticsearch\elasticsearch-8.15.0\bin\elasticsearch.bat" -NoNewWindow
Log-Step "`n[Step 2/5] Elasticsearch installation completed.`n"

# Step 3: Extract and Install Logstash
Log-Step "`n[Step 3/5] Installing Logstash...`n"
$logstashZipPath = "C:\SandboxShared\Startup\ELK-Installers\logstash-8.15.0-windows-x86_64.zip"
Expand-Archive -Path $logstashZipPath -DestinationPath "C:\SandboxShared\logstash" -Force
Start-Process -FilePath "C:\SandboxShared\logstash\logstash-8.15.0\bin\logstash.bat" -NoNewWindow
Log-Step "`n[Step 3/5] Logstash installation completed.`n"

# Step 4: Extract and Install Kibana
Log-Step "`n[Step 4/5] Installing Kibana...`n"
$kibanaZipPath = "C:\SandboxShared\Startup\ELK-Installers\kibana-8.15.0-windows-x86_64.zip"
Expand-Archive -Path $kibanaZipPath -DestinationPath "C:\SandboxShared\kibana" -Force
Start-Process -FilePath "C:\SandboxShared\kibana\kibana-8.15.0-windows-x86_64\bin\kibana.bat" -NoNewWindow
Log-Step "`n[Step 4/5] Kibana installation completed.`n"

# Step 5: Finalizing
Log-Step "`n[Step 5/5] ELK Stack setup is complete. All components should be running now.`n"
Log-Step "`n--- ELK Stack Setup Script Completed ---`n"

# Keep the window open for user review
Start-Sleep -Seconds 30
