import crafttweaker.item.IIngredient;

import scripts.crafttweaker.stages.stageZero;
import scripts.crafttweaker.stages.stageOne;
import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageThree;
import scripts.crafttweaker.stages.stageFour;

static stagedItems as IIngredient[][string] = {
	stageZero.stage: [
		<quark:prismarine_bricks_slab>,
		<quark:prismarine_dark_slab>,
		<quark:prismarine_rough_wall>,
		<quark:red_sandstone_wall>,
		<quark:sandstone_wall>,
		<quark:stone_andesite_slab>,
		<quark:stone_andesite_wall>,
		<quark:stone_diorite_slab>,
		<quark:stone_diorite_wall>,
		<quark:stone_granite_slab>,
		<quark:stone_granite_wall>,
		<quark:stone_wall>,
		<quark:witch_hat>
	],

	stageOne.stage: [
		// Bricks
		<quark:polished_netherrack_bricks_slab>,
		<quark:polished_netherrack_bricks_stairs>,
		<quark:polished_netherrack_bricks_wall>,
		<quark:polished_netherrack:1>,
		<quark:stone_andesite_bricks_slab>,
		<quark:stone_andesite_bricks_stairs>,
		<quark:stone_andesite_bricks_wall>,
		<quark:stone_diorite_bricks_slab>,
		<quark:stone_diorite_bricks_stairs>,
		<quark:stone_diorite_bricks_wall>,
		<quark:stone_granite_bricks_slab>,
		<quark:stone_granite_bricks_stairs>,
		<quark:stone_granite_bricks_wall>,
		<quark:world_stone_bricks:*>,

		// Stairs
		<quark:hardened_clay_tiles_stairs>,
		<quark:midori_block_stairs>,
		<quark:prismarine_bricks_stairs>,
		<quark:prismarine_dark_stairs>,
		<quark:stained_clay_tiles_black_stairs>,
		<quark:stained_clay_tiles_blue_stairs>,
		<quark:stained_clay_tiles_brown_stairs>,
		<quark:stained_clay_tiles_cyan_stairs>,
		<quark:stained_clay_tiles_gray_stairs>,
		<quark:stained_clay_tiles_green_stairs>,
		<quark:stained_clay_tiles_light_blue_stairs>,
		<quark:stained_clay_tiles_lime_stairs>,
		<quark:stained_clay_tiles_magenta_stairs>,
		<quark:stained_clay_tiles_orange_stairs>,
		<quark:stained_clay_tiles_pink_stairs>,
		<quark:stained_clay_tiles_purple_stairs>,
		<quark:stained_clay_tiles_red_stairs>,
		<quark:stained_clay_tiles_silver_stairs>,
		<quark:stained_clay_tiles_white_stairs>,
		<quark:stained_clay_tiles_yellow_stairs>,
		<quark:stone_andesite_stairs>,
		<quark:stone_diorite_stairs>,
		<quark:stone_granite_stairs>,
		<quark:stone_stairs>,

		// Misc
		<quark:acacia_trapdoor>,
		<quark:birch_trapdoor>,
		<quark:dark_oak_trapdoor>,
		<quark:hardened_clay_tiles_slab>,
		<quark:hardened_clay_tiles>,
		<quark:jungle_trapdoor>,
		<quark:midori_block_slab>,
		<quark:midori_block_wall>,
		<quark:midori_block>,
		<quark:midori_pillar>,
		<quark:nether_brick_fence_gate>,
		<quark:polished_stone>,
		<quark:spruce_trapdoor>,
		<quark:stained_clay_tiles_black_slab>,
		<quark:stained_clay_tiles_blue_slab>,
		<quark:stained_clay_tiles_brown_slab>,
		<quark:stained_clay_tiles_cyan_slab>,
		<quark:stained_clay_tiles_gray_slab>,
		<quark:stained_clay_tiles_green_slab>,
		<quark:stained_clay_tiles_light_blue_slab>,
		<quark:stained_clay_tiles_lime_slab>,
		<quark:stained_clay_tiles_magenta_slab>,
		<quark:stained_clay_tiles_orange_slab>,
		<quark:stained_clay_tiles_pink_slab>,
		<quark:stained_clay_tiles_purple_slab>,
		<quark:stained_clay_tiles_red_slab>,
		<quark:stained_clay_tiles_silver_slab>,
		<quark:stained_clay_tiles_white_slab>,
		<quark:stained_clay_tiles_yellow_slab>,
		<quark:stained_clay_tiles:*>,
		<quark:sturdy_stone>,
		<quark:trowel>
	],

	stageTwo.stage: [
		<quark:arrow_explosive>,
		<quark:brick_wall>,
		<quark:glass_item_frame>,
		<quark:glass_shards:*>,
		<quark:iron_ladder>,
		<quark:paper_wall>,
		<quark:stonebrick_wall>
	],

	stageThree.stage: [
		// Nether
		<quark:blaze_lantern>,
		<quark:charred_nether_brick_slab>,
		<quark:charred_nether_brick_stairs>,
		<quark:charred_nether_bricks>,
		<quark:polished_netherrack>,
		<quark:red_nether_brick_slab>,
		<quark:red_nether_brick_stairs>,
		<quark:smoker>,

		// Misc
		<quark:black_ash>,
		<quark:glowcelium>,
		<quark:glowshroom>,
		<quark:magma_bricks_slab>,
		<quark:magma_bricks_stairs>,
		<quark:magma_bricks>,
		<quark:quartz_wall>,
		<quark:soul_bead>,
		<quark:soul_powder>,
		<quark:soul_sandstone_slab>,
		<quark:soul_sandstone:1>,
		<quark:soul_sandstone:2>,
		<quark:soul_sandstone>
	],

	stageFour.stage: [
		// End
		<quark:biotite_ore>,
		<quark:biotite_stairs>,
		<quark:biotite>,
		<quark:duskbound_block_stairs>,
		<quark:end_bricks_slab>,
		<quark:end_bricks_stairs>,
		<quark:end_bricks_wall>,
		<quark:purpur_block_wall>,

		// Misc
		<quark:arrow_ender>,
		<quark:biotite_block:1>,
		<quark:biotite_block:2>,
		<quark:biotite_block>,
		<quark:biotite_slab>,
		<quark:biotite_wall>,
		<quark:duskbound_block_slab>,
		<quark:duskbound_block_wall>,
		<quark:duskbound_block>,
		<quark:duskbound_lantern>,
		<quark:ender_watcher>,
		<quark:iron_rod>,
		<quark:rain_detector>
	]
};

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.quark.stagedItems {
		Stager.getStage(stageName).addIngredients(items);
	}
}
