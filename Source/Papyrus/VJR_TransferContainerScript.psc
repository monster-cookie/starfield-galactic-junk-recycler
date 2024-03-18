ScriptName VJR_TransferContainerScript Extends ObjectReference

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
  Float SizeAdjustment=1
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

GlobalVariable Property VJR_BreakdownChance_TierA Auto Const Mandatory
GlobalVariable Property VJR_BreakdownChance_TierB Auto Const Mandatory
GlobalVariable Property VJR_BreakdownChance_TierC Auto Const Mandatory
GlobalVariable Property VJR_BreakdownChance_TierD Auto Const Mandatory

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Properties
;;;
FormList Property AllInorganicResources Auto Const Mandatory
FormList Property AllOrganicResources Auto Const Mandatory


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Variables
;;;


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
Keyword Property VJR_Breakdown_Benzene_TA Auto Mandatory
Keyword Property VJR_Breakdown_Benzene_TB Auto Mandatory
Keyword Property VJR_Breakdown_Benzene_TC Auto Mandatory
Keyword Property VJR_Breakdown_Benzene_TD Auto Mandatory

MiscObject Property InorgUncommonBeryllium Auto Mandatory
Keyword Property VJR_Breakdown_Beryllium_TA Auto Mandatory
Keyword Property VJR_Breakdown_Beryllium_TB Auto Mandatory
Keyword Property VJR_Breakdown_Beryllium_TC Auto Mandatory
Keyword Property VJR_Breakdown_Beryllium_TD Auto Mandatory

MiscObject Property InorgUncommonChlorosilanes Auto Mandatory
Keyword Property VJR_Breakdown_Chlorosilanes_TA Auto Mandatory
Keyword Property VJR_Breakdown_Chlorosilanes_TB Auto Mandatory
Keyword Property VJR_Breakdown_Chlorosilanes_TC Auto Mandatory
Keyword Property VJR_Breakdown_Chlorosilanes_TD Auto Mandatory

MiscObject Property InorgUncommonCobalt Auto Mandatory
Keyword Property VJR_Breakdown_Cobalt_TA Auto Mandatory
Keyword Property VJR_Breakdown_Cobalt_TB Auto Mandatory
Keyword Property VJR_Breakdown_Cobalt_TC Auto Mandatory
Keyword Property VJR_Breakdown_Cobalt_TD Auto Mandatory

MiscObject Property InorgUncommonFluorine Auto Mandatory
Keyword Property VJR_Breakdown_Fluorine_TA Auto Mandatory
Keyword Property VJR_Breakdown_Fluorine_TB Auto Mandatory
Keyword Property VJR_Breakdown_Fluorine_TC Auto Mandatory
Keyword Property VJR_Breakdown_Fluorine_TD Auto Mandatory

MiscObject Property InorgUncommonIridium Auto Mandatory
Keyword Property VJR_Breakdown_Iridium_TA Auto Mandatory
Keyword Property VJR_Breakdown_Iridium_TB Auto Mandatory
Keyword Property VJR_Breakdown_Iridium_TC Auto Mandatory
Keyword Property VJR_Breakdown_Iridium_TD Auto Mandatory

MiscObject Property InorgUncommonSilver Auto Mandatory
Keyword Property VJR_Breakdown_Silver_TA Auto Mandatory
Keyword Property VJR_Breakdown_Silver_TB Auto Mandatory
Keyword Property VJR_Breakdown_Silver_TC Auto Mandatory
Keyword Property VJR_Breakdown_Silver_TD Auto Mandatory

MiscObject Property InorgUncommonTungsten Auto Mandatory
Keyword Property VJR_Breakdown_Tungsten_TA Auto Mandatory
Keyword Property VJR_Breakdown_Tungsten_TB Auto Mandatory
Keyword Property VJR_Breakdown_Tungsten_TC Auto Mandatory
Keyword Property VJR_Breakdown_Tungsten_TD Auto Mandatory


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Variables - Starfield Inorganic Materials (Rare)
;;;
MiscObject Property InorgRareCarboxylicAcids Auto Mandatory
Keyword Property VJR_Breakdown_CarboxylicAcids_TA Auto Mandatory
Keyword Property VJR_Breakdown_CarboxylicAcids_TB Auto Mandatory
Keyword Property VJR_Breakdown_CarboxylicAcids_TC Auto Mandatory
Keyword Property VJR_Breakdown_CarboxylicAcids_TD Auto Mandatory

MiscObject Property InorgRareGold Auto Mandatory
Keyword Property VJR_Breakdown_Gold_TA Auto Mandatory
Keyword Property VJR_Breakdown_Gold_TB Auto Mandatory
Keyword Property VJR_Breakdown_Gold_TC Auto Mandatory
Keyword Property VJR_Breakdown_Gold_TD Auto Mandatory

MiscObject Property InorgRareLithium Auto Mandatory
Keyword Property VJR_Breakdown_Lithium_TA Auto Mandatory
Keyword Property VJR_Breakdown_Lithium_TB Auto Mandatory
Keyword Property VJR_Breakdown_Lithium_TC Auto Mandatory
Keyword Property VJR_Breakdown_Lithium_TD Auto Mandatory

MiscObject Property InorgRareMercury Auto Mandatory
Keyword Property VJR_Breakdown_Mercury_TA Auto Mandatory
Keyword Property VJR_Breakdown_Mercury_TB Auto Mandatory
Keyword Property VJR_Breakdown_Mercury_TC Auto Mandatory
Keyword Property VJR_Breakdown_Mercury_TD Auto Mandatory

MiscObject Property InorgRareNeodymium Auto Mandatory
Keyword Property VJR_Breakdown_Neodymium_TA Auto Mandatory
Keyword Property VJR_Breakdown_Neodymium_TB Auto Mandatory
Keyword Property VJR_Breakdown_Neodymium_TC Auto Mandatory
Keyword Property VJR_Breakdown_Neodymium_TD Auto Mandatory

MiscObject Property InorgRarePlatinum Auto Mandatory
Keyword Property VJR_Breakdown_Platinum_TA Auto Mandatory
Keyword Property VJR_Breakdown_Platinum_TB Auto Mandatory
Keyword Property VJR_Breakdown_Platinum_TC Auto Mandatory
Keyword Property VJR_Breakdown_Platinum_TD Auto Mandatory

MiscObject Property InorgRareTantalum Auto Mandatory
Keyword Property VJR_Breakdown_Tantalum_TA Auto Mandatory
Keyword Property VJR_Breakdown_Tantalum_TB Auto Mandatory
Keyword Property VJR_Breakdown_Tantalum_TC Auto Mandatory
Keyword Property VJR_Breakdown_Tantalum_TD Auto Mandatory

MiscObject Property InorgRareTetrafluorides Auto Mandatory
Keyword Property VJR_Breakdown_Tetrafluorides_TA Auto Mandatory
Keyword Property VJR_Breakdown_Tetrafluorides_TB Auto Mandatory
Keyword Property VJR_Breakdown_Tetrafluorides_TC Auto Mandatory
Keyword Property VJR_Breakdown_Tetrafluorides_TD Auto Mandatory

MiscObject Property InorgRareTitanium Auto Mandatory
Keyword Property VJR_Breakdown_Titanium_TA Auto Mandatory
Keyword Property VJR_Breakdown_Titanium_TB Auto Mandatory
Keyword Property VJR_Breakdown_Titanium_TC Auto Mandatory
Keyword Property VJR_Breakdown_Titanium_TD Auto Mandatory

MiscObject Property InorgRareVanadium Auto Mandatory
Keyword Property VJR_Breakdown_Vanadium_TA Auto Mandatory
Keyword Property VJR_Breakdown_Vanadium_TB Auto Mandatory
Keyword Property VJR_Breakdown_Vanadium_TC Auto Mandatory
Keyword Property VJR_Breakdown_Vanadium_TD Auto Mandatory


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Variables - Starfield Inorganic Materials (Exotic)
;;;
MiscObject Property InorgExoticAntimony Auto Mandatory
Keyword Property VJR_Breakdown_Antimony_TA Auto Mandatory
Keyword Property VJR_Breakdown_Antimony_TB Auto Mandatory
Keyword Property VJR_Breakdown_Antimony_TC Auto Mandatory
Keyword Property VJR_Breakdown_Antimony_TD Auto Mandatory

MiscObject Property InorgExoticCaesium Auto Mandatory
Keyword Property VJR_Breakdown_Caesium_TA Auto Mandatory
Keyword Property VJR_Breakdown_Caesium_TB Auto Mandatory
Keyword Property VJR_Breakdown_Caesium_TC Auto Mandatory
Keyword Property VJR_Breakdown_Caesium_TD Auto Mandatory

MiscObject Property InorgExoticDysprosium Auto Mandatory
Keyword Property VJR_Breakdown_Dysprosium_TA Auto Mandatory
Keyword Property VJR_Breakdown_Dysprosium_TB Auto Mandatory
Keyword Property VJR_Breakdown_Dysprosium_TC Auto Mandatory
Keyword Property VJR_Breakdown_Dysprosium_TD Auto Mandatory

MiscObject Property InorgExoticEuropium Auto Mandatory
Keyword Property VJR_Breakdown_Europium_TA Auto Mandatory
Keyword Property VJR_Breakdown_Europium_TB Auto Mandatory
Keyword Property VJR_Breakdown_Europium_TC Auto Mandatory
Keyword Property VJR_Breakdown_Europium_TD Auto Mandatory

MiscObject Property InorgExoticIonicLiquids Auto Mandatory
Keyword Property VJR_Breakdown_IonicLiquids_TA Auto Mandatory
Keyword Property VJR_Breakdown_IonicLiquids_TB Auto Mandatory
Keyword Property VJR_Breakdown_IonicLiquids_TC Auto Mandatory
Keyword Property VJR_Breakdown_IonicLiquids_TD Auto Mandatory

MiscObject Property InorgExoticNeon Auto Mandatory
Keyword Property VJR_Breakdown_Neon_TA Auto Mandatory
Keyword Property VJR_Breakdown_Neon_TB Auto Mandatory
Keyword Property VJR_Breakdown_Neon_TC Auto Mandatory
Keyword Property VJR_Breakdown_Neon_TD Auto Mandatory

MiscObject Property InorgExoticPalladium Auto Mandatory
Keyword Property VJR_Breakdown_Palladium_TA Auto Mandatory
Keyword Property VJR_Breakdown_Palladium_TB Auto Mandatory
Keyword Property VJR_Breakdown_Palladium_TC Auto Mandatory
Keyword Property VJR_Breakdown_Palladium_TD Auto Mandatory

MiscObject Property InorgExoticPlutonium Auto Mandatory
Keyword Property VJR_Breakdown_Plutonium_TA Auto Mandatory
Keyword Property VJR_Breakdown_Plutonium_TB Auto Mandatory
Keyword Property VJR_Breakdown_Plutonium_TC Auto Mandatory
Keyword Property VJR_Breakdown_Plutonium_TD Auto Mandatory

MiscObject Property InorgExoticXenon Auto Mandatory
Keyword Property VJR_Breakdown_Xenon_TA Auto Mandatory
Keyword Property VJR_Breakdown_Xenon_TB Auto Mandatory
Keyword Property VJR_Breakdown_Xenon_TC Auto Mandatory
Keyword Property VJR_Breakdown_Xenon_TD Auto Mandatory

MiscObject Property InorgExoticYtterbium Auto Mandatory
Keyword Property VJR_Breakdown_Ytterbium_TA Auto Mandatory
Keyword Property VJR_Breakdown_Ytterbium_TB Auto Mandatory
Keyword Property VJR_Breakdown_Ytterbium_TC Auto Mandatory
Keyword Property VJR_Breakdown_Ytterbium_TD Auto Mandatory


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Variables - Starfield Inorganic Materials (Unique)
;;;
MiscObject Property InorgUniqueAldumite Auto Mandatory
Keyword Property VJR_Breakdown_Aldumite_TA Auto Mandatory
Keyword Property VJR_Breakdown_Aldumite_TB Auto Mandatory
Keyword Property VJR_Breakdown_Aldumite_TC Auto Mandatory
Keyword Property VJR_Breakdown_Aldumite_TD Auto Mandatory

MiscObject Property InorgUniqueAqueousHematite Auto Mandatory
Keyword Property VJR_Breakdown_AqueousHematite_TA Auto Mandatory
Keyword Property VJR_Breakdown_AqueousHematite_TB Auto Mandatory
Keyword Property VJR_Breakdown_AqueousHematite_TC Auto Mandatory
Keyword Property VJR_Breakdown_AqueousHematite_TD Auto Mandatory

MiscObject Property InorgUniqueCaelumite Auto Mandatory
Keyword Property VJR_Breakdown_Caelumite_TA Auto Mandatory
Keyword Property VJR_Breakdown_Caelumite_TB Auto Mandatory
Keyword Property VJR_Breakdown_Caelumite_TC Auto Mandatory
Keyword Property VJR_Breakdown_Caelumite_TD Auto Mandatory

MiscObject Property InorgUniqueIndicite Auto Mandatory
Keyword Property VJR_Breakdown_Indicite_TA Auto Mandatory
Keyword Property VJR_Breakdown_Indicite_TB Auto Mandatory
Keyword Property VJR_Breakdown_Indicite_TC Auto Mandatory
Keyword Property VJR_Breakdown_Indicite_TD Auto Mandatory

MiscObject Property InorgUniqueRothicite Auto Mandatory
Keyword Property VJR_Breakdown_Rothicite_TA Auto Mandatory
Keyword Property VJR_Breakdown_Rothicite_TB Auto Mandatory
Keyword Property VJR_Breakdown_Rothicite_TC Auto Mandatory
Keyword Property VJR_Breakdown_Rothicite_TD Auto Mandatory

MiscObject Property InorgUniqueTasine Auto Mandatory
Keyword Property VJR_Breakdown_Tasine_TA Auto Mandatory
Keyword Property VJR_Breakdown_Tasine_TB Auto Mandatory
Keyword Property VJR_Breakdown_Tasine_TC Auto Mandatory
Keyword Property VJR_Breakdown_Tasine_TD Auto Mandatory

MiscObject Property InorgUniqueVeryl Auto Mandatory
Keyword Property VJR_Breakdown_Veryl_TA Auto Mandatory
Keyword Property VJR_Breakdown_Veryl_TB Auto Mandatory
Keyword Property VJR_Breakdown_Veryl_TC Auto Mandatory
Keyword Property VJR_Breakdown_Veryl_TD Auto Mandatory

MiscObject Property InorgUniqueVytinium Auto Mandatory
Keyword Property VJR_Breakdown_Vytinium_TA Auto Mandatory
Keyword Property VJR_Breakdown_Vytinium_TB Auto Mandatory
Keyword Property VJR_Breakdown_Vytinium_TC Auto Mandatory
Keyword Property VJR_Breakdown_Vytinium_TD Auto Mandatory


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
Keyword Property VJR_Breakdown_MetabolicAgent_TA Auto Mandatory
Keyword Property VJR_Breakdown_MetabolicAgent_TB Auto Mandatory
Keyword Property VJR_Breakdown_MetabolicAgent_TC Auto Mandatory
Keyword Property VJR_Breakdown_MetabolicAgent_TD Auto Mandatory

MiscObject Property OrgCommonNutrient Auto Mandatory
Keyword Property VJR_Breakdown_Nutrient_TA Auto Mandatory
Keyword Property VJR_Breakdown_Nutrient_TB Auto Mandatory
Keyword Property VJR_Breakdown_Nutrient_TC Auto Mandatory
Keyword Property VJR_Breakdown_Nutrient_TD Auto Mandatory

MiscObject Property OrgCommonSealant Auto Mandatory
Keyword Property VJR_Breakdown_Sealant_TA Auto Mandatory
Keyword Property VJR_Breakdown_Sealant_TB Auto Mandatory
Keyword Property VJR_Breakdown_Sealant_TC Auto Mandatory
Keyword Property VJR_Breakdown_Sealant_TD Auto Mandatory

MiscObject Property OrgCommonStructural Auto Mandatory
Keyword Property VJR_Breakdown_Structural_TA Auto Mandatory
Keyword Property VJR_Breakdown_Structural_TB Auto Mandatory
Keyword Property VJR_Breakdown_Structural_TC Auto Mandatory
Keyword Property VJR_Breakdown_Structural_TD Auto Mandatory

MiscObject Property OrgCommonToxin Auto Mandatory
Keyword Property VJR_Breakdown_Toxin_TA Auto Mandatory
Keyword Property VJR_Breakdown_Toxin_TB Auto Mandatory
Keyword Property VJR_Breakdown_Toxin_TC Auto Mandatory
Keyword Property VJR_Breakdown_Toxin_TD Auto Mandatory


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Variables - Starfield Organic Materials (Uncommon)
;;;
MiscObject Property OrgUncommonAntimicrobial Auto Mandatory
Keyword Property VJR_Breakdown_Antimicrobial_TA Auto Mandatory
Keyword Property VJR_Breakdown_Antimicrobial_TB Auto Mandatory
Keyword Property VJR_Breakdown_Antimicrobial_TC Auto Mandatory
Keyword Property VJR_Breakdown_Antimicrobial_TD Auto Mandatory

MiscObject Property OrgUncommonCosmetic Auto Mandatory
Keyword Property VJR_Breakdown_Cosmetic_TA Auto Mandatory
Keyword Property VJR_Breakdown_Cosmetic_TB Auto Mandatory
Keyword Property VJR_Breakdown_Cosmetic_TC Auto Mandatory
Keyword Property VJR_Breakdown_Cosmetic_TD Auto Mandatory

MiscObject Property OrgUncommonMembrane Auto Mandatory
Keyword Property VJR_Breakdown_Membrane_TA Auto Mandatory
Keyword Property VJR_Breakdown_Membrane_TB Auto Mandatory
Keyword Property VJR_Breakdown_Membrane_TC Auto Mandatory
Keyword Property VJR_Breakdown_Membrane_TD Auto Mandatory

MiscObject Property OrgUncommonOrnamental Auto Mandatory
Keyword Property VJR_Breakdown_Ornamental_TA Auto Mandatory
Keyword Property VJR_Breakdown_Ornamental_TB Auto Mandatory
Keyword Property VJR_Breakdown_Ornamental_TC Auto Mandatory
Keyword Property VJR_Breakdown_Ornamental_TD Auto Mandatory

MiscObject Property OrgUncommonPigment Auto Mandatory
Keyword Property VJR_Breakdown_Pigment_TA Auto Mandatory
Keyword Property VJR_Breakdown_Pigment_TB Auto Mandatory
Keyword Property VJR_Breakdown_Pigment_TC Auto Mandatory
Keyword Property VJR_Breakdown_Pigment_TD Auto Mandatory

MiscObject Property OrgUncommonSpice Auto Mandatory
Keyword Property VJR_Breakdown_Spice_TA Auto Mandatory
Keyword Property VJR_Breakdown_Spice_TB Auto Mandatory
Keyword Property VJR_Breakdown_Spice_TC Auto Mandatory
Keyword Property VJR_Breakdown_Spice_TD Auto Mandatory


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
Keyword Property VJR_Breakdown_AminoAcids_TA Auto Mandatory
Keyword Property VJR_Breakdown_AminoAcids_TB Auto Mandatory
Keyword Property VJR_Breakdown_AminoAcids_TC Auto Mandatory
Keyword Property VJR_Breakdown_AminoAcids_TD Auto Mandatory

MiscObject Property OrgRareAnalgesic Auto Mandatory
Keyword Property VJR_Breakdown_Analgesic_TA Auto Mandatory
Keyword Property VJR_Breakdown_Analgesic_TB Auto Mandatory
Keyword Property VJR_Breakdown_Analgesic_TC Auto Mandatory
Keyword Property VJR_Breakdown_Analgesic_TD Auto Mandatory

MiscObject Property OrgRareAromatic Auto Mandatory
Keyword Property VJR_Breakdown_Aromatic_TA Auto Mandatory
Keyword Property VJR_Breakdown_Aromatic_TB Auto Mandatory
Keyword Property VJR_Breakdown_Aromatic_TC Auto Mandatory
Keyword Property VJR_Breakdown_Aromatic_TD Auto Mandatory

MiscObject Property OrgRareHallucinogen Auto Mandatory
Keyword Property VJR_Breakdown_Hallucinogen_TA Auto Mandatory
Keyword Property VJR_Breakdown_Hallucinogen_TB Auto Mandatory
Keyword Property VJR_Breakdown_Hallucinogen_TC Auto Mandatory
Keyword Property VJR_Breakdown_Hallucinogen_TD Auto Mandatory

MiscObject Property OrgRareSedative Auto Mandatory
Keyword Property VJR_Breakdown_Sedative_TA Auto Mandatory
Keyword Property VJR_Breakdown_Sedative_TB Auto Mandatory
Keyword Property VJR_Breakdown_Sedative_TC Auto Mandatory
Keyword Property VJR_Breakdown_Sedative_TD Auto Mandatory


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Variables - Starfield Organic Materials (Exotic)
;;;
MiscObject Property OrgExoticBiosuppressant Auto Mandatory
Keyword Property VJR_Breakdown_Biosuppressant_TA Auto Mandatory
Keyword Property VJR_Breakdown_Biosuppressant_TB Auto Mandatory
Keyword Property VJR_Breakdown_Biosuppressant_TC Auto Mandatory
Keyword Property VJR_Breakdown_Biosuppressant_TD Auto Mandatory

MiscObject Property OrgExoticHypercatalyst Auto Mandatory
Keyword Property VJR_Breakdown_Hypercatalyst_TA Auto Mandatory
Keyword Property VJR_Breakdown_Hypercatalyst_TB Auto Mandatory
Keyword Property VJR_Breakdown_Hypercatalyst_TC Auto Mandatory
Keyword Property VJR_Breakdown_Hypercatalyst_TD Auto Mandatory

MiscObject Property OrgExoticLubricant Auto Mandatory
Keyword Property VJR_Breakdown_Lubricant_TA Auto Mandatory
Keyword Property VJR_Breakdown_Lubricant_TB Auto Mandatory
Keyword Property VJR_Breakdown_Lubricant_TC Auto Mandatory
Keyword Property VJR_Breakdown_Lubricant_TD Auto Mandatory

MiscObject Property OrgExoticPolymer Auto Mandatory
Keyword Property VJR_Breakdown_Polymer_TA Auto Mandatory
Keyword Property VJR_Breakdown_Polymer_TB Auto Mandatory
Keyword Property VJR_Breakdown_Polymer_TC Auto Mandatory
Keyword Property VJR_Breakdown_Polymer_TD Auto Mandatory

MiscObject Property OrgExoticSolvent Auto Mandatory
Keyword Property VJR_Breakdown_Solvent_TA Auto Mandatory
Keyword Property VJR_Breakdown_Solvent_TB Auto Mandatory
Keyword Property VJR_Breakdown_Solvent_TC Auto Mandatory
Keyword Property VJR_Breakdown_Solvent_TD Auto Mandatory

MiscObject Property OrgExoticStimulant Auto Mandatory
Keyword Property VJR_Breakdown_Stimulant_TA Auto Mandatory
Keyword Property VJR_Breakdown_Stimulant_TB Auto Mandatory
Keyword Property VJR_Breakdown_Stimulant_TC Auto Mandatory
Keyword Property VJR_Breakdown_Stimulant_TD Auto Mandatory


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Variables - Starfield Organic Materials (Unique)
;;;
MiscObject Property OrgUniqueGastronomic Auto Mandatory
Keyword Property VJR_Breakdown_Gastronomic_TA Auto Mandatory
Keyword Property VJR_Breakdown_Gastronomic_TB Auto Mandatory
Keyword Property VJR_Breakdown_Gastronomic_TC Auto Mandatory
Keyword Property VJR_Breakdown_Gastronomic_TD Auto Mandatory

MiscObject Property OrgUniqueHighTensileSpidroin Auto Mandatory
Keyword Property VJR_Breakdown_HighTensileSpidroin_TA Auto Mandatory
Keyword Property VJR_Breakdown_HighTensileSpidroin_TB Auto Mandatory
Keyword Property VJR_Breakdown_HighTensileSpidroin_TC Auto Mandatory
Keyword Property VJR_Breakdown_HighTensileSpidroin_TD Auto Mandatory

MiscObject Property OrgUniqueImmunostimulant Auto Mandatory
Keyword Property VJR_Breakdown_Immunostimulant_TA Auto Mandatory
Keyword Property VJR_Breakdown_Immunostimulant_TB Auto Mandatory
Keyword Property VJR_Breakdown_Immunostimulant_TC Auto Mandatory
Keyword Property VJR_Breakdown_Immunostimulant_TD Auto Mandatory

MiscObject Property OrgUniqueLuxuryTextile Auto Mandatory
Keyword Property VJR_Breakdown_LuxuryTextile_TA Auto Mandatory
Keyword Property VJR_Breakdown_LuxuryTextile_TB Auto Mandatory
Keyword Property VJR_Breakdown_LuxuryTextile_TC Auto Mandatory
Keyword Property VJR_Breakdown_LuxuryTextile_TD Auto Mandatory

MiscObject Property OrgUniqueMemorySubstrate Auto Mandatory
Keyword Property VJR_Breakdown_MemorySubstrate_TA Auto Mandatory
Keyword Property VJR_Breakdown_MemorySubstrate_TB Auto Mandatory
Keyword Property VJR_Breakdown_MemorySubstrate_TC Auto Mandatory
Keyword Property VJR_Breakdown_MemorySubstrate_TD Auto Mandatory

MiscObject Property OrgUniqueNeurologic Auto Mandatory
Keyword Property VJR_Breakdown_Neurologic_TA Auto Mandatory
Keyword Property VJR_Breakdown_Neurologic_TB Auto Mandatory
Keyword Property VJR_Breakdown_Neurologic_TC Auto Mandatory
Keyword Property VJR_Breakdown_Neurologic_TD Auto Mandatory


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Events
;;;
Event OnInit()
  VPI_Debug.DebugMessage(Venpi_ModName, "VJR_TransferContainerScript", "OnInit", "On OnInit triggered.", 0, Venpi_DebugEnabled.GetValueInt())
  Setup()
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

  ;; No init/load events get called this was so need to call Setup ourself
  Setup()

  ;; Loop and process items
  VPI_Debug.DebugMessage(Venpi_ModName, "VJR_TransferContainerScript", "OnItemAdded", "Processing item " + akBaseItem +  " of which there are " + aiItemCount + " of them.", 0, Venpi_DebugEnabled.GetValueInt())
  ProcessItem(akBaseItem, aiItemCount)
EndEvent


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Functions - Setup
;;;
Function Setup()
  AddInventoryEventFilter(None)
  
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
  InorgUncommonAlkanes = Game.GetFormFromFile(0x00005570, "Starfield.esm") as MiscObject
  VJR_Breakdown_Alkanes_TA = Game.GetFormFromFile(0x00000814, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Alkanes_TB = Game.GetFormFromFile(0x00000815, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Alkanes_TC = Game.GetFormFromFile(0x00000816, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Alkanes_TD = Game.GetFormFromFile(0x00000817, "VenworksJunkRecycler.esm") as Keyword

  InorgUncommonBenzene = Game.GetFormFromFile(0x00005585, "Starfield.esm") as MiscObject
  VJR_Breakdown_Benzene_TA = Game.GetFormFromFile(0x0000084C, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Benzene_TB = Game.GetFormFromFile(0x0000084D, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Benzene_TC = Game.GetFormFromFile(0x0000084E, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Benzene_TD = Game.GetFormFromFile(0x0000084F, "VenworksJunkRecycler.esm") as Keyword

  InorgUncommonBeryllium = Game.GetFormFromFile(0x000057D9, "Starfield.esm") as MiscObject
  VJR_Breakdown_Beryllium_TA = Game.GetFormFromFile(0x00000850, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Beryllium_TB = Game.GetFormFromFile(0x00000851, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Beryllium_TC = Game.GetFormFromFile(0x00000852, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Beryllium_TD = Game.GetFormFromFile(0x00000853, "VenworksJunkRecycler.esm") as Keyword

  InorgUncommonChlorosilanes = Game.GetFormFromFile(0x0000557E, "Starfield.esm") as MiscObject
  VJR_Breakdown_Chlorosilanes_TA = Game.GetFormFromFile(0x00000854, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Chlorosilanes_TB = Game.GetFormFromFile(0x00000855, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Chlorosilanes_TC = Game.GetFormFromFile(0x00000856, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Chlorosilanes_TD = Game.GetFormFromFile(0x00000857, "VenworksJunkRecycler.esm") as Keyword

  InorgUncommonCobalt = Game.GetFormFromFile(0x00005575, "Starfield.esm") as MiscObject
  VJR_Breakdown_Cobalt_TA = Game.GetFormFromFile(0x00000858, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Cobalt_TB = Game.GetFormFromFile(0x00000859, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Cobalt_TC = Game.GetFormFromFile(0x0000085A, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Cobalt_TD = Game.GetFormFromFile(0x0000085B, "VenworksJunkRecycler.esm") as Keyword

  InorgUncommonFluorine = Game.GetFormFromFile(0x00005577, "Starfield.esm") as MiscObject
  VJR_Breakdown_Fluorine_TA = Game.GetFormFromFile(0x0000085C, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Fluorine_TB = Game.GetFormFromFile(0x0000085D, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Fluorine_TC = Game.GetFormFromFile(0x0000085E, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Fluorine_TD = Game.GetFormFromFile(0x0000085F, "VenworksJunkRecycler.esm") as Keyword

  InorgUncommonIridium = Game.GetFormFromFile(0x0000558A, "Starfield.esm") as MiscObject
  VJR_Breakdown_Iridium_TA = Game.GetFormFromFile(0x00000860, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Iridium_TB = Game.GetFormFromFile(0x00000861, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Iridium_TC = Game.GetFormFromFile(0x00000862, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Iridium_TD = Game.GetFormFromFile(0x00000863, "VenworksJunkRecycler.esm") as Keyword

  InorgUncommonSilver = Game.GetFormFromFile(0x0000556A, "Starfield.esm") as MiscObject
  VJR_Breakdown_Silver_TA = Game.GetFormFromFile(0x00000864, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Silver_TB = Game.GetFormFromFile(0x00000865, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Silver_TC = Game.GetFormFromFile(0x00000866, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Silver_TD = Game.GetFormFromFile(0x00000867, "VenworksJunkRecycler.esm") as Keyword

  InorgUncommonTungsten = Game.GetFormFromFile(0x0000556B, "Starfield.esm") as MiscObject
  VJR_Breakdown_Tungsten_TA = Game.GetFormFromFile(0x00000868, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Tungsten_TB = Game.GetFormFromFile(0x00000869, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Tungsten_TC = Game.GetFormFromFile(0x0000086A, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Tungsten_TD = Game.GetFormFromFile(0x0000086B, "VenworksJunkRecycler.esm") as Keyword
EndFunction

Function SetupInorganicRare()
  InorgRareCarboxylicAcids = Game.GetFormFromFile(0x00005586, "Starfield.esm") as MiscObject
  VJR_Breakdown_CarboxylicAcids_TA = Game.GetFormFromFile(0x0000086C, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_CarboxylicAcids_TB = Game.GetFormFromFile(0x0000086D, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_CarboxylicAcids_TC = Game.GetFormFromFile(0x0000086E, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_CarboxylicAcids_TD = Game.GetFormFromFile(0x0000086F, "VenworksJunkRecycler.esm") as Keyword

  InorgRareGold = Game.GetFormFromFile(0x00005579, "Starfield.esm") as MiscObject
  VJR_Breakdown_Gold_TA = Game.GetFormFromFile(0x00000870, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Gold_TB = Game.GetFormFromFile(0x00000871, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Gold_TC = Game.GetFormFromFile(0x00000872, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Gold_TD = Game.GetFormFromFile(0x00000873, "VenworksJunkRecycler.esm") as Keyword

  InorgRareLithium = Game.GetFormFromFile(0x0000557F, "Starfield.esm") as MiscObject
  VJR_Breakdown_Lithium_TA = Game.GetFormFromFile(0x00000874, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Lithium_TB = Game.GetFormFromFile(0x00000875, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Lithium_TC = Game.GetFormFromFile(0x00000876, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Lithium_TD = Game.GetFormFromFile(0x00000877, "VenworksJunkRecycler.esm") as Keyword

  InorgRareMercury = Game.GetFormFromFile(0x0027C4A1, "Starfield.esm") as MiscObject
  VJR_Breakdown_Mercury_TA = Game.GetFormFromFile(0x00000878, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Mercury_TB = Game.GetFormFromFile(0x00000879, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Mercury_TC = Game.GetFormFromFile(0x0000087A, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Mercury_TD = Game.GetFormFromFile(0x0000087B, "VenworksJunkRecycler.esm") as Keyword

  InorgRareNeodymium = Game.GetFormFromFile(0x00005580, "Starfield.esm") as MiscObject
  VJR_Breakdown_Neodymium_TA = Game.GetFormFromFile(0x0000087C, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Neodymium_TB = Game.GetFormFromFile(0x0000087D, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Neodymium_TC = Game.GetFormFromFile(0x0000087E, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Neodymium_TD = Game.GetFormFromFile(0x0000087F, "VenworksJunkRecycler.esm") as Keyword

  InorgRarePlatinum = Game.GetFormFromFile(0x00005573, "Starfield.esm") as MiscObject
  VJR_Breakdown_Platinum_TA = Game.GetFormFromFile(0x00000880, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Platinum_TB = Game.GetFormFromFile(0x00000881, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Platinum_TC = Game.GetFormFromFile(0x00000882, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Platinum_TD = Game.GetFormFromFile(0x00000883, "VenworksJunkRecycler.esm") as Keyword

  InorgRareTantalum = Game.GetFormFromFile(0x0000556F, "Starfield.esm") as MiscObject
  VJR_Breakdown_Tantalum_TA = Game.GetFormFromFile(0x00000884, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Tantalum_TB = Game.GetFormFromFile(0x00000885, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Tantalum_TC = Game.GetFormFromFile(0x00000886, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Tantalum_TD = Game.GetFormFromFile(0x00000887, "VenworksJunkRecycler.esm") as Keyword

  InorgRareTetrafluorides = Game.GetFormFromFile(0x00005578, "Starfield.esm") as MiscObject
  VJR_Breakdown_Tetrafluorides_TA = Game.GetFormFromFile(0x00000888, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Tetrafluorides_TB = Game.GetFormFromFile(0x00000889, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Tetrafluorides_TC = Game.GetFormFromFile(0x0000088A, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Tetrafluorides_TD = Game.GetFormFromFile(0x0000088B, "VenworksJunkRecycler.esm") as Keyword

  InorgRareTitanium = Game.GetFormFromFile(0x0000556D, "Starfield.esm") as MiscObject
  VJR_Breakdown_Titanium_TA = Game.GetFormFromFile(0x0000088C, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Titanium_TB = Game.GetFormFromFile(0x0000088D, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Titanium_TC = Game.GetFormFromFile(0x0000088E, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Titanium_TD = Game.GetFormFromFile(0x0000088F, "VenworksJunkRecycler.esm") as Keyword

  InorgRareVanadium = Game.GetFormFromFile(0x0000558B, "Starfield.esm") as MiscObject
  VJR_Breakdown_Vanadium_TA = Game.GetFormFromFile(0x00000890, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Vanadium_TB = Game.GetFormFromFile(0x00000891, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Vanadium_TC = Game.GetFormFromFile(0x00000892, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Vanadium_TD = Game.GetFormFromFile(0x00000893, "VenworksJunkRecycler.esm") as Keyword
EndFunction

Function SetupInorganicExotic()
  InorgExoticAntimony = Game.GetFormFromFile(0x0000557B, "Starfield.esm") as MiscObject
  VJR_Breakdown_Antimony_TA = Game.GetFormFromFile(0x00000894, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Antimony_TB = Game.GetFormFromFile(0x00000895, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Antimony_TC = Game.GetFormFromFile(0x00000896, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Antimony_TD = Game.GetFormFromFile(0x00000897, "VenworksJunkRecycler.esm") as Keyword

  InorgExoticCaesium = Game.GetFormFromFile(0x000057DF, "Starfield.esm") as MiscObject
  VJR_Breakdown_Caesium_TA = Game.GetFormFromFile(0x00000898, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Caesium_TB = Game.GetFormFromFile(0x00000899, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Caesium_TC = Game.GetFormFromFile(0x0000089A, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Caesium_TD = Game.GetFormFromFile(0x0000089B, "VenworksJunkRecycler.esm") as Keyword

  InorgExoticDysprosium = Game.GetFormFromFile(0x00005569, "Starfield.esm") as MiscObject
  VJR_Breakdown_Dysprosium_TA = Game.GetFormFromFile(0x0000089C, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Dysprosium_TB = Game.GetFormFromFile(0x0000089D, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Dysprosium_TC = Game.GetFormFromFile(0x0000089E, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Dysprosium_TD = Game.GetFormFromFile(0x0000089F, "VenworksJunkRecycler.esm") as Keyword

  InorgExoticEuropium = Game.GetFormFromFile(0x000057E1, "Starfield.esm") as MiscObject
  VJR_Breakdown_Europium_TA = Game.GetFormFromFile(0x000008A0, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Europium_TB = Game.GetFormFromFile(0x000008A1, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Europium_TC = Game.GetFormFromFile(0x000008A2, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Europium_TD = Game.GetFormFromFile(0x000008A3, "VenworksJunkRecycler.esm") as Keyword

  InorgExoticIonicLiquids = Game.GetFormFromFile(0x0000557A, "Starfield.esm") as MiscObject
  VJR_Breakdown_IonicLiquids_TA = Game.GetFormFromFile(0x000008A4, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_IonicLiquids_TB = Game.GetFormFromFile(0x000008A5, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_IonicLiquids_TC = Game.GetFormFromFile(0x000008A6, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_IonicLiquids_TD = Game.GetFormFromFile(0x000008A7, "VenworksJunkRecycler.esm") as Keyword

  InorgExoticNeon = Game.GetFormFromFile(0x00005587, "Starfield.esm") as MiscObject
  VJR_Breakdown_Neon_TA = Game.GetFormFromFile(0x000008A8, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Neon_TB = Game.GetFormFromFile(0x000008A9, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Neon_TC = Game.GetFormFromFile(0x000008AA, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Neon_TD = Game.GetFormFromFile(0x000008AB, "VenworksJunkRecycler.esm") as Keyword

  InorgExoticPalladium = Game.GetFormFromFile(0x00005574, "Starfield.esm") as MiscObject
  VJR_Breakdown_Palladium_TA = Game.GetFormFromFile(0x000008AC, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Palladium_TB = Game.GetFormFromFile(0x000008AD, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Palladium_TC = Game.GetFormFromFile(0x000008AE, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Palladium_TD = Game.GetFormFromFile(0x000008AF, "VenworksJunkRecycler.esm") as Keyword

  InorgExoticPlutonium = Game.GetFormFromFile(0x0000558C, "Starfield.esm") as MiscObject
  VJR_Breakdown_Plutonium_TA = Game.GetFormFromFile(0x000008B0, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Plutonium_TB = Game.GetFormFromFile(0x000008B1, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Plutonium_TC = Game.GetFormFromFile(0x000008B2, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Plutonium_TD = Game.GetFormFromFile(0x000008B3, "VenworksJunkRecycler.esm") as Keyword

  InorgExoticXenon = Game.GetFormFromFile(0x000057DD, "Starfield.esm") as MiscObject
  VJR_Breakdown_Xenon_TA = Game.GetFormFromFile(0x000008B4, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Xenon_TB = Game.GetFormFromFile(0x000008B5, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Xenon_TC = Game.GetFormFromFile(0x000008B6, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Xenon_TD = Game.GetFormFromFile(0x000008B7, "VenworksJunkRecycler.esm") as Keyword

  InorgExoticYtterbium = Game.GetFormFromFile(0x00005571, "Starfield.esm") as MiscObject
  VJR_Breakdown_Ytterbium_TA = Game.GetFormFromFile(0x000008B8, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Ytterbium_TB = Game.GetFormFromFile(0x000008B9, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Ytterbium_TC = Game.GetFormFromFile(0x000008BA, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Ytterbium_TD = Game.GetFormFromFile(0x000008BB, "VenworksJunkRecycler.esm") as Keyword
EndFunction

Function SetupInorganicUnique()
  InorgUniqueAldumite = Game.GetFormFromFile(0x00005DEC, "Starfield.esm") as MiscObject
  VJR_Breakdown_Aldumite_TA = Game.GetFormFromFile(0x000008BC, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Aldumite_TB = Game.GetFormFromFile(0x000008BD, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Aldumite_TC = Game.GetFormFromFile(0x000008BE, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Aldumite_TD = Game.GetFormFromFile(0x000008BF, "VenworksJunkRecycler.esm") as Keyword

  InorgUniqueAqueousHematite = Game.GetFormFromFile(0x0029D022, "Starfield.esm") as MiscObject
  VJR_Breakdown_AqueousHematite_TA = Game.GetFormFromFile(0x000008C0, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_AqueousHematite_TB = Game.GetFormFromFile(0x000008C1, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_AqueousHematite_TC = Game.GetFormFromFile(0x000008C2, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_AqueousHematite_TD = Game.GetFormFromFile(0x000008C3, "VenworksJunkRecycler.esm") as Keyword

  InorgUniqueCaelumite = Game.GetFormFromFile(0x000788D6, "Starfield.esm") as MiscObject
  VJR_Breakdown_Caelumite_TA = Game.GetFormFromFile(0x000008C4, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Caelumite_TB = Game.GetFormFromFile(0x000008C5, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Caelumite_TC = Game.GetFormFromFile(0x000008C6, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Caelumite_TD = Game.GetFormFromFile(0x000008C7, "VenworksJunkRecycler.esm") as Keyword

  InorgUniqueIndicite = Game.GetFormFromFile(0x0004BA37, "Starfield.esm") as MiscObject
  VJR_Breakdown_Indicite_TA = Game.GetFormFromFile(0x000008C8, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Indicite_TB = Game.GetFormFromFile(0x000008C9, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Indicite_TC = Game.GetFormFromFile(0x000008CA, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Indicite_TD = Game.GetFormFromFile(0x000008CB, "VenworksJunkRecycler.esm") as Keyword

  InorgUniqueRothicite = Game.GetFormFromFile(0x000028DF, "Starfield.esm") as MiscObject
  VJR_Breakdown_Rothicite_TA = Game.GetFormFromFile(0x000008CC, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Rothicite_TB = Game.GetFormFromFile(0x000008CD, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Rothicite_TC = Game.GetFormFromFile(0x000008CE, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Rothicite_TD = Game.GetFormFromFile(0x000008CF, "VenworksJunkRecycler.esm") as Keyword

  InorgUniqueTasine = Game.GetFormFromFile(0x00005DED, "Starfield.esm") as MiscObject
  VJR_Breakdown_Tasine_TA = Game.GetFormFromFile(0x000008D0, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Tasine_TB = Game.GetFormFromFile(0x000008D1, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Tasine_TC = Game.GetFormFromFile(0x000008D2, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Tasine_TD = Game.GetFormFromFile(0x000008D3, "VenworksJunkRecycler.esm") as Keyword

  InorgUniqueVeryl = Game.GetFormFromFile(0x00005DEE, "Starfield.esm") as MiscObject
  VJR_Breakdown_Veryl_TA = Game.GetFormFromFile(0x000008D4, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Veryl_TB = Game.GetFormFromFile(0x000008D5, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Veryl_TC = Game.GetFormFromFile(0x000008D6, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Veryl_TD = Game.GetFormFromFile(0x000008D7, "VenworksJunkRecycler.esm") as Keyword

  InorgUniqueVytinium = Game.GetFormFromFile(0x00005DEF, "Starfield.esm") as MiscObject
  VJR_Breakdown_Vytinium_TA = Game.GetFormFromFile(0x000008D8, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Vytinium_TB = Game.GetFormFromFile(0x000008D9, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Vytinium_TC = Game.GetFormFromFile(0x000008DA, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Vytinium_TD = Game.GetFormFromFile(0x000008DB, "VenworksJunkRecycler.esm") as Keyword
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
  VJR_Breakdown_MetabolicAgent_TA = Game.GetFormFromFile(0x000008DC, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_MetabolicAgent_TB = Game.GetFormFromFile(0x000008DD, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_MetabolicAgent_TC = Game.GetFormFromFile(0x000008DE, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_MetabolicAgent_TD = Game.GetFormFromFile(0x000008DF, "VenworksJunkRecycler.esm") as Keyword

  OrgCommonNutrient = Game.GetFormFromFile(0x000777FD, "Starfield.esm") as MiscObject
  VJR_Breakdown_Nutrient_TA = Game.GetFormFromFile(0x000008E0, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Nutrient_TB = Game.GetFormFromFile(0x000008E1, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Nutrient_TC = Game.GetFormFromFile(0x000008E2, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Nutrient_TD = Game.GetFormFromFile(0x000008E3, "VenworksJunkRecycler.esm") as Keyword

  OrgCommonSealant = Game.GetFormFromFile(0x000055CC, "Starfield.esm") as MiscObject
  VJR_Breakdown_Sealant_TA = Game.GetFormFromFile(0x000008E4, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Sealant_TB = Game.GetFormFromFile(0x000008E5, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Sealant_TC = Game.GetFormFromFile(0x000008E6, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Sealant_TD = Game.GetFormFromFile(0x000008E7, "VenworksJunkRecycler.esm") as Keyword

  OrgCommonStructural = Game.GetFormFromFile(0x000055B9, "Starfield.esm") as MiscObject
  VJR_Breakdown_Structural_TA = Game.GetFormFromFile(0x000008E8, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Structural_TB = Game.GetFormFromFile(0x000008E9, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Structural_TC = Game.GetFormFromFile(0x000008EA, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Structural_TD = Game.GetFormFromFile(0x000008EB, "VenworksJunkRecycler.esm") as Keyword

  OrgCommonToxin = Game.GetFormFromFile(0x000055CB, "Starfield.esm") as MiscObject
  VJR_Breakdown_Toxin_TA = Game.GetFormFromFile(0x000008EC, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Toxin_TB = Game.GetFormFromFile(0x000008ED, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Toxin_TC = Game.GetFormFromFile(0x000008EE, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Toxin_TD = Game.GetFormFromFile(0x000008EF, "VenworksJunkRecycler.esm") as Keyword
EndFunction

Function SetupOrganicUncommon()
  OrgUncommonAntimicrobial = Game.GetFormFromFile(0x000055AB, "Starfield.esm") as MiscObject
  VJR_Breakdown_Antimicrobial_TA = Game.GetFormFromFile(0x000008F0, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Antimicrobial_TB = Game.GetFormFromFile(0x000008F1, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Antimicrobial_TC = Game.GetFormFromFile(0x000008F2, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Antimicrobial_TD = Game.GetFormFromFile(0x000008F3, "VenworksJunkRecycler.esm") as Keyword

  OrgUncommonCosmetic = Game.GetFormFromFile(0x000055A8, "Starfield.esm") as MiscObject
  VJR_Breakdown_Cosmetic_TA = Game.GetFormFromFile(0x000008F4, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Cosmetic_TB = Game.GetFormFromFile(0x000008F5, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Cosmetic_TC = Game.GetFormFromFile(0x000008F6, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Cosmetic_TD = Game.GetFormFromFile(0x000008F7, "VenworksJunkRecycler.esm") as Keyword

  OrgUncommonMembrane = Game.GetFormFromFile(0x000055B0, "Starfield.esm") as MiscObject
  VJR_Breakdown_Membrane_TA = Game.GetFormFromFile(0x000008F8, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Membrane_TB = Game.GetFormFromFile(0x000008F9, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Membrane_TC = Game.GetFormFromFile(0x000008FA, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Membrane_TD = Game.GetFormFromFile(0x000008FB, "VenworksJunkRecycler.esm") as Keyword

  OrgUncommonOrnamental = Game.GetFormFromFile(0x000055A7, "Starfield.esm") as MiscObject
  VJR_Breakdown_Ornamental_TA = Game.GetFormFromFile(0x000008FC, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Ornamental_TB = Game.GetFormFromFile(0x000008FD, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Ornamental_TC = Game.GetFormFromFile(0x000008FE, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Ornamental_TD = Game.GetFormFromFile(0x000008FF, "VenworksJunkRecycler.esm") as Keyword

  OrgUncommonPigment = Game.GetFormFromFile(0x0029F400, "Starfield.esm") as MiscObject
  VJR_Breakdown_Pigment_TA = Game.GetFormFromFile(0x00000900, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Pigment_TB = Game.GetFormFromFile(0x00000901, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Pigment_TC = Game.GetFormFromFile(0x00000902, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Pigment_TD = Game.GetFormFromFile(0x00000903, "VenworksJunkRecycler.esm") as Keyword

  OrgUncommonSpice = Game.GetFormFromFile(0x000055AC, "Starfield.esm") as MiscObject
  VJR_Breakdown_Spice_TA = Game.GetFormFromFile(0x00000904, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Spice_TB = Game.GetFormFromFile(0x00000905, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Spice_TC = Game.GetFormFromFile(0x00000906, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Spice_TD = Game.GetFormFromFile(0x00000907, "VenworksJunkRecycler.esm") as Keyword
EndFunction

Function SetupOrganicRare()
  OrgRareAdhesive = Game.GetFormFromFile(0x000055B1, "Starfield.esm") as MiscObject
  VJR_Breakdown_Adhesive_TA = Game.GetFormFromFile(0x00000803, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Adhesive_TB = Game.GetFormFromFile(0x00000804, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Adhesive_TC = Game.GetFormFromFile(0x00000805, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Adhesive_TD = Game.GetFormFromFile(0x00000806, "VenworksJunkRecycler.esm") as Keyword

  OrgRareAminoAcids = Game.GetFormFromFile(0x000055CD, "Starfield.esm") as MiscObject
  VJR_Breakdown_AminoAcids_TA = Game.GetFormFromFile(0x00000908, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_AminoAcids_TB = Game.GetFormFromFile(0x00000909, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_AminoAcids_TC = Game.GetFormFromFile(0x0000090A, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_AminoAcids_TD = Game.GetFormFromFile(0x0000090B, "VenworksJunkRecycler.esm") as Keyword

  OrgRareAnalgesic = Game.GetFormFromFile(0x000055A9, "Starfield.esm") as MiscObject
  VJR_Breakdown_Analgesic_TA = Game.GetFormFromFile(0x0000090C, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Analgesic_TB = Game.GetFormFromFile(0x0000090D, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Analgesic_TC = Game.GetFormFromFile(0x0000090E, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Analgesic_TD = Game.GetFormFromFile(0x0000090F, "VenworksJunkRecycler.esm") as Keyword

  OrgRareAromatic = Game.GetFormFromFile(0x000055B8, "Starfield.esm") as MiscObject
  VJR_Breakdown_Aromatic_TA = Game.GetFormFromFile(0x00000910, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Aromatic_TB = Game.GetFormFromFile(0x00000911, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Aromatic_TC = Game.GetFormFromFile(0x00000912, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Aromatic_TD = Game.GetFormFromFile(0x00000913, "VenworksJunkRecycler.esm") as Keyword

  OrgRareHallucinogen = Game.GetFormFromFile(0x0029F405, "Starfield.esm") as MiscObject
  VJR_Breakdown_Hallucinogen_TA = Game.GetFormFromFile(0x00000914, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Hallucinogen_TB = Game.GetFormFromFile(0x00000915, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Hallucinogen_TC = Game.GetFormFromFile(0x00000916, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Hallucinogen_TD = Game.GetFormFromFile(0x00000917, "VenworksJunkRecycler.esm") as Keyword

  OrgRareSedative = Game.GetFormFromFile(0x000055AD, "Starfield.esm") as MiscObject
  VJR_Breakdown_Sedative_TA = Game.GetFormFromFile(0x00000918, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Sedative_TB = Game.GetFormFromFile(0x00000919, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Sedative_TC = Game.GetFormFromFile(0x0000091A, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Sedative_TD = Game.GetFormFromFile(0x0000091B, "VenworksJunkRecycler.esm") as Keyword
EndFunction

Function SetupOrganicExotic()
  OrgExoticBiosuppressant = Game.GetFormFromFile(0x000055B2, "Starfield.esm") as MiscObject
  VJR_Breakdown_Biosuppressant_TA = Game.GetFormFromFile(0x0000091C, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Biosuppressant_TB = Game.GetFormFromFile(0x0000091D, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Biosuppressant_TC = Game.GetFormFromFile(0x0000091E, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Biosuppressant_TD = Game.GetFormFromFile(0x0000091F, "VenworksJunkRecycler.esm") as Keyword

  OrgExoticHypercatalyst = Game.GetFormFromFile(0x0029F40D, "Starfield.esm") as MiscObject
  VJR_Breakdown_Hypercatalyst_TA = Game.GetFormFromFile(0x00000920, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Hypercatalyst_TB = Game.GetFormFromFile(0x00000921, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Hypercatalyst_TC = Game.GetFormFromFile(0x00000922, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Hypercatalyst_TD = Game.GetFormFromFile(0x00000923, "VenworksJunkRecycler.esm") as Keyword

  OrgExoticLubricant = Game.GetFormFromFile(0x000055BA, "Starfield.esm") as MiscObject
  VJR_Breakdown_Lubricant_TA = Game.GetFormFromFile(0x00000924, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Lubricant_TB = Game.GetFormFromFile(0x00000925, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Lubricant_TC = Game.GetFormFromFile(0x00000926, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Lubricant_TD = Game.GetFormFromFile(0x00000927, "VenworksJunkRecycler.esm") as Keyword

  OrgExoticPolymer = Game.GetFormFromFile(0x000055A6, "Starfield.esm") as MiscObject
  VJR_Breakdown_Polymer_TA = Game.GetFormFromFile(0x00000928, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Polymer_TB = Game.GetFormFromFile(0x00000929, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Polymer_TC = Game.GetFormFromFile(0x0000092A, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Polymer_TD = Game.GetFormFromFile(0x0000092B, "VenworksJunkRecycler.esm") as Keyword

  OrgExoticSolvent = Game.GetFormFromFile(0x000055CE, "Starfield.esm") as MiscObject
  VJR_Breakdown_Solvent_TA = Game.GetFormFromFile(0x0000092C, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Solvent_TB = Game.GetFormFromFile(0x0000092D, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Solvent_TC = Game.GetFormFromFile(0x0000092E, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Solvent_TD = Game.GetFormFromFile(0x0000092F, "VenworksJunkRecycler.esm") as Keyword

  OrgExoticStimulant = Game.GetFormFromFile(0x000055AE, "Starfield.esm") as MiscObject
  VJR_Breakdown_Stimulant_TA = Game.GetFormFromFile(0x00000930, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Stimulant_TB = Game.GetFormFromFile(0x00000931, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Stimulant_TC = Game.GetFormFromFile(0x00000932, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Stimulant_TD = Game.GetFormFromFile(0x00000933, "VenworksJunkRecycler.esm") as Keyword
EndFunction

Function SetupOrganicUnique()
  OrgUniqueGastronomic = Game.GetFormFromFile(0x0000559D, "Starfield.esm") as MiscObject
  VJR_Breakdown_Gastronomic_TA = Game.GetFormFromFile(0x00000934, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Gastronomic_TB = Game.GetFormFromFile(0x00000935, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Gastronomic_TC = Game.GetFormFromFile(0x00000936, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Gastronomic_TD = Game.GetFormFromFile(0x00000937, "VenworksJunkRecycler.esm") as Keyword

  OrgUniqueHighTensileSpidroin = Game.GetFormFromFile(0x000055AA, "Starfield.esm") as MiscObject
  VJR_Breakdown_HighTensileSpidroin_TA = Game.GetFormFromFile(0x00000938, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_HighTensileSpidroin_TB = Game.GetFormFromFile(0x00000939, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_HighTensileSpidroin_TC = Game.GetFormFromFile(0x0000093A, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_HighTensileSpidroin_TD = Game.GetFormFromFile(0x0000093B, "VenworksJunkRecycler.esm") as Keyword

  OrgUniqueImmunostimulant = Game.GetFormFromFile(0x000055B3, "Starfield.esm") as MiscObject
  VJR_Breakdown_Immunostimulant_TA = Game.GetFormFromFile(0x0000093C, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Immunostimulant_TB = Game.GetFormFromFile(0x0000093D, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Immunostimulant_TC = Game.GetFormFromFile(0x0000093E, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Immunostimulant_TD = Game.GetFormFromFile(0x0000093F, "VenworksJunkRecycler.esm") as Keyword

  OrgUniqueLuxuryTextile = Game.GetFormFromFile(0x0000559E, "Starfield.esm") as MiscObject
  VJR_Breakdown_LuxuryTextile_TA = Game.GetFormFromFile(0x00000940, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_LuxuryTextile_TB = Game.GetFormFromFile(0x00000941, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_LuxuryTextile_TC = Game.GetFormFromFile(0x00000942, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_LuxuryTextile_TD = Game.GetFormFromFile(0x00000943, "VenworksJunkRecycler.esm") as Keyword

  OrgUniqueMemorySubstrate = Game.GetFormFromFile(0x0000559B, "Starfield.esm") as MiscObject
  VJR_Breakdown_MemorySubstrate_TA = Game.GetFormFromFile(0x00000944, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_MemorySubstrate_TB = Game.GetFormFromFile(0x00000945, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_MemorySubstrate_TC = Game.GetFormFromFile(0x00000946, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_MemorySubstrate_TD = Game.GetFormFromFile(0x00000947, "VenworksJunkRecycler.esm") as Keyword

  OrgUniqueNeurologic = Game.GetFormFromFile(0x0029F409, "Starfield.esm") as MiscObject
  VJR_Breakdown_Neurologic_TA = Game.GetFormFromFile(0x00000948, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Neurologic_TB = Game.GetFormFromFile(0x00000949, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Neurologic_TC = Game.GetFormFromFile(0x0000094A, "VenworksJunkRecycler.esm") as Keyword
  VJR_Breakdown_Neurologic_TD = Game.GetFormFromFile(0x0000094B, "VenworksJunkRecycler.esm") as Keyword
EndFunction


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Functions - Breakdown Processing
;;;
Function ProcessItem(Form baseItem, int count)
  BreakdownResults results=New BreakdownResults
  Actor player = Game.GetPlayer()
  VPI_Debug.DebugMessage(Venpi_ModName, "VJR_TransferContainerScript", "ProcessItem", "Processing " + count + " item(s) of " + baseItem + ".", 0, Venpi_DebugEnabled.GetValueInt())

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

  If (results.TierA_Item != None)
    If (VJR_BreakdownChance_TierA.GetValueInt() == 100 || Game.GetDieRollSuccess(VJR_BreakdownChance_TierA.GetValueInt(), 1, 100, -1, -1))
      VPI_Debug.DebugMessage(Venpi_ModName, "VJR_TransferContainerScript", "ProcessItem", "To player's inventory adding Tier A breakdown component of " + results.TierA_Item + " at a quantity of " + results.TierA_Quantity + ".", 0, Venpi_DebugEnabled.GetValueInt())
      player.AddItem(akItemToAdd=results.TierA_Item, aiCount=results.TierA_Quantity, abSilent=True)
    EndIf
  Else
    VPI_Debug.DebugMessage(Venpi_ModName, "VJR_TransferContainerScript", "ProcessItem", "No break down item was found for Tier A for " + baseItem + ".", 0, Venpi_DebugEnabled.GetValueInt())
  EndIf

  If (results.TierB_Item != None)
    If (VJR_BreakdownChance_TierB.GetValueInt() == 100 || Game.GetDieRollSuccess(VJR_BreakdownChance_TierB.GetValueInt(), 1, 100, -1, -1))
      VPI_Debug.DebugMessage(Venpi_ModName, "VJR_TransferContainerScript", "ProcessItem", "To player's inventory adding Tier B breakdown component of " + results.TierB_Item + " at a quantity of " + results.TierB_Quantity + ".", 0, Venpi_DebugEnabled.GetValueInt())
      player.AddItem(akItemToAdd=results.TierB_Item, aiCount=results.TierB_Quantity, abSilent=True)
    EndIf
  Else
    VPI_Debug.DebugMessage(Venpi_ModName, "VJR_TransferContainerScript", "ProcessItem", "No break down item was found for Tier B for " + baseItem + ".", 0, Venpi_DebugEnabled.GetValueInt())
  EndIf
  
  If (results.TierC_Item != None)
    If (VJR_BreakdownChance_TierC.GetValueInt() == 100 || Game.GetDieRollSuccess(VJR_BreakdownChance_TierC.GetValueInt(), 1, 100, -1, -1))
      VPI_Debug.DebugMessage(Venpi_ModName, "VJR_TransferContainerScript", "ProcessItem", "To player's inventory adding Tier C breakdown component of " + results.TierC_Item + " at a quantity of " + results.TierC_Quantity + ".", 0, Venpi_DebugEnabled.GetValueInt())
      player.AddItem(akItemToAdd=results.TierC_Item, aiCount=results.TierC_Quantity, abSilent=True)
    EndIf
  Else
    VPI_Debug.DebugMessage(Venpi_ModName, "VJR_TransferContainerScript", "ProcessItem", "No break down item was found for Tier C for " + baseItem + ".", 0, Venpi_DebugEnabled.GetValueInt())
  EndIf
  
  If (results.TierD_Item != None)
    If (VJR_BreakdownChance_TierD.GetValueInt() == 100 || Game.GetDieRollSuccess(VJR_BreakdownChance_TierD.GetValueInt(), 1, 100, -1, -1))
      VPI_Debug.DebugMessage(Venpi_ModName, "VJR_TransferContainerScript", "ProcessItem", "To player's inventory adding Tier D breakdown component of " + results.TierD_Item + " at a quantity of " + results.TierD_Quantity + ".", 0, Venpi_DebugEnabled.GetValueInt())
      player.AddItem(akItemToAdd=results.TierD_Item, aiCount=results.TierD_Quantity, abSilent=True)
    EndIf
  Else
    VPI_Debug.DebugMessage(Venpi_ModName, "VJR_TransferContainerScript", "ProcessItem", "No break down item was found for Tier D for " + baseItem + ".", 0, Venpi_DebugEnabled.GetValueInt())
  EndIf
  
  RemoveItem(akItemToRemove=baseItem, aiCount=count, abSilent=True, akOtherContainer=None)
EndFunction

Float Function GetItemSizeAdjustment(Form baseItem)
  VPI_Debug.DebugMessage(Venpi_ModName, "VJR_TransferContainerScript", "GetItemSizeAdjustment", "Processing item " + baseItem + ".", 0, Venpi_DebugEnabled.GetValueInt())

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
  VPI_Debug.DebugMessage(Venpi_ModName, "VJR_TransferContainerScript", "GetItemTierA", "Finding Tier A material for item " + baseItem + ".", 0, Venpi_DebugEnabled.GetValueInt())

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
  VPI_Debug.DebugMessage(Venpi_ModName, "VJR_TransferContainerScript", "GetItemTierB", "Finding Tier B material for item " + baseItem + ".", 0, Venpi_DebugEnabled.GetValueInt())

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
  VPI_Debug.DebugMessage(Venpi_ModName, "VJR_TransferContainerScript", "GetItemTierC", "Finding Tier C material for item " + baseItem + ".", 0, Venpi_DebugEnabled.GetValueInt())

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
  VPI_Debug.DebugMessage(Venpi_ModName, "VJR_TransferContainerScript", "GetItemTierD", "Finding Tier D material for item " + baseItem + ".", 0, Venpi_DebugEnabled.GetValueInt())

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