#priority -50

/*
	SevTech: Ages Tinkers Loader Script

	This script handles custom integration control to a mod.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
function init() {
	scripts.crafttweaker.modIntegrations.tinkers.alloy.init();
	scripts.crafttweaker.modIntegrations.tinkers.casting.init();
	scripts.crafttweaker.modIntegrations.tinkers.dryingRack.init();
	scripts.crafttweaker.modIntegrations.tinkers.melting.init();
}
