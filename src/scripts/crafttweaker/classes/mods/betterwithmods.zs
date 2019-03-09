#priority 3400

/*
	SevTech: Ages Better With Mods/Addons Script

	This script is a zenClass to allow easy interation with Better With Mods/Addons.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

import mods.betterwithaddons.DryingBox;
import mods.betterwithaddons.SoakingBox;
import mods.betterwithaddons.Spindle;
import mods.betterwithmods.Cauldron;
import mods.betterwithmods.Crucible;
import mods.betterwithmods.Kiln;
import mods.betterwithmods.Mill;
import mods.betterwithmods.Saw;

zenClass BetterWithMods {
	zenConstructor() {
	}

	/*
		Remove a Kiln recipe
	*/
	function removeKiln(input as IItemStack) {
		Kiln.remove(input);
	}

	/*
		Remove a Soaking recipe
	*/
	function removeSoaking(input as IItemStack) {
		SoakingBox.remove(input);
	}

	/*
		Remove a Saw recipe
	*/
	function removeSaw(outputs as IItemStack[]) {
		Saw.remove(outputs);
	}

	/*
		Remove a Crucible recipe
	*/
	function removeCrucible(outputs as IItemStack[]) {
		Crucible.remove(outputs);
	}

	/*
		Remove a Spindle recipe
	*/
	function addSpindle(outputs as IItemStack[], input as IIngredient, consumesSpindle as bool) {
		Spindle.add(outputs, input, consumesSpindle);
	}

	/*
		Add a Mill recipe.
	*/
	function addMilling(inputs as IIngredient[], outputs as IItemStack[]) {
		Mill.addRecipe(inputs, outputs);
	}

	/*
		Remove a Mill recipe.
	*/
	function removeMilling(outputs as IItemStack[]) {
		Mill.remove(outputs);
	}

	/*
		Add a Cauldron recipe.
	*/
	function addCauldron(inputs as IIngredient[], outputs as IItemStack[]) {
		addCauldron(inputs, outputs, false);
	}
	function addCauldron(inputs as IIngredient[], outputs as IItemStack[], stoked as bool) {
		if (stoked) {
			Cauldron.addStoked(inputs, outputs);
		} else {
			Cauldron.addUnstoked(inputs, outputs);
		}
	}

	/*
		Remove a Cauldron recipe.
	*/
	function removeCauldron(outputs as IItemStack[]) {
		Cauldron.remove(outputs);
	}

	/*
		Remove a Drying Box recipe.
	*/
	function removeDrying(input as IItemStack) {
		DryingBox.remove(input);
	}
}
