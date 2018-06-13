#priority 800

import crafttweaker.item.IItemStack;

import mods.actuallyadditions.Crusher;

zenClass ActuallyAdditions {
	zenConstructor() {
	}

	/*
		Remove a Crusher Recipe
	*/
	function removeCrusher(output as IItemStack) {
		Crusher.removeRecipe(output);
	}

	/*
		Add a Crusher Recipe
	*/
	function addCrusher(output as IItemStack, input as IItemStack) {
		Crusher.addRecipe(output, input);
	}
	function addCrusher(output as IItemStack, input as IItemStack, outputSecondary as IItemStack, secondaryChance as int) {
		Crusher.addRecipe(output, input, outputSecondary, secondaryChance);
	}

	function test() {
		print("Called!");
	}
}
