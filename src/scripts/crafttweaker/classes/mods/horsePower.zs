#priority 2400

/*
	SevTech: Ages Horse Power Script

	This script is a zenClass to allow easy interation with Horse Power.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

import mods.horsepower.ChoppingBlock;
import mods.horsepower.Grindstone;
import mods.horsepower.Press;
import mods.horsepower.Recipes;

zenClass HorsePower {
	var def_chop as int;
	var def_grind as int;

	zenConstructor(defChop as int, defGrind as int) {
		def_chop = defChop;
		def_grind = defGrind;
	}

	/*
		Add a Chopping Block recipe.

		By default if not set recipes would be set to manual only.
	*/
	function addChopping(input as IIngredient, output as IItemStack) {
		addChopping(input, output, def_chop, true);
	}
	function addChopping(input as IIngredient, output as IItemStack, time as int) {
		addChopping(input, output, time, true);
	}
	function addChopping(input as IIngredient, output as IItemStack, time as int, manual as bool) {
		ChoppingBlock.add(input, output, time, manual);
	}

	/*
		Add a Grindstone recipe.

		By default if not set recipes would be set to manual only.
	*/
	function addGrindstone(input as IIngredient, output as IItemStack) {
		addGrindstone(input, output, def_grind, true);
	}
	function addGrindstone(input as IIngredient, output as IItemStack, secondaryOutput as IItemStack, secondaryChance as int) {
		addGrindstone(input, output, def_grind, true, secondaryOutput, secondaryChance);
	}
	function addGrindstone(input as IIngredient, output as IItemStack, time as int, hand as bool) {
		Grindstone.add(input, output, time, hand);
	}
	function addGrindstone(input as IIngredient, output as IItemStack, time as int, hand as bool, secondaryOutput as IItemStack, secondaryChance as int) {
		Grindstone.add(input, output, time, hand, secondaryOutput, secondaryChance);
	}

	/*
		Add a Press recipe.
	*/
	function addPress(input as IIngredient, output as IItemStack) {
		Press.add(input, output);
	}
}
