/*
	SevTech: Ages Modular Machinery Blueprint Staging Script

	This script handles the staging of Modular Machinery Blueprints to set stages
	for them to appear. This will stage both the item and the recipe.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IItemStack;

import scripts.crafttweaker.stages.stageThree;
import scripts.crafttweaker.stages.stageFour;
import scripts.crafttweaker.stages.stageFive;

static multiblockMachinesForStages as string[][string] = {
	stageThree.stage : [
		"modularmachinery:chemical_mixer",
		"modularmachinery:industrial_drying_unit",
		"modularmachinery:industrial_loom",
		"modularmachinery:industrial_mill",
		"modularmachinery:liquid_processor",
		"modularmachinery:mixer",
		"modularmachinery:plastic_molder"
	],

	stageFour.stage : [
		"modularmachinery:industrial_drying_unit_mk2",
		"modularmachinery:industrial_drying_unit_mk3",
		"modularmachinery:mixer_mk2",
		"modularmachinery:mixer_mk3",
		"modularmachinery:volcanic_crystalizer"
	],

	stageFive.stage : [
		"modularmachinery:ethylitic_enricher",
		"modularmachinery:paperclip_factory",
		"modularmachinery:orematic5000",
		"modularmachinery:orematic5000_mk2",
		"modularmachinery:orematic5000_mk3",
		"modularmachinery:hydraulic_press"
	]
};

function init() {
	var multiblockMachinesForStages as string[][string] =
		scripts.crafttweaker.staging.multiblock.modularMachinery.multiblockMachinesForStages;

	for stageName, multiblockMachines in multiblockMachinesForStages {
		for multiblockMachine in multiblockMachines {
			var item as IItemStack = <modularmachinery:itemblueprint>.withTag({dynamicmachine: multiblockMachine});

			ZenStager.getStage(stageName).addIngredient(item);
		}
	}
}
