# V1.0 Permutations

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