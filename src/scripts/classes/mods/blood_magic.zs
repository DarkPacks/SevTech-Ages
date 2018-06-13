#priority 2400

/*
	SevTech: Ages Blood Magic Script

	This script is a zenClass to allow easy interation with Blood Magic.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.bloodmagic.AlchemyTable;

zenClass BloodMagic {
	zenConstructor() {
	}

	/*
		Remove a Alchemy Table Recipe

		http://crafttweaker.readthedocs.io/en/latest/#Mods/Modtweaker/BloodMagic/AlchemyTable/#removal
	*/
	function removeAlchemy(inputs as IItemStack[]) {
		AlchemyTable.removeRecipe(inputs);
	}

	/*
		Add a Alchemy Table Recipe

		http://crafttweaker.readthedocs.io/en/latest/#Mods/Modtweaker/BloodMagic/AlchemyTable/#addition
	*/
	function addAlchemy(output as IItemStack, inputs as IIngredient[], syphon as int, tickTime as int, minTier as int) {
		AlchemyTable.addRecipe(output, inputs, syphon, tickTime, minTier);
	}
}
