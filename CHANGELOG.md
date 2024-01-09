# V1.0 Permutations

## V1.0.8
* New group rule for paper products, they break down into fiber, adhesive, polymer, polytextile, structural.
* New group rule for pens/markers, they break down into lead, cosmetic, toxin, solvent, zero wire, and pigment.
* New group rule for plastics/styrofoam, they break down into luxury, polymer, hallucinogen, and polytextile.
* Dumbbells now are considered a tool and break down as such
* We will no longer accept books but we hear Cora Coe, the Kid and Cora Coe, The Multiversal Book Hunter love them.

## V1.0.7
* No longer need to drop items to get an object reference.
* Now uses the new shared object manager from Venpi Core 1.0.11.

## V1.0.6
* In the nova galactic workstation hab stopped clutter engine placing a generator thing on it. 
* Probably fixed the cell reset bug. Missed another on load call and needed to be triggered manually from on init in ship habs.

## V1.0.5
* Fixed armor and clothing not showing up turns out ObjectTypeArmor is not used by any armor /facepalm. Went back to using the ArmorType* keywords for the display filter. BE warned this may grab some quest items.
* Added built in recycler to Nova Galactic Workshop, Stroud, Deimos, and Hope Workshop Habs.
* Not doing Taiyo that is way too many to build a ship for, place, and edit the cells lol. 

## V1.0.4
* Now using user debug logs via Venpi Core v1.0.10
* Also now has a true fallback for any object type that is 1 random resource from all available resources.

## V1.0.3
* Added to the lodge basement
* Ammo fallback is now 1 inorganic or organic resource but has a 50% change none
* Misc items fallback is 0-2 random manufactured goods with a 40% chance none
* Added new Food, Aid, Chems, Bar Stuff, and Decorative Stuff Groups
* Changed the recycle filter to use the object type keywords for better control and hopefully less items quest/do not sell items being caught
* This requires Venpi Core v1.0.9+

## V1.0.2
* Added many more item mapping rules please see the article.
* Added some group rules using form lists that user's can expand if the want
* Dropped max item counts on the fallback rules and gave them a chance none of 25%

## V1.0.1
* Added a few direct map conversion for testing
*   Vacuum Tape -> 0-4 Adhesive & Fiber
*   Eggmund Desk Assistant -> 0-4 Copper, Gold, and 0-2 Isocentered Magnet
* Added back the inventory filter registration, it is actually used somehow. Not having its defined breaks the container events after long delay. /facepalm

## V1.0.0
* Initial Release