import crafttweaker.item.IIngredient;

import scripts.crafttweaker.stages.stageZero;
import scripts.crafttweaker.stages.stageOne;

static stagedItems as IIngredient[][Stage] = {
	stageZero: [
		<traverse:blue_rock_cobblestone_slab>,
		<traverse:blue_rock_cobblestone_wall>,
		<traverse:blue_rock_cobblestone>,
		<traverse:blue_rock_slab>,
		<traverse:blue_rock>,
		<traverse:brown_autumnal_leaves>,
		<traverse:brown_autumnal_sapling>,
		<traverse:cold_grass>,
		<traverse:dead_grass>,
		<traverse:fir_leaves>,
		<traverse:fir_log>,
		<traverse:fir_planks>,
		<traverse:fir_sapling>,
		<traverse:fir_slab>,
		<traverse:orange_autumnal_leaves>,
		<traverse:orange_autumnal_sapling>,
		<traverse:red_autumnal_leaves>,
		<traverse:red_autumnal_sapling>,
		<traverse:red_rock_cobblestone_slab>,
		<traverse:red_rock_cobblestone_wall>,
		<traverse:red_rock_cobblestone>,
		<traverse:red_rock_slab>,
		<traverse:red_rock>,
		<traverse:yellow_autumnal_leaves>,
		<traverse:yellow_autumnal_sapling>
	],

	stageOne: [
		<traverse:blue_rock_bricks_chiseled>,
		<traverse:blue_rock_bricks_slab>,
		<traverse:blue_rock_bricks_stairs>,
		<traverse:blue_rock_bricks>,
		<traverse:blue_rock_cobblestone_stairs>,
		<traverse:fir_door>,
		<traverse:fir_fence_gate>,
		<traverse:fir_fence>,
		<traverse:fir_stairs>,
		<traverse:red_rock_bricks_chiseled>,
		<traverse:red_rock_bricks_slab>,
		<traverse:red_rock_bricks_stairs>,
		<traverse:red_rock_bricks>,
		<traverse:red_rock_cobblestone_stairs>
	]
};

function init() {
	for stage, items in scripts.crafttweaker.staging.itemsAndRecipes.traverse.stagedItems {
		stage.addIngredients(items);
	}
}
