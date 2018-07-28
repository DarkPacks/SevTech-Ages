#priority 3400

/*
	SevTech: Ages Tinkers Construct Script

	This script is a zenClass to allow easy interation with Tinkers Construct.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.entity.IEntityDefinition;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

import mods.tconstruct.Alloy;
import mods.tconstruct.Casting;
import mods.tconstruct.Drying;
import mods.tconstruct.Melting;

zenClass Tinkers {
	zenConstructor() {
	}

	/*
		Add an Alloying recipe.
	*/
	function addAlloying(output as ILiquidStack, inputs as ILiquidStack[]) {
		Alloy.addRecipe(output, inputs);
	}

	/*
		Remove an Alloying recipe.
	*/
	function removeAlloying(output as ILiquidStack) {
		Alloy.removeRecipe(output);
	}
	function removeAlloying(output as ILiquidStack, inputs as ILiquidStack[]) {
		Alloy.removeRecipe(output, inputs);
	}

	/*
		Add an Casting Table recipe.
	*/
	function addCastingTable(output as IItemStack, cast as IIngredient, fluid as ILiquidStack, amount as int) {
		Casting.addTableRecipe(output, cast, fluid, amount);
	}
	function addCastingTable(output as IItemStack, cast as IIngredient, fluid as ILiquidStack, amount as int, consumeCast as bool) {
		Casting.addTableRecipe(output, cast, fluid, amount, consumeCast);
	}
	function addCastingTable(output as IItemStack, cast as IIngredient, fluid as ILiquidStack, amount as int, consumeCast as bool, time as int) {
		Casting.addTableRecipe(output, cast, fluid, amount, consumeCast, time);
	}

	/*
		Remove an Casting Table recipe.
	*/
	function removeCastingTable(output as IItemStack) {
		Casting.removeTableRecipe(output);
	}

	/*
		Add an Casting Basin recipe.
	*/
	function addCastingBasin(output as IItemStack, cast as IIngredient, fluid as ILiquidStack, amount as int) {
		Casting.addBasinRecipe(output, cast, fluid, amount);
	}
	function addCastingBasin(output as IItemStack, cast as IIngredient, fluid as ILiquidStack, amount as int, consumeCast as bool) {
		Casting.addBasinRecipe(output, cast, fluid, amount, consumeCast);
	}
	function addCastingBasin(output as IItemStack, cast as IIngredient, fluid as ILiquidStack, amount as int, consumeCast as bool, time as int) {
		Casting.addBasinRecipe(output, cast, fluid, amount, consumeCast, time);
	}

	/*
		Remove an Casting Basin recipe.
	*/
	function removeCastingBasin(output as IItemStack) {
		Casting.removeBasinRecipe(output);
	}

	/*
		Add a Drying Recipe
	*/
	function addDrying(output as IItemStack, input as IIngredient, time as int) {
		Drying.addRecipe(output, input, time);
	}

	/*
		Remove a Drying Recipe.
	*/
	function removeDrying(output as IItemStack) {
		Drying.removeRecipe(output);
	}
	function removeDrying(output as IItemStack, input as IItemStack) {
		Drying.removeRecipe(output, input);
	}

	/*
		Add a Melting Recipe.
	*/
	function addMelting(output as ILiquidStack, input as IIngredient) {
		Melting.addRecipe(output, input);
	}
	function addMelting(output as ILiquidStack, input as IIngredient, time as int) {
		Melting.addRecipe(output, input, time);
	}
	function addMeltingEntity(entity as IEntityDefinition, output as ILiquidStack) {
		Melting.addEntityMelting(entity, output);
	}

	/*
		Remove a Melting Recipe.
	*/
	function removeMelting(output as ILiquidStack) {
		Melting.removeRecipe(output);
	}
	function removeMelting(output as ILiquidStack, input as IItemStack) {
		Melting.removeRecipe(output, input);
	}
	function removeMeltingEntity(entity as IEntityDefinition) {
		Melting.removeEntityMelting(entity);
	}
}
