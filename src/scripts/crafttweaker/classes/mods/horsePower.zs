#priority 3400

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
	function addChopping(output as IItemStack, input as IIngredient) {
		addChopping(output, input, def_chop, true);
	}
	function addChopping(output as IItemStack, input as IIngredient, time as int) {
		addChopping(output, input, time, true);
	}
	function addChopping(output as IItemStack, input as IIngredient, time as int, manual as bool) {
		ChoppingBlock.add(input, output, time, manual);
	}

	/*
		Add a Grindstone recipe.

		By default if not set recipes would be set to manual only.
	*/
	function addGrindstone(output as IItemStack, input as IIngredient) {
		addGrindstone(output, input, def_grind, true);
	}
	function addGrindstone(output as IItemStack, input as IIngredient, secondaryOutput as IItemStack, secondaryChance as int) {
		addGrindstone(output, input, def_grind, true, secondaryOutput, secondaryChance);
	}
	function addGrindstone(output as IItemStack, input as IIngredient, time as int, hand as bool) {
		Grindstone.add(input, output, time, hand);
	}
	function addGrindstone(output as IItemStack, input as IIngredient, time as int, hand as bool, secondaryOutput as IItemStack, secondaryChance as int) {
		Grindstone.add(input, output, time, hand, secondaryOutput, secondaryChance);
	}

	/*
		Add a Press recipe.
	*/
	function addPress(input as IIngredient, output as IItemStack) {
		Press.add(input, output);
	}
}
