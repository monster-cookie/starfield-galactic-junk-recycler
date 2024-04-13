ScriptName Venworks:JunkRecycler:PerkActivatorFragmentsScript Extends Perk

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Global Variables
;;;
GlobalVariable Property DebugEnabled Auto Const
String Property ModName="VenworksDebug" Auto Const

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

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Fragments
;;;
Function Fragment_Entry_00(ObjectReference akTargetRef, Actor akActor)
  Venworks:Shared:Logging.Log(ModName, "VJR_PERK_Activator_FragmentsScript", "Fragment_Entry_00", "Opening transfer menu.", 0, DebugEnabled.GetValueInt())
  TransferContainerRef.OpenOneWayTransferMenu(aIsGiveOnly=True, aFilterList=None)
EndFunction
