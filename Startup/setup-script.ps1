# Path to the Docker Desktop installer
$logFile = "C:\SandboxShared\Startup\log.txt"
Add-Content -Path $logFile -Value "Starting script"

$dockerInstallerPath = "C:\SandboxShared\Startup\DockerInstaller\Docker Desktop Installer.exe"

# Check if Docker is already installed
if (!(Get-Command docker -ErrorAction SilentlyContinue)) {
    Add-Content -Path $logFile -Value "Docker is not installed. Installing Docker..."
    Start-Process -FilePath $dockerInstallerPath -ArgumentList "/quiet" -Wait
    Add-Content -Path $logFile -Value "Docker installation completed."
} else {
    Add-Content -Path $logFile -Value "Docker is already installed."
}

# Start Docker Desktop
Add-Content -Path $logFile -Value "Starting Docker Desktop..."
Start-Process "Docker Desktop" -Wait

# Wait for Docker to start (you might need to adjust the sleep time)
Start-Sleep -Seconds 15

# Navigate to the project directory
Add-Content -Path $logFile -Value "Navigating to project directory"
Set-Location -Path "C:\SandboxShared"

# Build the Docker image
Add-Content -Path $logFile -Value "Building Docker image..."
docker build -t elk-stack-soc .

# Run the Docker container
Add-Content -Path $logFile -Value "Running Docker container..."
docker run -d -p 5601:5601 -p 9200:9200 -p 5044:5044 elk-stack-soc

Add-Content -Path $logFile -Value "Docker container is running."
