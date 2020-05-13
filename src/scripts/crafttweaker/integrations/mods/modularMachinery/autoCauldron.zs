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
	var machineName = "auto_cauldron";

	RecipeBuilder.newBuilder(utils.createRecipeName(machineName, "rfglue"), machineName, 128)
		.addEnergyPerTickInput(40)
		.addItemInput(<minecraft:rotten_flesh:0> * 3)
		.addItemOutput(<betterwithmods:material:12>)
		.addFluidInput(<liquid:lubricant> * 50)
		.build();

	RecipeBuilder.newBuilder(utils.createRecipeName(machineName, "pigmglue"), machineName, 128)
		.addEnergyPerTickInput(40)
		.addItemInput(<primal:pigman_hide_raw:0>)
		.addItemOutput(<betterwithmods:material:12> * 2)
		.addFluidInput(<liquid:lubricant> * 50)
		.build();

	RecipeBuilder.newBuilder(utils.createRecipeName(machineName, "wdglue"), machineName, 128)
		.addEnergyPerTickInput(40)
		.addItemInput(<animalium:wild_dog_pelt:0>)
		.addItemOutput(<betterwithmods:material:12>)
		.addFluidInput(<liquid:lubricant> * 50)
		.build();

	RecipeBuilder.newBuilder(utils.createRecipeName(machineName, "bglue"), machineName, 128)
		.addEnergyPerTickInput(40)
		.addItemInput(<totemic:buffalo_items:0>)
		.addItemOutput(<betterwithmods:material:12> * 2)
		.addFluidInput(<liquid:lubricant> * 50)
		.build();

	RecipeBuilder.newBuilder(utils.createRecipeName(machineName, "psglue"), machineName, 128)
		.addEnergyPerTickInput(40)
		.addItemInput(<ore:peltSmall>)
		.addItemOutput(<betterwithmods:material:12>)
		.addFluidInput(<liquid:lubricant> * 50)
		.build();

	RecipeBuilder.newBuilder(utils.createRecipeName(machineName, "pmglue"), machineName, 128)
		.addEnergyPerTickInput(40)
		.addItemInput(<ore:peltMedium>)
		.addItemOutput(<betterwithmods:material:12>)
		.addFluidInput(<liquid:lubricant> * 50)
		.build();

	RecipeBuilder.newBuilder(utils.createRecipeName(machineName, "plglue"), machineName, 128)
		.addEnergyPerTickInput(40)
		.addItemInput(<ore:peltLarge>)
		.addItemOutput(<betterwithmods:material:12> * 2)
		.addFluidInput(<liquid:lubricant> * 50)
		.build();

	RecipeBuilder.newBuilder(utils.createRecipeName(machineName, "nsludge"), machineName, 128)
		.addEnergyPerTickInput(40)
		.addItemInput(<betterwithmods:material:21>)
		.addItemInput(<betterwithmods:material:16> * 4)
		.addItemOutput(<betterwithmods:material:35> * 8)
		.addFluidInput(<liquid:lubricant> * 50)
		.build();
	
	RecipeBuilder.newBuilder(utils.createRecipeName(machineName, "chellfire"), machineName, 128)
		.addEnergyPerTickInput(40)
		.addItemInput(<betterwithmods:material:16> * 8)
		.addItemOutput(<betterwithmods:material:17>)
		.addFluidInput(<liquid:lubricant> * 50)
		.build();
	
	RecipeBuilder.newBuilder(utils.createRecipeName(machineName, "donut"), machineName, 128)
		.addEnergyPerTickInput(40)
		.addItemInput(<horsepower:flour:0>)
		.addItemInput(<minecraft:sugar:0>)
		.addItemOutput(<betterwithmods:donut:0> * 4)
		.addFluidInput(<liquid:lubricant> * 50)
		.build();	
		
	RecipeBuilder.newBuilder(utils.createRecipeName(machineName, "meatballs"), machineName, 128)
		.addEnergyPerTickInput(40)
		.addItemInput(<betterwithaddons:food_ground_meat:0>)
		.addItemOutput(<betterwithaddons:food_meatballs:0>)
		.addFluidInput(<liquid:lubricant> * 50)
		.build();
}
