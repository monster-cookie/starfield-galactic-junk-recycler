ScriptName GJR_ControlScript Extends Quest

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Constants
;;;
Int Property ITEM_TYPE_UNKNOWN=0 Auto Const Mandatory
Int Property   ITEM_TYPE_ARMOR=1 Auto Const Mandatory
Int Property  ITEM_TYPE_WEAPON=2 Auto Const Mandatory
Int Property    ITEM_TYPE_AMMO=3 Auto Const Mandatory
Int Property    ITEM_TYPE_BOOK=4 Auto Const Mandatory
Int Property    ITEM_TYPE_MISC=5 Auto Const Mandatory

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

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Variables
;;;
ObjectReference OutputContainer

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Events
;;;
Event OnQuestInit()
  Utility.Wait(1)
  If (Venpi_DebugEnabled == None)
    Debug.MessageBox("Failed to wire up Venpi_DebugEnabled.")
  ElseIf (GJR_Ammo_Recycle_List == None)
    Debug.MessageBox("Failed to wire up GJR_Ammo_Recycle_List.")
  ElseIf (GJR_Armor_Recycle_List == None)
    Debug.MessageBox("Failed to wire up GJR_Armor_Recycle_List.")
  ElseIf (GJR_Book_Recycle_List == None)
    Debug.MessageBox("Failed to wire up GJR_Book_Recycle_List.")
  ElseIf (GJR_Misc_Recycle_List == None)
    Debug.MessageBox("Failed to wire up GJR_Misc_Recycle_List.")
  ElseIf (GJR_Weapon_Recycle_List == None)
    Debug.MessageBox("Failed to wire up GJR_Weapon_Recycle_List.")
  EndIf
EndEvent

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Functions
;;;
Function ProcessItem(ObjectReference akItemReference, ObjectReference akOutputContainer)
  OutputContainer = akOutputContainer
  Int itemType = Self.GetItemType(akItemReference)
  If (itemType == ITEM_TYPE_AMMO)
    VPI_Debug.DebugMessage("GJR_ControlScript", "ProcessItem", "Processing ammo item " + akItemReference + ".", 0, Venpi_DebugEnabled.GetValueInt())
    OutputContainer.AddItem(GJR_Ammo_Recycle_List as Form, 1, true)
  ElseIf  (itemType == ITEM_TYPE_ARMOR)
    VPI_Debug.DebugMessage("GJR_ControlScript", "ProcessItem", "Processing armor item " + akItemReference + ".", 0, Venpi_DebugEnabled.GetValueInt())
    OutputContainer.AddItem(GJR_Armor_Recycle_List as Form, 4, true)
  ElseIf  (itemType == ITEM_TYPE_BOOK)
    VPI_Debug.DebugMessage("GJR_ControlScript", "ProcessItem", "Processing book item " + akItemReference + ".", 0, Venpi_DebugEnabled.GetValueInt())
    OutputContainer.AddItem(GJR_Book_Recycle_List as Form, 1, true)
  ElseIf  (itemType == ITEM_TYPE_MISC)
    VPI_Debug.DebugMessage("GJR_ControlScript", "ProcessItem", "Processing misc item " + akItemReference + ".", 0, Venpi_DebugEnabled.GetValueInt())
    OutputContainer.AddItem(GJR_Misc_Recycle_List as Form, 2, true)
  ElseIf  (itemType == ITEM_TYPE_WEAPON)
    VPI_Debug.DebugMessage("GJR_ControlScript", "ProcessItem", "Processing weapon item " + akItemReference + ".", 0, Venpi_DebugEnabled.GetValueInt())
    OutputContainer.AddItem(GJR_Weapon_Recycle_List as Form, 4, true)
  EndIf
  OutputContainer.AddItem(akItemReference as Form, 1, True)
EndFunction

Int Function GetItemType(ObjectReference akItemReference)
  Form baseObject = akItemReference.GetBaseObject() ; #DEBUG_LINE_NO:83
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
  Else
    VPI_Debug.DebugMessage("GJR_ControlScript", "GetItemType", "Encountered Unknown Item Type " + baseObject + ".", 0, Venpi_DebugEnabled.GetValueInt())
    Return ITEM_TYPE_UNKNOWN
  EndIf
EndFunction