/*
	SevTech: Ages Table Industrial Loom Recipes Script

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
	Helper function to create a Looming Recipe for the MM Machine.
*/
function createLoomingRecipe(name as string, output as IItemStack, inputs as IItemStack[]) {
	var machineName = "industrial_loom";

	var builder as RecipePrimer = RecipeBuilder.newBuilder(utils.createRecipeName(machineName, name), machineName, 128);
	builder.addEnergyPerTickInput(150); // Set the power input.
	builder.addItemOutput(output); // Set the output item.
	for input in inputs { // Loop over the inputs and add them to the builder.
		builder.addItemInput(input);
	}
	builder.build(); // Build the recipe.
}

function createOreLoomingRecipe(name as string, output as IItemStack, inputs as IOreDictEntry[int]) {
	var machineName = "industrial_loom";

	var builder as RecipePrimer = RecipeBuilder.newBuilder(utils.createRecipeName(machineName, name), machineName, 128);
	builder.addEnergyPerTickInput(4); // Set the power input.
	builder.addItemOutput(output); // Set the output item.
	for amount, input in inputs { // Loop over the inputs and add them to the builder.
		builder.addItemInput(input, amount);
	}
	builder.build(); // Build the recipe.
}

function init() {
	/*
		Ore Based Recipes
	*/
	createOreLoomingRecipe("string", <minecraft:string:0>, {
		2: <ore:cropCotton>
	});
	createOreLoomingRecipe("hemp_cloth", <betterwithmods:material:4>, {
		9: <ore:fiberHemp>
	});

	/*
		Standard Recipes
	*/
	createLoomingRecipe("plant_twine", <primal:plant_cordage>, [
		<primal:plant_fiber> * 3
	]);
	createLoomingRecipe("leather_strip", <primal:leather_strip> * 9, [
		<minecraft:leather>
	]);
	createLoomingRecipe("cineris_twine", <primal:nether_cordage>, [
		<primal:nether_fiber> * 3
	]);
	createLoomingRecipe("cobweb", <minecraft:web>, [
		<minecraft:stick> * 4,
		<minecraft:string> * 5
	]);

	/*
		Wool Looming
	*/
	for i in 0 to 16 {
		createLoomingRecipe("wool_" ~ i, <minecraft:wool:0>.definition.makeStack(i), [
			<betterwithaddons:wool>.definition.makeStack(i) * 4,
			<betterwithmods:aesthetic:12>
		]);
	}
}
