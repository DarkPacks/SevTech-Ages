import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageOne;
import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageThree;
import scripts.crafttweaker.stages.stageFour;

static stagedItems as IIngredient[][string] = {
	stageOne.stage: [
		<betterbuilderswands:wandstone>
	],

	stageTwo.stage: [
		<betterbuilderswands:wandiron>
	],

	stageThree.stage: [
		<betterbuilderswands:wanddiamond> // Platinum wand
	],

	stageFour.stage: [
		<betterbuilderswands:wandunbreakable>
	]
};

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.mods.betterbuilderswands.stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
}
