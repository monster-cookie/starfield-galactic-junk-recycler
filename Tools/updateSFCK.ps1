# Abort on first error
$PSNativeCommandUseErrorActionPreference = $true
$ErrorActionPreference = "Stop"

# If not loaded already pull in the shared config
if (!$Global:SharedConfigurationLoaded) {
  Write-Host -ForegroundColor Green "Importing Shared Configuration"
  . "$PSScriptRoot\sharedConfig.ps1"
}

# Purge output points incase files were deleted
foreach ($database in $Global:Databases) {
  if ([System.IO.File]::Exists("$ENV:STEAM_DATA_FOLDER\$database")) {
    Remove-Item -Force -Path "$ENV:STEAM_DATA_FOLDER\$database"
  }
}
Remove-Item -Force -Recurse "$ENV:PAPYRUS_SCRIPTS_PATH\$Global:ScriptingNamespaceCompany\$Global:ScriptingNamespaceModule"
Remove-Item -Force -Recurse "$ENV:PAPYRUS_SCRIPTS_PATH\$Global:ScriptingNamespaceCompany\$Global:ScriptingNamespaceSharedLibrary"

& "$PSScriptRoot\compileScripts.ps1"

# Need to copy the ESM/ESP/ESL files to the Game Data folder so SFCK can use them
Write-Host -ForegroundColor Green "Copying the ESM/ESP/ESL files to the Game Data folder so SFCK can use them"
foreach ($database in $Global:Databases) {
  if (![System.IO.File]::Exists(".\Source\Database\$database")) {
    Write-Host -ForegroundColor DarkRed "No database file named '$database' found in Source\Database. Skipping."
    continue
  }
  Write-Host -ForegroundColor Green "Copying Source\Database\$database to the Game Data folder."
  Copy-Item -Force -Path ".\Source\Database\*.*" -Destination "$ENV:STEAM_DATA_FOLDER"
}

Write-Host -ForegroundColor Cyan "`n`n"
Write-Host -ForegroundColor Cyan "**************************************************"
Write-Host -ForegroundColor Cyan "**    Update SFCK Files Workflow complete       **"
Write-Host -ForegroundColor Cyan "**************************************************"
Write-Host -ForegroundColor Cyan "`n`n"
