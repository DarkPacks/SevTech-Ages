import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageOne;
import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageFive;

static stagedItems as IIngredient[][string] = {
	stageOne.stage: [
		<chiselsandbits:bit_bag>,
		<chiselsandbits:bittank>,
		<chiselsandbits:chisel_iron>,
		<chiselsandbits:chisel_stone>,
		<chiselsandbits:mirrorprint>,
		<chiselsandbits:negativeprint>,
		<chiselsandbits:positiveprint>,
		<chiselsandbits:wrench_wood>
	],

	stageTwo.stage: [
		<chiselsandbits:chisel_gold>,
		<chiselsandbits:chisel_iron>,
		<chiselsandbits:tape_measure>
	],

	stageFive.stage: [
		<chiselsandbits:bitsaw_diamond>,
		<chiselsandbits:chisel_diamond>
	]
};

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.mods.chiselsandbits.stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
}
