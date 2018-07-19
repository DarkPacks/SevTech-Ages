#priority -50

/*
	SevTech: Ages Blood Magic Loader Script

	This script handles custom integration control to a mod.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
function init() {
	scripts.crafttweaker.integrations.mods.bloodmagic.alchemyArray.init();
	scripts.crafttweaker.integrations.mods.bloodmagic.alchemyTable.init();
	scripts.crafttweaker.integrations.mods.bloodmagic.bloodAltar.init();
	scripts.crafttweaker.integrations.mods.bloodmagic.tartaricForge.init();
}
