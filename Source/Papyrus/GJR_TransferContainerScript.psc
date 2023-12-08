ScriptName GJR_TransferContainerScript Extends ObjectReference

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Global Variables
;;;
GlobalVariable Property Venpi_DebugEnabled Auto Const Mandatory

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Properties
;;;
Quest Property GJR_ControlQuest Auto Const Mandatory
Keyword Property GJR_KW_OutputContainer Auto Const mandatory

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Variables
;;;
ObjectReference myOutputContainer

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Events
;;;
Event OnInit()
  Utility.Wait(1)
  If (Venpi_DebugEnabled == None)
    Debug.MessageBox("Failed to wire up Venpi_DebugEnabled.")
  ElseIf (GJR_ControlQuest == None)
    Debug.MessageBox("Failed to wire up GJR_ControlQuest.")
  ElseIf (GJR_KW_OutputContainer == None)
    Debug.MessageBox("Failed to wire up GJR_KW_OutputContainer.")
  EndIf
EndEvent

Event OnItemAdded(Form akBaseItem, Int aiItemCount, ObjectReference akItemReference, ObjectReference akSourceContainer, Int aiTransferReason)
  If (myOutputContainer == None)
    Debug.MessageBox("The output container could not be connected to the transfer container. Items will be returned to the source container.")
    VPI_Debug.DebugMessage("GJR_TransferContainerScript", "OnItemAdded", "The output container could not be connected to the transfer container. Items will be returned to the source container.", 0, Venpi_DebugEnabled.GetValueInt())
    Self.RemoveAllItems(akSourceContainer, True, False)
    Return
  EndIf

  ;; Loop and process items
  Int i = 0
  While (i < aiItemCount)
    ObjectReference itemRef = Self.DropObject(akBaseItem, 1)
    (GJR_ControlQuest as GJR_ControlScript).ProcessItem(itemRef, myOutputContainer)
    myOutputContainer.RemoveItem(itemRef, 1, False, None)
    i += 1
  EndWhile
  ;;Self.RemoveAllItems(None, False, False)
EndEvent

Event OnLoad()
  Self.Setup()
  If (myOutputContainer as Bool)
    Self.RemoveAllItems(myOutputContainer, True, False)
  EndIf
EndEvent

Event OnUnload()
  Self.RemoveAllItems(myOutputContainer, True, False)
EndEvent

Event OnWorkshopObjectRemoved(ObjectReference akReference)
  If (myOutputContainer as Bool)
    Self.RemoveAllItems(myOutputContainer, True, False)
  EndIf
  myOutputContainer = None
EndEvent

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Functions
;;;
Function Setup()
  If (myOutputContainer == None)
    myOutputContainer = Self.GetLinkedRef(GJR_KW_OutputContainer)
  EndIf
EndFunction
