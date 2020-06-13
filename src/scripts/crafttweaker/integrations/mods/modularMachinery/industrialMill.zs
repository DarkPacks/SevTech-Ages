/*
	SevTech: Ages Table Industrial Mill Recipes Script

	This script handles custom integration control to a mod.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;

import scripts.crafttweaker.utils;

/*
	Helper function to create a Mill Recipe for the MM Machine.
*/
function createMillRecipe(name as string, output as IItemStack, inputs as IItemStack[]) as void {
	var machineName = "industrial_mill";

	var builder as RecipePrimer = RecipeBuilder.newBuilder(utils.createRecipeName(machineName, name), machineName, 128);
	builder.addEnergyPerTickInput(4); // Set the power input.
	builder.addItemOutput(output); // Set the output item.
	for input in inputs { // Loop over the inputs and add them to the builder.
		builder.addItemInput(input);
	}
	builder.build(); // Build the recipe.
}

function createOreMillRecipe(name as string, output as IItemStack, inputs as IOreDictEntry[]) as void {
	var machineName = "industrial_mill";

	var builder as RecipePrimer = RecipeBuilder.newBuilder(utils.createRecipeName(machineName, name), machineName, 128);
	builder.addEnergyPerTickInput(4); // Set the power input.
	builder.addItemOutput(output); // Set the output item.
	for input in inputs { // Loop over the inputs and add them to the builder.
		builder.addItemInput(input);
	}
	builder.build(); // Build the recipe.
}

function init() {
	for dye, items in scripts.crafttweaker.integrations.dye.dyeCrushingRecipes {
		for item in items {
			createMillRecipe(item.displayName, dye * 2, [item]);
		}
	}

	/*
		Multi Input Recipes
	*/
	createMillRecipe("grout", <tconstruct:soil:0> * 2, [
		<minecraft:sand:0>, <minecraft:clay_ball:0>, <minecraft:gravel:0>
	]);
	createMillRecipe("porcelain", <ceramics:unfired_clay:4>, [
		<minecraft:dye:15>, <minecraft:clay_ball:0>, <minecraft:flint:0>
	]);

	/*
		Resource/Plant Based
	*/
	createOreMillRecipe("resin", <primal:tannin_ground:0> * 2, [
		<ore:barkWood>
	]);
	createMillRecipe("hemp_fibre", <betterwithmods:material:3> * 3, [
		<betterwithmods:material:2>
	]);
	createOreMillRecipe("ground_netherrack", <betterwithmods:material:15>, [
		<ore:netherrack>
	]);
	createMillRecipe("coal_dust", <betterwithmods:material:18>, [
		<minecraft:coal:0>
	]);
	createMillRecipe("charcoal_dust", <betterwithmods:material:37>, [
		<minecraft:coal:1>
	]);
	createMillRecipe("sugar", <minecraft:sugar:0> * 2, [
		<minecraft:reeds:0>
	]);
	createMillRecipe("charcoal_low_grade", <minecraft:coal:1> * 4, [
		<primal_tech:charcoal_block>
	]);

	/*
		Bone Meal
	*/
	createMillRecipe("bonemeal_bone", <minecraft:dye:15> * 6, [
		<minecraft:bone>
	]);
	createMillRecipe("bonemeal_block", <minecraft:dye:15> * 9, [
		<minecraft:bone_block>
	]);

	/*
		Flour
	*/
	createMillRecipe("flour", <horsepower:flour:0>, [
		<minecraft:wheat:0>
	]);
	createMillRecipe("barley_flour", <horsepower:flour:0>, [
		<natura:materials:0>
	]);
	createMillRecipe("rice_flour", <betterwithaddons:japanmat:4>, [
		<actuallyadditions:item_food:16>
	]);
	
	/*
		Ground Meat
	*/
	createMillRecipe("ground_meat_pork", <betterwithaddons:food_ground_meat:0> * 3, [
		<minecraft:porkchop:0>
	]);
	createMillRecipe("ground_meat_beef", <betterwithaddons:food_ground_meat:0> * 3, [
		<minecraft:beef:0>
	]);
	createMillRecipe("ground_meat_rabbit", <betterwithaddons:food_ground_meat:0> * 3, [
		<minecraft:rabbit:0>
	]);
	
	createMillRecipe("ground_meat_chicken", <betterwithaddons:food_ground_meat:0> * 2, [
		<minecraft:chicken:0>
	]);
	createMillRecipe("ground_meat_mutton", <betterwithaddons:food_ground_meat:0> * 2, [
		<minecraft:mutton:0>
	]);
	createMillRecipe("ground_meat_mystery", <betterwithaddons:food_ground_meat:0> * 2, [
		<betterwithmods:mystery_meat:0>
	]);
	createMillRecipe("ground_meat_fish", <betterwithaddons:food_ground_meat:0> * 2, [
		<minecraft:fish:0>
	]);
	createMillRecipe("ground_meat_salmon", <betterwithaddons:food_ground_meat:0> * 2, [
		<minecraft:fish:1>
	]);
}
