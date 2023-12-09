# Item Mapping Rules
With Creation Kit this will move to a keyword-based system where you can use my rules below or customize them using a patch mod.In all entries below ## in a form ID is the mod index of GalacticJunkREcycler.esm. 

There is a hierarchy in play here, Item Rules are always processed first, followed by group rules, and finally the fall back rules are last. Item rules are the only way to exactly set a resource that is returned. The leveled item list the game engine controls the chance and it gets weird. 

## Item Rules
- Vacuum Tape becomes 0-4 Fiber and 0-4 Gold Adhesive.
- Edmond Desktop Assistant becomes 0-4 copper, 0-4 gold, and 0-2 Isocentered Magnets.

## Group Rules
Group rules use a safe to override form ID list (targets) and a leveled item (resources) instead of hard coded rules. Feel free to us xEdit to create a patch file that overrides these lists so you can customize the items and the resources you get from them.

The form ID list can only contain actual item entries aka Armor, Weapons, Mis Objects, Ingestible Objects, etc. The leveled item list can technically contain anything you should only put Inorganic, Organic, or Manufactured resources in the list. 

### Electronics
The Electronics group uses the form ID list GJR_GroupRule_Electronics_List [FLST:##00081C] and the leveled item list GJR_GroupRule_Electronics_Resources [LVLI:##00081D].

#### Default Rewards
Maximum of 2 items from the list below

- 1 Copper
- 1 Gold (Chance None 25%)
- 1 Lithium (Chance None 75%)
- 1 Isocentered Magnets (Chance None 25%)
- 1 Sealant (Chance None 25%)

### Tools
The Tools group uses the form ID list GJR_GroupRule_Tools_List [FLST:##00081A] and the leveled item list GJR_GroupRule_Tools_Resources [LVLI:##00081B].

#### Default Rewards
Maximum of 2 items from the list below

- 1 Iron
- 1 Lead
- 1 Titanium (Chance None 50%)
- 1 Platinum (Chance None 75%)
- 1 Polymer (Chance None 50%)

### Bar Stuff
This group uses the form ID list GJR_GroupRule_BarStuff_List [FLST:##000825] and the leveled item list GJR_GroupRule_BarStuff_Resources [LVLI:##000826].

#### Default Rewards
Maximum of 2 items from the list below

- 1 Pigment
- 1 Beryllium (Chance None 10%)
- 1 Caelumite (Chance None 50%)
- 1 Caesium (Chance None 75%)
- 1 Ytterbium (Chance None 75%)

### Decorative Stuff
This group uses the form ID list GJR_GroupRule_DecorativeStuff_List [FLST:##000827] and the leveled item list GJR_GroupRule_DecorativeStuff_Resources [LVLI:##000828].

#### Default Rewards
Maximum of 2 items from the list below

- 1 Structural Material
- 1 Cosmetic (Chance None 10%)
- 1 Ornamental Material (Chance None 25%)
- 1 Pigment (Chance None 25%)
- 1 LuxuryTextile (Chance None 60%)

### Food
This group uses the form ID list GJR_GroupRule_Food_List [FLST:##00082D] and the leveled item list GJR_GroupRule_Food_Resources [LVLI:##000831].

#### Default Rewards
Maximum of 2 items from the list below

- 1 Ingredient from LL_VPI_Ingredients
- 1 Ingredient from LL_VPI_Ingredients (Chance None 50%)

### Alien Food
This group uses the form ID list GJR_GroupRule_AlienFood_List [FLST:##000835] and the leveled item list GJR_GroupRule_AlienFood_Resources [LVLI:##000836].

#### Default Rewards
Maximum of 2 items from the list below

- 1 Ingredient from LL_VPI_Ingredients
- 1 Ingredient from LL_VPI_Ingredients (Chance None 50%)
- 1 Quark-Degenerate Tissues (Chance None 50%)
- 1 Alien Genetic Material (Chance None 75%)

### Aid
This group uses the form ID list GJR_GroupRule_Aid_List [FLST:##00082F] and the leveled item list GJR_GroupRule_Aid_Resources [LVLI:##000833].

#### Default Rewards
Maximum of 2 items from the list below

- 1 Antimicrobial
- 1 Sedative
- 1 Fiber
- 1 Membrane
- 1 Sealant
- 1 Stimulant (Chance None 10%)
- 1 Metabolic Agent (Chance None 25%)
- 1 Analgesic (Chance None 25%)
- 1 Immunostimulant (Chance None 25%)
- 1 Biosuppressant (Chance None 50%)

### Enhancers
This group uses the form ID list GJR_GroupRule_Chems_List [FLST:##000830] and the leveled item list GJR_GroupRule_Chems_Resources [LVLI:##000834].

#### Default Rewards
Maximum of 2 items from the list below

- 1 Uranium
- 1 Antimicrobial
- 1 Spice
- 1 Sedative
- 1 Membrane
- 1 Aromatic
- 1 Amino Acids
- 1 Nutrient
- 1 Metabolic Agent
- 1 Lithium (Chance None 10%)
- 1 Benzene (Chance None 10%)
- 1 Stimulant (Chance None 10%)
- 1 Toxin (Chance None 10%)
- 1 Analgesic (Chance None 25%)
- 1 Immunostimulant (Chance None 25%)
- 1 Mercury (Chance None 25%)
- 1 Biosuppressant (Chance None 50%)
- 1 Aqueous Hematite (Chance None 50%)
- 1 Hallucinogen (Chance None 75%)
- 1 Hypercatalyst (Chance None 75%)

## Fallback Rules
Fall back rules are a catch all in-case you use an item that is not mapped yet. 

- Weapon's fallback is 0-4 random inorganic resources.
- Armor's fallback is 0-4 random organic resources.
- Ammo's fallback is 1 random organic or inorganic resource with a global chance none of 50%
- Book's fallback is 1 random fiber, adhesive, or polytexile with a global chance none of 25%
- Misc items fallback is 0-2 random manufactured goods with a global chance none of 40%.
- Food/Drink/Alcohol/Aid/Chem items fallback is 0-2 random organic and ingredients with a global change none of 25%.
