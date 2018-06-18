import crafttweaker.item.IIngredient;

import scripts.crafttweaker.stages.stageZero;
import scripts.crafttweaker.stages.stageOne;
import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageFive;

static stagedItems as IIngredient[][Stage] = {
	stageZero: [
		<waterstrainer:garden_trowel>,
		<waterstrainer:net:1>,
		<waterstrainer:net>,
		<waterstrainer:strainer_base>,
		<waterstrainer:strainer_fisherman>,
		<waterstrainer:strainer_survivalist_dense>,
		<waterstrainer:strainer_survivalist>,
		<waterstrainer:worm>
	],

	stageOne: [
		<waterstrainer:bait_pot>
	],

	stageTwo: [
		<waterstrainer:efficiency_meter>,
		<waterstrainer:strainer_survivalist_dense_solid>,
		<waterstrainer:strainer_survivalist_solid>
	],

	stageFive: [
		<waterstrainer:strainer_survivalist_dense_reinforced>,
		<waterstrainer:strainer_survivalist_reinforced>
	]
};

function init() {
	for stage, items in scripts.crafttweaker.staging.itemsAndRecipes.waterstrainer.stagedItems {
		stage.addIngredients(items);
	}
}
