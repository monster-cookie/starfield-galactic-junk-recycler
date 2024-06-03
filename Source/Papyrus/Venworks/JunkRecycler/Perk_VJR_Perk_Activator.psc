ScriptName Venworks:JunkRecycler:Perk_VJR_Perk_Activator Extends Perk

Import Venworks:Shared:Logging

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Global Variables
;;;
GlobalVariable Property DebugEnabled Auto Const
String Property ModName="VenworksJunkRecycler" Auto Const


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Properties
;;;
ObjectReference Property TransferContainerRef Auto Const


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Variables
;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Events
;;;
Event OnEntryRun(int auiEntryID, ObjectReference akTarget, Actor akOwner)
  Log(ModName, "Venworks:JunkRecycler:Perk_VJR_Perk_Activator", "OnInit", "On OnEntryRun triggered. EntryID is " + auiEntryID + " target is " + akTarget + " owner is " + akOwner + ".", 0, DebugEnabled.GetValueInt())
  If (auiEntryID == 0)
    HandleActivateEntryPoint()
  Else
    Log(ModName, "Venworks:JunkRecycler:Perk_VJR_Perk_Activator", "OnInit", "Unknown perk entry point found, EntryID is " + auiEntryID + " target is " + akTarget + " owner is " + akOwner + ".", 3, DebugEnabled.GetValueInt())
  EndIf
EndEvent


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Functions
;;;

Function HandleActivateEntryPoint()
  Log(ModName, "Venworks:JunkRecycler:Perk_VJR_Perk_Activator", "HandleActivateEntryPoint", "Opening transfer menu.", 0, DebugEnabled.GetValueInt())
  TransferContainerRef.OpenOneWayTransferMenu(aIsGiveOnly=True, aFilterList=None)
EndFunction