#priority 800

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;


import mods.immersiveengineering.Crusher;

zenClass ImmersiveEngineering {
	val default_energy as int;

	zenConstructor(defaultEnergy as int) {
		default_energy = defaultEnergy;
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
	function addCrusher(output as IItemStack, input as IIngredient, energy as int, secondaryOutput as IItemStack, secondaryChance as double) {
		Crusher.addRecipe(output, input, energy, secondaryOutput, secondaryChance);
	}
}
