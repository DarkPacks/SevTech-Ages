/*
	SevTech: Ages Table Industrial Loom Recipes Script

	This script handles custom integration control to a mod.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import scripts.crafttweaker.utils;

function init() {
	// Machine name
	var machineName = "industrial_loom";

	mods.modularmachinery.RecipeBuilder.newBuilder(utils.createRecipeName(machineName, "string"), machineName, 150)
		.addEnergyPerTickInput(10)
		.addItemOutput(<minecraft:string>)
		.addItemInput(<ore:cropCotton>, 2)
		.build();
}
