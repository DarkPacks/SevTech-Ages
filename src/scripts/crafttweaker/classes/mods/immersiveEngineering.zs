#priority 3400

/*
	SevTech: Ages Immersive Engineering Script

	This script is a zenClass to allow easy interation with Immersive Engineering.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.immersiveengineering.AlloySmelter;
import mods.immersiveengineering.ArcFurnace;
import mods.immersiveengineering.Crusher;
import mods.immersiveengineering.MetalPress;

zenClass ImmersiveEngineering {
	var default_energy as int;
	var default_alloy as int;

	zenConstructor(defaultEnergy as int, defaultAlloy as int) {
		default_energy = defaultEnergy;
		default_alloy = defaultAlloy;
	}

	/*
		Remove a Crusher Recipe by Output. (Default)
	*/
	function removeCrusher(output as IItemStack) {
		Crusher.removeRecipe(output);
	}

	/*
		Remove a Crusher Recipe by Input.
	*/
	function removeCrusherByInput(input as IItemStack) {
		Crusher.removeRecipesForInput(input);
	}

	/*
		Add a Crusher Recipe
	*/
	function addCrusher(output as IItemStack, input as IIngredient) {
		Crusher.addRecipe(output, input, default_energy);
	}
	function addCrusher(output as IItemStack, input as IIngredient, energy as int) {
		Crusher.addRecipe(output, input, energy);
	}
	function addCrusher(output as IItemStack, input as IIngredient, secondaryOutput as IItemStack, secondaryChance as double) {
		Crusher.addRecipe(output, input, default_energy, secondaryOutput, secondaryChance);
	}
	function addCrusher(output as IItemStack, input as IIngredient, energy as int, secondaryOutput as IItemStack, secondaryChance as double) {
		Crusher.addRecipe(output, input, energy, secondaryOutput, secondaryChance);
	}

	/*
		Remove an Alloy Smelter Recipe
	*/
	function removeAlloy(output as IItemStack) {
		AlloySmelter.removeRecipe(output);
	}

	/*
		Add an Alloy Smelter Recipe
	*/
	function addAlloy(output as IItemStack, input as IIngredient, input2 as IIngredient) {
		AlloySmelter.addRecipe(output, input, input2, default_alloy);
	}
	function addAlloy(output as IItemStack, input as IIngredient, input2 as IIngredient, time as int) {
		AlloySmelter.addRecipe(output, input, input2, time);
	}

	/*
		Remove an Arc Furnace Recipe
	*/
	function removeArcFurn(output as IItemStack) {
		ArcFurnace.removeRecipe(output);
	}

	/*
		Add a Arc Furnace Recipe
	*/
	function addArcFurn(output as IItemStack, input as IIngredient, slag as IItemStack, time as int, energy as int) {
		ArcFurnace.addRecipe(output, input, slag, time, energy);
	}
	function addArcFurn(output as IItemStack, input as IIngredient, slag as IItemStack, time as int, energy as int, additives as IIngredient[]) {
		ArcFurnace.addRecipe(output, input, slag, time, energy, additives);
	}

	/*
		Remove a Metal Press Recipe
	*/
	function removePress(output as IItemStack) {
		MetalPress.removeRecipe(output);
	}

	/*
		Add a Metal Press Recipe
	*/
	function addPress(output as IItemStack, input as IIngredient, mold as IItemStack, inputSize as int) {
		MetalPress.addRecipe(output, input, mold, 500, inputSize);
	}
	function addPress(output as IItemStack, input as IIngredient, mold as IItemStack, energy as int, inputSize as int) {
		MetalPress.addRecipe(output, input, mold, energy, inputSize);
	}
}
