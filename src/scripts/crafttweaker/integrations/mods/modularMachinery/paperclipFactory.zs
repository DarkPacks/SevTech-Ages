/*
	SevTech: Ages Table Paperclip Factory Recipes Script

	This script handles custom integration control to a mod.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import scripts.crafttweaker.utils;

function init() {
	// Machine name
	var machineName = "paperclip_factory";

	mods.modularmachinery.RecipeBuilder.newBuilder(utils.createRecipeName(machineName, "paperclips"), machineName, 64)
		.addEnergyPerTickInput(8)
		.addItemOutput(<pickletweaks:ppm4:2> * 8)
		.addItemInput(<galacticraftcore:item_basic_moon:0>)
		.build();

	mods.modularmachinery.RecipeBuilder.newBuilder(utils.createRecipeName(machineName, "paperclipsandlube"), machineName, 32)
		.addEnergyPerTickInput(16)
		.addFluidInput(<liquid:lubricant> * 100)
		.addItemOutput(<pickletweaks:ppm4:2> * 8)
		.addItemInput(<galacticraftcore:item_basic_moon:0>)
		.build();
}
