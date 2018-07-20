import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageFour;
import scripts.crafttweaker.stages.stageFive;

static stagedItems as IIngredient[][string] = {
	stageFour.stage: [
		<chargers:charger:1>,
		<chargers:charger>
	],

	stageFive.stage: [
		<chargers:charger:2>,
		<chargers:wireless_charger>
	]
};

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.mods.chargers.stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
}
