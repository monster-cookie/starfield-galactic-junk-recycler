ScriptName Venworks:JunkRecycler:ModDebug Extends ScriptObject

;;
;; MAJOR NOTE: ALL FUNCTIONS MUST BE GLOBAL WITHOUT CREATION KIT
;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Functions
;;;
;; Call using: CGF "Venworks:JunkRecycler:ModDebug.FeatureFlags" 
Function FeatureFlags() Global
  If (Game.IsPluginInstalled("Venworks-JunkRecycler.esp"))
    Debug.Trace("INFO: Venworks-JunkRecycler is loaded.", 0)
  Else
    Debug.MessageBox("Venworks-JunkRecycler is not loaded so cannot continue.")
    Return
  EndIf

  Actor player = Game.GetPlayer()
  GlobalVariable VJR_DebugMode = Game.GetFormFromFile(0x00000A39, "Venworks-JunkRecycler.esp") as GlobalVariable
  If (!VJR_DebugMode && VJR_DebugMode == None) 
    Debug.Trace("LOAD ERROR: No record with Form ID 0x00000A39 found in Venworks-JunkRecycler.esp", 2)
  EndIf
  Perk VJR_PERK_Activator = Game.GetFormFromFile(0x00000A3B, "Venworks-JunkRecycler.esp") as Perk
  If (!VJR_PERK_Activator && VJR_PERK_Activator == None) 
    Debug.Trace("LOAD ERROR: No record with Form ID 0x00000A38 found in Venworks-JunkRecycler.esp", 2)
  EndIf

  String output = "Current Feature Flag Settings (1-On, 0=Off)\n\n"
  output += "     Debug Mode = " + VJR_DebugMode.GetValueInt() + "\n"
  output += " Activator Perk = " + player.HasPerk(VJR_PERK_Activator) + "\n"

  Debug.MessageBox(output)
  Debug.Trace(output, 2)
EndFunction

;; Call using: CGF "Venworks:JunkRecycler:ModDebug.ToggleDebugMode" 
Function ToggleDebugMode() Global
  If (Game.IsPluginInstalled("Venworks-JunkRecycler.esp"))
    Debug.Trace("INFO: Venworks-JunkRecycler is loaded.", 0)
  Else
    Debug.MessageBox("Venworks-JunkRecycler is not loaded so cannot continue.")
    Return
  EndIf

  GlobalVariable VJR_DebugMode = Game.GetFormFromFile(0x00000A39, "Venworks-JunkRecycler.esp") as GlobalVariable
  If (!VJR_DebugMode && VJR_DebugMode == None) 
    Debug.Trace("LOAD ERROR: No record with Form ID 0x00000A39 found in Venworks-JunkRecycler.esp", 2)
    Return
  EndIf

  If (VJR_DebugMode.GetValueInt() == 0)
    VJR_DebugMode.SetValueInt(1)
  Else
    VJR_DebugMode.SetValueInt(0)
  EndIf
EndFunction

;; Call using: CGF "Venworks:JunkRecycler:ModDebug.CheckFixPerk" 
Function CheckFixPerk() Global
  If (Game.IsPluginInstalled("Venworks-JunkRecycler.esp"))
    Debug.Trace("INFO: Venworks-JunkRecycler is loaded.", 0)
  Else
    Debug.MessageBox("Venworks-JunkRecycler is not loaded so cannot continue.")
    Return
  EndIf

  Perk VJR_PERK_Activator = Game.GetFormFromFile(0x00000A3B, "Venworks-JunkRecycler.esp") as Perk
  If (!VJR_PERK_Activator && VJR_PERK_Activator == None) 
    Debug.Trace("LOAD ERROR: No record with Form ID 0x00000A3B found in Venworks-JunkRecycler.esp", 2)
    Return
  EndIf

  Actor player = Game.GetPlayer()
  If (player.HasPerk(VJR_PERK_Activator))
    Debug.MessageBox("You already have the perk assigned if the workbenches are not showing the recycler please join and ask for help on the Venworks Discord Community.")
  Else
    player.AddPerk(VJR_PERK_Activator, True)
  EndIf
EndFunction

;; Call using: CGF "Venworks:JunkRecycler:ModDebug.ResetSettings" 
Function ResetSettings() Global
  If (Game.IsPluginInstalled("Venworks-JunkRecycler.esp"))
    Debug.Trace("INFO: Venworks-JunkRecycler is loaded.", 0)
  Else
    Debug.MessageBox("Venworks-JunkRecycler is not loaded so cannot continue.")
    Return
  EndIf

  CheckFixPerk()

  GlobalVariable VJR_BreakdownQuantity_TierA = Game.GetFormFromFile(0x00000815, "Venworks-JunkRecycler.esp") as GlobalVariable
  GlobalVariable VJR_BreakdownQuantity_TierB = Game.GetFormFromFile(0x00000816, "Venworks-JunkRecycler.esp") as GlobalVariable
  GlobalVariable VJR_BreakdownQuantity_TierC = Game.GetFormFromFile(0x00000817, "Venworks-JunkRecycler.esp") as GlobalVariable
  GlobalVariable VJR_BreakdownQuantity_TierD = Game.GetFormFromFile(0x00000819, "Venworks-JunkRecycler.esp") as GlobalVariable

  VJR_BreakdownQuantity_TierA.SetValueInt(4)
  VJR_BreakdownQuantity_TierB.SetValueInt(2)
  VJR_BreakdownQuantity_TierC.SetValueInt(2)
  VJR_BreakdownQuantity_TierD.SetValueInt(1)

  GlobalVariable VJR_BreakdownChance_TierA = Game.GetFormFromFile(0x00000811, "Venworks-JunkRecycler.esp") as GlobalVariable
  GlobalVariable VJR_BreakdownChance_TierB = Game.GetFormFromFile(0x00000812, "Venworks-JunkRecycler.esp") as GlobalVariable
  GlobalVariable VJR_BreakdownChance_TierC = Game.GetFormFromFile(0x00000813, "Venworks-JunkRecycler.esp") as GlobalVariable
  GlobalVariable VJR_BreakdownChance_TierD = Game.GetFormFromFile(0x00000814, "Venworks-JunkRecycler.esp") as GlobalVariable

  VJR_BreakdownChance_TierA.SetValueInt(25)
  VJR_BreakdownChance_TierB.SetValueInt(50)
  VJR_BreakdownChance_TierC.SetValueInt(80)
  VJR_BreakdownChance_TierD.SetValueInt(95)
EndFunction
