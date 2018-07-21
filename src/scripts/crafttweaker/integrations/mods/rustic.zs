/*
	SevTech: Ages Rustic Script

	This script handles custom integration control to a mod.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import mods.rustic.EvaporatingBasin;

/*
	Support:

	Crushing Tub: https://github.com/the-realest-stu/Rustic/wiki/CraftTweaker-Support#crushing-tub-recipes
	Evapor Basin: https://github.com/the-realest-stu/Rustic/wiki/CraftTweaker-Support#evaporating-basin-recipes
*/
function init() {
	EvaporatingBasin.removeRecipe(<rustic:dust_tiny_iron:0>);
}
