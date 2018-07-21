import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageOne;
import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageThree;
import scripts.crafttweaker.stages.stageFour;

static stagedItems as IIngredient[][string] = {
	stageOne.stage: [
		<betterbuilderswands:wandstone:0>
	],

	stageTwo.stage: [
		<betterbuilderswands:wandiron:0>
	],

	stageThree.stage: [
		<betterbuilderswands:wanddiamond:0> // Platinum wand
	],

	stageFour.stage: [
		<betterbuilderswands:wandunbreakable:0>
	]
};

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.mods.betterbuilderswands.stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
}
