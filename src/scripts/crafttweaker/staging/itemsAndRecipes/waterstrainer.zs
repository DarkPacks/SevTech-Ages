import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageZero;
import scripts.crafttweaker.stages.stageOne;
import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageFive;

static stagedItems as IIngredient[][string] = {
	stageZero.stage: [
		<waterstrainer:garden_trowel>,
		<waterstrainer:net:1>,
		<waterstrainer:net>,
		<waterstrainer:strainer_base>,
		<waterstrainer:strainer_fisherman>,
		<waterstrainer:strainer_survivalist_dense>,
		<waterstrainer:strainer_survivalist>,
		<waterstrainer:worm>
	],

	stageOne.stage: [
		<waterstrainer:bait_pot>
	],

	stageTwo.stage: [
		<waterstrainer:efficiency_meter>,
		<waterstrainer:strainer_survivalist_dense_solid>,
		<waterstrainer:strainer_survivalist_solid>
	],

	stageFive.stage: [
		<waterstrainer:strainer_survivalist_dense_reinforced>,
		<waterstrainer:strainer_survivalist_reinforced>
	]
};

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.waterstrainer.stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
}
