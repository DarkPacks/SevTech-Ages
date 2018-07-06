#priority -50

/*
	SevTech: Ages Immersive Engineering Loader Script

	This script handles custom integration control to a mod.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
function init() {
	scripts.crafttweaker.modIntegrations.immersive.engineering.alloySmelter.init();
	scripts.crafttweaker.modIntegrations.immersive.engineering.arcFurnace.init();
	scripts.crafttweaker.modIntegrations.immersive.engineering.bottlingMachine.init();
	scripts.crafttweaker.modIntegrations.immersive.engineering.crusher.init();
	scripts.crafttweaker.modIntegrations.immersive.engineering.metalPress.init();
	scripts.crafttweaker.modIntegrations.immersive.engineering.mixer.init();
	scripts.crafttweaker.modIntegrations.immersive.engineering.refinery.init();
	scripts.crafttweaker.modIntegrations.immersive.engineering.squeezer.init();
}
