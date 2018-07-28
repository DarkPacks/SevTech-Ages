/*
	SevTech: Ages Tinkers Alloy Script

	This script handles custom integration control to a mod.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/

/*
	Alloying

	http://crafttweaker.readthedocs.io/en/latest/#Mods/Modtweaker/TConstruct/Alloying/
*/
function init() {
	// Remove Constantan Alloying
	tinkers.removeAlloying(metalItems.constantan.liquid.liquids[0]);

	// Redstone Alloy Creation
	tinkers.addAlloying(metalItems.redstoneAlloy.liquid.liquids[0] * 288, [<liquid:redstone> * 100, <liquid:glowstone> * 100, metalItems.constantan.liquid.liquids[0] * 144]);

	// Modularium
	tinkers.addAlloying(metalItems.modularium.liquid.liquids[0] * 288, [<liquid:redstone> * 100, metalItems.iron.liquid.liquids[0] * 144, metalItems.aluminum.liquid.liquids[0] * 144]);

	// Invar
	tinkers.addAlloying(metalItems.invar.liquid.liquids[0] * 3, [metalItems.iron.liquid.liquids[0] * 2, metalItems.nickel.liquid.liquids[0] * 1]);
}
