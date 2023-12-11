ScriptName GJR_JunkRecyclerActivatorScript Extends ObjectReference

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Global Variables
;;;
GlobalVariable Property Venpi_DebugEnabled Auto Const Mandatory
String Property Venpi_ModName Auto Const Mandatory

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
  VPI_Debug.DebugMessage(Venpi_ModName, "GJR_JunkRecyclerActivatorScript", "OnInit", "OnInit triggered.", 0, Venpi_DebugEnabled.GetValueInt())
  Utility.Wait(1)
  If (Venpi_DebugEnabled == None || !Venpi_DebugEnabled)
    Debug.MessageBox("Failed to wire up Venpi_DebugEnabled.")
  ElseIf (GJR_KW_TransferContainer == None || !GJR_KW_TransferContainer)
    Debug.MessageBox("Failed to wire up GJR_KW_TransferContainer.")
  EndIf
EndEvent

Event OnLoad()
  VPI_Debug.DebugMessage(Venpi_ModName, "GJR_JunkRecyclerActivatorScript", "OnLoad", "OnLoad triggered.", 0, Venpi_DebugEnabled.GetValueInt())
  Setup()
EndEvent

Event OnActivate(ObjectReference akActionRef)
  VPI_Debug.DebugMessage(Venpi_ModName, "GJR_JunkRecyclerActivatorScript", "OnActivate", "OnActivate triggered.", 0, Venpi_DebugEnabled.GetValueInt())
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
  VPI_Debug.DebugMessage(Venpi_ModName, "GJR_JunkRecyclerActivatorScript", "Setup", "Activator Setup Called.", 0, Venpi_DebugEnabled.GetValueInt())
  If (myTransferContainer == None || !myTransferContainer)
    myTransferContainer = Self.GetLinkedRef(GJR_KW_TransferContainer)
    If (myTransferContainer == None || !myTransferContainer)
      VPI_Debug.DebugMessage(Venpi_ModName, "GJR_JunkRecyclerActivatorScript", "Setup", "ERROR: Failed to find my transfer container.", 0, Venpi_DebugEnabled.GetValueInt())
    Else
      VPI_Debug.DebugMessage(Venpi_ModName, "GJR_JunkRecyclerActivatorScript", "Setup", "Found and mapped my transfer container.", 0, Venpi_DebugEnabled.GetValueInt())
    EndIf
  EndIf
EndFunction

Function OpenTransfer()
  VPI_Debug.DebugMessage(Venpi_ModName, "GJR_JunkRecyclerActivatorScript", "OpenTransfer", "Activator opening player one way transfer menu.", 0, Venpi_DebugEnabled.GetValueInt())
  myTransferContainer.OpenOneWayTransferMenu(True, None)
EndFunction
