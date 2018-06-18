import crafttweaker.item.IIngredient;

import scripts.crafttweaker.stages.stageZero;
import scripts.crafttweaker.stages.stageOne;
import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageThree;

static stagedItems as IIngredient[][Stage] = {
	stageZero: [
		<ferdinandsflowers:block_cff_dark:*>,
		<ferdinandsflowers:block_cff_desert:*>,
		<ferdinandsflowers:block_cff_doubles:*>,
		<ferdinandsflowers:block_cff_doublesb:*>,
		<ferdinandsflowers:block_cff_doublesc:*>,
		<ferdinandsflowers:block_cff_doublesd:*>,
		<ferdinandsflowers:block_cff_flowers:*>,
		<ferdinandsflowers:block_cff_flowersb:*>,
		<ferdinandsflowers:block_cff_flowersc:*>,
		<ferdinandsflowers:block_cff_flowersd:*>,
		<ferdinandsflowers:block_cff_ouch:*>
	],

	stageOne: [
		<ferdinandsflowers:block_cobble_light:*>,
		<ferdinandsflowers:block_dirt_light:*>,
		<ferdinandsflowers:block_gravel_light>,
		<ferdinandsflowers:block_log_light:*>,
		<ferdinandsflowers:block_plank_light:*>,
		<ferdinandsflowers:block_sand_light:*>,
		<ferdinandsflowers:block_stone_light:*>
	],

	stageTwo: [
		<ferdinandsflowers:block_dye_glass:*>,
		<ferdinandsflowers:block_metal_light:*>,
		<ferdinandsflowers:block_stonebrick_light:*>
	],

	stageThree: [
		<ferdinandsflowers:block_birthday>
	]
};

function init() {
	for stage, items in scripts.crafttweaker.staging.itemsAndRecipes.ferdinandsflowers.stagedItems {
		stage.addIngredients(items);
	}
}
