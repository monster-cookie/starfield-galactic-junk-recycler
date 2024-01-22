ScriptName GJR_ControlScript Extends Quest

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Global Variables
;;;
GlobalVariable Property Venpi_DebugEnabled Auto Const Mandatory
String Property Venpi_ModName="GalacticJunkRecycler" Auto Const Mandatory

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Properties
;;;
LeveledItem Property GJR_Ammo_Recycle_List Auto Const Mandatory
LeveledItem Property GJR_Armor_Recycle_List Auto Const Mandatory
LeveledItem Property GJR_Book_Recycle_List Auto Const Mandatory
LeveledItem Property GJR_Misc_Recycle_List Auto Const Mandatory
LeveledItem Property GJR_Weapon_Recycle_List Auto Const Mandatory
LeveledItem Property GJR_Injestible_Recycle_List Auto Const Mandatory

;; Group Rule Lists
FormList Property GJR_GroupRule_Electronics_List Auto Const Mandatory
LeveledItem Property GJR_GroupRule_Electronics_Resources Auto Const Mandatory
FormList Property GJR_GroupRule_Tools_List Auto Const Mandatory
LeveledItem Property GJR_GroupRule_Tools_Resources Auto Const Mandatory
FormList Property GJR_GroupRule_BarStuff_List Auto Const Mandatory
LeveledItem Property GJR_GroupRule_BarStuff_Resources Auto Const Mandatory
FormList Property GJR_GroupRule_DecorativeStuff_List Auto Const Mandatory
LeveledItem Property GJR_GroupRule_DecorativeStuff_Resources Auto Const Mandatory
FormList Property GJR_GroupRule_Food_List Auto Const Mandatory
LeveledItem Property GJR_GroupRule_Food_Resources Auto Const Mandatory
FormList Property GJR_GroupRule_AlienFood_List Auto Const Mandatory
LeveledItem Property GJR_GroupRule_AlienFood_Resources Auto Const Mandatory
FormList Property GJR_GroupRule_Aid_List Auto Const Mandatory
LeveledItem Property GJR_GroupRule_Aid_Resources Auto Const Mandatory
FormList Property GJR_GroupRule_Chems_List Auto Const Mandatory
LeveledItem Property GJR_GroupRule_Chems_Resources Auto Const Mandatory
FormList Property GJR_GroupRule_Paper_List Auto Const Mandatory
LeveledItem Property GJR_GroupRule_Paper_Resources Auto Const Mandatory
FormList Property GJR_GroupRule_Pens_List Auto Const Mandatory
LeveledItem Property GJR_GroupRule_Pens_Resources Auto Const Mandatory
FormList Property GJR_GroupRule_Plastic_List Auto Const Mandatory
LeveledItem Property GJR_GroupRule_Plastic_Resources Auto Const Mandatory
FormList Property GJR_GroupRule_DrinksAlcohol_List Auto Const Mandatory
LeveledItem Property GJR_GroupRule_DrinksAlcohol_Resources Auto Const Mandatory
FormList Property GJR_GroupRule_DrinksSoft_List Auto Const Mandatory
LeveledItem Property GJR_GroupRule_DrinksSoft_Resources Auto Const Mandatory
FormList Property GJR_GroupRule_Ceramics_List Auto Const Mandatory
LeveledItem Property GJR_GroupRule_Ceramics_Resources Auto Const Mandatory

;; Resources - Inorganic
MiscObject Property InorgCommonCopper Auto
MiscObject Property InorgRareGold Auto

;; Resources - Organic
MiscObject Property OrgRareAdhesive Auto
MiscObject Property OrgCommonFiber Auto

;; Resources - Manufactured
MiscObject Property Mfg_Tier01_IsocenteredMagnet Auto

;; Items
MiscObject Property Tool_DuctTape01 Auto

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Variables
;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Events
;;;
Event OnQuestInit()
  VPI_Debug.DebugMessage(Venpi_ModName, "GJR_ControlScript", "OnQuestInit", "OnQuestInit triggered.", 0, Venpi_DebugEnabled.GetValueInt())
  Setup()
EndEvent

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Functions
;;;
Function ProcessItem(Form akBaseItem, ObjectReference akOutputContainer)
  VPI_Debug.DebugMessage(Venpi_ModName, "GJR_ControlScript", "ProcessItem", "Processing item ref " + akBaseItem + " against rule tree.", 0, Venpi_DebugEnabled.GetValueInt())

  Setup()

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;;
  ;; Specifically Mapped Item Rules
  ;;
  If (akBaseItem.GetFormID() ==  Tool_DuctTape01.GetFormID())
    VPI_Debug.DebugMessage(Venpi_ModName, "GJR_ControlScript", "ProcessItem", "Processing vacuum tape item and returning Adhesive and Fiber.", 0, Venpi_DebugEnabled.GetValueInt())
    akOutputContainer.AddItem(OrgRareAdhesive as Form, Utility.RandomInt(0,4), True)
    akOutputContainer.AddItem(OrgCommonFiber as Form, Utility.RandomInt(0,4), True)
    Return
  EndIf

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;;
  ;; Group Mapped Item Rules
  ;;
  If (GJR_GroupRule_Electronics_List.HasForm(akBaseItem))
    VPI_Debug.DebugMessage(Venpi_ModName, "GJR_ControlScript", "ProcessItem", "Processing electronics group item " + akBaseItem + ".", 0, Venpi_DebugEnabled.GetValueInt())
    akOutputContainer.AddItem(GJR_GroupRule_Electronics_Resources as Form, 1, True)
    Return
  ElseIf (GJR_GroupRule_Tools_List.HasForm(akBaseItem))
    VPI_Debug.DebugMessage(Venpi_ModName, "GJR_ControlScript", "ProcessItem", "Processing tools group item " + akBaseItem + ".", 0, Venpi_DebugEnabled.GetValueInt())
    akOutputContainer.AddItem(GJR_GroupRule_Tools_Resources as Form, 1, True)
    Return
  ElseIf (GJR_GroupRule_Paper_List.HasForm(akBaseItem))
    VPI_Debug.DebugMessage(Venpi_ModName, "GJR_ControlScript", "ProcessItem", "Processing paper group item " + akBaseItem + ".", 0, Venpi_DebugEnabled.GetValueInt())
    akOutputContainer.AddItem(GJR_GroupRule_Paper_Resources as Form, 1, True)
    Return
  ElseIf (GJR_GroupRule_Pens_List.HasForm(akBaseItem))
    VPI_Debug.DebugMessage(Venpi_ModName, "GJR_ControlScript", "ProcessItem", "Processing pens group item " + akBaseItem + ".", 0, Venpi_DebugEnabled.GetValueInt())
    akOutputContainer.AddItem(GJR_GroupRule_Pens_Resources as Form, 1, True)
    Return
  ElseIf (GJR_GroupRule_Plastic_List.HasForm(akBaseItem))
    VPI_Debug.DebugMessage(Venpi_ModName, "GJR_ControlScript", "ProcessItem", "Processing plastic group item " + akBaseItem + ".", 0, Venpi_DebugEnabled.GetValueInt())
    akOutputContainer.AddItem(GJR_GroupRule_Plastic_Resources as Form, 1, True)
    Return
  ElseIf (GJR_GroupRule_BarStuff_List.HasForm(akBaseItem))
    VPI_Debug.DebugMessage(Venpi_ModName, "GJR_ControlScript", "ProcessItem", "Processing bar stuff group item " + akBaseItem + ".", 0, Venpi_DebugEnabled.GetValueInt())
    akOutputContainer.AddItem(GJR_GroupRule_BarStuff_Resources as Form, 1, True)
    Return
  ElseIf (GJR_GroupRule_DecorativeStuff_List.HasForm(akBaseItem))
    VPI_Debug.DebugMessage(Venpi_ModName, "GJR_ControlScript", "ProcessItem", "Processing decorative stuff group item " + akBaseItem + ".", 0, Venpi_DebugEnabled.GetValueInt())
    akOutputContainer.AddItem(GJR_GroupRule_DecorativeStuff_Resources as Form, 1, True)
    Return
  ElseIf (GJR_GroupRule_Food_List.HasForm(akBaseItem))
    VPI_Debug.DebugMessage(Venpi_ModName, "GJR_ControlScript", "ProcessItem", "Processing food group item " + akBaseItem + ".", 0, Venpi_DebugEnabled.GetValueInt())
    akOutputContainer.AddItem(GJR_GroupRule_Food_Resources as Form, 1, True)
    Return
  ElseIf (GJR_GroupRule_Aid_List.HasForm(akBaseItem))
    VPI_Debug.DebugMessage(Venpi_ModName, "GJR_ControlScript", "ProcessItem", "Processing aid group item " + akBaseItem + ".", 0, Venpi_DebugEnabled.GetValueInt())
    akOutputContainer.AddItem(GJR_GroupRule_Aid_Resources as Form, 1, True)
    Return
  ElseIf (GJR_GroupRule_Chems_List.HasForm(akBaseItem))
    VPI_Debug.DebugMessage(Venpi_ModName, "GJR_ControlScript", "ProcessItem", "Processing chems group item " + akBaseItem + ".", 0, Venpi_DebugEnabled.GetValueInt())
    akOutputContainer.AddItem(GJR_GroupRule_Chems_Resources as Form, 1, True)
    Return
  ElseIf (GJR_GroupRule_AlienFood_List.HasForm(akBaseItem))
    VPI_Debug.DebugMessage(Venpi_ModName, "GJR_ControlScript", "ProcessItem", "Processing alien food group item " + akBaseItem + ".", 0, Venpi_DebugEnabled.GetValueInt())
    akOutputContainer.AddItem(GJR_GroupRule_AlienFood_Resources as Form, 1, True)
    Return
  ElseIf (GJR_GroupRule_DrinksAlcohol_List.HasForm(akBaseItem))
    VPI_Debug.DebugMessage(Venpi_ModName, "GJR_ControlScript", "ProcessItem", "Processing alcoholic drinks group item " + akBaseItem + ".", 0, Venpi_DebugEnabled.GetValueInt())
    akOutputContainer.AddItem(GJR_GroupRule_DrinksAlcohol_Resources as Form, 1, True)
  ElseIf (GJR_GroupRule_DrinksSoft_List.HasForm(akBaseItem))
    VPI_Debug.DebugMessage(Venpi_ModName, "GJR_ControlScript", "ProcessItem", "Processing nonalcoholic drinks group item " + akBaseItem + ".", 0, Venpi_DebugEnabled.GetValueInt())
    akOutputContainer.AddItem(GJR_GroupRule_DrinksSoft_Resources as Form, 1, True)
    Return
  ElseIf (GJR_GroupRule_Ceramics_List.HasForm(akBaseItem))
    VPI_Debug.DebugMessage(Venpi_ModName, "GJR_ControlScript", "ProcessItem", "Processing ceramics group item " + akBaseItem + ".", 0, Venpi_DebugEnabled.GetValueInt())
    akOutputContainer.AddItem(GJR_GroupRule_Ceramics_Resources as Form, 1, True)
    Return
  EndIf

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;;
  ;; Fallback Rules
  ;;
  Int itemType = VPI_Inventory.GetItemType(akBaseItem)
  VPI_SharedObjectManager:InventoryItemTypes enumItemType = VPI_SharedObjectManager.GetEnumInventoryItemType()
  If (enumItemType == none || !enumItemType)
    VPI_Debug.DebugMessage(Venpi_ModName, "GJR_ControlScript", "ProcessItem", "Failed to find the InventoryItemTypes enum.", 0, Venpi_DebugEnabled.GetValueInt())
    akOutputContainer.AddItem(GJR_Ammo_Recycle_List as Form, 1, True)
    Return
  EndIf

  If (itemType == enumItemType.Ammo)
    VPI_Debug.DebugMessage(Venpi_ModName, "GJR_ControlScript", "ProcessItem", "Processing ammo item " + akBaseItem + ".", 0, Venpi_DebugEnabled.GetValueInt())
    akOutputContainer.AddItem(GJR_Ammo_Recycle_List as Form, 1, True)
    Return
  ElseIf  (itemType == enumItemType.Armor)
    VPI_Debug.DebugMessage(Venpi_ModName, "GJR_ControlScript", "ProcessItem", "Processing armor item " + akBaseItem + ".", 0, Venpi_DebugEnabled.GetValueInt())
    akOutputContainer.AddItem(GJR_Armor_Recycle_List as Form, 1, True)
    Return
  ElseIf  (itemType == enumItemType.Book)
    ;; No longer taking books these should goto cora
    VPI_Debug.DebugMessage(Venpi_ModName, "GJR_ControlScript", "ProcessItem", "Returning book item " + akBaseItem + ".", 0, Venpi_DebugEnabled.GetValueInt())
    ;; akOutputContainer.AddItem(GJR_Book_Recycle_List as Form, 1, True)
    Return
  ElseIf  (itemType == enumItemType.Misc)
    VPI_Debug.DebugMessage(Venpi_ModName, "GJR_ControlScript", "ProcessItem", "Processing misc item " + akBaseItem + ".", 0, Venpi_DebugEnabled.GetValueInt())
    akOutputContainer.AddItem(GJR_Misc_Recycle_List as Form, 1, True)
    Return
  ElseIf  (itemType == enumItemType.Weapon)
    VPI_Debug.DebugMessage(Venpi_ModName, "GJR_ControlScript", "ProcessItem", "Processing weapon item " + akBaseItem + ".", 0, Venpi_DebugEnabled.GetValueInt())
    akOutputContainer.AddItem(GJR_Weapon_Recycle_List as Form, 1, True)
    Return
  ElseIf  (itemType == enumItemType.Injestible)
    VPI_Debug.DebugMessage(Venpi_ModName, "GJR_ControlScript", "ProcessItem", "Processing injestible item " + akBaseItem + ".", 0, Venpi_DebugEnabled.GetValueInt())
    akOutputContainer.AddItem(GJR_Injestible_Recycle_List as Form, 1, True)
    Return
  Else
    VPI_Debug.DebugMessage(Venpi_ModName, "GJR_ControlScript", "ProcessItem", "Processing unknown item " + akBaseItem + ".", 0, Venpi_DebugEnabled.GetValueInt())
    akOutputContainer.AddItem(GJR_Ammo_Recycle_List as Form, 1, True)
    Return
  EndIf
EndFunction

Function PopulateInorganicResourceVariables()
  If (InorgCommonCopper == None || !InorgCommonCopper)
    InorgCommonCopper = Game.GetFormFromFile(0x00005576, "Starfield.esm") as MiscObject
  EndIf
  If (InorgRareGold == None || !InorgRareGold)
    InorgRareGold = Game.GetFormFromFile(0x00005579, "Starfield.esm") as MiscObject
  EndIf
EndFunction

Function PopulateOrganicResourceVariables()
  If (OrgRareAdhesive == None || !OrgRareAdhesive)
    OrgRareAdhesive = Game.GetFormFromFile(0x000055B1, "Starfield.esm") as MiscObject
  EndIf
  If (OrgCommonFiber == None || !OrgCommonFiber)
    OrgCommonFiber = Game.GetFormFromFile(0x000055AF, "Starfield.esm") as MiscObject
  EndIf
EndFunction

Function PopulateManufacturedResourceVariables()
  If (Mfg_Tier01_IsocenteredMagnet == None || !Mfg_Tier01_IsocenteredMagnet)
    Mfg_Tier01_IsocenteredMagnet = Game.GetFormFromFile(0x00246B77, "Starfield.esm") as MiscObject
  EndIf
EndFunction

Function PopulateItemVariables()
  If (Tool_DuctTape01 == None || !Tool_DuctTape01)
    Tool_DuctTape01 = Game.GetFormFromFile(0x002AC95F, "Starfield.esm") as MiscObject
  EndIf
EndFunction

Function Setup() 
  PopulateInorganicResourceVariables()
  PopulateOrganicResourceVariables()
  PopulateManufacturedResourceVariables()
  PopulateItemVariables()
EndFunction