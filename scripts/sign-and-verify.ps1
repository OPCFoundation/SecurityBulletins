$signer = "securityteam@opcfoundation.org"


Get-ChildItem -Filter *.json | ForEach-Object {
    $jsonFile = $_.Name
    $baseName = [System.IO.Path]::GetFileNameWithoutExtension($jsonFile)
    $ascFile = "$baseName.json.asc"
    $shaFile = "$baseName.json.sha512"

    # Delete existing output files
    if (Test-Path $ascFile) { Remove-Item $ascFile -Force }
    if (Test-Path $shaFile) { Remove-Item $shaFile -Force }

    Write-Host "Signing $jsonFile" -ForegroundColor Green
    & gpg --local-user $signer --digest-algo SHA512 --armor --detach-sign --output $ascFile $jsonFile

    Write-Host "Verifying Signature for $jsonFile" -ForegroundColor Green
    & gpg --verify $ascFile $jsonFile

    Write-Host "Generating SHA512 hash for $jsonFile" -ForegroundColor Green
    & certutil -hashfile $jsonFile sha512 > $shaFile
    & type $shaFile
}