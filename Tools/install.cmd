@echo off

@REM Notepad++/VSCODE needs current working directory to be where Caprica.exe is 
cd "C:\Repositories\Public\Starfield Mods\starfield-galactic-junk-recycler\Tools"

@REM Clear existing RTFP files
del /s /q "D:\MO2Staging\Starfield\mods\VenworksJunkRecycler-Experimental\SFSE\Plugins\RealTimeFormPatcher\*.*"
rmdir /s /q "D:\MO2Staging\Starfield\mods\VenworksJunkRecycler-Experimental\SFSE\Plugins\RealTimeFormPatcher"
mkdir "D:\MO2Staging\Starfield\mods\VenworksJunkRecycler-Experimental\SFSE\Plugins\RealTimeFormPatcher"

@echo "Deploying Main Archive to MO2 Mod DIR"
copy /y "C:\Repositories\Public\Starfield Mods\starfield-galactic-junk-recycler\Dist\VenworksJunkRecycler - Main.ba2" "D:\MO2Staging\Starfield\mods\VenworksJunkRecycler-Experimental"

@echo "Deploying RTFP to MO2 Mod DIR"
copy /y "C:\Repositories\Public\Starfield Mods\starfield-galactic-junk-recycler\Dist\SFSE\Plugins\RealTimeFormPatcher\VJR_ItemModifications.txt" "D:\MO2Staging\Starfield\mods\VenworksJunkRecycler-Experimental\SFSE\Plugins\RealTimeFormPatcher"
