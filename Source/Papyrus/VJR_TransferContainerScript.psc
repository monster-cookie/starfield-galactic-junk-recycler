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
;;; Variables
;;;
Keyword Property VJR_ItemSize_Huge Auto Mandatory
Keyword Property VJR_ItemSize_Large Auto Mandatory
Keyword Property VJR_ItemSize_Normal Auto Mandatory
Keyword Property VJR_ItemSize_Small Auto Mandatory
Keyword Property VJR_ItemSize_Tiny Auto Mandatory

Keyword Property VJR_Breakdown_RandomInorganic_TA Auto Mandatory
Keyword Property VJR_Breakdown_RandomInorganic_TB Auto Mandatory
Keyword Property VJR_Breakdown_RandomInorganic_TC Auto Mandatory
Keyword Property VJR_Breakdown_RandomInorganic_TD Auto Mandatory

Keyword Property VJR_Breakdown_RandomOrganic_TA Auto Mandatory
Keyword Property VJR_Breakdown_RandomOrganic_TB Auto Mandatory
Keyword Property VJR_Breakdown_RandomOrganic_TC Auto Mandatory
Keyword Property VJR_Breakdown_RandomOrganic_TD Auto Mandatory


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Variables - Starfield Inorganic Materials (Common)
;;;
MiscObject Property InorgCommonAluminum Auto Mandatory
Keyword Property VJR_Breakdown_Aluminum_TA Auto Mandatory
Keyword Property VJR_Breakdown_Aluminum_TB Auto Mandatory
Keyword Property VJR_Breakdown_Aluminum_TC Auto Mandatory
Keyword Property VJR_Breakdown_Aluminum_TD Auto Mandatory

MiscObject Property InorgCommonArgon Auto Mandatory
Keyword Property VJR_Breakdown_Argon_TA Auto Mandatory
Keyword Property VJR_Breakdown_Argon_TB Auto Mandatory
Keyword Property VJR_Breakdown_Argon_TC Auto Mandatory
Keyword Property VJR_Breakdown_Argon_TD Auto Mandatory

MiscObject Property InorgCommonChlorine Auto Mandatory
Keyword Property VJR_Breakdown_Chlorine_TA Auto Mandatory
Keyword Property VJR_Breakdown_Chlorine_TB Auto Mandatory
Keyword Property VJR_Breakdown_Chlorine_TC Auto Mandatory
Keyword Property VJR_Breakdown_Chlorine_TD Auto Mandatory

MiscObject Property InorgCommonCopper Auto Mandatory
Keyword Property VJR_Breakdown_Copper_TA Auto Mandatory
Keyword Property VJR_Breakdown_Copper_TB Auto Mandatory
Keyword Property VJR_Breakdown_Copper_TC Auto Mandatory
Keyword Property VJR_Breakdown_Copper_TD Auto Mandatory

MiscObject Property InorgCommonHelium3 Auto Mandatory
Keyword Property VJR_Breakdown_Helium3_TA Auto Mandatory
Keyword Property VJR_Breakdown_Helium3_TB Auto Mandatory
Keyword Property VJR_Breakdown_Helium3_TC Auto Mandatory
Keyword Property VJR_Breakdown_Helium3_TD Auto Mandatory

MiscObject Property InorgCommonIron Auto Mandatory
Keyword Property VJR_Breakdown_Iron_TA Auto Mandatory
Keyword Property VJR_Breakdown_Iron_TB Auto Mandatory
Keyword Property VJR_Breakdown_Iron_TC Auto Mandatory
Keyword Property VJR_Breakdown_Iron_TD Auto Mandatory

MiscObject Property InorgCommonLead Auto Mandatory
Keyword Property VJR_Breakdown_Lead_TA Auto Mandatory
Keyword Property VJR_Breakdown_Lead_TB Auto Mandatory
Keyword Property VJR_Breakdown_Lead_TC Auto Mandatory
Keyword Property VJR_Breakdown_Lead_TD Auto Mandatory

MiscObject Property InorgCommonNickel Auto Mandatory
Keyword Property VJR_Breakdown_Nickel_TA Auto Mandatory
Keyword Property VJR_Breakdown_Nickel_TB Auto Mandatory
Keyword Property VJR_Breakdown_Nickel_TC Auto Mandatory
Keyword Property VJR_Breakdown_Nickel_TD Auto Mandatory

MiscObject Property InorgCommonUranium Auto Mandatory
Keyword Property VJR_Breakdown_Uranium_TA Auto Mandatory
Keyword Property VJR_Breakdown_Uranium_TB Auto Mandatory
Keyword Property VJR_Breakdown_Uranium_TC Auto Mandatory
Keyword Property VJR_Breakdown_Uranium_TD Auto Mandatory

MiscObject Property InorgCommonWater Auto Mandatory
Keyword Property VJR_Breakdown_Water_TA Auto Mandatory
Keyword Property VJR_Breakdown_Water_TB Auto Mandatory
Keyword Property VJR_Breakdown_Water_TC Auto Mandatory
Keyword Property VJR_Breakdown_Water_TD Auto Mandatory



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Variables - Starfield Inorganic Materials (Uncommon)
;;;
MiscObject Property InorgUncommonAlkanes Auto Mandatory
Keyword Property VJR_Breakdown_Alkanes_TA Auto Mandatory
Keyword Property VJR_Breakdown_Alkanes_TB Auto Mandatory
Keyword Property VJR_Breakdown_Alkanes_TC Auto Mandatory
Keyword Property VJR_Breakdown_Alkanes_TD Auto Mandatory

MiscObject Property InorgUncommonBenzene Auto Mandatory
MiscObject Property InorgUncommonBeryllium Auto Mandatory
MiscObject Property InorgUncommonChlorosilanes Auto Mandatory
MiscObject Property InorgUncommonCobalt Auto Mandatory
MiscObject Property InorgUncommonFluorine Auto Mandatory
MiscObject Property InorgUncommonIridium Auto Mandatory
MiscObject Property InorgUncommonSilver Auto Mandatory
MiscObject Property InorgUncommonTungsten Auto Mandatory


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Variables - Starfield Inorganic Materials (Rare)
;;;
MiscObject Property InorgRareCarboxylicAcids Auto Mandatory
MiscObject Property InorgRareGold Auto Mandatory
MiscObject Property InorgRareLithium Auto Mandatory
MiscObject Property InorgRareMercury Auto Mandatory
MiscObject Property InorgRareNeodymium Auto Mandatory
MiscObject Property InorgRarePlatinum Auto Mandatory
MiscObject Property InorgRareTantalum Auto Mandatory
MiscObject Property InorgRareTetrafluorides Auto Mandatory
MiscObject Property InorgRareTitanium Auto Mandatory
MiscObject Property InorgRareVanadium Auto Mandatory


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Variables - Starfield Inorganic Materials (Exotic)
;;;
MiscObject Property InorgExoticAntimony Auto Mandatory
MiscObject Property InorgExoticCaesium Auto Mandatory
MiscObject Property InorgExoticDysprosium Auto Mandatory
MiscObject Property InorgExoticEuropium Auto Mandatory
MiscObject Property InorgExoticIonicLiquids Auto Mandatory
MiscObject Property InorgExoticNeon Auto Mandatory
MiscObject Property InorgExoticPalladium Auto Mandatory
MiscObject Property InorgExoticPlutonium Auto Mandatory
MiscObject Property InorgExoticXenon Auto Mandatory
MiscObject Property InorgExoticYtterbium Auto Mandatory


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Variables - Starfield Inorganic Materials (Unique)
;;;
MiscObject Property InorgUniqueAldumite Auto Mandatory
MiscObject Property InorgUniqueAqueousHematite Auto Mandatory
MiscObject Property InorgUniqueCaelumite Auto Mandatory
MiscObject Property InorgUniqueIndicite Auto Mandatory
MiscObject Property InorgUniqueRothicite Auto Mandatory
MiscObject Property InorgUniqueTasine Auto Mandatory
MiscObject Property InorgUniqueVeryl Auto Mandatory
MiscObject Property InorgUniqueVytinium Auto Mandatory


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Variables - Starfield Organic Materials (Common)
;;;
MiscObject Property OrgCommonFiber Auto Mandatory
Keyword Property VJR_Breakdown_Fiber_TA Auto Mandatory
Keyword Property VJR_Breakdown_Fiber_TB Auto Mandatory
Keyword Property VJR_Breakdown_Fiber_TC Auto Mandatory
Keyword Property VJR_Breakdown_Fiber_TD Auto Mandatory

MiscObject Property OrgCommonMetabolicAgent Auto Mandatory
MiscObject Property OrgCommonNutrient Auto Mandatory
MiscObject Property OrgCommonSealant Auto Mandatory
MiscObject Property OrgCommonStructural Auto Mandatory
MiscObject Property OrgCommonToxin Auto Mandatory


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Variables - Starfield Organic Materials (Uncommon)
;;;
MiscObject Property OrgUncommonAntimicrobial Auto Mandatory
MiscObject Property OrgUncommonCosmetic Auto Mandatory
MiscObject Property OrgUncommonMembrane Auto Mandatory
MiscObject Property OrgUncommonOrnamental Auto Mandatory
MiscObject Property OrgUncommonPigment Auto Mandatory
MiscObject Property OrgUncommonSpice Auto Mandatory


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Variables - Starfield Organic Materials (Rare)
;;;
MiscObject Property OrgRareAdhesive Auto Mandatory
Keyword Property VJR_Breakdown_Adhesive_TA Auto Mandatory
Keyword Property VJR_Breakdown_Adhesive_TB Auto Mandatory
Keyword Property VJR_Breakdown_Adhesive_TC Auto Mandatory
Keyword Property VJR_Breakdown_Adhesive_TD Auto Mandatory

MiscObject Property OrgRareAminoAcids Auto Mandatory
MiscObject Property OrgRareAnalgesic Auto Mandatory
MiscObject Property OrgRareAromatic Auto Mandatory
MiscObject Property OrgRareHallucinogen Auto Mandatory
MiscObject Property OrgRareSedative Auto Mandatory


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Variables - Starfield Organic Materials (Exotic)
;;;
MiscObject Property OrgExoticBiosuppressant Auto Mandatory
MiscObject Property OrgExoticHypercatalyst Auto Mandatory
MiscObject Property OrgExoticLubricant Auto Mandatory
MiscObject Property OrgExoticPolymer Auto Mandatory
MiscObject Property OrgExoticSolvent Auto Mandatory
MiscObject Property OrgExoticStimulant Auto Mandatory


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Variables - Starfield Organic Materials (Unique)
;;;
MiscObject Property OrgUniqueGastronomic Auto Mandatory
MiscObject Property OrgUniqueHighTensileSpidroin Auto Mandatory
MiscObject Property OrgUniqueImmunostimulant Auto Mandatory
MiscObject Property OrgUniqueLuxuryTextile Auto Mandatory
MiscObject Property OrgUniqueMemorySubstrate Auto Mandatory
MiscObject Property OrgUniqueNeurologic Auto Mandatory


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Events
;;;
Event OnInit()
  VPI_Debug.DebugMessage(Venpi_ModName, "VJR_TransferContainerScript", "OnInit", "On OnInit triggered.", 0, Venpi_DebugEnabled.GetValueInt())
  Utility.Wait(1)
  EnumItemSize = new ItemSizes
  AddInventoryEventFilter(None)
  
  Setup()

  SetupInorganicCommon()
  SetupInorganicUncommon()
  SetupInorganicRare()
  SetupInorganicExotic()
  SetupInorganicUnique()
  
  SetupOrganicCommon()
  SetupOrganicUncommon()
  SetupOrganicRare()
  SetupOrganicExotic()
  SetupOrganicUnique()
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
;;; Functions - Setup
;;;
Function Setup()
  VJR_ItemSize_Huge = Game.GetFormFromFile(0x0000080B, "VenworksJunkRecycler.esm") as Keyword
  VJR_ItemSize_Large = Game.GetFormFromFile(0x0000080C, "VenworksJunkRecycler.esm") as Keyword
  VJR_ItemSize_Normal = Game.GetFormFromFile(0x0000080D, "VenworksJunkRecycler.esm") as Keyword
  VJR_ItemSize_Small = Game.GetFormFromFile(0x0000080E, "VenworksJunkRecycler.esm") as Keyword
  VJR_ItemSize_Tiny = Game.GetFormFromFile(0x0000080F, "VenworksJunkRecycler.esm") as Keyword

  VJR_Breakdown_RandomInorganic_TA = Game.GetFormFromFile(0x0000081C, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_RandomInorganic_TB = Game.GetFormFromFile(0x0000081D, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_RandomInorganic_TC = Game.GetFormFromFile(0x0000081E, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_RandomInorganic_TD = Game.GetFormFromFile(0x0000081F, "VenworksJunkRecycler.esm") as Keyword

  VJR_Breakdown_RandomOrganic_TA = Game.GetFormFromFile(0x00000820, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_RandomOrganic_TB = Game.GetFormFromFile(0x00000821, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_RandomOrganic_TC = Game.GetFormFromFile(0x00000822, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_RandomOrganic_TD = Game.GetFormFromFile(0x00000823, "VenworksJunkRecycler.esm") as Keyword
EndFunction


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Functions - Setup Inorganic Materials and Keywords
;;;
Function SetupInorganicCommon()
  InorgCommonAluminum = Game.GetFormFromFile(0x0000557D, "Starfield.esm") as MiscObject
  VJR_Breakdown_Aluminum_TA = Game.GetFormFromFile(0x00000824, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Aluminum_TB = Game.GetFormFromFile(0x00000825, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Aluminum_TC = Game.GetFormFromFile(0x00000826, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Aluminum_TD = Game.GetFormFromFile(0x00000827, "VenworksJunkRecycler.esm") as Keyword

  InorgCommonArgon = Game.GetFormFromFile(0x00005588, "Starfield.esm") as MiscObject
  VJR_Breakdown_Argon_TA = Game.GetFormFromFile(0x00000828, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Argon_TB = Game.GetFormFromFile(0x00000829, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Argon_TC = Game.GetFormFromFile(0x00000830, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Argon_TD = Game.GetFormFromFile(0x00000831, "VenworksJunkRecycler.esm") as Keyword

  InorgCommonChlorine = Game.GetFormFromFile(0x0000557C, "Starfield.esm") as MiscObject
  VJR_Breakdown_Chlorine_TA = Game.GetFormFromFile(0x0000082C, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Chlorine_TB = Game.GetFormFromFile(0x0000082D, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Chlorine_TC = Game.GetFormFromFile(0x0000082E, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Chlorine_TD = Game.GetFormFromFile(0x0000082F, "VenworksJunkRecycler.esm") as Keyword

  InorgCommonCopper = Game.GetFormFromFile(0x00005576, "Starfield.esm") as MiscObject
  VJR_Breakdown_Copper_TA = Game.GetFormFromFile(0x00000830, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Copper_TB = Game.GetFormFromFile(0x00000831, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Copper_TC = Game.GetFormFromFile(0x00000832, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Copper_TD = Game.GetFormFromFile(0x00000833, "VenworksJunkRecycler.esm") as Keyword

  InorgCommonHelium3 = Game.GetFormFromFile(0x0000558E, "Starfield.esm") as MiscObject
  VJR_Breakdown_Helium3_TA = Game.GetFormFromFile(0x00000834, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Helium3_TB = Game.GetFormFromFile(0x00000835, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Helium3_TC = Game.GetFormFromFile(0x00000836, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Helium3_TD = Game.GetFormFromFile(0x00000837, "VenworksJunkRecycler.esm") as Keyword

  InorgCommonIron = Game.GetFormFromFile(0x0000556E, "Starfield.esm") as MiscObject
  VJR_Breakdown_Iron_TA = Game.GetFormFromFile(0x00000838, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Iron_TB = Game.GetFormFromFile(0x00000839, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Iron_TC = Game.GetFormFromFile(0x0000083A, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Iron_TD = Game.GetFormFromFile(0x0000083B, "VenworksJunkRecycler.esm") as Keyword

  InorgCommonLead = Game.GetFormFromFile(0x00005568, "Starfield.esm") as MiscObject
  VJR_Breakdown_Lead_TA = Game.GetFormFromFile(0x0000083C, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Lead_TB = Game.GetFormFromFile(0x0000083D, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Lead_TC = Game.GetFormFromFile(0x0000083E, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Lead_TD = Game.GetFormFromFile(0x0000083F, "VenworksJunkRecycler.esm") as Keyword

  InorgCommonNickel = Game.GetFormFromFile(0x00005572, "Starfield.esm") as MiscObject
  VJR_Breakdown_Nickel_TA = Game.GetFormFromFile(0x00000840, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Nickel_TB = Game.GetFormFromFile(0x00000841, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Nickel_TC = Game.GetFormFromFile(0x00000842, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Nickel_TD = Game.GetFormFromFile(0x00000843, "VenworksJunkRecycler.esm") as Keyword

  InorgCommonUranium = Game.GetFormFromFile(0x00005589, "Starfield.esm") as MiscObject
  VJR_Breakdown_Uranium_TA = Game.GetFormFromFile(0x00000844, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Uranium_TB = Game.GetFormFromFile(0x00000845, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Uranium_TC = Game.GetFormFromFile(0x00000846, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Uranium_TD = Game.GetFormFromFile(0x00000847, "VenworksJunkRecycler.esm") as Keyword

  InorgCommonWater = Game.GetFormFromFile(0x00005591, "Starfield.esm") as MiscObject
  VJR_Breakdown_Water_TA = Game.GetFormFromFile(0x00000848, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Water_TB = Game.GetFormFromFile(0x00000849, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Water_TC = Game.GetFormFromFile(0x0000084A, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Water_TD = Game.GetFormFromFile(0x0000084B, "VenworksJunkRecycler.esm") as Keyword
EndFunction

Function SetupInorganicUncommon()
  InorgUncommonAlkanes = Game.GetFormFromFile(0x000055AF, "Starfield.esm") as MiscObject
  VJR_Breakdown_Alkanes_TA = Game.GetFormFromFile(0x00000814, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Alkanes_TB = Game.GetFormFromFile(0x00000815, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Alkanes_TC = Game.GetFormFromFile(0x00000816, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Alkanes_TD = Game.GetFormFromFile(0x00000817, "VenworksJunkRecycler.esm") as Keyword

  InorgUncommonBenzene = Game.GetFormFromFile(0x00005585, "Starfield.esm") as MiscObject
  InorgUncommonBeryllium = Game.GetFormFromFile(0x000057D9, "Starfield.esm") as MiscObject
  InorgUncommonChlorosilanes = Game.GetFormFromFile(0x0000557E, "Starfield.esm") as MiscObject
  InorgUncommonCobalt = Game.GetFormFromFile(0x00005575, "Starfield.esm") as MiscObject
  InorgUncommonFluorine = Game.GetFormFromFile(0x00005577, "Starfield.esm") as MiscObject
  InorgUncommonIridium = Game.GetFormFromFile(0x0000558A, "Starfield.esm") as MiscObject
  InorgUncommonSilver = Game.GetFormFromFile(0x0000556A, "Starfield.esm") as MiscObject
  InorgUncommonTungsten = Game.GetFormFromFile(0x0000556B, "Starfield.esm") as MiscObject
EndFunction

Function SetupInorganicRare()
  InorgRareCarboxylicAcids = Game.GetFormFromFile(0x00005586, "Starfield.esm") as MiscObject
  InorgRareGold = Game.GetFormFromFile(0x00005579, "Starfield.esm") as MiscObject
  InorgRareLithium = Game.GetFormFromFile(0x0000557F, "Starfield.esm") as MiscObject
  InorgRareMercury = Game.GetFormFromFile(0x0027C4A1, "Starfield.esm") as MiscObject
  InorgRareNeodymium = Game.GetFormFromFile(0x00005580, "Starfield.esm") as MiscObject
  InorgRarePlatinum = Game.GetFormFromFile(0x00005573, "Starfield.esm") as MiscObject
  InorgRareTantalum = Game.GetFormFromFile(0x0000556F, "Starfield.esm") as MiscObject
  InorgRareTetrafluorides = Game.GetFormFromFile(0x00005578, "Starfield.esm") as MiscObject
  InorgRareTitanium = Game.GetFormFromFile(0x0000556D, "Starfield.esm") as MiscObject
  InorgRareVanadium = Game.GetFormFromFile(0x0000558B, "Starfield.esm") as MiscObject
EndFunction

Function SetupInorganicExotic()
  InorgExoticAntimony = Game.GetFormFromFile(0x0000557B, "Starfield.esm") as MiscObject
  InorgExoticCaesium = Game.GetFormFromFile(0x000057DF, "Starfield.esm") as MiscObject
  InorgExoticDysprosium = Game.GetFormFromFile(0x00005569, "Starfield.esm") as MiscObject
  InorgExoticEuropium = Game.GetFormFromFile(0x000057E1, "Starfield.esm") as MiscObject
  InorgExoticIonicLiquids = Game.GetFormFromFile(0x0000557A, "Starfield.esm") as MiscObject
  InorgExoticNeon = Game.GetFormFromFile(0x00005587, "Starfield.esm") as MiscObject
  InorgExoticPalladium = Game.GetFormFromFile(0x00005574, "Starfield.esm") as MiscObject
  InorgExoticPlutonium = Game.GetFormFromFile(0x0000558C, "Starfield.esm") as MiscObject
  InorgExoticXenon = Game.GetFormFromFile(0x000057DD, "Starfield.esm") as MiscObject
  InorgExoticYtterbium = Game.GetFormFromFile(0x00005571, "Starfield.esm") as MiscObject
EndFunction

Function SetupInorganicUnique()
  InorgUniqueAldumite = Game.GetFormFromFile(0x00005DEC, "Starfield.esm") as MiscObject
  InorgUniqueAqueousHematite = Game.GetFormFromFile(0x0029D022, "Starfield.esm") as MiscObject
  InorgUniqueCaelumite = Game.GetFormFromFile(0x000788D6, "Starfield.esm") as MiscObject
  InorgUniqueIndicite = Game.GetFormFromFile(0x0004BA37, "Starfield.esm") as MiscObject
  InorgUniqueRothicite = Game.GetFormFromFile(0x000028DF, "Starfield.esm") as MiscObject
  InorgUniqueTasine = Game.GetFormFromFile(0x00005DED, "Starfield.esm") as MiscObject
  InorgUniqueVeryl = Game.GetFormFromFile(0x00005DEE, "Starfield.esm") as MiscObject
  InorgUniqueVytinium = Game.GetFormFromFile(0x00005DEF, "Starfield.esm") as MiscObject
EndFunction


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Functions - Setup Organic Materials and Keywords
;;;
Function SetupOrganicCommon()
  OrgCommonFiber = Game.GetFormFromFile(0x000055AF, "Starfield.esm") as MiscObject
  VJR_Breakdown_Fiber_TA = Game.GetFormFromFile(0x00000810, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Fiber_TB = Game.GetFormFromFile(0x00000811, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Fiber_TC = Game.GetFormFromFile(0x00000812, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Fiber_TD = Game.GetFormFromFile(0x00000813, "VenworksJunkRecycler.esm") as Keyword

  OrgCommonMetabolicAgent = Game.GetFormFromFile(0x0029F3FC, "Starfield.esm") as MiscObject
  OrgCommonNutrient = Game.GetFormFromFile(0x000777FD, "Starfield.esm") as MiscObject
  OrgCommonSealant = Game.GetFormFromFile(0x000055CC, "Starfield.esm") as MiscObject
  OrgCommonStructural = Game.GetFormFromFile(0x000055B9, "Starfield.esm") as MiscObject
  OrgCommonToxin = Game.GetFormFromFile(0x000055CB, "Starfield.esm") as MiscObject
EndFunction

Function SetupOrganicUncommon()
  OrgUncommonAntimicrobial = Game.GetFormFromFile(0x000055AB, "Starfield.esm") as MiscObject
  OrgUncommonCosmetic = Game.GetFormFromFile(0x000055A8, "Starfield.esm") as MiscObject
  OrgUncommonMembrane = Game.GetFormFromFile(0x000055B0, "Starfield.esm") as MiscObject
  OrgUncommonOrnamental = Game.GetFormFromFile(0x000055A7, "Starfield.esm") as MiscObject
  OrgUncommonPigment = Game.GetFormFromFile(0x0029F400, "Starfield.esm") as MiscObject
  OrgUncommonSpice = Game.GetFormFromFile(0x000055AC, "Starfield.esm") as MiscObject
EndFunction

Function SetupOrganicRare()
  OrgRareAdhesive = Game.GetFormFromFile(0x000055B1, "Starfield.esm") as MiscObject
  VJR_Breakdown_Adhesive_TA = Game.GetFormFromFile(0x00000803, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Adhesive_TB = Game.GetFormFromFile(0x00000804, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Adhesive_TC = Game.GetFormFromFile(0x00000805, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Adhesive_TD = Game.GetFormFromFile(0x00000806, "VenworksJunkRecycler.esm") as Keyword

  OrgRareAminoAcids = Game.GetFormFromFile(0x000055CD, "Starfield.esm") as MiscObject
  OrgRareAnalgesic = Game.GetFormFromFile(0x000055A9, "Starfield.esm") as MiscObject
  OrgRareAromatic = Game.GetFormFromFile(0x000055B8, "Starfield.esm") as MiscObject
  OrgRareHallucinogen = Game.GetFormFromFile(0x0029F405, "Starfield.esm") as MiscObject
  OrgRareSedative = Game.GetFormFromFile(0x000055AD, "Starfield.esm") as MiscObject
EndFunction

Function SetupOrganicExotic()
  OrgExoticBiosuppressant = Game.GetFormFromFile(0x000055B2, "Starfield.esm") as MiscObject
  OrgExoticHypercatalyst = Game.GetFormFromFile(0x0029F40D, "Starfield.esm") as MiscObject
  OrgExoticLubricant = Game.GetFormFromFile(0x000055BA, "Starfield.esm") as MiscObject
  OrgExoticPolymer = Game.GetFormFromFile(0x000055A6, "Starfield.esm") as MiscObject
  OrgExoticSolvent = Game.GetFormFromFile(0x000055CE, "Starfield.esm") as MiscObject
  OrgExoticStimulant = Game.GetFormFromFile(0x000055AE, "Starfield.esm") as MiscObject
EndFunction

Function SetupOrganicUnique()
  OrgUniqueGastronomic = Game.GetFormFromFile(0x0000559D, "Starfield.esm") as MiscObject
  OrgUniqueHighTensileSpidroin = Game.GetFormFromFile(0x000055AA, "Starfield.esm") as MiscObject
  OrgUniqueImmunostimulant = Game.GetFormFromFile(0x000055B3, "Starfield.esm") as MiscObject
  OrgUniqueLuxuryTextile = Game.GetFormFromFile(0x0000559E, "Starfield.esm") as MiscObject
  OrgUniqueMemorySubstrate = Game.GetFormFromFile(0x0000559B, "Starfield.esm") as MiscObject
  OrgUniqueNeurologic = Game.GetFormFromFile(0x0029F409, "Starfield.esm") as MiscObject
EndFunction


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Functions - Breakdown Processing
;;;
Function ProcessItem(Form baseItem, int count)
  BreakdownResults results=New BreakdownResults
  Actor player = Game.GetPlayer()
  VPI_Debug.DebugMessage(Venpi_ModName, "VJR_TransferContainerScript", "ProcessItem", "Processing item " + baseItem + ".", 0, Venpi_DebugEnabled.GetValueInt())

  results.SizeAdjustment = GetItemSizeAdjustment(baseItem)
  results.TierA_Item = GetItemTierA(baseItem)
  results.TierA_Quantity = Math.Floor(VJR_BreakdownQuantity_TierA.GetValueInt() * count * results.SizeAdjustment)
  results.TierB_Item = GetItemTierB(baseItem)
  results.TierB_Quantity = Math.Floor(VJR_BreakdownQuantity_TierB.GetValueInt() * count * results.SizeAdjustment)
  results.TierC_Item = GetItemTierC(baseItem)
  results.TierC_Quantity = Math.Floor(VJR_BreakdownQuantity_TierC.GetValueInt() * count * results.SizeAdjustment)
  results.TierD_Item = GetItemTierD(baseItem)
  results.TierD_Quantity = Math.Floor(VJR_BreakdownQuantity_TierD.GetValueInt() * count * results.SizeAdjustment)

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
