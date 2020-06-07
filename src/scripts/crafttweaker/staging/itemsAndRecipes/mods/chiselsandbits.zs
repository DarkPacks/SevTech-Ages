import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageOne;
import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageFive;

static stagedItems as IIngredient[][string] = {
	stageOne.stage: [
		<chiselsandbits:bit_bag:0>,
		<chiselsandbits:bittank:0>,
		<chiselsandbits:chisel_iron:0>,
		<chiselsandbits:chisel_stone:0>,
		<chiselsandbits:mirrorprint:0>,
		<chiselsandbits:negativeprint:0>,
		<chiselsandbits:positiveprint:0>,
		<chiselsandbits:wrench_wood:0>
	],

	stageTwo.stage: [
		<chiselsandbits:chisel_gold:0>,
		<chiselsandbits:tape_measure:0>
	],

	stageFive.stage: [
		<chiselsandbits:bitsaw_diamond:*>,
		<chiselsandbits:chisel_diamond:0>
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
}
