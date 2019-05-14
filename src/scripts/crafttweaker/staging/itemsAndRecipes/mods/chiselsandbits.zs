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
		<chiselsandbits:bitsaw_diamond:0>,
		<chiselsandbits:chisel_diamond:0>
	]
};

function init() {
	for stageName, items in stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
}
