/*
	SevTech: Ages Refined Storage Script

	This script handles custom integration control to a mod.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IItemStack;

import mods.refinedstorage.Solderer;

/*
	Support:

	Solderer:
		Solderer.addRecipe(IItemStack output, int time, IItemStack[3] rows);
		Solderer.removeRecipe(IItemStack output);
*/
function init() {
	var rs as IItemStack[string][string] = {
		printed: {
			advanced: <refinedstorage:processor:2>,
			basic: <refinedstorage:processor>,
			improved: <refinedstorage:processor:1>,
			silicon: <refinedstorage:processor:6>
		},
		processor: {
			advanced: <refinedstorage:processor:5>,
			basic: <refinedstorage:processor:3>,
			improved: <refinedstorage:processor:4>,
		}
	};

	// Remove all in the Map.
	for partName, part in rs {
		for materialName, material in part {
			Solderer.removeRecipe(material);
		}
	}

	// All solderer recipe's outputs
	var soldererRecipeOutputs as IItemStack[] = [
		<refinedstorage:fluid_interface>,
		<refinedstorage:fluid_storage:1>,
		<refinedstorage:fluid_storage:2>,
		<refinedstorage:fluid_storage:3>,
		<refinedstorage:fluid_storage>,
		<refinedstorage:grid:1>,
		<refinedstorage:grid:2>,
		<refinedstorage:grid:3>,
		<refinedstorage:interface>,
		<refinedstorage:storage:1>,
		<refinedstorage:storage:2>,
		<refinedstorage:storage:3>,
		<refinedstorage:storage>,
		<refinedstorage:upgrade:1>,
		<refinedstorage:upgrade:2>,
		<refinedstorage:upgrade:3>,
		<refinedstorage:upgrade:5>,
		<refinedstorage:upgrade:6>,
		<refinedstorage:upgrade:7>,
		<refinedstorage:upgrade:8>,
		<refinedstorage:upgrade:9>
	];

	// Remove all in the Array.
	for output in soldererRecipeOutputs {
		Solderer.removeRecipe(output);
	}
}
