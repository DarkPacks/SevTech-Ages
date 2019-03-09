import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageZero;
import scripts.crafttweaker.stages.stageOne;

static stagedItems as IIngredient[][string] = {
	stageZero.stage: [
		<traverse:blue_rock_cobblestone_slab:0>,
		<traverse:blue_rock_cobblestone_wall:0>,
		<traverse:blue_rock_cobblestone:0>,
		<traverse:blue_rock_slab:0>,
		<traverse:blue_rock:0>,
		<traverse:brown_autumnal_leaves:0>,
		<traverse:brown_autumnal_sapling:0>,
		<traverse:cold_grass:0>,
		<traverse:dead_grass:0>,
		<traverse:fir_leaves:0>,
		<traverse:fir_log:0>,
		<traverse:fir_planks:0>,
		<traverse:fir_sapling:0>,
		<traverse:fir_slab:0>,
		<traverse:orange_autumnal_leaves:0>,
		<traverse:orange_autumnal_sapling:0>,
		<traverse:red_autumnal_leaves:0>,
		<traverse:red_autumnal_sapling:0>,
		<traverse:red_rock_cobblestone_slab:0>,
		<traverse:red_rock_cobblestone_wall:0>,
		<traverse:red_rock_cobblestone:0>,
		<traverse:red_rock_slab:0>,
		<traverse:red_rock:0>,
		<traverse:yellow_autumnal_leaves:0>,
		<traverse:yellow_autumnal_sapling:0>
	],

	stageOne.stage: [
		<traverse:blue_rock_bricks_chiseled:0>,
		<traverse:blue_rock_bricks_slab:0>,
		<traverse:blue_rock_bricks_stairs:0>,
		<traverse:blue_rock_bricks:0>,
		<traverse:blue_rock_cobblestone_stairs:0>,
		<traverse:fir_door:0>,
		<traverse:fir_fence_gate:0>,
		<traverse:fir_fence:0>,
		<traverse:fir_stairs:0>,
		<traverse:red_rock_bricks_chiseled:0>,
		<traverse:red_rock_bricks_slab:0>,
		<traverse:red_rock_bricks_stairs:0>,
		<traverse:red_rock_bricks:0>,
		<traverse:red_rock_cobblestone_stairs:0>
	]
};

function init() {
	for stageName, items in stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
}
