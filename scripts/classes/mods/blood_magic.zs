#priority 800

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
