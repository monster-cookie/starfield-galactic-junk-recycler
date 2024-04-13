# Abort on first error
$PSNativeCommandUseErrorActionPreference = $true
$ErrorActionPreference = "Stop"

# If not loaded already pull in the shared config
if (!$Global:SharedConfigurationLoaded) {
  Write-Host -ForegroundColor Green "Importing Shared Configuration"
  . "$PSScriptRoot\sharedConfig.ps1"
}

# Need to copy the source scripts to the Scripts Source folder so SFCK can use them
Write-Host -ForegroundColor Green "Copying the source scripts to the Scripts Source folder so SFCK can use them"
Copy-Item -Recurse -Force -Path "$ENV:PAPYRUS_SOURCE_PATH\$Global:ScriptingNamespaceCompany\**" -Destination ".\Source\Papyrus\$Global:ScriptingNamespaceCompany"

# Need to copy the ESM/ESP/ESL files from the Game Data folder to update the repository verison for commit
Write-Host -ForegroundColor Green "Copying the ESM/ESP/ESL files from the Game Data folder to update the repository verison for commit"
foreach ($database in $Global:Databases) {
  if (![System.IO.File]::Exists("$ENV:STEAM_DATA_FOLDER\$database")) {
    Write-Host -ForegroundColor DarkRed "No database file named '$database' found in $ENV:STEAM_DATA_FOLDER. Skipping."
    continue
  }
  Write-Host -ForegroundColor Green "Copying $ENV:STEAM_DATA_FOLDER\$database to Source\Database."
  Copy-Item -Force -Path "$ENV:STEAM_DATA_FOLDER\$database" -Destination ".\Source\Database"
}

Write-Host -ForegroundColor Cyan "`n`n"
Write-Host -ForegroundColor Cyan "**************************************************"
Write-Host -ForegroundColor Cyan "**  Update Repository Files Workflow complete   **"
Write-Host -ForegroundColor Cyan "**************************************************"
Write-Host -ForegroundColor Cyan "`n`n"
