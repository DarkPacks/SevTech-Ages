#priority 3400

/*
	SevTech: Ages Actually Additions Script

	This script is a zenClass to allow easy interation with Actually Additions.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
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
}
