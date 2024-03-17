ScriptName VJR_PERK_Activator_FragmentsScript Extends Perk

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Global Variables
;;;
GlobalVariable Property Venpi_DebugEnabled Auto Const Mandatory
String Property Venpi_ModName="VenworksJunkRecycler" Auto Const Mandatory

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Properties
;;;
ObjectReference Property TransferContainerRef Auto Const mandatory

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
  VPI_Debug.DebugMessage(Venpi_ModName, "VJR_PERK_Activator_FragmentsScript", "Fragment_Entry_00", "Opening transfer menu.", 0, Venpi_DebugEnabled.GetValueInt())
  TransferContainerRef.OpenOneWayTransferMenu(aIsGiveOnly=True, aFilterList=None)
EndFunction
