/*
	SevTech: Ages Immersive Engineering Mixer Script

	This script handles custom integration control to a mod.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import mods.immersiveengineering.Mixer;

function init() {
	Mixer.addRecipe(<liquid:slime> * 500, <liquid:water> * 500, [<minecraft:wheat:0>, <minecraft:clay_ball:0>], 50);
	Mixer.addRecipe(<liquid:blueslime> * 500, <liquid:slime> * 500, [<pickletweaks:dye_powder:11>, <natura:nether_glowshroom:1>], 50);
	Mixer.addRecipe(<liquid:purpleslime> * 500, <liquid:slime> * 500, [<pickletweaks:dye_powder:10>, <nex:amethyst_crystal:0>], 50);
}
