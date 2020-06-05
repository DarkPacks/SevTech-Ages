import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageThree;
import scripts.crafttweaker.stages.stageFour;
import scripts.crafttweaker.stages.stageFive;
import scripts.crafttweaker.stages.stageDisabled;
import scripts.crafttweaker.stages.stageCreativeUnused;

static stagedItems as IIngredient[][string] = {
	stageThree.stage: [
		<modularmachinery:blockcasing:1>,
		<modularmachinery:blockcasing:3>,
		<modularmachinery:blockcasing:5>,
		<modularmachinery:blockcasing:0>,
		<modularmachinery:blockcontroller:0>,
		<modularmachinery:blockenergyinputhatch:0>,
		<modularmachinery:blockfluidinputhatch:0>,
		<modularmachinery:blockfluidoutputhatch:0>,
		<modularmachinery:blockinputbus:1>,
		<modularmachinery:blockoutputbus:1>
	],

	stageFour.stage: [
		<modularmachinery:blockcasing:2>,
		<modularmachinery:blockcasing:4>,
		<modularmachinery:blockenergyinputhatch:1>,
		<modularmachinery:blockenergyinputhatch:2>,
		<modularmachinery:blockenergyinputhatch:3>,
		<modularmachinery:blockenergyinputhatch:4>,
		<modularmachinery:blockenergyinputhatch:5>,
		<modularmachinery:blockenergyinputhatch:6>,
		<modularmachinery:blockenergyinputhatch:7>,
		<modularmachinery:blockenergyoutputhatch:1>,
		<modularmachinery:blockenergyoutputhatch:2>,
		<modularmachinery:blockenergyoutputhatch:3>,
		<modularmachinery:blockenergyoutputhatch:4>,
		<modularmachinery:blockenergyoutputhatch:5>,
		<modularmachinery:blockenergyoutputhatch:6>,
		<modularmachinery:blockenergyoutputhatch:7>,
		<modularmachinery:blockenergyoutputhatch:0>,
		<modularmachinery:blockfluidinputhatch:1>,
		<modularmachinery:blockfluidinputhatch:2>,
		<modularmachinery:blockfluidinputhatch:3>,
		<modularmachinery:blockfluidinputhatch:4>,
		<modularmachinery:blockfluidinputhatch:5>,
		<modularmachinery:blockfluidinputhatch:6>,
		<modularmachinery:blockfluidinputhatch:7>,
		<modularmachinery:blockfluidoutputhatch:1>,
		<modularmachinery:blockfluidoutputhatch:2>,
		<modularmachinery:blockfluidoutputhatch:3>,
		<modularmachinery:blockfluidoutputhatch:4>,
		<modularmachinery:blockfluidoutputhatch:5>,
		<modularmachinery:blockfluidoutputhatch:6>,
		<modularmachinery:blockfluidoutputhatch:7>,
		<modularmachinery:blockinputbus:2>,
		<modularmachinery:blockinputbus:3>,
		<modularmachinery:blockinputbus:4>,
		<modularmachinery:blockinputbus:5>,
		<modularmachinery:blockinputbus:6>,
		<modularmachinery:blockoutputbus:2>,
		<modularmachinery:blockoutputbus:3>,
		<modularmachinery:blockoutputbus:4>,
		<modularmachinery:blockoutputbus:5>,
		<modularmachinery:blockoutputbus:6>
	],

	stageCreativeUnused.stage: [
		<modularmachinery:itemconstructtool:0>
	]
};

static hiddenRemove as IIngredient[] = [
	<modularmachinery:blockinputbus:0>,
	<modularmachinery:blockoutputbus:0>
];

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
		"modularmachinery:auto_cauldron",
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
		"modularmachinery:hydraulic_press",
		"modularmachinery:scamulator"
	]
};

function init() {
	var modId as string = stagedItems.entrySet[0].value[0].items[0].definition.owner;

	var modStage as string = scripts.crafttweaker.staging.itemsAndRecipes.modId.containsMod(modId);
	var doOverride as bool = modStage != "";

	for stageName, items in stagedItems {
		if (doOverride && stageName != modStage) {
			ZenStager.addModItemOverrides(modId, items);
		}

		ZenStager.getStage(stageName).addIngredients(items);
	}
	recipeUtil.hideItems(hiddenRemove as IIngredient[], true);

	for stageName, multiblockMachines in multiblockMachinesForStages {
		for multiblockMachine in multiblockMachines {
			var item as IItemStack = <modularmachinery:itemblueprint:0>.withTag({dynamicmachine: multiblockMachine});

			ZenStager.getStage(stageName).addIngredient(item);
		}
	}
}
