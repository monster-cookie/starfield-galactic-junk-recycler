# Abort on first error
$PSNativeCommandUseErrorActionPreference = $true
$ErrorActionPreference = "Stop"

# If not loaded already pull in the shared config
if (!$Global:SharedConfigurationLoaded) {
  Write-Host -ForegroundColor Green "Importing Shared Configuration"
  . "$PSScriptRoot\sharedConfig.ps1"
}

# Export Data File to YAML
foreach ($database in $Global:Databases) {
  if (![System.IO.File]::Exists(".\Source\Database\$database")) {
    Write-Host -ForegroundColor DarkRed "No database file named '$database' found in Source\Database. Skipping."
    continue
  }

  Write-Host -ForegroundColor Green "Disassembling in data file $database to YAML in .\Source\Spriggit\$database"

  $pinfo = New-Object System.Diagnostics.ProcessStartInfo
  $pinfo.FileName = "$ENV:SPRIGGIT_PATH\Spriggit.CLI.exe"
  $pinfo.Arguments = "serialize --InputPath `".\Source\Database\$database`" --OutputPath `".\Source\Spriggit\$database`" --GameRelease Starfield --PackageName Spriggit.Yaml"
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
    Write-Error -Category SyntaxError -ErrorId $compileProcess.ExitCode -Message "Spriggit had non 0 exit code please check for serialization errors in the output." -ErrorAction Stop
    Exit
  } Else {
    $compileProcess.StandardOutput.ReadToEnd() | Write-Host -ForegroundColor Green
  }  
}

Write-Host -ForegroundColor Cyan "`n`n"
Write-Host -ForegroundColor Cyan "**************************************************"
Write-Host -ForegroundColor Cyan "**   Spriggit Datafile Dump Workflow Complete   **"
Write-Host -ForegroundColor Cyan "**************************************************"
Write-Host -ForegroundColor Cyan "`n`n"
