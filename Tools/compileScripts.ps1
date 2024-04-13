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
Copy-Item -Recurse -Force -Path ".\Source\Papyrus\**" -Destination "$ENV:PAPYRUS_SOURCE_PATH"

# Compile and deploy Scripts to CK Scripts folder
Write-Host -ForegroundColor Green "Compiling all scripts in Source/Papyrus to SFCK Scripts folder"

$pinfo = New-Object System.Diagnostics.ProcessStartInfo
$pinfo.FileName = "$ENV:PAPYRUS_COMPILER_PATH\PapyrusCompiler.exe"
$pinfo.Arguments = "`".\Source\Papyrus`" -all -f -optimize -output=`"$ENV:PAPYRUS_SCRIPTS_PATH`" -import=`"$ENV:PAPYRUS_SOURCE_PATH`" -ignorecwd"
$pinfo.CreateNoWindow = $false
$pinfo.RedirectStandardError = $true
$pinfo.RedirectStandardOutput = $true
$pinfo.UseShellExecute = $false

$compileProcess = New-Object System.Diagnostics.Process
$compileProcess.StartInfo = $pinfo
$compileProcess.Start() | Out-Null
$compileProcess.WaitForExit()
if ($compileProcess.ExitCode -ne 0) {
  $compileProcess.StandardOutput.ReadToEnd() | Write-Host -ForegroundColor DarkYellow
  $compileProcess.StandardError.ReadToEnd() | Write-Host -ForegroundColor Red
  Write-Error -Category SyntaxError -ErrorId $compileProcess.ExitCode -Message "Papyrus compiler had non 0 exit code please check for compile errors in the output." -ErrorAction Stop
  Exit
} Else {
  $compileProcess.StandardOutput.ReadToEnd() | Write-Host -ForegroundColor Green
}

Write-Host -ForegroundColor Cyan "`n`n"
Write-Host -ForegroundColor Cyan "**************************************************"
Write-Host -ForegroundColor Cyan "**       Compile Scripts Workflow complete      **"
Write-Host -ForegroundColor Cyan "**************************************************"
Write-Host -ForegroundColor Cyan "`n`n"
