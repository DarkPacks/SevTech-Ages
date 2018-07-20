#priority 3400

/*
	SevTech: Ages Drying Unit Script

	This script is a zenClass to allow easy interation with the MM Drying Machine.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;

import scripts.crafttweaker.utils.createRecipeName;
import scripts.crafttweaker.utils.squareNum;

/*
	TODO: Look into making this class generic for possible conversion from other MM machines.
*/
zenClass DryingUnit {
	var machineName as string = "industrial_drying_unit";
	var energyScalingMultiplier as int[] = [1, 4, 8];
	var tickTimeValue as int = 600;

	zenConstructor() {
	}

	/*
		Forms the basic recipe.
	*/
	function formBaseRecipe(tier as int, name as string) as RecipePrimer {
		var machineSlug = tier > 1 ? machineName ~ "_mk" ~ tier : machineName;
		var timeScaler = (tier + 1) > 2 ? squareNum(2, tier - 1) : tier + 1;

		var builder = RecipeBuilder.newBuilder(
			createRecipeName(machineName ~ "_mk" ~ tier, name),
			machineSlug, tickTimeValue / timeScaler
		)
			.addEnergyPerTickInput(5 * energyScalingMultiplier[tier - 1]);

		return builder;
	}

	/*
		Forms the basic via the arguments given the function.
	*/
	function formBaseRecipe(tier as int, input as IOreDictEntry, inAmount as int, output as IOreDictEntry, outAmount as int) {
		var builder = formBaseRecipe(tier, input.name);
		builder
			.addItemInput(input, inAmount)
			.addItemOutput(output, outAmount)
			.build();
	}
	function formBaseRecipe(tier as int, input as IOreDictEntry, inAmount as int, output as IItemStack) {
		var builder = formBaseRecipe(tier, input.name);
		builder
			.addItemInput(input, inAmount)
			.addItemOutput(output)
			.build();
	}
	function formBaseRecipe(tier as int, input as IItemStack, output as IItemStack) {
		var builder = formBaseRecipe(tier, input.name);
		builder
			.addItemInput(input)
			.addItemOutput(output)
			.build();
	}

	/*
		Create the builder/recipes based on the arguments given to the function.
	*/
	function addAllTiers(input as IOreDictEntry, inAmount as int, output as IOreDictEntry, outAmount as int) {
		formBaseRecipe(1, input, inAmount, output, outAmount);
		formBaseRecipe(2, input, inAmount, output, outAmount);
		formBaseRecipe(3, input, inAmount, output, outAmount);
	}
	function addAllTiers(input as IOreDictEntry, inAmount as int, output as IItemStack) {
		formBaseRecipe(1, input, inAmount, output);
		formBaseRecipe(2, input, inAmount, output);
		formBaseRecipe(3, input, inAmount, output);
	}
	function addAllTiers(input as IItemStack, output as IItemStack) {
		formBaseRecipe(1, input, output);
		formBaseRecipe(2, input, output);
		formBaseRecipe(3, input, output);
	}
}
