/*
	SevTech: Ages Table Ethylitic Enricher Recipes Script

	This script handles custom integration control to a mod.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import mods.modularmachinery.RecipeBuilder;
import scripts.crafttweaker.utils;

function init() {
	// Machine name
	var machineName = "ethylitic_enricher";

	RecipeBuilder.newBuilder(utils.createRecipeName(machineName, "fertilizer"), machineName, 200)
		.addEnergyPerTickInput(15)
		.addItemOutput(<actuallyadditions:item_fertilizer:0> * 2)
		.addFluidInput(<liquid:liquidethene> * 1000)
		.build();
}
