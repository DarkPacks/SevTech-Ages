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
