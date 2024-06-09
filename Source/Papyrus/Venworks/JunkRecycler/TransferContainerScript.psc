ScriptName Venworks:JunkRecycler:TransferContainerScript Extends ObjectReference

Import Venworks:Shared:Logging

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Structs
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
  Float SizeAdjustment=1.0
EndStruct


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Global Variables
;;;
GlobalVariable Property DebugEnabled Auto Const
String Property ModName="VenworksJunkRecycler" Auto Const

GlobalVariable Property VJR_BreakdownQuantity_TierA Auto Const
GlobalVariable Property VJR_BreakdownQuantity_TierB Auto Const
GlobalVariable Property VJR_BreakdownQuantity_TierC Auto Const
GlobalVariable Property VJR_BreakdownQuantity_TierD Auto Const

GlobalVariable Property VJR_BreakdownChance_TierA Auto Const
GlobalVariable Property VJR_BreakdownChance_TierB Auto Const
GlobalVariable Property VJR_BreakdownChance_TierC Auto Const
GlobalVariable Property VJR_BreakdownChance_TierD Auto Const



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Properties
;;;
FormList Property AllInorganicResources Auto Const
FormList Property AllOrganicResources Auto Const

Keyword Property VJR_ItemSize_Huge Auto Const
Keyword Property VJR_ItemSize_Large Auto Const
Keyword Property VJR_ItemSize_Normal Auto Const
Keyword Property VJR_ItemSize_Small Auto Const
Keyword Property VJR_ItemSize_Tiny Auto Const

Keyword Property VJR_Breakdown_RandomInorganic_TA Auto Const
Keyword Property VJR_Breakdown_RandomInorganic_TB Auto Const
Keyword Property VJR_Breakdown_RandomInorganic_TC Auto Const
Keyword Property VJR_Breakdown_RandomInorganic_TD Auto Const

Keyword Property VJR_Breakdown_RandomOrganic_TA Auto Const
Keyword Property VJR_Breakdown_RandomOrganic_TB Auto Const
Keyword Property VJR_Breakdown_RandomOrganic_TC Auto Const
Keyword Property VJR_Breakdown_RandomOrganic_TD Auto Const



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Properties - Starfield Inorganic Materials (Common)
;;;
MiscObject Property InorgCommonAluminum Auto Const
Keyword Property VJR_Breakdown_Aluminum_TA Auto Const
Keyword Property VJR_Breakdown_Aluminum_TB Auto Const
Keyword Property VJR_Breakdown_Aluminum_TC Auto Const
Keyword Property VJR_Breakdown_Aluminum_TD Auto Const

MiscObject Property InorgCommonArgon Auto Const
Keyword Property VJR_Breakdown_Argon_TA Auto Const
Keyword Property VJR_Breakdown_Argon_TB Auto Const
Keyword Property VJR_Breakdown_Argon_TC Auto Const
Keyword Property VJR_Breakdown_Argon_TD Auto Const

MiscObject Property InorgCommonChlorine Auto Const
Keyword Property VJR_Breakdown_Chlorine_TA Auto Const
Keyword Property VJR_Breakdown_Chlorine_TB Auto Const
Keyword Property VJR_Breakdown_Chlorine_TC Auto Const
Keyword Property VJR_Breakdown_Chlorine_TD Auto Const

MiscObject Property InorgCommonCopper Auto Const
Keyword Property VJR_Breakdown_Copper_TA Auto Const
Keyword Property VJR_Breakdown_Copper_TB Auto Const
Keyword Property VJR_Breakdown_Copper_TC Auto Const
Keyword Property VJR_Breakdown_Copper_TD Auto Const

MiscObject Property InorgCommonHelium3 Auto Const
Keyword Property VJR_Breakdown_Helium3_TA Auto Const
Keyword Property VJR_Breakdown_Helium3_TB Auto Const
Keyword Property VJR_Breakdown_Helium3_TC Auto Const
Keyword Property VJR_Breakdown_Helium3_TD Auto Const

MiscObject Property InorgCommonIron Auto Const
Keyword Property VJR_Breakdown_Iron_TA Auto Const
Keyword Property VJR_Breakdown_Iron_TB Auto Const
Keyword Property VJR_Breakdown_Iron_TC Auto Const
Keyword Property VJR_Breakdown_Iron_TD Auto Const

MiscObject Property InorgCommonLead Auto Const
Keyword Property VJR_Breakdown_Lead_TA Auto Const
Keyword Property VJR_Breakdown_Lead_TB Auto Const
Keyword Property VJR_Breakdown_Lead_TC Auto Const
Keyword Property VJR_Breakdown_Lead_TD Auto Const

MiscObject Property InorgCommonNickel Auto Const
Keyword Property VJR_Breakdown_Nickel_TA Auto Const
Keyword Property VJR_Breakdown_Nickel_TB Auto Const
Keyword Property VJR_Breakdown_Nickel_TC Auto Const
Keyword Property VJR_Breakdown_Nickel_TD Auto Const

MiscObject Property InorgCommonUranium Auto Const
Keyword Property VJR_Breakdown_Uranium_TA Auto Const
Keyword Property VJR_Breakdown_Uranium_TB Auto Const
Keyword Property VJR_Breakdown_Uranium_TC Auto Const
Keyword Property VJR_Breakdown_Uranium_TD Auto Const

MiscObject Property InorgCommonWater Auto Const
Keyword Property VJR_Breakdown_Water_TA Auto Const
Keyword Property VJR_Breakdown_Water_TB Auto Const
Keyword Property VJR_Breakdown_Water_TC Auto Const
Keyword Property VJR_Breakdown_Water_TD Auto Const



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Properties - Starfield Inorganic Materials (Uncommon)
;;;
MiscObject Property InorgUncommonAlkanes Auto Const
Keyword Property VJR_Breakdown_Alkanes_TA Auto Const
Keyword Property VJR_Breakdown_Alkanes_TB Auto Const
Keyword Property VJR_Breakdown_Alkanes_TC Auto Const
Keyword Property VJR_Breakdown_Alkanes_TD Auto Const

MiscObject Property InorgUncommonBenzene Auto Const
Keyword Property VJR_Breakdown_Benzene_TA Auto Const
Keyword Property VJR_Breakdown_Benzene_TB Auto Const
Keyword Property VJR_Breakdown_Benzene_TC Auto Const
Keyword Property VJR_Breakdown_Benzene_TD Auto Const

MiscObject Property InorgUncommonBeryllium Auto Const
Keyword Property VJR_Breakdown_Beryllium_TA Auto Const
Keyword Property VJR_Breakdown_Beryllium_TB Auto Const
Keyword Property VJR_Breakdown_Beryllium_TC Auto Const
Keyword Property VJR_Breakdown_Beryllium_TD Auto Const

MiscObject Property InorgUncommonChlorosilanes Auto Const
Keyword Property VJR_Breakdown_Chlorosilanes_TA Auto Const
Keyword Property VJR_Breakdown_Chlorosilanes_TB Auto Const
Keyword Property VJR_Breakdown_Chlorosilanes_TC Auto Const
Keyword Property VJR_Breakdown_Chlorosilanes_TD Auto Const

MiscObject Property InorgUncommonCobalt Auto Const
Keyword Property VJR_Breakdown_Cobalt_TA Auto Const
Keyword Property VJR_Breakdown_Cobalt_TB Auto Const
Keyword Property VJR_Breakdown_Cobalt_TC Auto Const
Keyword Property VJR_Breakdown_Cobalt_TD Auto Const

MiscObject Property InorgUncommonFluorine Auto Const
Keyword Property VJR_Breakdown_Fluorine_TA Auto Const
Keyword Property VJR_Breakdown_Fluorine_TB Auto Const
Keyword Property VJR_Breakdown_Fluorine_TC Auto Const
Keyword Property VJR_Breakdown_Fluorine_TD Auto Const

MiscObject Property InorgUncommonIridium Auto Const
Keyword Property VJR_Breakdown_Iridium_TA Auto Const
Keyword Property VJR_Breakdown_Iridium_TB Auto Const
Keyword Property VJR_Breakdown_Iridium_TC Auto Const
Keyword Property VJR_Breakdown_Iridium_TD Auto Const

MiscObject Property InorgUncommonSilver Auto Const
Keyword Property VJR_Breakdown_Silver_TA Auto Const
Keyword Property VJR_Breakdown_Silver_TB Auto Const
Keyword Property VJR_Breakdown_Silver_TC Auto Const
Keyword Property VJR_Breakdown_Silver_TD Auto Const

MiscObject Property InorgUncommonTungsten Auto Const
Keyword Property VJR_Breakdown_Tungsten_TA Auto Const
Keyword Property VJR_Breakdown_Tungsten_TB Auto Const
Keyword Property VJR_Breakdown_Tungsten_TC Auto Const
Keyword Property VJR_Breakdown_Tungsten_TD Auto Const


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Properties - Starfield Inorganic Materials (Rare)
;;;
MiscObject Property InorgRareCarboxylicAcids Auto Const
Keyword Property VJR_Breakdown_CarboxylicAcids_TA Auto Const
Keyword Property VJR_Breakdown_CarboxylicAcids_TB Auto Const
Keyword Property VJR_Breakdown_CarboxylicAcids_TC Auto Const
Keyword Property VJR_Breakdown_CarboxylicAcids_TD Auto Const

MiscObject Property InorgRareGold Auto Const
Keyword Property VJR_Breakdown_Gold_TA Auto Const
Keyword Property VJR_Breakdown_Gold_TB Auto Const
Keyword Property VJR_Breakdown_Gold_TC Auto Const
Keyword Property VJR_Breakdown_Gold_TD Auto Const

MiscObject Property InorgRareLithium Auto Const
Keyword Property VJR_Breakdown_Lithium_TA Auto Const
Keyword Property VJR_Breakdown_Lithium_TB Auto Const
Keyword Property VJR_Breakdown_Lithium_TC Auto Const
Keyword Property VJR_Breakdown_Lithium_TD Auto Const

MiscObject Property InorgRareMercury Auto Const
Keyword Property VJR_Breakdown_Mercury_TA Auto Const
Keyword Property VJR_Breakdown_Mercury_TB Auto Const
Keyword Property VJR_Breakdown_Mercury_TC Auto Const
Keyword Property VJR_Breakdown_Mercury_TD Auto Const

MiscObject Property InorgRareNeodymium Auto Const
Keyword Property VJR_Breakdown_Neodymium_TA Auto Const
Keyword Property VJR_Breakdown_Neodymium_TB Auto Const
Keyword Property VJR_Breakdown_Neodymium_TC Auto Const
Keyword Property VJR_Breakdown_Neodymium_TD Auto Const

MiscObject Property InorgRarePlatinum Auto Const
Keyword Property VJR_Breakdown_Platinum_TA Auto Const
Keyword Property VJR_Breakdown_Platinum_TB Auto Const
Keyword Property VJR_Breakdown_Platinum_TC Auto Const
Keyword Property VJR_Breakdown_Platinum_TD Auto Const

MiscObject Property InorgRareTantalum Auto Const
Keyword Property VJR_Breakdown_Tantalum_TA Auto Const
Keyword Property VJR_Breakdown_Tantalum_TB Auto Const
Keyword Property VJR_Breakdown_Tantalum_TC Auto Const
Keyword Property VJR_Breakdown_Tantalum_TD Auto Const

MiscObject Property InorgRareTetrafluorides Auto Const
Keyword Property VJR_Breakdown_Tetrafluorides_TA Auto Const
Keyword Property VJR_Breakdown_Tetrafluorides_TB Auto Const
Keyword Property VJR_Breakdown_Tetrafluorides_TC Auto Const
Keyword Property VJR_Breakdown_Tetrafluorides_TD Auto Const

MiscObject Property InorgRareTitanium Auto Const
Keyword Property VJR_Breakdown_Titanium_TA Auto Const
Keyword Property VJR_Breakdown_Titanium_TB Auto Const
Keyword Property VJR_Breakdown_Titanium_TC Auto Const
Keyword Property VJR_Breakdown_Titanium_TD Auto Const

MiscObject Property InorgRareVanadium Auto Const
Keyword Property VJR_Breakdown_Vanadium_TA Auto Const
Keyword Property VJR_Breakdown_Vanadium_TB Auto Const
Keyword Property VJR_Breakdown_Vanadium_TC Auto Const
Keyword Property VJR_Breakdown_Vanadium_TD Auto Const


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Properties - Starfield Inorganic Materials (Exotic)
;;;
MiscObject Property InorgExoticAntimony Auto Const
Keyword Property VJR_Breakdown_Antimony_TA Auto Const
Keyword Property VJR_Breakdown_Antimony_TB Auto Const
Keyword Property VJR_Breakdown_Antimony_TC Auto Const
Keyword Property VJR_Breakdown_Antimony_TD Auto Const

MiscObject Property InorgExoticCaesium Auto Const
Keyword Property VJR_Breakdown_Caesium_TA Auto Const
Keyword Property VJR_Breakdown_Caesium_TB Auto Const
Keyword Property VJR_Breakdown_Caesium_TC Auto Const
Keyword Property VJR_Breakdown_Caesium_TD Auto Const

MiscObject Property InorgExoticDysprosium Auto Const
Keyword Property VJR_Breakdown_Dysprosium_TA Auto Const
Keyword Property VJR_Breakdown_Dysprosium_TB Auto Const
Keyword Property VJR_Breakdown_Dysprosium_TC Auto Const
Keyword Property VJR_Breakdown_Dysprosium_TD Auto Const

MiscObject Property InorgExoticEuropium Auto Const
Keyword Property VJR_Breakdown_Europium_TA Auto Const
Keyword Property VJR_Breakdown_Europium_TB Auto Const
Keyword Property VJR_Breakdown_Europium_TC Auto Const
Keyword Property VJR_Breakdown_Europium_TD Auto Const

MiscObject Property InorgExoticIonicLiquids Auto Const
Keyword Property VJR_Breakdown_IonicLiquids_TA Auto Const
Keyword Property VJR_Breakdown_IonicLiquids_TB Auto Const
Keyword Property VJR_Breakdown_IonicLiquids_TC Auto Const
Keyword Property VJR_Breakdown_IonicLiquids_TD Auto Const

MiscObject Property InorgExoticNeon Auto Const
Keyword Property VJR_Breakdown_Neon_TA Auto Const
Keyword Property VJR_Breakdown_Neon_TB Auto Const
Keyword Property VJR_Breakdown_Neon_TC Auto Const
Keyword Property VJR_Breakdown_Neon_TD Auto Const

MiscObject Property InorgExoticPalladium Auto Const
Keyword Property VJR_Breakdown_Palladium_TA Auto Const
Keyword Property VJR_Breakdown_Palladium_TB Auto Const
Keyword Property VJR_Breakdown_Palladium_TC Auto Const
Keyword Property VJR_Breakdown_Palladium_TD Auto Const

MiscObject Property InorgExoticPlutonium Auto Const
Keyword Property VJR_Breakdown_Plutonium_TA Auto Const
Keyword Property VJR_Breakdown_Plutonium_TB Auto Const
Keyword Property VJR_Breakdown_Plutonium_TC Auto Const
Keyword Property VJR_Breakdown_Plutonium_TD Auto Const

MiscObject Property InorgExoticXenon Auto Const
Keyword Property VJR_Breakdown_Xenon_TA Auto Const
Keyword Property VJR_Breakdown_Xenon_TB Auto Const
Keyword Property VJR_Breakdown_Xenon_TC Auto Const
Keyword Property VJR_Breakdown_Xenon_TD Auto Const

MiscObject Property InorgExoticYtterbium Auto Const
Keyword Property VJR_Breakdown_Ytterbium_TA Auto Const
Keyword Property VJR_Breakdown_Ytterbium_TB Auto Const
Keyword Property VJR_Breakdown_Ytterbium_TC Auto Const
Keyword Property VJR_Breakdown_Ytterbium_TD Auto Const


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Properties - Starfield Inorganic Materials (Unique)
;;;
MiscObject Property InorgUniqueAldumite Auto Const
Keyword Property VJR_Breakdown_Aldumite_TA Auto Const
Keyword Property VJR_Breakdown_Aldumite_TB Auto Const
Keyword Property VJR_Breakdown_Aldumite_TC Auto Const
Keyword Property VJR_Breakdown_Aldumite_TD Auto Const

MiscObject Property InorgUniqueAqueousHematite Auto Const
Keyword Property VJR_Breakdown_AqueousHematite_TA Auto Const
Keyword Property VJR_Breakdown_AqueousHematite_TB Auto Const
Keyword Property VJR_Breakdown_AqueousHematite_TC Auto Const
Keyword Property VJR_Breakdown_AqueousHematite_TD Auto Const

MiscObject Property InorgUniqueCaelumite Auto Const
Keyword Property VJR_Breakdown_Caelumite_TA Auto Const
Keyword Property VJR_Breakdown_Caelumite_TB Auto Const
Keyword Property VJR_Breakdown_Caelumite_TC Auto Const
Keyword Property VJR_Breakdown_Caelumite_TD Auto Const

MiscObject Property InorgUniqueIndicite Auto Const
Keyword Property VJR_Breakdown_Indicite_TA Auto Const
Keyword Property VJR_Breakdown_Indicite_TB Auto Const
Keyword Property VJR_Breakdown_Indicite_TC Auto Const
Keyword Property VJR_Breakdown_Indicite_TD Auto Const

MiscObject Property InorgUniqueRothicite Auto Const
Keyword Property VJR_Breakdown_Rothicite_TA Auto Const
Keyword Property VJR_Breakdown_Rothicite_TB Auto Const
Keyword Property VJR_Breakdown_Rothicite_TC Auto Const
Keyword Property VJR_Breakdown_Rothicite_TD Auto Const

MiscObject Property InorgUniqueTasine Auto Const
Keyword Property VJR_Breakdown_Tasine_TA Auto Const
Keyword Property VJR_Breakdown_Tasine_TB Auto Const
Keyword Property VJR_Breakdown_Tasine_TC Auto Const
Keyword Property VJR_Breakdown_Tasine_TD Auto Const

MiscObject Property InorgUniqueVeryl Auto Const
Keyword Property VJR_Breakdown_Veryl_TA Auto Const
Keyword Property VJR_Breakdown_Veryl_TB Auto Const
Keyword Property VJR_Breakdown_Veryl_TC Auto Const
Keyword Property VJR_Breakdown_Veryl_TD Auto Const

MiscObject Property InorgUniqueVytinium Auto Const
Keyword Property VJR_Breakdown_Vytinium_TA Auto Const
Keyword Property VJR_Breakdown_Vytinium_TB Auto Const
Keyword Property VJR_Breakdown_Vytinium_TC Auto Const
Keyword Property VJR_Breakdown_Vytinium_TD Auto Const


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Properties - Starfield Organic Materials (Common)
;;;
MiscObject Property OrgCommonFiber Auto Const
Keyword Property VJR_Breakdown_Fiber_TA Auto Const
Keyword Property VJR_Breakdown_Fiber_TB Auto Const
Keyword Property VJR_Breakdown_Fiber_TC Auto Const
Keyword Property VJR_Breakdown_Fiber_TD Auto Const

MiscObject Property OrgCommonMetabolicAgent Auto Const
Keyword Property VJR_Breakdown_MetabolicAgent_TA Auto Const
Keyword Property VJR_Breakdown_MetabolicAgent_TB Auto Const
Keyword Property VJR_Breakdown_MetabolicAgent_TC Auto Const
Keyword Property VJR_Breakdown_MetabolicAgent_TD Auto Const

MiscObject Property OrgCommonNutrient Auto Const
Keyword Property VJR_Breakdown_Nutrient_TA Auto Const
Keyword Property VJR_Breakdown_Nutrient_TB Auto Const
Keyword Property VJR_Breakdown_Nutrient_TC Auto Const
Keyword Property VJR_Breakdown_Nutrient_TD Auto Const

MiscObject Property OrgCommonSealant Auto Const
Keyword Property VJR_Breakdown_Sealant_TA Auto Const
Keyword Property VJR_Breakdown_Sealant_TB Auto Const
Keyword Property VJR_Breakdown_Sealant_TC Auto Const
Keyword Property VJR_Breakdown_Sealant_TD Auto Const

MiscObject Property OrgCommonStructural Auto Const
Keyword Property VJR_Breakdown_Structural_TA Auto Const
Keyword Property VJR_Breakdown_Structural_TB Auto Const
Keyword Property VJR_Breakdown_Structural_TC Auto Const
Keyword Property VJR_Breakdown_Structural_TD Auto Const

MiscObject Property OrgCommonToxin Auto Const
Keyword Property VJR_Breakdown_Toxin_TA Auto Const
Keyword Property VJR_Breakdown_Toxin_TB Auto Const
Keyword Property VJR_Breakdown_Toxin_TC Auto Const
Keyword Property VJR_Breakdown_Toxin_TD Auto Const


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Properties - Starfield Organic Materials (Uncommon)
;;;
MiscObject Property OrgUncommonAntimicrobial Auto Const
Keyword Property VJR_Breakdown_Antimicrobial_TA Auto Const
Keyword Property VJR_Breakdown_Antimicrobial_TB Auto Const
Keyword Property VJR_Breakdown_Antimicrobial_TC Auto Const
Keyword Property VJR_Breakdown_Antimicrobial_TD Auto Const

MiscObject Property OrgUncommonCosmetic Auto Const
Keyword Property VJR_Breakdown_Cosmetic_TA Auto Const
Keyword Property VJR_Breakdown_Cosmetic_TB Auto Const
Keyword Property VJR_Breakdown_Cosmetic_TC Auto Const
Keyword Property VJR_Breakdown_Cosmetic_TD Auto Const

MiscObject Property OrgUncommonMembrane Auto Const
Keyword Property VJR_Breakdown_Membrane_TA Auto Const
Keyword Property VJR_Breakdown_Membrane_TB Auto Const
Keyword Property VJR_Breakdown_Membrane_TC Auto Const
Keyword Property VJR_Breakdown_Membrane_TD Auto Const

MiscObject Property OrgUncommonOrnamental Auto Const
Keyword Property VJR_Breakdown_Ornamental_TA Auto Const
Keyword Property VJR_Breakdown_Ornamental_TB Auto Const
Keyword Property VJR_Breakdown_Ornamental_TC Auto Const
Keyword Property VJR_Breakdown_Ornamental_TD Auto Const

MiscObject Property OrgUncommonPigment Auto Const
Keyword Property VJR_Breakdown_Pigment_TA Auto Const
Keyword Property VJR_Breakdown_Pigment_TB Auto Const
Keyword Property VJR_Breakdown_Pigment_TC Auto Const
Keyword Property VJR_Breakdown_Pigment_TD Auto Const

MiscObject Property OrgUncommonSpice Auto Const
Keyword Property VJR_Breakdown_Spice_TA Auto Const
Keyword Property VJR_Breakdown_Spice_TB Auto Const
Keyword Property VJR_Breakdown_Spice_TC Auto Const
Keyword Property VJR_Breakdown_Spice_TD Auto Const


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Properties - Starfield Organic Materials (Rare)
;;;
MiscObject Property OrgRareAdhesive Auto Const
Keyword Property VJR_Breakdown_Adhesive_TA Auto Const
Keyword Property VJR_Breakdown_Adhesive_TB Auto Const
Keyword Property VJR_Breakdown_Adhesive_TC Auto Const
Keyword Property VJR_Breakdown_Adhesive_TD Auto Const

MiscObject Property OrgRareAminoAcids Auto Const
Keyword Property VJR_Breakdown_AminoAcids_TA Auto Const
Keyword Property VJR_Breakdown_AminoAcids_TB Auto Const
Keyword Property VJR_Breakdown_AminoAcids_TC Auto Const
Keyword Property VJR_Breakdown_AminoAcids_TD Auto Const

MiscObject Property OrgRareAnalgesic Auto Const
Keyword Property VJR_Breakdown_Analgesic_TA Auto Const
Keyword Property VJR_Breakdown_Analgesic_TB Auto Const
Keyword Property VJR_Breakdown_Analgesic_TC Auto Const
Keyword Property VJR_Breakdown_Analgesic_TD Auto Const

MiscObject Property OrgRareAromatic Auto Const
Keyword Property VJR_Breakdown_Aromatic_TA Auto Const
Keyword Property VJR_Breakdown_Aromatic_TB Auto Const
Keyword Property VJR_Breakdown_Aromatic_TC Auto Const
Keyword Property VJR_Breakdown_Aromatic_TD Auto Const

MiscObject Property OrgRareHallucinogen Auto Const
Keyword Property VJR_Breakdown_Hallucinogen_TA Auto Const
Keyword Property VJR_Breakdown_Hallucinogen_TB Auto Const
Keyword Property VJR_Breakdown_Hallucinogen_TC Auto Const
Keyword Property VJR_Breakdown_Hallucinogen_TD Auto Const

MiscObject Property OrgRareSedative Auto Const
Keyword Property VJR_Breakdown_Sedative_TA Auto Const
Keyword Property VJR_Breakdown_Sedative_TB Auto Const
Keyword Property VJR_Breakdown_Sedative_TC Auto Const
Keyword Property VJR_Breakdown_Sedative_TD Auto Const


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Properties - Starfield Organic Materials (Exotic)
;;;
MiscObject Property OrgExoticBiosuppressant Auto Const
Keyword Property VJR_Breakdown_Biosuppressant_TA Auto Const
Keyword Property VJR_Breakdown_Biosuppressant_TB Auto Const
Keyword Property VJR_Breakdown_Biosuppressant_TC Auto Const
Keyword Property VJR_Breakdown_Biosuppressant_TD Auto Const

MiscObject Property OrgExoticHypercatalyst Auto Const
Keyword Property VJR_Breakdown_Hypercatalyst_TA Auto Const
Keyword Property VJR_Breakdown_Hypercatalyst_TB Auto Const
Keyword Property VJR_Breakdown_Hypercatalyst_TC Auto Const
Keyword Property VJR_Breakdown_Hypercatalyst_TD Auto Const

MiscObject Property OrgExoticLubricant Auto Const
Keyword Property VJR_Breakdown_Lubricant_TA Auto Const
Keyword Property VJR_Breakdown_Lubricant_TB Auto Const
Keyword Property VJR_Breakdown_Lubricant_TC Auto Const
Keyword Property VJR_Breakdown_Lubricant_TD Auto Const

MiscObject Property OrgExoticPolymer Auto Const
Keyword Property VJR_Breakdown_Polymer_TA Auto Const
Keyword Property VJR_Breakdown_Polymer_TB Auto Const
Keyword Property VJR_Breakdown_Polymer_TC Auto Const
Keyword Property VJR_Breakdown_Polymer_TD Auto Const

MiscObject Property OrgExoticSolvent Auto Const
Keyword Property VJR_Breakdown_Solvent_TA Auto Const
Keyword Property VJR_Breakdown_Solvent_TB Auto Const
Keyword Property VJR_Breakdown_Solvent_TC Auto Const
Keyword Property VJR_Breakdown_Solvent_TD Auto Const

MiscObject Property OrgExoticStimulant Auto Const
Keyword Property VJR_Breakdown_Stimulant_TA Auto Const
Keyword Property VJR_Breakdown_Stimulant_TB Auto Const
Keyword Property VJR_Breakdown_Stimulant_TC Auto Const
Keyword Property VJR_Breakdown_Stimulant_TD Auto Const


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Properties - Starfield Organic Materials (Unique)
;;;
MiscObject Property OrgUniqueGastronomic Auto Const
Keyword Property VJR_Breakdown_Gastronomic_TA Auto Const
Keyword Property VJR_Breakdown_Gastronomic_TB Auto Const
Keyword Property VJR_Breakdown_Gastronomic_TC Auto Const
Keyword Property VJR_Breakdown_Gastronomic_TD Auto Const

MiscObject Property OrgUniqueHighTensileSpidroin Auto Const
Keyword Property VJR_Breakdown_HighTensileSpidroin_TA Auto Const
Keyword Property VJR_Breakdown_HighTensileSpidroin_TB Auto Const
Keyword Property VJR_Breakdown_HighTensileSpidroin_TC Auto Const
Keyword Property VJR_Breakdown_HighTensileSpidroin_TD Auto Const

MiscObject Property OrgUniqueImmunostimulant Auto Const
Keyword Property VJR_Breakdown_Immunostimulant_TA Auto Const
Keyword Property VJR_Breakdown_Immunostimulant_TB Auto Const
Keyword Property VJR_Breakdown_Immunostimulant_TC Auto Const
Keyword Property VJR_Breakdown_Immunostimulant_TD Auto Const

MiscObject Property OrgUniqueLuxuryTextile Auto Const
Keyword Property VJR_Breakdown_LuxuryTextile_TA Auto Const
Keyword Property VJR_Breakdown_LuxuryTextile_TB Auto Const
Keyword Property VJR_Breakdown_LuxuryTextile_TC Auto Const
Keyword Property VJR_Breakdown_LuxuryTextile_TD Auto Const

MiscObject Property OrgUniqueMemorySubstrate Auto Const
Keyword Property VJR_Breakdown_MemorySubstrate_TA Auto Const
Keyword Property VJR_Breakdown_MemorySubstrate_TB Auto Const
Keyword Property VJR_Breakdown_MemorySubstrate_TC Auto Const
Keyword Property VJR_Breakdown_MemorySubstrate_TD Auto Const

MiscObject Property OrgUniqueNeurologic Auto Const
Keyword Property VJR_Breakdown_Neurologic_TA Auto Const
Keyword Property VJR_Breakdown_Neurologic_TB Auto Const
Keyword Property VJR_Breakdown_Neurologic_TC Auto Const
Keyword Property VJR_Breakdown_Neurologic_TD Auto Const



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Variables
;;;



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Events
;;;
Event OnInit()
  Log(ModName, "Venworks:JunkRecycler:TransferContainerScript", "OnInit", "On OnInit triggered.", 0, DebugEnabled.GetValueInt())
  Setup()
EndEvent

Event OnLoad()
  Log(ModName, "Venworks:JunkRecycler:TransferContainerScript", "OnLoad", "On OnLoad triggered.", 0, DebugEnabled.GetValueInt())
EndEvent

Event OnUnload()
  Log(ModName, "Venworks:JunkRecycler:TransferContainerScript", "OnUnload", "On OnUnload triggered.", 0, DebugEnabled.GetValueInt())
  RemoveAllInventoryEventFilters()
EndEvent

Event OnItemAdded(Form akBaseItem, Int aiItemCount, ObjectReference akItemReference, ObjectReference akSourceContainer, Int aiTransferReason)
  Log(ModName, "Venworks:JunkRecycler:TransferContainerScript", "OnItemAdded", "On OnItemAdded triggered.", 0, DebugEnabled.GetValueInt())

  ;; No init/load events get called this was so need to call Setup ourself
  Setup()

  ;; Loop and process items
  Log(ModName, "Venworks:JunkRecycler:TransferContainerScript", "OnItemAdded", "Processing item " + akBaseItem +  " of which there are " + aiItemCount + " of them.", 0, DebugEnabled.GetValueInt())
  ProcessItem(akBaseItem, aiItemCount)
EndEvent


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Functions - Setup
;;;
Function Setup()
  AddInventoryEventFilter(None)
EndFunction


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Functions - Breakdown Processing
;;;
Function ProcessItem(Form baseItem, int count)
  BreakdownResults results=New BreakdownResults
  Actor player = Game.GetPlayer()
  Log(ModName, "Venworks:JunkRecycler:TransferContainerScript", "ProcessItem", "Processing " + count + " item(s) of " + baseItem + ".", 0, DebugEnabled.GetValueInt())

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
    Log(ModName, "Venworks:JunkRecycler:TransferContainerScript", "ProcessItem", "Failed to find breakdown rules for " + baseItem + " falling back to random results.", 0, DebugEnabled.GetValueInt())

    ;; Handle Tier A
    If (Game.GetDieRollSuccess(50, 1, 100, -1, -1))
      results.TierA_Item = GetRandomInorganic()
    Else
      results.TierA_Item = GetRandomOrganic()
    EndIf

    ;; Handle Tier B
    If (Game.GetDieRollSuccess(50, 1, 100, -1, -1))
      results.TierB_Item = GetRandomOrganic()
    Else
      results.TierB_Item = GetRandomInorganic()
    EndIf

    ;; Handle Tier C
    results.TierC_Item = GetRandomOrganic()

    ;; Handle Tier D
    results.TierD_Item = GetRandomInorganic()
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

  If (results.TierA_Item != None)
    If (VJR_BreakdownChance_TierA.GetValueInt() == 100 || Game.GetDieRollSuccess(VJR_BreakdownChance_TierA.GetValueInt(), 1, 100, -1, -1))
      Log(ModName, "Venworks:JunkRecycler:TransferContainerScript", "ProcessItem", "To player's inventory adding Tier A breakdown component of " + results.TierA_Item + " at a quantity of " + results.TierA_Quantity + ".", 0, DebugEnabled.GetValueInt())
      player.AddItem(akItemToAdd=results.TierA_Item, aiCount=results.TierA_Quantity, abSilent=True)
    EndIf
  Else
    Log(ModName, "Venworks:JunkRecycler:TransferContainerScript", "ProcessItem", "No break down item was found for Tier A for " + baseItem + ".", 0, DebugEnabled.GetValueInt())
  EndIf

  If (results.TierB_Item != None)
    If (VJR_BreakdownChance_TierB.GetValueInt() == 100 || Game.GetDieRollSuccess(VJR_BreakdownChance_TierB.GetValueInt(), 1, 100, -1, -1))
      Log(ModName, "Venworks:JunkRecycler:TransferContainerScript", "ProcessItem", "To player's inventory adding Tier B breakdown component of " + results.TierB_Item + " at a quantity of " + results.TierB_Quantity + ".", 0, DebugEnabled.GetValueInt())
      player.AddItem(akItemToAdd=results.TierB_Item, aiCount=results.TierB_Quantity, abSilent=True)
    EndIf
  Else
    Log(ModName, "Venworks:JunkRecycler:TransferContainerScript", "ProcessItem", "No break down item was found for Tier B for " + baseItem + ".", 0, DebugEnabled.GetValueInt())
  EndIf
  
  If (results.TierC_Item != None)
    If (VJR_BreakdownChance_TierC.GetValueInt() == 100 || Game.GetDieRollSuccess(VJR_BreakdownChance_TierC.GetValueInt(), 1, 100, -1, -1))
      Log(ModName, "Venworks:JunkRecycler:TransferContainerScript", "ProcessItem", "To player's inventory adding Tier C breakdown component of " + results.TierC_Item + " at a quantity of " + results.TierC_Quantity + ".", 0, DebugEnabled.GetValueInt())
      player.AddItem(akItemToAdd=results.TierC_Item, aiCount=results.TierC_Quantity, abSilent=True)
    EndIf
  Else
    Log(ModName, "Venworks:JunkRecycler:TransferContainerScript", "ProcessItem", "No break down item was found for Tier C for " + baseItem + ".", 0, DebugEnabled.GetValueInt())
  EndIf
  
  If (results.TierD_Item != None)
    If (VJR_BreakdownChance_TierD.GetValueInt() == 100 || Game.GetDieRollSuccess(VJR_BreakdownChance_TierD.GetValueInt(), 1, 100, -1, -1))
      Log(ModName, "Venworks:JunkRecycler:TransferContainerScript", "ProcessItem", "To player's inventory adding Tier D breakdown component of " + results.TierD_Item + " at a quantity of " + results.TierD_Quantity + ".", 0, DebugEnabled.GetValueInt())
      player.AddItem(akItemToAdd=results.TierD_Item, aiCount=results.TierD_Quantity, abSilent=True)
    EndIf
  Else
    Log(ModName, "Venworks:JunkRecycler:TransferContainerScript", "ProcessItem", "No break down item was found for Tier D for " + baseItem + ".", 0, DebugEnabled.GetValueInt())
  EndIf
  
  RemoveItem(akItemToRemove=baseItem, aiCount=count, abSilent=True, akOtherContainer=None)
EndFunction

Float Function GetItemSizeAdjustment(Form baseItem)
  Log(ModName, "Venworks:JunkRecycler:TransferContainerScript", "GetItemSizeAdjustment", "Processing item " + baseItem + ".", 0, DebugEnabled.GetValueInt())

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
  Log(ModName, "Venworks:JunkRecycler:TransferContainerScript", "GetItemTierA", "Finding Tier A material for item " + baseItem + ".", 0, DebugEnabled.GetValueInt())

  If(baseItem.HasKeyword(VJR_Breakdown_RandomInorganic_TA))
    Return GetRandomInorganic()
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_RandomOrganic_TA))
    Return GetRandomOrganic()
  ElseIf (baseItem.HasKeyword(VJR_Breakdown_Adhesive_TA))
    Return OrgRareAdhesive
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Aldumite_TA))
    Return InorgUniqueAldumite
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Alkanes_TA))
    Return InorgUncommonAlkanes
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Aluminum_TA))
    Return InorgCommonAluminum
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_AminoAcids_TA))
    Return OrgRareAminoAcids
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Analgesic_TA))
    Return OrgRareAnalgesic
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Antimicrobial_TA))
    Return OrgUncommonAntimicrobial
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Antimony_TA))
    Return InorgExoticAntimony
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_AqueousHematite_TA))
    Return InorgUniqueAqueousHematite
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Argon_TA))
    Return InorgCommonArgon
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Aromatic_TA))
    Return OrgRareAromatic
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Benzene_TA))
    Return InorgUncommonBenzene
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Beryllium_TA))
    Return InorgUncommonBeryllium
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Biosuppressant_TA))
    Return OrgExoticBiosuppressant
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Caelumite_TA))
    Return InorgUniqueCaelumite
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Caesium_TA))
    Return InorgExoticCaesium
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_CarboxylicAcids_TA))
    Return InorgRareCarboxylicAcids
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Chlorine_TA))
    Return InorgCommonChlorine
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Chlorosilanes_TA))
    Return InorgUncommonChlorosilanes
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Cobalt_TA))
    Return InorgUncommonCobalt
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Copper_TA))
    Return InorgCommonCopper
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Cosmetic_TA))
    Return OrgUncommonCosmetic
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Dysprosium_TA))
    Return InorgExoticDysprosium
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Europium_TA))
    Return InorgExoticEuropium
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Fiber_TA))
    Return OrgCommonFiber
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Fluorine_TA))
    Return InorgUncommonFluorine
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Gastronomic_TA))
    Return OrgUniqueGastronomic
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Gold_TA))
    Return InorgRareGold
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Hallucinogen_TA))
    Return OrgRareHallucinogen
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Helium3_TA))
    Return InorgCommonHelium3
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_HighTensileSpidroin_TA))
    Return OrgUniqueHighTensileSpidroin
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Hypercatalyst_TA))
    Return OrgExoticHypercatalyst
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Immunostimulant_TA))
    Return OrgUniqueImmunostimulant
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Indicite_TA))
    Return InorgUniqueIndicite
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_IonicLiquids_TA))
    Return InorgExoticIonicLiquids
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Iridium_TA))
    Return InorgUncommonIridium
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Iron_TA))
    Return InorgCommonIron
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Lead_TA))
    Return InorgCommonLead
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Lithium_TA))
    Return InorgRareLithium
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Lubricant_TA))
    Return OrgExoticLubricant
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_LuxuryTextile_TA))
    Return OrgUniqueLuxuryTextile
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Membrane_TA))
    Return OrgUncommonMembrane
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_MemorySubstrate_TA))
    Return OrgUniqueMemorySubstrate
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Mercury_TA))
    Return InorgRareMercury
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_MetabolicAgent_TA))
    Return OrgCommonMetabolicAgent
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Neodymium_TA))
    Return InorgRareNeodymium
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Neon_TA))
    Return InorgExoticNeon
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Neurologic_TA))
    Return OrgUniqueNeurologic
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Nickel_TA))
    Return InorgCommonNickel
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Nutrient_TA))
    Return OrgCommonNutrient
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Ornamental_TA))
    Return OrgUncommonOrnamental
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Palladium_TA))
    Return InorgExoticPalladium
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Pigment_TA))
    Return OrgUncommonPigment
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Platinum_TA))
    Return InorgRarePlatinum
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Plutonium_TA))
    Return InorgExoticPlutonium
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Polymer_TA))
    Return OrgExoticPolymer
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Rothicite_TA))
    Return InorgUniqueRothicite
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Sealant_TA))
    Return OrgCommonSealant
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Sedative_TA))
    Return OrgRareSedative
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Silver_TA))
    Return InorgUncommonSilver
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Solvent_TA))
    Return OrgExoticSolvent
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Spice_TA))
    Return OrgUncommonSpice
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Stimulant_TA))
    Return OrgExoticStimulant
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Structural_TA))
    Return OrgCommonStructural
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Tantalum_TA))
    Return InorgRareTantalum
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Tasine_TA))
    Return InorgUniqueTasine
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Tetrafluorides_TA))
    Return InorgRareTetrafluorides
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Titanium_TA))
    Return InorgRareTitanium
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Toxin_TA))
    Return OrgCommonToxin
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Tungsten_TA))
    Return InorgUncommonTungsten
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Uranium_TA))
    Return InorgCommonUranium
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Vanadium_TA))
    Return InorgRareVanadium
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Veryl_TA))
    Return InorgUniqueVeryl
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Vytinium_TA))
    Return InorgUniqueVytinium
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Water_TA))
    Return InorgCommonWater
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Xenon_TA))
    Return InorgExoticXenon
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Ytterbium_TA))
    Return InorgExoticYtterbium
  Else 
    Return None
  EndIf
EndFunction

Form Function GetItemTierB(Form baseItem)
  Log(ModName, "Venworks:JunkRecycler:TransferContainerScript", "GetItemTierB", "Finding Tier B material for item " + baseItem + ".", 0, DebugEnabled.GetValueInt())

  If(baseItem.HasKeyword(VJR_Breakdown_RandomInorganic_TB))
    Return GetRandomInorganic()
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_RandomOrganic_TB))
    Return GetRandomOrganic()
  ElseIf (baseItem.HasKeyword(VJR_Breakdown_Adhesive_TB))
    Return OrgRareAdhesive
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Aldumite_TB))
    Return InorgUniqueAldumite
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Alkanes_TB))
    Return InorgUncommonAlkanes
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Aluminum_TB))
    Return InorgCommonAluminum
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_AminoAcids_TB))
    Return OrgRareAminoAcids
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Analgesic_TB))
    Return OrgRareAnalgesic
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Antimicrobial_TB))
    Return OrgUncommonAntimicrobial
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Antimony_TB))
    Return InorgExoticAntimony
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_AqueousHematite_TB))
    Return InorgUniqueAqueousHematite
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Argon_TB))
    Return InorgCommonArgon
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Aromatic_TB))
    Return OrgRareAromatic
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Benzene_TB))
    Return InorgUncommonBenzene
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Beryllium_TB))
    Return InorgUncommonBeryllium
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Biosuppressant_TB))
    Return OrgExoticBiosuppressant
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Caelumite_TB))
    Return InorgUniqueCaelumite
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Caesium_TB))
    Return InorgExoticCaesium
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_CarboxylicAcids_TB))
    Return InorgRareCarboxylicAcids
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Chlorine_TB))
    Return InorgCommonChlorine
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Chlorosilanes_TB))
    Return InorgUncommonChlorosilanes
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Cobalt_TB))
    Return InorgUncommonCobalt
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Copper_TB))
    Return InorgCommonCopper
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Cosmetic_TB))
    Return OrgUncommonCosmetic
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Dysprosium_TB))
    Return InorgExoticDysprosium
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Europium_TB))
    Return InorgExoticEuropium
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Fiber_TB))
    Return OrgCommonFiber
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Fluorine_TB))
    Return InorgUncommonFluorine
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Gastronomic_TB))
    Return OrgUniqueGastronomic
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Gold_TB))
    Return InorgRareGold
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Hallucinogen_TB))
    Return OrgRareHallucinogen
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Helium3_TB))
    Return InorgCommonHelium3
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_HighTensileSpidroin_TB))
    Return OrgUniqueHighTensileSpidroin
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Hypercatalyst_TB))
    Return OrgExoticHypercatalyst
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Immunostimulant_TB))
    Return OrgUniqueImmunostimulant
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Indicite_TB))
    Return InorgUniqueIndicite
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_IonicLiquids_TB))
    Return InorgExoticIonicLiquids
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Iridium_TB))
    Return InorgUncommonIridium
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Iron_TB))
    Return InorgCommonIron
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Lead_TB))
    Return InorgCommonLead
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Lithium_TB))
    Return InorgRareLithium
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Lubricant_TB))
    Return OrgExoticLubricant
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_LuxuryTextile_TB))
    Return OrgUniqueLuxuryTextile
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Membrane_TB))
    Return OrgUncommonMembrane
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_MemorySubstrate_TB))
    Return OrgUniqueMemorySubstrate
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Mercury_TB))
    Return InorgRareMercury
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_MetabolicAgent_TB))
    Return OrgCommonMetabolicAgent
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Neodymium_TB))
    Return InorgRareNeodymium
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Neon_TB))
    Return InorgExoticNeon
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Neurologic_TB))
    Return OrgUniqueNeurologic
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Nickel_TB))
    Return InorgCommonNickel
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Nutrient_TB))
    Return OrgCommonNutrient
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Ornamental_TB))
    Return OrgUncommonOrnamental
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Palladium_TB))
    Return InorgExoticPalladium
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Pigment_TB))
    Return OrgUncommonPigment
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Platinum_TB))
    Return InorgRarePlatinum
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Plutonium_TB))
    Return InorgExoticPlutonium
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Polymer_TB))
    Return OrgExoticPolymer
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Rothicite_TB))
    Return InorgUniqueRothicite
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Sealant_TB))
    Return OrgCommonSealant
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Sedative_TB))
    Return OrgRareSedative
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Silver_TB))
    Return InorgUncommonSilver
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Solvent_TB))
    Return OrgExoticSolvent
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Spice_TB))
    Return OrgUncommonSpice
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Stimulant_TB))
    Return OrgExoticStimulant
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Structural_TB))
    Return OrgCommonStructural
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Tantalum_TB))
    Return InorgRareTantalum
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Tasine_TB))
    Return InorgUniqueTasine
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Tetrafluorides_TB))
    Return InorgRareTetrafluorides
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Titanium_TB))
    Return InorgRareTitanium
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Toxin_TB))
    Return OrgCommonToxin
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Tungsten_TB))
    Return InorgUncommonTungsten
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Uranium_TB))
    Return InorgCommonUranium
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Vanadium_TB))
    Return InorgRareVanadium
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Veryl_TB))
    Return InorgUniqueVeryl
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Vytinium_TB))
    Return InorgUniqueVytinium
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Water_TB))
    Return InorgCommonWater
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Xenon_TB))
    Return InorgExoticXenon
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Ytterbium_TB))
    Return InorgExoticYtterbium
  Else 
    Return None
  EndIf
EndFunction

Form Function GetItemTierC(Form baseItem)
  Log(ModName, "Venworks:JunkRecycler:TransferContainerScript", "GetItemTierC", "Finding Tier C material for item " + baseItem + ".", 0, DebugEnabled.GetValueInt())

  If(baseItem.HasKeyword(VJR_Breakdown_RandomInorganic_TC))
    Return GetRandomInorganic()
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_RandomOrganic_TC))
    Return GetRandomOrganic()
  ElseIf (baseItem.HasKeyword(VJR_Breakdown_Adhesive_TC))
    Return OrgRareAdhesive
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Aldumite_TC))
    Return InorgUniqueAldumite
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Alkanes_TC))
    Return InorgUncommonAlkanes
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Aluminum_TC))
    Return InorgCommonAluminum
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_AminoAcids_TC))
    Return OrgRareAminoAcids
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Analgesic_TC))
    Return OrgRareAnalgesic
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Antimicrobial_TC))
    Return OrgUncommonAntimicrobial
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Antimony_TC))
    Return InorgExoticAntimony
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_AqueousHematite_TC))
    Return InorgUniqueAqueousHematite
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Argon_TC))
    Return InorgCommonArgon
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Aromatic_TC))
    Return OrgRareAromatic
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Benzene_TC))
    Return InorgUncommonBenzene
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Beryllium_TC))
    Return InorgUncommonBeryllium
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Biosuppressant_TC))
    Return OrgExoticBiosuppressant
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Caelumite_TC))
    Return InorgUniqueCaelumite
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Caesium_TC))
    Return InorgExoticCaesium
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_CarboxylicAcids_TC))
    Return InorgRareCarboxylicAcids
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Chlorine_TC))
    Return InorgCommonChlorine
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Chlorosilanes_TC))
    Return InorgUncommonChlorosilanes
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Cobalt_TC))
    Return InorgUncommonCobalt
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Copper_TC))
    Return InorgCommonCopper
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Cosmetic_TC))
    Return OrgUncommonCosmetic
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Dysprosium_TC))
    Return InorgExoticDysprosium
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Europium_TC))
    Return InorgExoticEuropium
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Fiber_TC))
    Return OrgCommonFiber
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Fluorine_TC))
    Return InorgUncommonFluorine
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Gastronomic_TC))
    Return OrgUniqueGastronomic
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Gold_TC))
    Return InorgRareGold
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Hallucinogen_TC))
    Return OrgRareHallucinogen
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Helium3_TC))
    Return InorgCommonHelium3
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_HighTensileSpidroin_TC))
    Return OrgUniqueHighTensileSpidroin
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Hypercatalyst_TC))
    Return OrgExoticHypercatalyst
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Immunostimulant_TC))
    Return OrgUniqueImmunostimulant
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Indicite_TC))
    Return InorgUniqueIndicite
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_IonicLiquids_TC))
    Return InorgExoticIonicLiquids
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Iridium_TC))
    Return InorgUncommonIridium
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Iron_TC))
    Return InorgCommonIron
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Lead_TC))
    Return InorgCommonLead
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Lithium_TC))
    Return InorgRareLithium
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Lubricant_TC))
    Return OrgExoticLubricant
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_LuxuryTextile_TC))
    Return OrgUniqueLuxuryTextile
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Membrane_TC))
    Return OrgUncommonMembrane
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_MemorySubstrate_TC))
    Return OrgUniqueMemorySubstrate
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Mercury_TC))
    Return InorgRareMercury
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_MetabolicAgent_TC))
    Return OrgCommonMetabolicAgent
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Neodymium_TC))
    Return InorgRareNeodymium
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Neon_TC))
    Return InorgExoticNeon
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Neurologic_TC))
    Return OrgUniqueNeurologic
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Nickel_TC))
    Return InorgCommonNickel
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Nutrient_TC))
    Return OrgCommonNutrient
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Ornamental_TC))
    Return OrgUncommonOrnamental
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Palladium_TC))
    Return InorgExoticPalladium
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Pigment_TC))
    Return OrgUncommonPigment
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Platinum_TC))
    Return InorgRarePlatinum
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Plutonium_TC))
    Return InorgExoticPlutonium
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Polymer_TC))
    Return OrgExoticPolymer
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Rothicite_TC))
    Return InorgUniqueRothicite
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Sealant_TC))
    Return OrgCommonSealant
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Sedative_TC))
    Return OrgRareSedative
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Silver_TC))
    Return InorgUncommonSilver
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Solvent_TC))
    Return OrgExoticSolvent
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Spice_TC))
    Return OrgUncommonSpice
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Stimulant_TC))
    Return OrgExoticStimulant
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Structural_TC))
    Return OrgCommonStructural
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Tantalum_TC))
    Return InorgRareTantalum
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Tasine_TC))
    Return InorgUniqueTasine
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Tetrafluorides_TC))
    Return InorgRareTetrafluorides
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Titanium_TC))
    Return InorgRareTitanium
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Toxin_TC))
    Return OrgCommonToxin
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Tungsten_TC))
    Return InorgUncommonTungsten
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Uranium_TC))
    Return InorgCommonUranium
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Vanadium_TC))
    Return InorgRareVanadium
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Veryl_TC))
    Return InorgUniqueVeryl
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Vytinium_TC))
    Return InorgUniqueVytinium
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Water_TC))
    Return InorgCommonWater
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Xenon_TC))
    Return InorgExoticXenon
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Ytterbium_TC))
    Return InorgExoticYtterbium
  Else 
    Return None
  EndIf
EndFunction

Form Function GetItemTierD(Form baseItem)
  Log(ModName, "Venworks:JunkRecycler:TransferContainerScript", "GetItemTierD", "Finding Tier D material for item " + baseItem + ".", 0, DebugEnabled.GetValueInt())

  If(baseItem.HasKeyword(VJR_Breakdown_RandomInorganic_TD))
    Return GetRandomInorganic()
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_RandomOrganic_TD))
    Return GetRandomOrganic()
  ElseIf (baseItem.HasKeyword(VJR_Breakdown_Adhesive_TD))
    Return OrgRareAdhesive
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Aldumite_TD))
    Return InorgUniqueAldumite
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Alkanes_TD))
    Return InorgUncommonAlkanes
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Aluminum_TD))
    Return InorgCommonAluminum
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_AminoAcids_TD))
    Return OrgRareAminoAcids
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Analgesic_TD))
    Return OrgRareAnalgesic
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Antimicrobial_TD))
    Return OrgUncommonAntimicrobial
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Antimony_TD))
    Return InorgExoticAntimony
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_AqueousHematite_TD))
    Return InorgUniqueAqueousHematite
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Argon_TD))
    Return InorgCommonArgon
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Aromatic_TD))
    Return OrgRareAromatic
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Benzene_TD))
    Return InorgUncommonBenzene
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Beryllium_TD))
    Return InorgUncommonBeryllium
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Biosuppressant_TD))
    Return OrgExoticBiosuppressant
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Caelumite_TD))
    Return InorgUniqueCaelumite
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Caesium_TD))
    Return InorgExoticCaesium
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_CarboxylicAcids_TD))
    Return InorgRareCarboxylicAcids
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Chlorine_TD))
    Return InorgCommonChlorine
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Chlorosilanes_TD))
    Return InorgUncommonChlorosilanes
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Cobalt_TD))
    Return InorgUncommonCobalt
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Copper_TD))
    Return InorgCommonCopper
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Cosmetic_TD))
    Return OrgUncommonCosmetic
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Dysprosium_TD))
    Return InorgExoticDysprosium
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Europium_TD))
    Return InorgExoticEuropium
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Fiber_TD))
    Return OrgCommonFiber
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Fluorine_TD))
    Return InorgUncommonFluorine
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Gastronomic_TD))
    Return OrgUniqueGastronomic
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Gold_TD))
    Return InorgRareGold
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Hallucinogen_TD))
    Return OrgRareHallucinogen
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Helium3_TD))
    Return InorgCommonHelium3
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_HighTensileSpidroin_TD))
    Return OrgUniqueHighTensileSpidroin
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Hypercatalyst_TD))
    Return OrgExoticHypercatalyst
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Immunostimulant_TD))
    Return OrgUniqueImmunostimulant
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Indicite_TD))
    Return InorgUniqueIndicite
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_IonicLiquids_TD))
    Return InorgExoticIonicLiquids
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Iridium_TD))
    Return InorgUncommonIridium
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Iron_TD))
    Return InorgCommonIron
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Lead_TD))
    Return InorgCommonLead
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Lithium_TD))
    Return InorgRareLithium
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Lubricant_TD))
    Return OrgExoticLubricant
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_LuxuryTextile_TD))
    Return OrgUniqueLuxuryTextile
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Membrane_TD))
    Return OrgUncommonMembrane
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_MemorySubstrate_TD))
    Return OrgUniqueMemorySubstrate
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Mercury_TD))
    Return InorgRareMercury
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_MetabolicAgent_TD))
    Return OrgCommonMetabolicAgent
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Neodymium_TD))
    Return InorgRareNeodymium
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Neon_TD))
    Return InorgExoticNeon
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Neurologic_TD))
    Return OrgUniqueNeurologic
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Nickel_TD))
    Return InorgCommonNickel
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Nutrient_TD))
    Return OrgCommonNutrient
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Ornamental_TD))
    Return OrgUncommonOrnamental
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Palladium_TD))
    Return InorgExoticPalladium
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Pigment_TD))
    Return OrgUncommonPigment
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Platinum_TD))
    Return InorgRarePlatinum
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Plutonium_TD))
    Return InorgExoticPlutonium
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Polymer_TD))
    Return OrgExoticPolymer
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Rothicite_TD))
    Return InorgUniqueRothicite
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Sealant_TD))
    Return OrgCommonSealant
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Sedative_TD))
    Return OrgRareSedative
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Silver_TD))
    Return InorgUncommonSilver
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Solvent_TD))
    Return OrgExoticSolvent
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Spice_TD))
    Return OrgUncommonSpice
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Stimulant_TD))
    Return OrgExoticStimulant
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Structural_TD))
    Return OrgCommonStructural
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Tantalum_TD))
    Return InorgRareTantalum
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Tasine_TD))
    Return InorgUniqueTasine
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Tetrafluorides_TD))
    Return InorgRareTetrafluorides
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Titanium_TD))
    Return InorgRareTitanium
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Toxin_TD))
    Return OrgCommonToxin
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Tungsten_TD))
    Return InorgUncommonTungsten
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Uranium_TD))
    Return InorgCommonUranium
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Vanadium_TD))
    Return InorgRareVanadium
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Veryl_TD))
    Return InorgUniqueVeryl
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Vytinium_TD))
    Return InorgUniqueVytinium
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Water_TD))
    Return InorgCommonWater
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Xenon_TD))
    Return InorgExoticXenon
  ElseIf(baseItem.HasKeyword(VJR_Breakdown_Ytterbium_TD))
    Return InorgExoticYtterbium
  Else 
    Return None
  EndIf
EndFunction

Form Function GetRandomInorganic()
  Int randomInt = Utility.RandomInt(0, AllInorganicResources.GetSize())
  Return AllInorganicResources.GetAt(randomInt)
EndFunction

Form Function GetRandomOrganic()
  Int randomInt = Utility.RandomInt(0, AllOrganicResources.GetSize())
  Return AllOrganicResources.GetAt(randomInt)
EndFunction