# Abort on first error
$PSNativeCommandUseErrorActionPreference = $true
$ErrorActionPreference = "Stop"

# If not loaded already pull in the shared config
if (!$Global:SharedConfigurationLoaded) {
  Write-Host -ForegroundColor Green "Importing Shared Configuration"
  . "$PSScriptRoot\..\sharedConfig.ps1"
}

# Purge CK output points in case files were deleted
foreach ($database in $Global:Databases) {
  if ([System.IO.File]::Exists("$ENV:MODULE_DATABASE_PATH\$database")) {
    Remove-Item -Force -Path "$ENV:MODULE_DATABASE_PATH\$database"
  }
}
If ([System.IO.Directory]::Exists("$ENV:MODULE_SCRIPTS_PATH\$Global:ScriptingNamespaceCompany\$Global:ScriptingNamespaceModule")) {
  Remove-Item -Force -Recurse "$ENV:MODULE_SCRIPTS_PATH\$Global:ScriptingNamespaceCompany\$Global:ScriptingNamespaceModule"
}
If ([System.IO.Directory]::Exists("$ENV:MODULE_SCRIPTS_PATH\$Global:ScriptingNamespaceCompany\$Global:ScriptingNamespaceSharedLibrary")) {
  Remove-Item -Force -Recurse "$ENV:MODULE_SCRIPTS_PATH\$Global:ScriptingNamespaceCompany\$Global:ScriptingNamespaceSharedLibrary"
}

& "$PSScriptRoot\..\compileScripts.ps1"

# Need to copy the ESM/ESP/ESL files to the Game Data folder so SFCK can use them
Write-Host -ForegroundColor Green "Copying the ESM/ESP/ESL files to the Game Data folder so SFCK can use them"
foreach ($database in $Global:Databases) {
  if (![System.IO.File]::Exists(".\Source\Database\$database")) {
    Write-Host -ForegroundColor DarkRed "No database file named '$database' found in Source\Database. Skipping."
    continue
  }
  Write-Host -ForegroundColor Green "Copying Source\Database\$database to the Game Data folder."
  Copy-Item -Force -Path ".\Source\Database\$database" -Destination "$ENV:MODULE_DATABASE_PATH"

  $targetFile = Get-Item -Path "$ENV:MODULE_DATABASE_PATH\$database"
  if ((Get-ItemProperty "$ENV:MODULE_DATABASE_PATH\$database").IsReadOnly) {
    Write-Host -ForegroundColor Green "Clearing readonly from $ENV:MODULE_DATABASE_PATH\$database."
    $targetFile.Attributes -= "ReadOnly"
  }
}

Write-Host -ForegroundColor Cyan "`n`n"
Write-Host -ForegroundColor Cyan "**************************************************"
Write-Host -ForegroundColor Cyan "**    Update SFCK Files Workflow complete       **"
Write-Host -ForegroundColor Cyan "**************************************************"
Write-Host -ForegroundColor Cyan "`n`n"
