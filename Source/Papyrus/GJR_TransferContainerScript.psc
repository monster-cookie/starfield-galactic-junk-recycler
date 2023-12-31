ScriptName GJR_TransferContainerScript Extends ObjectReference

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
  VPI_Debug.DebugMessage(Venpi_ModName, "GJR_TransferContainerScript", "OnInit", "On OnInit triggered.", 0, Venpi_DebugEnabled.GetValueInt())
  Utility.Wait(1)
  Self.OnLoad() ;; Needed for static world cells aka lodge
EndEvent

Event OnItemAdded(Form akBaseItem, Int aiItemCount, ObjectReference akItemReference, ObjectReference akSourceContainer, Int aiTransferReason)
  VPI_Debug.DebugMessage(Venpi_ModName, "GJR_TransferContainerScript", "OnItemAdded", "On OnItemAdded triggered.", 0, Venpi_DebugEnabled.GetValueInt())

  If (myOutputContainer == None || !myOutputContainer)
    Debug.MessageBox("The output container could not be connected to the transfer container. Items will be returned to the source container.")
    VPI_Debug.DebugMessage(Venpi_ModName, "GJR_TransferContainerScript", "OnItemAdded", "The output container could not be connected to the transfer container. Items will be returned to the source container.", 0, Venpi_DebugEnabled.GetValueInt())
    Self.RemoveAllItems(akSourceContainer, True, False)
    Return
  EndIf

  ;; Loop and process items
  Int i = 0
  While (i < aiItemCount)
    VPI_Debug.DebugMessage(Venpi_ModName, "GJR_TransferContainerScript", "OnItemAdded", "Processing item " + i+1 + " of " + aiItemCount + " which is " + akBaseItem +  ".", 0, Venpi_DebugEnabled.GetValueInt())

    (GJR_ControlQuest as GJR_ControlScript).ProcessItem(akBaseItem, myOutputContainer)
    self.RemoveItem(akBaseItem, 1, False, None)

    i += 1
  EndWhile
EndEvent

Event OnLoad()
  VPI_Debug.DebugMessage(Venpi_ModName, "GJR_TransferContainerScript", "OnLoad", "On OnLoad triggered.", 0, Venpi_DebugEnabled.GetValueInt())
  Self.Setup()
  Self.AddInventoryEventFilter(None) ; #DEBUG_LINE_NO:37
  If (myOutputContainer as Bool)
    Self.RemoveAllItems(myOutputContainer, True, False)
  EndIf
EndEvent

Event OnUnload()
  VPI_Debug.DebugMessage(Venpi_ModName, "GJR_TransferContainerScript", "OnUnload", "On OnUnload triggered.", 0, Venpi_DebugEnabled.GetValueInt())
  Self.RemoveAllInventoryEventFilters()
  Self.RemoveAllItems(myOutputContainer, True, False)
EndEvent

Event OnWorkshopObjectRemoved(ObjectReference akReference)
  VPI_Debug.DebugMessage(Venpi_ModName, "GJR_TransferContainerScript", "OnWorkshopObjectRemoved", "On OnWorkshopObjectRemoved triggered.", 0, Venpi_DebugEnabled.GetValueInt())
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
  VPI_Debug.DebugMessage(Venpi_ModName, "GJR_TransferContainerScript", "Setup", "Container Setup Called.", 0, Venpi_DebugEnabled.GetValueInt())
  If (myOutputContainer == None || !myOutputContainer)
    myOutputContainer = Self.GetLinkedRef(GJR_KW_OutputContainer)
    If (myOutputContainer == None || !myOutputContainer)
      VPI_Debug.DebugMessage(Venpi_ModName, "GJR_TransferContainerScript", "Setup", "ERROR: Failed to find my output container.", 0, Venpi_DebugEnabled.GetValueInt())
    Else
      VPI_Debug.DebugMessage(Venpi_ModName, "GJR_TransferContainerScript", "Setup", "Found and mapped my output container.", 0, Venpi_DebugEnabled.GetValueInt())
    EndIf
  EndIf
EndFunction
