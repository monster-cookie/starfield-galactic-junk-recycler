ScriptName GJR_JunkRecyclerActivatorScript Extends ObjectReference

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Global Variables
;;;
GlobalVariable Property Venpi_DebugEnabled Auto Const Mandatory

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Properties
;;;
Keyword Property GJR_KW_TransferContainer Auto Const Mandatory

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Variables
;;;
ObjectReference myTransferContainer

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Events
;;;
Event OnInit()
  Utility.Wait(1)
  If (Venpi_DebugEnabled == None)
    Debug.MessageBox("Failed to wire up Venpi_DebugEnabled.")
  ElseIf (GJR_KW_TransferContainer == None)
    Debug.MessageBox("Failed to wire up GJR_KW_TransferContainer.")
  EndIf
EndEvent

Event OnLoad()
  Setup()
EndEvent

Event OnActivate(ObjectReference akActionRef)
  Setup()
  If (akActionRef == Game.GetPlayer() as ObjectReference)
    Self.OpenTransfer()
  EndIf
EndEvent

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Functions
;;;
Function Setup()
  If (myTransferContainer == None)
    myTransferContainer = Self.GetLinkedRef(GJR_KW_TransferContainer)
  EndIf
EndFunction

Function OpenTransfer()
  myTransferContainer.OpenOneWayTransferMenu(True, None) ; #DEBUG_LINE_NO:54
EndFunction
