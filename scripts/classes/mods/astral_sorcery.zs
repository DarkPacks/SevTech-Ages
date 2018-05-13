#priority 800

import crafttweaker.item.IItemStack;

import mods.astralsorcery.Grindstone;
import mods.astralsorcery.StarlightInfusion;

zenClass AstralSorcery {
	zenConstructor() {
	}

	/*
		Remove a Grindstone Recipe
	*/
	function removeGrindstone(output as IItemStack) {
		Grindstone.removeRecipe(output);
	}

	/*
		Add a Grindstone Recipe
	*/
	function addGrindstone(input as IItemStack, output as IItemStack) {
		Grindstone.addRecipe(input, output);
	}

	/*
		Remove a StarlightInfusion Recipe
	*/
	function removeStarlight(output as IItemStack) {
		StarlightInfusion.removeInfusion(output);
	}

	/*
		Add a StarlightInfusion Recipe
	*/
	function addStarlight(input as IItemStack, output as IItemStack, consumeMultiple as boolean, consumptionChance as float, tickTime as int) {
		StarlightInfusion.addInfusion(input, output, consumeMultiple, consumptionChance, tickTime);
	}
}

