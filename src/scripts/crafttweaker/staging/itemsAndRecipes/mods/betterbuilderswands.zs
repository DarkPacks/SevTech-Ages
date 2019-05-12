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
		<betterbuilderswands:wandunbreakable:0>,
		<betterbuilderswands:wandunbreakable:12>,
		<betterbuilderswands:wandunbreakable:13>,
		<betterbuilderswands:wandunbreakable:14>
	]
};

function init() {
	for stageName, items in stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
}
