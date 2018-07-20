#priority 3400

/*
	SevTech: Ages Blood Magic Script

	This script is a zenClass to allow easy interation with Blood Magic.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.bloodmagic.AlchemyArray;
import mods.bloodmagic.AlchemyTable;
import mods.bloodmagic.BloodAltar;

zenClass BloodMagic {
	zenConstructor() {
	}

	/*
		Remove a Alchemy Table Recipe

		http://crafttweaker.readthedocs.io/en/latest/#Mods/Modtweaker/BloodMagic/AlchemyTable/#removal
	*/
	function removeAlchemyTable(inputs as IItemStack[]) {
		AlchemyTable.removeRecipe(inputs);
	}

	/*
		Add a Alchemy Table Recipe

		http://crafttweaker.readthedocs.io/en/latest/#Mods/Modtweaker/BloodMagic/AlchemyTable/#addition
	*/
	function addAlchemyTable(output as IItemStack, inputs as IIngredient[], syphon as int, tickTime as int, minTier as int) {
		AlchemyTable.addRecipe(output, inputs, syphon, tickTime, minTier);
	}

	/*
		Remove a Alchemy Table Recipe

		http://crafttweaker.readthedocs.io/en/latest/#Mods/Modtweaker/BloodMagic/AlchemyArray/#removal
	*/
	function removeAlchemyArray(input as IItemStack, catalyst as IItemStack) {
		AlchemyArray.removeRecipe(input, catalyst);
	}

	/*
		Add a Alchemy Array Recipe

		http://crafttweaker.readthedocs.io/en/latest/#Mods/Modtweaker/BloodMagic/AlchemyArray/#addition
	*/
	function addAlchemyArray(input as IItemStack, catalyst as IItemStack, output as IItemStack) {
		AlchemyArray.addRecipe(input, catalyst, output);
	}

	/*
		Remove a Blood Altar Recipe

		http://crafttweaker.readthedocs.io/en/latest/#Mods/Modtweaker/BloodMagic/BloodAltar/#removal
	*/
	function removeAltar(input as IItemStack) {
		BloodAltar.removeRecipe(input);
	}

	/*
		Add a Blood Altar Recipe

		http://crafttweaker.readthedocs.io/en/latest/#Mods/Modtweaker/BloodMagic/BloodAltar/#addition
	*/
	function addAltar(output as IItemStack, input as IItemStack, minimumTier as int, syphon as int, consumeRate as int, drainRate as int) {
		BloodAltar.addRecipe(output, input, minimumTier, syphon, consumeRate, drainRate);
	}
}
