ScriptName Venworks:JunkRecycler:Potion_FixActivatorPerk extends ActiveMagicEffect

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
Perk Property VJR_PERK_Activator Auto Const Mandatory

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Variables
;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Events
;;;
Event OnEffectStart(ObjectReference akTarget, Actor akCaster, MagicEffect akBaseEffect, float afMagnitude, float afDuration)
  Log(ModName, "Venworks:JunkRecycler:Potion_FixActivatorPerk", "OnEffectStart", "On OnEffectStart triggered. Magic Effect is " + akBaseEffect + " target is " + akTarget + ".", 0, DebugEnabled.GetValueInt())
  Actor player = Game.GetPlayer()

  If (player.HasPerk(VJR_PERK_Activator))
    Debug.MessageBox("You already have the perk assigned if the workbenches are not showing the recycler please join and ask for help on the Venworks Discord Community.")
  Else
    Debug.MessageBox("You were missing the activator perk, this should be resolved now.")
    player.AddPerk(VJR_PERK_Activator, True)
  EndIf
EndEvent