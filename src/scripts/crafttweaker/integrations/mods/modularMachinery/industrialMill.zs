/*
	SevTech: Ages Table Industrial Mill Recipes Script

	This script handles custom integration control to a mod.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IItemStack;
import mods.modularmachinery.RecipeBuilder;

import scripts.crafttweaker.utils;

/*
	Function to create recipes.
*/
function createIMRecipe(input as IItemStack, output as IItemStack) {
	RecipeBuilder.newBuilder(utils.createRecipeName("industrial_mill", input.displayName), "industrial_mill", 128)
		.addEnergyPerTickInput(4)
		.addItemOutput(output)
		.addItemInput(input)
		.build();
}

function init() {
	// Machine name
	var machineName = "industrial_mill";

	// TODO: Enable Once Unique Scripts Back
	// for dye, items in dyeCrushingRecipes {
	// 	for item in items {
	// 		scripts.crafttweaker.modIntegrations.modularMachinery.industrialMill.createIMRecipe(item, dye * 2);
	// 	}
	// }

	/*
		Multi Input Recipes
	*/
	RecipeBuilder.newBuilder(utils.createRecipeName(machineName, "grout"), machineName, 128)
		.addEnergyPerTickInput(4)
		.addItemOutput(<tconstruct:soil:0> * 2)
		.addItemInput(<minecraft:sand:0>)
		.addItemInput(<minecraft:clay_ball:0>)
		.addItemInput(<minecraft:gravel:0>)
		.build();

	RecipeBuilder.newBuilder(utils.createRecipeName(machineName, "porcelain"), machineName, 128)
		.addEnergyPerTickInput(4)
		.addItemOutput(<ceramics:unfired_clay:4>)
		.addItemInput(<minecraft:dye:15>)
		.addItemInput(<minecraft:clay_ball:0>)
		.addItemInput(<minecraft:flint:0>)
		.build();

	/*
		Resource/Plant Based
	*/
	RecipeBuilder.newBuilder(utils.createRecipeName(machineName, "resin"), machineName, 128)
		.addEnergyPerTickInput(4)
		.addItemOutput(<primal:tannin_ground:0>)
		.addItemInput(<ore:barkWood>)
		.build();

	RecipeBuilder.newBuilder(utils.createRecipeName(machineName, "hemp_fibre"), machineName, 128)
		.addEnergyPerTickInput(4)
		.addItemOutput(<betterwithmods:material:3> * 2)
		.addItemInput(<betterwithmods:material:2>)
		.build();

	RecipeBuilder.newBuilder(utils.createRecipeName(machineName, "ground_netherrack"), machineName, 128)
		.addEnergyPerTickInput(4)
		.addItemOutput(<betterwithmods:material:15>)
		.addItemInput(<minecraft:netherrack:0>)
		.build();

	RecipeBuilder.newBuilder(utils.createRecipeName(machineName, "coal_dust"), machineName, 128)
		.addEnergyPerTickInput(4)
		.addItemOutput(<betterwithmods:material:18>)
		.addItemInput(<minecraft:coal:0>)
		.build();

	RecipeBuilder.newBuilder(utils.createRecipeName(machineName, "charcoal_dust"), machineName, 128)
		.addEnergyPerTickInput(4)
		.addItemOutput(<betterwithmods:material:37>)
		.addItemInput(<minecraft:coal:1>)
		.build();

	RecipeBuilder.newBuilder(utils.createRecipeName(machineName, "sugar"), machineName, 128)
		.addEnergyPerTickInput(4)
		.addItemOutput(<minecraft:sugar:0> * 2)
		.addItemInput(<minecraft:reeds:0>)
		.build();

	/*
		Flour
	*/
	RecipeBuilder.newBuilder(utils.createRecipeName(machineName, "flour"), machineName, 128)
		.addEnergyPerTickInput(4)
		.addItemOutput(<horsepower:flour:0>)
		.addItemInput(<minecraft:wheat:0>)
		.build();

	RecipeBuilder.newBuilder(utils.createRecipeName(machineName, "barley_flour"), machineName, 128)
		.addEnergyPerTickInput(4)
		.addItemOutput(<natura:materials:1>)
		.addItemInput(<natura:materials:0>)
		.build();

	RecipeBuilder.newBuilder(utils.createRecipeName(machineName, "rice_flour"), machineName, 128)
		.addEnergyPerTickInput(4)
		.addItemOutput(<betterwithaddons:japanmat:4>)
		.addItemInput(<betterwithaddons:japanmat:2>)
		.build();

	RecipeBuilder.newBuilder(utils.createRecipeName(machineName, "rice_flour_aa"), machineName, 128)
		.addEnergyPerTickInput(4)
		.addItemOutput(<betterwithaddons:japanmat:4>)
		.addItemInput(<actuallyadditions:item_food:16>)
		.build();
}
