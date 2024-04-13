;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
Scriptname Venworks:Fragments:Perks:PRKF_VJR_PERK_Activator_01000A3B Extends Perk Hidden Const

;BEGIN FRAGMENT Fragment_Entry_00
Function Fragment_Entry_00(ObjectReference akTargetRef, Actor akActor)
;BEGIN CODE
    Venworks:Shared:Logging.Log(ModName, "VJR_PERK_Activator_FragmentsScript", "Fragment_Entry_00", "Opening transfer menu.", 0, DebugEnabled.GetValueInt())
    TransferContainerRef.OpenOneWayTransferMenu(aIsGiveOnly=True, aFilterList=None)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

GlobalVariable Property DebugEnabled Auto Const

string Property ModName = "VenworksDebug" Auto Const

ObjectReference Property TransferContainerRef Auto Const
