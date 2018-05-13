#priority -10
//Run at -10 priority as long as this is done with item/recipe staging

import crafttweaker.item.IItemStack;

var multiblockMachinesForStages = {
	STAGES.three : [
		"modularmachinery:chemical_mixer",
		"modularmachinery:industrial_drying_unit",
		"modularmachinery:industrial_loom",
		"modularmachinery:industrial_mill",
		"modularmachinery:liquid_processor",
		"modularmachinery:mixer",
		"modularmachinery:plastic_molder"
	],

	STAGES.four : [
		"modularmachinery:industrial_drying_unit_mk2",
		"modularmachinery:industrial_drying_unit_mk3",
		"modularmachinery:mixer_mk2",
		"modularmachinery:mixer_mk3",
		"modularmachinery:volcanic_crystalizer"
	],

	STAGES.five : [
		"modularmachinery:ethylitic_enricher",
		"modularmachinery:paperclip_factory",
		"modularmachinery:orematic5000",
		"modularmachinery:orematic5000_mk2",
		"modularmachinery:orematic5000_mk3",
		"modularmachinery:hydraulic_press"
	]
} as string[][string];

for stage, multiblockMachines in multiblockMachinesForStages {
	for multiblockMachine in multiblockMachines {
		var item as IItemStack = <modularmachinery:itemblueprint>.withTag({dynamicmachine: multiblockMachine});

		mods.ItemStages.addItemStage(stage, item);
		mods.recipestages.Recipes.setRecipeStage(stage, item);
	}
}
