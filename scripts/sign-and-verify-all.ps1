param (
    [Parameter(Mandatory = $true)]
    [string]$StartDir
)

# Resolve full path of start directory
$StartDir = Resolve-Path $StartDir

# Resolve path to sign-and-verify.ps1
$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
$signScript = Join-Path $scriptDir "sign-and-verify.ps1"

if (-not (Test-Path $signScript)) {
    Write-Host "sign-and-verify.ps1 not found in $scriptDir" -ForegroundColor Red
    exit 1
}

# Find all directories (including root) that contain JSON files
$targetDirs = @()
if (Get-ChildItem -Path $StartDir -Filter *.json -File -ErrorAction SilentlyContinue) {
    $targetDirs += $StartDir
}

$subDirs = Get-ChildItem -Path $StartDir -Recurse -Directory
foreach ($dir in $subDirs) {
    if (Get-ChildItem -Path $dir.FullName -Filter *.json -File -ErrorAction SilentlyContinue) {
        $targetDirs += $dir.FullName
    }
}

# Run the sign-and-verify script in each matching directory
foreach ($dir in $targetDirs) {
    Write-Host "Processing directory: $dir" -ForegroundColor Cyan
    Push-Location $dir
    try {
        & $signScript
    } catch {
        Write-Host "Error running sign-and-verify.ps1 in {$dir}: $_" -ForegroundColor Red
    }
    Pop-Location
}
