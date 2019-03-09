import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageFour;
import scripts.crafttweaker.stages.stageFive;

static stagedItems as IIngredient[][string] = {
	stageFour.stage: [
		<chargers:charger:1>,
		<chargers:charger:0>
	],

	stageFive.stage: [
		<chargers:charger:2>,
		<chargers:wireless_charger:0>
	]
};

function init() {
	for stageName, items in stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
}
