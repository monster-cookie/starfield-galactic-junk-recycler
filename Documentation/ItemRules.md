# Item Rules

With Creation Kit this will move to a keyword-based system where you can use my rules below or customize them using a patch mod.In all entries below ## in a form ID is the mod index of GalacticJunkREcycler.esm. 

There is a hierarchy in play here, Item Rules are always processed first, followed by group rules, and finally the fallback rules are last. Item rules are the only way to exactly set a resource that is returned. With the leveled item lists the game engine controls the chance and it gets weird.

## Item Rules
* Vacuum Tape becomes 0-4 Fiber and 0-4 Gold Adhesive.
* Edmond Desktop Assistant becomes 0-4 copper, 0-4 gold, and 0-2 Isocentered Magnets.

### Group Rules
Group rules use a safe to override form ID list (targets) and a leveled item (resources) instead of hard coded rules. Feel free to us xEdit to create a patch file that overrides these lists so you can customize the items and the resources you get from them.

The form ID list can only contain actual item entries aka Armor, Weapons, Mis Objects, Ingestible Objects, etc. The leveled item list can technically contain anything you should only put Inorganic, Organic, or Manufactured resources in the list. 

#### Electronics
This group uses the form ID list GJR_GroupRule_Electronics_List [FLST:##00081C] and the leveled item list GJR_GroupRule_Electronics_Resources [LVLI:##00081D]. Breaks down in to copper, gold (75% chance), lithium (25% chance), Isocentered Magnets (75% chance), and Sealant (25% chance) for a maximum of 2 items. 

#### Tools
This group uses the form ID list GJR_GroupRule_Tools_List [FLST:##00081A] and the leveled item list GJR_GroupRule_Tools_Resources [LVLI:##00081B]. Breaks down to iron, lead, titanium (50% chance), platinum (25% chance), and polymer (50% chance) for a maximum of 2 items.

#### Bar Stuff
This group uses the form ID list GJR_GroupRule_BarStuff_List [FLST:##000825] and the leveled item list GJR_GroupRule_BarStuff_Resources [LVLI:##000826]. Breaks down to pigment, beryllium (90% chance), caelumite (50% chance), caesium (25% chance), and Ytterbium (25% chance) for a maximum of 2 items

#### Decorative Stuff
This group uses the form ID list GJR_GroupRule_DecorativeStuff_List [FLST:##000827] and the leveled item list GJR_GroupRule_DecorativeStuff_Resources [LVLI:##000828]. Breaks down to structural material, cosmetic (90% chance), ornamental (75% chance), pigment (75% chance) and luxury (40% chance) for a maximum of 2 items


Food
This group uses the form ID list GJR_GroupRule_Food_List [FLST:##00082D] and the leveled item list GJR_GroupRule_Food_Resources [LVLI:##000831]. Breaks down into 1 ingredient from leveled item list LL_VPI_Ingredients and a 50% chance for an additional item.

#### Alien Food
This group uses the form ID list GJR_GroupRule_AlienFood_List [FLST:##000835] and the leveled item list GJR_GroupRule_AlienFood_Resources [LVLI:##000836]. Breaks down into 1 ingredient from leveled item list LL_VPI_Ingredients, a 50% chance for an additional ingredient, quark-degenerate tissues (50% chance), and alien genetic material (25% chance).

#### Aid
This group uses the form ID list GJR_GroupRule_Aid_List [FLST:##00082F] and the leveled item list GJR_GroupRule_Aid_Resources [LVLI:##000833].

#### Enhancers
This group uses the form ID list GJR_GroupRule_Chems_List [FLST:##000830] and the leveled item list GJR_GroupRule_Chems_Resources [LVLI:##000834].

## Fallback Rules
Fallback rules are a catch all in-case you use an item that is not mapped yet. weapon's fallback is 1-4 random inorganic resources, armor's fallback is 0-4 random organic resources, ammo's fallback is 1 random organic or inorganic resource with a global chance none of 50%, book's fallback is 1 random fiber, adhesive, or polytextile with a global chance none of 25%, misc items fallback is 0-2 random manufactured goods with a global chance none of 40%, and food/drink/alcohol/aid/chem items fallback is 0-2 random organic and ingredients with a global change none of 25%.
