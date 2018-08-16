/*
	SevTech: Ages Table Volcanic Crystalizer Recipes Script

	This script handles custom integration control to a mod.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.data.IData;

import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;

import scripts.crafttweaker.utils;

// The machine name.
static machineName as string = "volcanic_crystalizer";

// Recipes which are going to be added to the machine.
// Output: [Inputs]
static machineRecipes as ILiquidStack[][IItemStack] = {
	<minecraft:obsidian:0>: [
		<liquid:water> * 1000,
		<liquid:lava> * 1000
	]
};

// Recipe Data which is linked to the Recipe above. Needs to set the name and the values for power and tick time.
// Output (As Above): { name: "recipe name", tickTime: 80, powerTick: 1 }
static recipeData as IData[IItemStack] = {
	<minecraft:obsidian:0>: {
		name: "obsidian",
		tickTime: 80,
		powerTick: 1
	}
};

function init() {
	for outputItem, _fluids in machineRecipes {
		var primer as RecipePrimer = RecipeBuilder.newBuilder(utils.createRecipeName(machineName, recipeData[outputItem].name.asString()), machineName, recipeData[outputItem].tickTime.asInt())
			.addEnergyPerTickInput(recipeData[outputItem].powerTick.asInt())
			.addItemOutput(outputItem);

		for fluid in _fluids {
			primer.addFluidInput(fluid);
		}

		primer.build();
	}
}
