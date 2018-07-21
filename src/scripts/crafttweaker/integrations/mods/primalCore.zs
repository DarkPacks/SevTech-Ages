/*
	SevTech: Ages Primal Core Script

	This script handles custom integration control to a mod.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import mods.primal.Hibachi;

/*
	Support:

	Hibachi: https://github.com/An-Sar/PrimalCore/wiki/CraftTweaker:-Hibachi
*/
function init() {
	Hibachi.removeRecipe("valus_melon");
}
