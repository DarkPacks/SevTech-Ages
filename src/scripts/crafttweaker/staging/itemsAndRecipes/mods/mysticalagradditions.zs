import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageThree;
import scripts.crafttweaker.stages.stageFour;
import scripts.crafttweaker.stages.stageFive;

static stagedItems as IIngredient[][string] = {
	stageThree.stage: [
		<mysticalagradditions:stuff:1>
	],

	stageFour.stage: [
		<mysticalagradditions:stuff:3>
	],

	stageFive.stage: [
		<mysticalagradditions:dragon_egg_crop>,
		<mysticalagradditions:nether_star_crop>,
		<mysticalagradditions:nether_star_essence>,
		<mysticalagradditions:tier6_inferium_crop>,
		<mysticalagradditions:tinkering_table>
	]
};

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.mods.mysticalagradditions.stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
}
