import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageOne;
import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageThree;
import scripts.crafttweaker.stages.stageFive;

static stagedItems as IIngredient[][string] = {
	stageOne.stage: [
		<ironchest:iron_chest:3>,
		<ironchest:iron_chest:7>,
		<ironchest:wood_copper_chest_upgrade>
	],

	stageTwo.stage: [
		<ironchest:copper_iron_chest_upgrade>,
		<ironchest:copper_silver_chest_upgrade>,
		<ironchest:iron_chest:1>,
		<ironchest:iron_chest:4>,
		<ironchest:iron_chest>,
		<ironchest:iron_gold_chest_upgrade>,
		<ironchest:silver_gold_chest_upgrade>,
		<ironchest:wood_iron_chest_upgrade>
	],

	stageThree.stage: [
		<ironchest:iron_chest:6>
	],

	stageFive.stage: [
		<ironchest:diamond_crystal_chest_upgrade>,
		<ironchest:diamond_obsidian_chest_upgrade>,
		<ironchest:gold_diamond_chest_upgrade>,
		<ironchest:iron_chest:2>,
		<ironchest:iron_chest:5>
	]
};

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.mods.ironchest.stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
}
