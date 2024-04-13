Write-Host -ForegroundColor Green "Importing ENV Settings from .env file"
Get-Content .env | ForEach-Object {
  $name, $value = $_.split('=')
  $name.trim() | Out-Null
  if (!$name.StartsWith('#') || ![string]::IsNullOrWhitespace($name) || ![string]::IsNullOrWhitespace($value)) {
    $value.trim() | Out-Null
    Set-Item -Path "env:$name" -Value "$value"
  }
}

Write-Host -ForegroundColor Yellow "Starfield game folder is set to $ENV:STEAM_GAME_FOLDER."
Write-Host -ForegroundColor Yellow "Starfield data folder is set to $ENV:STEAM_DATA_FOLDER."
Write-Host -ForegroundColor Yellow "BGS Archive2 path is $ENV:ARCHIVER_PATH\Archive2.exe"
Write-Host -ForegroundColor Yellow "BGS Papyrus Compiler path is $ENV:PAPYRUS_COMPILER_PATH\PapyrusCompiler.exe"
Write-Host -ForegroundColor Yellow "BGS Papyrus Script path is $ENV:PAPYRUS_SCRIPTS_PATH"
Write-Host -ForegroundColor Yellow "BGS Papyrus Source path is $ENV:PAPYRUS_SOURCE_PATH"

$Global:Databases = @(
  ("Venworks-JunkRecycler.esp")
)

Write-Host -ForegroundColor Yellow ""
Write-Host -ForegroundColor Yellow "Game Database Files:"
foreach ($database in $Global:Databases) {
  Write-Host -ForegroundColor Yellow $database
}
Write-Host -ForegroundColor Yellow "`n"

$Global:SharedConfigurationLoaded=$true
