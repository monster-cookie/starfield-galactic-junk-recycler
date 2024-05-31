# Galactic Junk Recycler

## Overview

Customizable system for breaking down useless loot for usable crafting materials

## Markdown
- GitHub's [Basic formatting and syntax](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax)
- GitHub's [Advanced Formatting, Tables](https://docs.github.com/en/get-started/writing-on-github/working-with-advanced-formatting/organizing-information-with-tables)
- Github's [Advanced Formatting, Task Lists](https://docs.github.com/en/get-started/writing-on-github/working-with-advanced-formatting/about-task-lists)

## Tools Needed

- [Visual Studio Code](https://code.visualstudio.com/Download)
  - For papyrus coding and markdown documentation
- [Starfield Creation Kit](https://steampowered.com)
  - For game engine development
- [Powershell](https://learn.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-windows?view=powershell-7.4#installing-the-msi-package)
  - For the build and packaging system
- [Papyrus VSCode Extension](https://marketplace.visualstudio.com/items?itemName=joelday.papyrus-lang-vscode)
- [Fork Git Client](https://fork.dev)
- OPTIONAL: [Spriggit/Spriggit CLI](https://github.com/Mutagen-Modding/Spriggit/releases)
- OPTIONAL: [Mod Organizer 2](https://github.com/ModOrganizer2/modorganizer/releases)
  - Obfuscation layer that prevents messing with the Game Directory


## Documentation

 - [Workflow and Setup Documentation](./Documentation/Workflow/Workflow.md)

## Form IDs for resource lookups

### Inorganic Resources
- "Aldumite"                   InorgUniqueAldumite [MISC:00005DEC]
- "Alkanes"                    InorgUncommonAlkanes [MISC:00005570]
- "Aluminum"                   InorgCommonAluminum [MISC:0000557D]
- "Antimony"                   InorgExoticAntimony [MISC:0000557B]
- "Aqueous Hematite"           InorgUniqueAqueousHematite [MISC:0029D022]
- "Argon"                      InorgCommonArgon [MISC:00005588]
- "Benzene"                    InorgUncommonBenzene [MISC:00005585]
- "Beryllium"                  InorgUncommonBeryllium [MISC:000057D9]
- "Carboxylic Acids"           InorgRareCarboxylicAcids [MISC:00005586]
- "Caelumite"                  InorgUniqueCaelumite [MISC:000788D6]
- "Caesium"                    InorgExoticCaesium [MISC:000057DF]
- "Chlorine"                   InorgCommonChlorine [MISC:0000557C]
- "Chlorosilanes"              InorgUncommonChlorosilanes [MISC:0000557E]
- "Cobalt"                     InorgUncommonCobalt [MISC:00005575]
- "Copper"                     InorgCommonCopper [MISC:00005576]
- "Dysprosium"                 InorgExoticDysprosium [MISC:00005569]
- "Europium"                   InorgExoticEuropium [MISC:000057E1]
- "Fluorine"                   InorgUncommonFluorine [MISC:00005577]
- "Gold"                       InorgRareGold [MISC:00005579]
- "Helium-3"                   InorgCommonHelium3 [MISC:0000558E]
- "Indicite"                   InorgUniqueIndicite [MISC:0004BA37]
- "Ionic Liquids"              InorgExoticIonicLiquids [MISC:0000557A]
- "Iridium"                    InorgUncommonIridium [MISC:0000558A]
- "Iron"                       InorgCommonIron [MISC:0000556E]
- "Lead"                       InorgCommonLead [MISC:00005568]
- "Lithium"                    InorgRareLithium [MISC:0000557F]
- "Mercury"                    InorgRareMercury [MISC:0027C4A1]
- "Neodymium"                  InorgRareNeodymium [MISC:00005580]
- "Neon"                       InorgExoticNeon [MISC:00005587]
- "Nickel"                     InorgCommonNickel [MISC:00005572]
- "Palladium"                  InorgExoticPalladium [MISC:00005574]
- "Platinum"                   InorgRarePlatinum [MISC:00005573]
- "Plutonium"                  InorgExoticPlutonium [MISC:0000558C]
- "Rothicite"                  InorgUniqueRothicite_NOCLUTTER [MISC:000028DF]
- "Silver"                     InorgUncommonSilver [MISC:0000556A]
- "Tantalum"                   InorgRareTantalum [MISC:0000556F]
- "Tasine"                     InorgUniqueTasine [MISC:00005DED]
- "Tetrafluorides"             InorgRareTetrafluorides [MISC:00005578]
- "Titanium"                   InorgRareTitanium [MISC:0000556D]
- "Tungsten"                   InorgUncommonTungsten [MISC:0000556B]
- "Uranium"                    InorgCommonUranium [MISC:00005589]
- "Vanadium"                   InorgRareVanadium [MISC:0000558B]
- "Veryl"                      InorgUniqueVeryl [MISC:00005DEE]
- "Vytinium"                   InorgUniqueVytinium [MISC:00005DEF]
- "Water"                      InorgCommonWater [MISC:00005591]
- "Xenon"                      InorgExoticXenon [MISC:000057DD]
- "Ytterbium"                  InorgExoticYtterbium [MISC:00005571]

### Organic Resources
- "Adhesive"                   OrgRareAdhesive [MISC:000055B1]
- "Amino Acids"                OrgRareAminoAcids [MISC:000055CD]
- "Analgesic"                  OrgRareAnalgesic [MISC:000055A9]
- "Antimicrobial"              OrgUncommonAntimicrobial [MISC:000055AB]
- "Aromatic"                   OrgRareAromatic [MISC:000055B8]
- "Biosuppressant"             OrgExoticBiosuppressant [MISC:000055B2]
- "Cosmetic"                   OrgUncommonCosmetic [MISC:000055A8]
- "Fiber"                      OrgCommonFiber [MISC:000055AF]
- "Gastronomic Delight"        OrgUniqueGastronomic [MISC:0000559D]
- "Hallucinogen"               OrgRareHallucinogen [MISC:0029F405]
- "High-Tensile Spidroin"      OrgUniqueHighTensileSpidroin [MISC:000055AA]
- "Hypercatalyst"              OrgExoticHypercatalyst [MISC:0029F40D]
- "Immunostimulant"            OrgUniqueImmunostimulant [MISC:000055B3]
- "Lubricant"                  OrgExoticLubricant [MISC:000055BA]
- "Luxury Textile"             OrgUniqueLuxuryTextile [MISC:0000559E]
- "Membrane"                   OrgUncommonMembrane [MISC:000055B0]
- "Memory Substrate"           OrgUniqueMemorySubstrate [MISC:0000559B]
- "Metabolic Agent"            OrgCommonMetabolicAgent [MISC:0029F3FC]
- "Neurologic"                 OrgUniqueNeurologic [MISC:0029F409]
- "Nutrient"                   OrgCommonNutrient [MISC:000777FD]
- "Ornamental Material"        OrgUncommonOrnamental [MISC:000055A7]
- "Pigment"                    OrgUncommonPigment [MISC:0029F400]
- "Polymer"                    OrgExoticPolymer [MISC:000055A6]
- "Quark-Degenerate Tissues"   OrgLegQuarkDegenerateTissue [MISC:00122EB8]
- "Sealant"                    OrgCommonSealant [MISC:000055CC]
- "Sedative"                   OrgRareSedative [MISC:000055AD]
- "Solvent"                    OrgExoticSolvent [MISC:000055CE]
- "Spice"                      OrgUncommonSpice [MISC:000055AC]
- "Stimulant"                  OrgExoticStimulant [MISC:000055AE]
- "Structural Material"        OrgCommonStructural [MISC:000055B9]
- "Toxin"                      OrgCommonToxin [MISC:000055CB]

### Manufactured Resources
- "Adaptive Frame"             Mfg_Tier01_AdaptiveFrame [MISC:00246B6A]
- "Aldumite Drilling Rig"      Mfg_Tier03_AldumiteDrillingRig [MISC:00202F5A]
- "Austenitic Manifold"        Mfg_Tier01_AusteniticManifold [MISC:00246B7C]
- "Comm Relay"                 Mfg_Tier01_CommRelay [MISC:00246B64]
- "Control Rod"                Mfg_Tier02_ControlRod [MISC:00246B7B]
- "Deformable Nozzle"          Mfg_Tier02_DeformableNozzle_NOCLUTTER [MISC:00246B7A]
- "Drilling Rig"               Mfg_Tier02_DrillingRig [MISC:0020A02F]
- "Electron Pump"              Mfg_Tier03_ElectronPump_NOCLUTTER [MISC:00246B63]
- "Gravitic Laminate"          Mfg_Tier02_GraviticLaminate_NOCLUTTER [MISC:00246B78]
- "Gravity Inducer"            Mfg_Tier03_GravityInducer_NOCLUTTER [MISC:00246B62]
- "Helical Equalizer"          Mfg_Tier03_HelicalEqualizer_NOCLUTTER [MISC:00246B61]
- "Indicite Wafer"             Mfg_Tier03_IndiciteWafer [MISC:00203EB4]
- "Isocentered Magnet"         Mfg_Tier01_IsocenteredMagnet [MISC:00246B77]
- "Isotopic Coolant"           Mfg_Tier01_IsotopicCoolant [MISC:00246B76]
- "Mag Pressure Tank"          Mfg_Tier01_MagPressureTank [MISC:00246B70]
- "Microsecond Regulator"      Mfg_Tier03_MicrosecondRegulator [MISC:00246B5F]
- "Molecular Sieve"            Mfg_Tier02_MolecularSieve [MISC:00246B75]
- "Monopropellant"             Mfg_Tier01_Monopropellant [MISC:00246B74]
- "Nuclear Fuel Rod"           Mfg_Tier02_NuclearFuelRod [MISC:00246B79]
- "Neutral Capacitor"          Mfg_Tier03_NeutralCapacitor_NOCLUTTER [MISC:00246B5E]
- "Paramagnon Conductor"       Mfg_Tier02_ParamagnonSuperconductor [MISC:00246B73]
- "Plasma Igniter"             Mfg_Tier03_PlasmaIgniter_NOCLUTTER [MISC:00246B5D]
- "Polytextile"                Mfg_Tier01_Polytextile [MISC:00246B72]
- "Power Circuit"              Mfg_Tier03_PowerCircuit [MISC:00246B5C]
- "Positron Battery"           Mfg_Tier02_PositronBattery [MISC:00246B71]
- "Quasi-neutralizer"          Mfg_Tier03_Quasineutralizer_NOCLUTTER [MISC:00246B5B]
- "Reactive Gauge"             Mfg_Tier01_ReactiveGauge [MISC:00246B6F]
- "Regenerative Illuminator"   Mfg_Tier02_RegenerativeIlluminator_NOCLUTTER [MISC:00246B6E]
- "Rothicite Magnet"           Mfg_Tier03_RothiciteMagnet_NOCLUTTER [MISC:00203EB2]
- "Semimetal Wafer"            Mfg_Tier02_SemimetalWafer [MISC:00246B6D]
- "Sterile Nanotubes"          Mfg_Tier02_SterileNanotubes [MISC:00246B6C]
- "Stimulated Shielding"       Mfg_Tier02_StimulatedShielding_NOCLUTTER [MISC:00246B6B]
- "Stochastic Emitter"         Mfg_Tier03_StochasticEmitter_NOCLUTTER [MISC:00246B5A]
- "Substrate Molecule Sieve"   Mfg_Tier03_SubstrateMolecularSieve [MISC:00202782]
- "Supercooled Magnet"         Mfg_Tier02_SupercooledMagnet [MISC:00246B69]
- "Tau Grade Rheostat"         Mfg_Tier01_TauGradeRheostat [MISC:00246B68]
- "Tasine Superconductor"      Mfg_Tier03_TasineSuperconductor [MISC:00203EAF]
- "Thread-Logic Circuit"       Mfg_Tier03_ThreadlogicCircuit_NOCLUTTER [MISC:00246B60]
- "Vac Grade Explosive"        Mfg_Tier01_VacGradeExplosive_NOCLUTTER [MISC:00246B67]
- "Veryl Explosive"            Mfg_Tier03_VerylExplosive_NOCLUTTER [MISC:00203EBD]
- "Veryl-Treated Manifold"     Mfg_Tier03_VerylManifold [MISC:00203EB0]
- "Vytinium Fuel Rod"          Mfg_Tier03_VytiniumFuelRod [MISC:00203EB3]
- "Zero Wire"                  Mfg_Tier01_ZeroWire [MISC:00246B65]
- "Zero-G Gimbal"              Mfg_Tier02_ZeroGGimbal [MISC:00246B66]

### Form IDs for recyclable items
- "Antique Computer"           Antique_OldPC01 [MISC:0036CCEF]
- "Eggmund Desk Assistant"     Desktop_Speaker01 [MISC:0014022D]
- "Vacuum Tape"                Tool_DuctTape01 [MISC:002AC95F]

