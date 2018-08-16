/*
	SevTech: Ages Table Chemical Mixer Recipes Script

	This script handles custom integration control to a mod.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import mods.modularmachinery.RecipeBuilder;

import scripts.crafttweaker.utils;

function init() {
	// Machine name
	var machineName = "chemical_mixer";

	RecipeBuilder.newBuilder(utils.createRecipeName(machineName, "propene"), machineName, 200)
		.addEnergyPerTickInput(1)
		.addFluidOutput(<liquid:propene> * 1500)
		.addFluidInput(<liquid:naphtha> * 1000)
		.addFluidInput(<liquid:steam> * 1000)
		.build();
}
