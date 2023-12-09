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

#### Default Items
- Antique Computer
- Circuit Board (Several Varieties)
- Desk Assistant "Eggmund"
- Desk Phone
- Desktop Digiframe
- Desktop Speakers
- Display Projector
- Emergency Power Cell
- Empty Desktop Display
- High-Speed Data Cable (Several Varieties)
- Mercury Camera
- Personal Digiframe
- Portable CD Player
- Prototype Equipment (Several Varieties)
- Robotics Part
- Tablet

#### Default Rewards
- 1 Copper
- 1 Gold (Chance None 25%)
- 1 Lithium (Chance None 75%)
- 1 Isocentered Magnets (Chance None 25%)
- 1 Sealant (Chance None 25%)

### Tools
The Tools group uses the form ID list GJR_GroupRule_Tools_List [FLST:##00081A] and the leveled item list GJR_GroupRule_Tools_Resources [LVLI:##00081B].

#### Default Items
- Bolt Cutter
- Bottle Opener
- Bubble Level
- Caliper
- Chisel (Several Varieties)
- Clamp
- Crimping Tool
- Cutting Pliers
- Fork (Several Varieties)
- Hammer (Several Varieties)
- Hose Clamp Pliers
- Hydraulic Clamp (Several Varieties)
- Impact Driver (Several Varieties)
- Knife (Several Varieties)
- Ladle
- Pan
- Pan Lid
- Pipe Wrench
- Pliers (Several Varieties)
- Pot (Several Varieties)
- Pot Lid (Several Varieties)
- Ratchet
- Scissors (Several Varieties)
- Screwdriver (Several Varieties)
- Sextant
- Spoon (Several Varieties)
- Staple Gun
- Steel Bottle
- Steel Cup (Several Varieties)
- Trowel (Several Varieties)
- Tweezers (Several Varieties)
- Wrench (Several Varieties)

#### Default Rewards
- 1 Iron
- 1 Lead
- 1 Titanium (Chance None 50%)
- 1 Platinum (Chance None 75%)
- 1 Polymer (Chance None 50%)

## Fallback Rules
Fall back rules are a catch all in-case you use an item that is not mapped yet. 

- Weapon's fallback is 0-4 random inorganic resources.
- Armor's fallback is 0-4 random organic resources.
- Misc items fallback is 0-2 random manufactured goods.
