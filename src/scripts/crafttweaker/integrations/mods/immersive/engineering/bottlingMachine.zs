/*
	SevTech: Ages Immersive Engineering Bottling Machine Script

	This script handles custom integration control to a mod.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import mods.immersiveengineering.BottlingMachine;

function init() {
	BottlingMachine.addRecipe(<minecraft:potion>.withTag({Potion: "minecraft:water"}), <minecraft:glass_bottle>, <liquid:water> * 1000);
}
