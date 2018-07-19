/*
	SevTech: Ages Table Liquid Processor Recipes Script

	This script handles custom integration control to a mod.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import scripts.crafttweaker.utils;

function init() {
	// Machine name
	var machineName = "liquid_processor";

	mods.modularmachinery.RecipeBuilder.newBuilder(utils.createRecipeName(machineName, "plastic"), machineName, 200)
		.addEnergyPerTickInput(5)
		.addFluidOutput(<liquid:plastic> * 1000)
		.addFluidInput(<liquid:propene> * 1000)
		.build();
}
