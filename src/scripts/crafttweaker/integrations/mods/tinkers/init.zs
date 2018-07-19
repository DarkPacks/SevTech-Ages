#priority -50

/*
	SevTech: Ages Tinkers Loader Script

	This script handles custom integration control to a mod.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
function init() {
	scripts.crafttweaker.integrations.mods.tinkers.alloy.init();
	scripts.crafttweaker.integrations.mods.tinkers.casting.init();
	scripts.crafttweaker.integrations.mods.tinkers.dryingRack.init();
	scripts.crafttweaker.integrations.mods.tinkers.melting.init();
}
