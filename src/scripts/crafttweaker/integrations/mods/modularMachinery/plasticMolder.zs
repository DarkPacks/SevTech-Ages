/*
	SevTech: Ages Table Plastic Molder Recipes Script

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
static machineName as string = "plastic_molder";

// Recipes which are going to be added to the machine.
// Output: [Inputs]
static machineRecipes as ILiquidStack[][IItemStack] = {
	<industrialforegoing:plastic:0> * 4: [
		<liquid:plastic> * 1000
	]
};

// Recipe Data which is linked to the Recipe above. Needs to set the name and the values for power and tick time.
// Output (As Above): { name: "recipe name", tickTime: 80, powerTick: 1 }
static recipeData as IData[IItemStack] = {
	<industrialforegoing:plastic:0> * 4: {
		name: "plastic_sheets",
		tickTime: 200,
		powerTick: 10
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
