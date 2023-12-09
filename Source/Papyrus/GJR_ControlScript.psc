ScriptName GJR_ControlScript Extends Quest


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Constants
;;;
Int Property       ITEM_TYPE_UNKNOWN=0 Auto Const Mandatory
Int Property         ITEM_TYPE_ARMOR=1 Auto Const Mandatory
Int Property        ITEM_TYPE_WEAPON=2 Auto Const Mandatory
Int Property          ITEM_TYPE_AMMO=3 Auto Const Mandatory
Int Property          ITEM_TYPE_BOOK=4 Auto Const Mandatory
Int Property          ITEM_TYPE_MISC=5 Auto Const Mandatory
Int Property    ITEM_TYPE_INJESTIBLE=6 Auto Const Mandatory

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Global Variables
;;;
GlobalVariable Property Venpi_DebugEnabled Auto Const Mandatory

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
  VPI_Debug.DebugMessage("GJR_ControlScript", "OnQuestInit", "OnQuestInit triggered.", 0, Venpi_DebugEnabled.GetValueInt())

  If (Venpi_DebugEnabled == None)
    Utility.Wait(1)
    Debug.MessageBox("Failed to wire up Venpi_DebugEnabled.")
  ElseIf (GJR_Ammo_Recycle_List == None)
    Utility.Wait(1)
    Debug.MessageBox("Failed to wire up GJR_Ammo_Recycle_List.")
  ElseIf (GJR_Armor_Recycle_List == None)
    Utility.Wait(1)
    Debug.MessageBox("Failed to wire up GJR_Armor_Recycle_List.")
  ElseIf (GJR_Book_Recycle_List == None)
    Utility.Wait(1)
    Debug.MessageBox("Failed to wire up GJR_Book_Recycle_List.")
  ElseIf (GJR_Misc_Recycle_List == None)
    Utility.Wait(1)
    Debug.MessageBox("Failed to wire up GJR_Misc_Recycle_List.")
  ElseIf (GJR_Weapon_Recycle_List == None)
    Utility.Wait(1)
    Debug.MessageBox("Failed to wire up GJR_Weapon_Recycle_List.")
  EndIf

  Setup()
EndEvent

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Functions
;;;
Function ProcessItem(ObjectReference akItemReference, ObjectReference akOutputContainer)
  VPI_Debug.DebugMessage("GJR_ControlScript", "ProcessItem", "Processing item ref " + akItemReference + " against rule tree.", 0, Venpi_DebugEnabled.GetValueInt())

  Setup()
  Form baseObject = akItemReference.GetBaseObject()
  Bool useFallback = True

  VPI_Debug.DebugMessage("GJR_ControlScript", "ProcessItem", "Processing base item " + baseObject + " against rule tree.", 0, Venpi_DebugEnabled.GetValueInt())

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;;
  ;; Specifically Mapped Item Rules
  ;;
  If (baseObject.GetFormID() ==  Tool_DuctTape01.GetFormID())
    VPI_Debug.DebugMessage("GJR_ControlScript", "ProcessItem", "Processing vacuum tape item and returning Adhesive and Fiber.", 0, Venpi_DebugEnabled.GetValueInt())
    akOutputContainer.AddItem(OrgRareAdhesive as Form, Utility.RandomInt(0,4), True)
    akOutputContainer.AddItem(OrgCommonFiber as Form, Utility.RandomInt(0,4), True)
    useFallback = False
  EndIf

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;;
  ;; Group Mapped Item Rules
  ;;
  If (GJR_GroupRule_Electronics_List.HasForm(baseObject))
    VPI_Debug.DebugMessage("GJR_ControlScript", "ProcessItem", "Processing electronics group item " + baseObject + ".", 0, Venpi_DebugEnabled.GetValueInt())
    akOutputContainer.AddItem(GJR_GroupRule_Electronics_Resources as Form, 1, True)
    useFallback = False
  ElseIf (GJR_GroupRule_Tools_List.HasForm(baseObject))
    VPI_Debug.DebugMessage("GJR_ControlScript", "ProcessItem", "Processing tools group item " + baseObject + ".", 0, Venpi_DebugEnabled.GetValueInt())
    akOutputContainer.AddItem(GJR_GroupRule_Tools_Resources as Form, 1, True)
    useFallback = False
  ElseIf (GJR_GroupRule_BarStuff_List.HasForm(baseObject))
    VPI_Debug.DebugMessage("GJR_ControlScript", "ProcessItem", "Processing bar stuff group item " + baseObject + ".", 0, Venpi_DebugEnabled.GetValueInt())
    akOutputContainer.AddItem(GJR_GroupRule_BarStuff_Resources as Form, 1, True)
    useFallback = False
  ElseIf (GJR_GroupRule_DecorativeStuff_List.HasForm(baseObject))
    VPI_Debug.DebugMessage("GJR_ControlScript", "ProcessItem", "Processing decorative stuff group item " + baseObject + ".", 0, Venpi_DebugEnabled.GetValueInt())
    akOutputContainer.AddItem(GJR_GroupRule_DecorativeStuff_Resources as Form, 1, True)
    useFallback = False
  ElseIf (GJR_GroupRule_Food_List.HasForm(baseObject))
    VPI_Debug.DebugMessage("GJR_ControlScript", "ProcessItem", "Processing food group item " + baseObject + ".", 0, Venpi_DebugEnabled.GetValueInt())
    akOutputContainer.AddItem(GJR_GroupRule_Food_Resources as Form, 1, True)
    useFallback = False
  ElseIf (GJR_GroupRule_Aid_List.HasForm(baseObject))
    VPI_Debug.DebugMessage("GJR_ControlScript", "ProcessItem", "Processing aid group item " + baseObject + ".", 0, Venpi_DebugEnabled.GetValueInt())
    akOutputContainer.AddItem(GJR_GroupRule_Aid_Resources as Form, 1, True)
    useFallback = False
  ElseIf (GJR_GroupRule_Chems_List.HasForm(baseObject))
    VPI_Debug.DebugMessage("GJR_ControlScript", "ProcessItem", "Processing chems group item " + baseObject + ".", 0, Venpi_DebugEnabled.GetValueInt())
    akOutputContainer.AddItem(GJR_GroupRule_Chems_Resources as Form, 1, True)
    useFallback = False
  ElseIf (GJR_GroupRule_AlienFood_List.HasForm(baseObject))
    VPI_Debug.DebugMessage("GJR_ControlScript", "ProcessItem", "Processing alien food group item " + baseObject + ".", 0, Venpi_DebugEnabled.GetValueInt())
    akOutputContainer.AddItem(GJR_GroupRule_AlienFood_Resources as Form, 1, True)
    useFallback = False
  EndIf

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;;
  ;; Fallback Rules
  ;;
  Int itemType = Self.GetItemType(baseObject)
  If (useFallback && itemType == ITEM_TYPE_AMMO)
    VPI_Debug.DebugMessage("GJR_ControlScript", "ProcessItem", "Processing ammo item " + akItemReference + ".", 0, Venpi_DebugEnabled.GetValueInt())
    akOutputContainer.AddItem(GJR_Ammo_Recycle_List as Form, 1, True)
  ElseIf  (useFallback && itemType == ITEM_TYPE_ARMOR)
    VPI_Debug.DebugMessage("GJR_ControlScript", "ProcessItem", "Processing armor item " + akItemReference + ".", 0, Venpi_DebugEnabled.GetValueInt())
    akOutputContainer.AddItem(GJR_Armor_Recycle_List as Form, 1, True)
  ElseIf  (useFallback && itemType == ITEM_TYPE_BOOK)
    VPI_Debug.DebugMessage("GJR_ControlScript", "ProcessItem", "Processing book item " + akItemReference + ".", 0, Venpi_DebugEnabled.GetValueInt())
    akOutputContainer.AddItem(GJR_Book_Recycle_List as Form, 1, True)
  ElseIf  (useFallback && itemType == ITEM_TYPE_MISC)
    VPI_Debug.DebugMessage("GJR_ControlScript", "ProcessItem", "Processing misc item " + akItemReference + ".", 0, Venpi_DebugEnabled.GetValueInt())
    akOutputContainer.AddItem(GJR_Misc_Recycle_List as Form, 1, True)
  ElseIf  (useFallback && itemType == ITEM_TYPE_WEAPON)
    VPI_Debug.DebugMessage("GJR_ControlScript", "ProcessItem", "Processing weapon item " + akItemReference + ".", 0, Venpi_DebugEnabled.GetValueInt())
    akOutputContainer.AddItem(GJR_Weapon_Recycle_List as Form, 1, True)
  ElseIf  (useFallback && itemType == ITEM_TYPE_INJESTIBLE)
    VPI_Debug.DebugMessage("GJR_ControlScript", "ProcessItem", "Processing injestible item " + akItemReference + ".", 0, Venpi_DebugEnabled.GetValueInt())
    akOutputContainer.AddItem(GJR_Injestible_Recycle_List as Form, 1, True)
  EndIf

   ;; This is so the calling function can actually delete it. 
   akOutputContainer.AddItem(akItemReference as Form, 1, True)
EndFunction

Int Function GetItemType(Form baseObject)
  If (baseObject is Weapon)
    Return ITEM_TYPE_WEAPON
  ElseIf baseObject is Armor
    Return ITEM_TYPE_ARMOR
  ElseIf baseObject is Ammo
    Return ITEM_TYPE_AMMO
  ElseIf baseObject is Book
    Return ITEM_TYPE_BOOK
  ElseIf baseObject is MiscObject
    Return ITEM_TYPE_MISC
  ElseIf baseObject is Potion
    Return ITEM_TYPE_INJESTIBLE
  Else
    VPI_Debug.DebugMessage("GJR_ControlScript", "GetItemType", "Encountered Unknown Item Type " + baseObject + ".", 0, Venpi_DebugEnabled.GetValueInt())
    Return ITEM_TYPE_UNKNOWN
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