ScriptName VJR_TransferContainerScript Extends ObjectReference

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Global Variables
;;;
Struct BreakdownResults
  Form TierA_Item=None
  Int TierA_Quantity=1
  Form TierB_Item=None
  Int TierB_Quantity=1
  Form TierC_Item=None
  Int TierC_Quantity=1
  Form TierD_Item=None
  Int TierD_Quantity=1
  Float SizeAdjustment=1
EndStruct


Struct ItemSizes
  Int Unknown=0
  Int Tiny=1
  Int Small=2
  Int Normal=3
  Int Large=4
  Int Huge=5
EndStruct


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Global Variables
;;;
GlobalVariable Property Venpi_DebugEnabled Auto Const Mandatory
String Property Venpi_ModName="VenworksJunkRecycler" Auto Const Mandatory

GlobalVariable Property VJR_BreakdownQuantity_TierA Auto Const Mandatory
GlobalVariable Property VJR_BreakdownQuantity_TierB Auto Const Mandatory
GlobalVariable Property VJR_BreakdownQuantity_TierC Auto Const Mandatory
GlobalVariable Property VJR_BreakdownQuantity_TierD Auto Const Mandatory

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Properties
;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Variables
;;;
ItemSizes Property EnumItemSize Auto


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Variables - Junk Recycler Keywords
;;;
Keyword Property VJR_ItemSize_Huge Auto Mandatory
Keyword Property VJR_ItemSize_Large Auto Mandatory
Keyword Property VJR_ItemSize_Normal Auto Mandatory
Keyword Property VJR_ItemSize_Small Auto Mandatory
Keyword Property VJR_ItemSize_Tiny Auto Mandatory

Keyword Property VJR_Breakdown_Adhesive_TA Auto Mandatory
Keyword Property VJR_Breakdown_Adhesive_TB Auto Mandatory
Keyword Property VJR_Breakdown_Adhesive_TC Auto Mandatory
Keyword Property VJR_Breakdown_Adhesive_TD Auto Mandatory

Keyword Property VJR_Breakdown_Alkanes_TA Auto Mandatory
Keyword Property VJR_Breakdown_Alkanes_TB Auto Mandatory
Keyword Property VJR_Breakdown_Alkanes_TC Auto Mandatory
Keyword Property VJR_Breakdown_Alkanes_TD Auto Mandatory

Keyword Property VJR_Breakdown_Fiber_TA Auto Mandatory
Keyword Property VJR_Breakdown_Fiber_TB Auto Mandatory
Keyword Property VJR_Breakdown_Fiber_TC Auto Mandatory
Keyword Property VJR_Breakdown_Fiber_TD Auto Mandatory


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Variables - Starfield Materials
;;;
MiscObject Property InorgUncommonAlkanes Auto Mandatory

MiscObject Property OrgCommonFiber Auto Mandatory

MiscObject Property OrgRareAdhesive Auto Mandatory

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Events
;;;
Event OnInit()
  VPI_Debug.DebugMessage(Venpi_ModName, "VJR_TransferContainerScript", "OnInit", "On OnInit triggered.", 0, Venpi_DebugEnabled.GetValueInt())
  Utility.Wait(1)
  EnumItemSize = new ItemSizes
  AddInventoryEventFilter(None)
  SetupMaterialsInorganicCommon()
  SetupMaterialsInorganicUncommon()
  SetupMaterialsInorganicRare()
  SetupMaterialsInorganicUnique()
  SetupMaterialsOrganicCommon()
  SetupMaterialsOrganicUncommon()
  SetupMaterialsOrganicRare()
  SetupMaterialsOrganicUnique()
  SetupKeywords()
EndEvent

Event OnLoad()
  VPI_Debug.DebugMessage(Venpi_ModName, "VJR_TransferContainerScript", "OnLoad", "On OnLoad triggered.", 0, Venpi_DebugEnabled.GetValueInt())
EndEvent

Event OnUnload()
  VPI_Debug.DebugMessage(Venpi_ModName, "VJR_TransferContainerScript", "OnUnload", "On OnUnload triggered.", 0, Venpi_DebugEnabled.GetValueInt())
  RemoveAllInventoryEventFilters()
EndEvent

Event OnItemAdded(Form akBaseItem, Int aiItemCount, ObjectReference akItemReference, ObjectReference akSourceContainer, Int aiTransferReason)
  VPI_Debug.DebugMessage(Venpi_ModName, "VJR_TransferContainerScript", "OnItemAdded", "On OnItemAdded triggered.", 0, Venpi_DebugEnabled.GetValueInt())

  ;; Loop and process items
  VPI_Debug.DebugMessage(Venpi_ModName, "VJR_TransferContainerScript", "OnItemAdded", "Processing item " + akBaseItem +  " of which there are " + aiItemCount + " of them.", 0, Venpi_DebugEnabled.GetValueInt())
  ProcessItem(akBaseItem, aiItemCount)
EndEvent

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Functions
;;;
Function SetupMaterialsInorganicCommon()
EndFunction

Function SetupMaterialsInorganicUncommon()
  InorgUncommonAlkanes = Game.GetFormFromFile(0x000055AF, "Starfield.esm") as MiscObject
EndFunction

Function SetupMaterialsInorganicRare()
EndFunction

Function SetupMaterialsInorganicUnique()
EndFunction

Function SetupMaterialsOrganicCommon()
  OrgCommonFiber = Game.GetFormFromFile(0x000055AF, "Starfield.esm") as MiscObject
EndFunction

Function SetupMaterialsOrganicUncommon()
EndFunction

Function SetupMaterialsOrganicRare()
  OrgRareAdhesive = Game.GetFormFromFile(0x000055B1, "Starfield.esm") as MiscObject
EndFunction

Function SetupMaterialsOrganicUnique()
EndFunction

Function SetupKeywords()
  VJR_ItemSize_Huge = Game.GetFormFromFile(0x0000080B, "VenworksJunkRecycler.esm") as Keyword
  VJR_ItemSize_Large = Game.GetFormFromFile(0x0000080C, "VenworksJunkRecycler.esm") as Keyword
  VJR_ItemSize_Normal = Game.GetFormFromFile(0x0000080D, "VenworksJunkRecycler.esm") as Keyword
  VJR_ItemSize_Small = Game.GetFormFromFile(0x0000080E, "VenworksJunkRecycler.esm") as Keyword
  VJR_ItemSize_Tiny = Game.GetFormFromFile(0x0000080F, "VenworksJunkRecycler.esm") as Keyword

  VJR_Breakdown_Adhesive_TA = Game.GetFormFromFile(0x00000803, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Adhesive_TB = Game.GetFormFromFile(0x00000804, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Adhesive_TC = Game.GetFormFromFile(0x00000805, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Adhesive_TD = Game.GetFormFromFile(0x00000806, "VenworksJunkRecycler.esm") as Keyword

  VJR_Breakdown_Alkanes_TA = Game.GetFormFromFile(0x00000814, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Alkanes_TB = Game.GetFormFromFile(0x00000815, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Alkanes_TC = Game.GetFormFromFile(0x00000816, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Alkanes_TD = Game.GetFormFromFile(0x00000817, "VenworksJunkRecycler.esm") as Keyword

  VJR_Breakdown_Fiber_TA = Game.GetFormFromFile(0x00000810, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Fiber_TB = Game.GetFormFromFile(0x00000811, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Fiber_TC = Game.GetFormFromFile(0x00000812, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Fiber_TD = Game.GetFormFromFile(0x00000813, "VenworksJunkRecycler.esm") as Keyword
EndFunction

Function ProcessItem(Form baseItem, int count)
  BreakdownResults results=New BreakdownResults
  Actor player = Game.GetPlayer()
  VPI_Debug.DebugMessage(Venpi_ModName, "VJR_TransferContainerScript", "ProcessItem", "Processing item " + baseItem + ".", 0, Venpi_DebugEnabled.GetValueInt())

  results.SizeAdjustment = GetItemSizeAdjustment(baseItem)
  results.TierA_Item = GetItemTierA(baseItem)
  results.TierA_Quantity = Math.Floor(VJR_BreakdownQuantity_TierA.GetValueInt() * results.SizeAdjustment)
  results.TierB_Item = GetItemTierB(baseItem)
  results.TierB_Quantity = Math.Floor(VJR_BreakdownQuantity_TierB.GetValueInt() * results.SizeAdjustment)
  results.TierC_Item = GetItemTierC(baseItem)
  results.TierC_Quantity = Math.Floor(VJR_BreakdownQuantity_TierC.GetValueInt() * results.SizeAdjustment)
  results.TierD_Item = GetItemTierD(baseItem)
  results.TierD_Quantity = Math.Floor(VJR_BreakdownQuantity_TierD.GetValueInt() * results.SizeAdjustment)

  If (results.TierA_Item == None && results.TierB_Item == None && results.TierC_Item == None && results.TierD_Item == None)
    VPI_Debug.DebugMessage(Venpi_ModName, "VJR_TransferContainerScript", "ProcessItem", "Failed to find breakdown rules for " + baseItem + " returning to player inventory.", 0, Venpi_DebugEnabled.GetValueInt())
    player.AddItem(akItemToAdd=baseItem, aiCount=count, abSilent=False)
    RemoveItem(akItemToRemove=baseItem, aiCount=count, abSilent=False, akOtherContainer=None)
    Return
  EndIf
  
  ;; Fix up minimum quantities
  If (results.TierA_Quantity == 0)
    results.TierA_Quantity = 1
  EndIf
  If (results.TierB_Quantity == 0)
    results.TierB_Quantity = 1
  EndIf
  If (results.TierC_Quantity == 0)
    results.TierC_Quantity = 1
  EndIf
  If (results.TierD_Quantity == 0)
    results.TierD_Quantity = 1
  EndIf

  VPI_Debug.DebugMessage(Venpi_ModName, "VJR_TransferContainerScript", "ProcessItem", "To player's inventory adding Tier A breakdown component of " + results.TierA_Item + " at a quantity of " + results.TierA_Quantity + ".", 0, Venpi_DebugEnabled.GetValueInt())
  player.AddItem(akItemToAdd=results.TierA_Item, aiCount=results.TierA_Quantity, abSilent=False)
  VPI_Debug.DebugMessage(Venpi_ModName, "VJR_TransferContainerScript", "ProcessItem", "To player's inventory adding Tier B breakdown component of " + results.TierB_Item + " at a quantity of " + results.TierB_Quantity + ".", 0, Venpi_DebugEnabled.GetValueInt())
  player.AddItem(akItemToAdd=results.TierB_Item, aiCount=results.TierB_Quantity, abSilent=False)
  VPI_Debug.DebugMessage(Venpi_ModName, "VJR_TransferContainerScript", "ProcessItem", "To player's inventory adding Tier C breakdown component of " + results.TierC_Item + " at a quantity of " + results.TierC_Quantity + ".", 0, Venpi_DebugEnabled.GetValueInt())
  player.AddItem(akItemToAdd=results.TierC_Item, aiCount=results.TierC_Quantity, abSilent=False)
  VPI_Debug.DebugMessage(Venpi_ModName, "VJR_TransferContainerScript", "ProcessItem", "To player's inventory adding Tier D breakdown component of " + results.TierD_Item + " at a quantity of " + results.TierD_Quantity + ".", 0, Venpi_DebugEnabled.GetValueInt())
  player.AddItem(akItemToAdd=results.TierD_Item, aiCount=results.TierD_Quantity, abSilent=False)
  RemoveItem(akItemToRemove=baseItem, aiCount=count, abSilent=False, akOtherContainer=None)
EndFunction

Float Function GetItemSizeAdjustment(Form baseItem)
  If (baseItem.HasKeyword(VJR_ItemSize_Huge))
    Return 3
  ElseIf(baseItem.HasKeyword(VJR_ItemSize_Large))
    Return 2
  ElseIf(baseItem.HasKeyword(VJR_ItemSize_Normal))
    Return 1
  ElseIf(baseItem.HasKeyword(VJR_ItemSize_Small))
    Return 0.5
  ElseIf(baseItem.HasKeyword(VJR_ItemSize_Tiny))
    Return 0.25
  Else
    Return 1
  EndIf
EndFunction

Form Function GetItemTierA(Form baseItem)
  If (baseItem.HasKeyword(VJR_Breakdown_Adhesive_TA))
    Return OrgRareAdhesive
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Alkanes_TA))
    Return InorgUncommonAlkanes
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Fiber_TA))
    Return OrgCommonFiber
  Else 
    Return None
  EndIf
EndFunction

Form Function GetItemTierB(Form baseItem)
  If (baseItem.HasKeyword(VJR_Breakdown_Adhesive_TB))
    Return OrgRareAdhesive
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Alkanes_TB))
    Return InorgUncommonAlkanes
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Fiber_TB))
    Return OrgCommonFiber
  Else 
    Return None
  EndIf
EndFunction

Form Function GetItemTierC(Form baseItem)
  If (baseItem.HasKeyword(VJR_Breakdown_Adhesive_TC))
    Return OrgRareAdhesive
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Alkanes_TC))
    Return InorgUncommonAlkanes
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Fiber_TC))
    Return OrgCommonFiber
  Else 
    Return None
  EndIf
EndFunction

Form Function GetItemTierD(Form baseItem)
  If (baseItem.HasKeyword(VJR_Breakdown_Adhesive_TD))
    Return OrgRareAdhesive
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Alkanes_TD))
    Return InorgUncommonAlkanes
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Fiber_TD))
    Return OrgCommonFiber
  Else 
    Return None
  EndIf
EndFunction
