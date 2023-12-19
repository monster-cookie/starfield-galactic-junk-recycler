@echo off

@REM Notepad++/VSCODE needs current working directory to be where Caprica.exe is 
cd "C:\Repositories\Public\Starfield Mods\starfield-galactic-junk-recycler\Tools"

@echo "Deploying Main Archive to MO2 Mod DIR"
copy /y "C:\Repositories\Public\Starfield Mods\starfield-galactic-junk-recycler\Dist\GalacticJunkRecycler - Main.ba2" "D:\MO2Staging\Starfield\mods\GalacticJunkRecycler-Experimental"
