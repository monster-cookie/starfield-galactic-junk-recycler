# Abort on first error
$PSNativeCommandUseErrorActionPreference = $true
$ErrorActionPreference = "Stop"

# If not loaded already pull in the shared config
if (!$Global:SharedConfigurationLoaded) {
  Write-Host -ForegroundColor Green "Importing Shared Configuration"
  . "$PSScriptRoot\sharedConfig.ps1"
}

# Scaffold if needed
If (![System.IO.Directory]::Exists("$ENV:MODULE_SCRIPTS_PATH\$Global:ScriptingNamespaceCompany")) {
  New-Item -ItemType "Directory" -Path "$ENV:MODULE_SCRIPTS_PATH\$Global:ScriptingNamespaceCompany" | Out-Null
}
If (![System.IO.Directory]::Exists("$ENV:MODULE_SCRIPTS_PATH\$Global:ScriptingNamespaceCompany\$Global:ScriptingNamespaceModule")) {
  New-Item -ItemType "Directory" -Path "$ENV:MODULE_SCRIPTS_PATH\$Global:ScriptingNamespaceCompany\$Global:ScriptingNamespaceModule" | Out-Null
}
If (![System.IO.Directory]::Exists("$ENV:MODULE_SCRIPTS_PATH\$Global:ScriptingNamespaceCompany\$Global:ScriptingNamespaceSharedLibrary")) {
  New-Item -ItemType "Directory" -Path "$ENV:MODULE_SCRIPTS_PATH\$Global:ScriptingNamespaceCompany\$Global:ScriptingNamespaceSharedLibrary" | Out-Null
}

# Need to copy the source scripts to the Scripts Source folder so SFCK can use them
Write-Host -ForegroundColor Green "Copying the source scripts to the Scripts Source folder so SFCK can use them"
Copy-Item -Recurse -Force -Path ".\Source\Papyrus\**" -Destination "$ENV:MODULE_SCRIPTS_SOURCE_PATH\$Global:ScriptingNamespaceCompany"

# Compile and deploy Scripts to CK Scripts folder
Write-Host -ForegroundColor Green "Compiling all scripts in Source/Papyrus to SFCK Scripts folder"

& "$ENV:TOOL_PATH_PAPYRUS_COMPILER" ".\Source\Papyrus" -all -f -optimize -flags="$ENV:PAPYRUS_COMPILER_FLAGS" -output="$ENV:MODULE_SCRIPTS_PATH" -import="$ENV:PAPYRUS_SCRIPTS_SOURCE_PATH;$ENV:MODULE_SCRIPTS_SOURCE_PATH" -ignorecwd

Write-Host -ForegroundColor Cyan "`n`n"
Write-Host -ForegroundColor Cyan "**************************************************"
Write-Host -ForegroundColor Cyan "**       Compile Scripts Workflow complete      **"
Write-Host -ForegroundColor Cyan "**************************************************"
Write-Host -ForegroundColor Cyan "`n`n"
