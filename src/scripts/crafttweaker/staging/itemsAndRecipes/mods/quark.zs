import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageZero;
import scripts.crafttweaker.stages.stageOne;
import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageThree;
import scripts.crafttweaker.stages.stageFour;
import scripts.crafttweaker.stages.stageDisabled;

static stagedItems as IIngredient[][string] = {
	stageZero.stage: [
		<quark:elder_prismarine:0>,
		<quark:elder_prismarine:1>,
		<quark:elder_prismarine:2>,
		<quark:elder_sea_lantern:0>,
		<quark:prismarine_bricks_slab:0>,
		<quark:prismarine_dark_slab:0>,
		<quark:prismarine_rough_wall:0>,
		<quark:red_sandstone_wall:0>,
		<quark:sandstone_wall:0>,
		<quark:stone_andesite_slab:0>,
		<quark:stone_andesite_wall:0>,
		<quark:stone_diorite_slab:0>,
		<quark:stone_diorite_wall:0>,
		<quark:stone_granite_slab:0>,
		<quark:stone_granite_wall:0>,
		<quark:stone_wall:0>,
		<quark:turf:0>,
		<quark:turf_stairs:0>,
		<quark:turf_slab:0>,
		<quark:glowshroom_block:0>,
		<quark:witch_hat:0>
	],

	stageOne.stage: [
		// Bricks
		<quark:polished_netherrack_bricks_slab:0>,
		<quark:polished_netherrack_bricks_stairs:0>,
		<quark:polished_netherrack_bricks_wall:0>,
		<quark:polished_netherrack:1>,
		<quark:stone_andesite_bricks_slab:0>,
		<quark:stone_andesite_bricks_stairs:0>,
		<quark:stone_andesite_bricks_wall:0>,
		<quark:stone_diorite_bricks_slab:0>,
		<quark:stone_diorite_bricks_stairs:0>,
		<quark:stone_diorite_bricks_wall:0>,
		<quark:stone_granite_bricks_slab:0>,
		<quark:stone_granite_bricks_stairs:0>,
		<quark:stone_granite_bricks_wall:0>,
		<quark:world_stone_bricks:*>,
		<quark:world_stone_carved:*>,

		// Stairs
		<quark:hardened_clay_tiles_stairs:0>,
		<quark:midori_block_stairs:0>,
		<quark:prismarine_bricks_stairs:0>,
		<quark:prismarine_dark_stairs:0>,
		<quark:stained_clay_tiles_black_stairs:0>,
		<quark:stained_clay_tiles_blue_stairs:0>,
		<quark:stained_clay_tiles_brown_stairs:0>,
		<quark:stained_clay_tiles_cyan_stairs:0>,
		<quark:stained_clay_tiles_gray_stairs:0>,
		<quark:stained_clay_tiles_green_stairs:0>,
		<quark:stained_clay_tiles_light_blue_stairs:0>,
		<quark:stained_clay_tiles_lime_stairs:0>,
		<quark:stained_clay_tiles_magenta_stairs:0>,
		<quark:stained_clay_tiles_orange_stairs:0>,
		<quark:stained_clay_tiles_pink_stairs:0>,
		<quark:stained_clay_tiles_purple_stairs:0>,
		<quark:stained_clay_tiles_red_stairs:0>,
		<quark:stained_clay_tiles_silver_stairs:0>,
		<quark:stained_clay_tiles_white_stairs:0>,
		<quark:stained_clay_tiles_yellow_stairs:0>,
		<quark:stone_andesite_stairs:0>,
		<quark:stone_diorite_stairs:0>,
		<quark:stone_granite_stairs:0>,
		<quark:stone_stairs:0>,

		// Misc
		<quark:acacia_trapdoor:0>,
		<quark:birch_trapdoor:0>,
		<quark:dark_oak_trapdoor:0>,
		<quark:hardened_clay_tiles_slab:0>,
		<quark:hardened_clay_tiles:0>,
		<quark:jungle_trapdoor:0>,
		<quark:midori_block_slab:0>,
		<quark:midori_block_wall:0>,
		<quark:midori_block:0>,
		<quark:midori_pillar:0>,
		<quark:nether_brick_fence_gate:0>,
		<quark:polished_stone:0>,
		<quark:spruce_trapdoor:0>,
		<quark:stained_clay_tiles_black_slab:0>,
		<quark:stained_clay_tiles_blue_slab:0>,
		<quark:stained_clay_tiles_brown_slab:0>,
		<quark:stained_clay_tiles_cyan_slab:0>,
		<quark:stained_clay_tiles_gray_slab:0>,
		<quark:stained_clay_tiles_green_slab:0>,
		<quark:stained_clay_tiles_light_blue_slab:0>,
		<quark:stained_clay_tiles_lime_slab:0>,
		<quark:stained_clay_tiles_magenta_slab:0>,
		<quark:stained_clay_tiles_orange_slab:0>,
		<quark:stained_clay_tiles_pink_slab:0>,
		<quark:stained_clay_tiles_purple_slab:0>,
		<quark:stained_clay_tiles_red_slab:0>,
		<quark:stained_clay_tiles_silver_slab:0>,
		<quark:stained_clay_tiles_white_slab:0>,
		<quark:stained_clay_tiles_yellow_slab:0>,
		<quark:stained_clay_tiles:*>,
		<quark:sturdy_stone:0>,
		<quark:trowel:0>
	],

	stageTwo.stage: [
		<quark:arrow_explosive:0>,
		<quark:brick_wall:0>,
		<quark:glass_item_frame:0>,
		<quark:glass_shards:*>,
		<quark:gold_button:0>,
		<quark:iron_button:0>,
		<quark:iron_ladder:0>,
		<quark:paper_wall:0>,
		<quark:stonebrick_wall:0>
	],

	stageThree.stage: [
		// Nether
		<quark:blaze_lantern:0>,
		<quark:charred_nether_brick_slab:0>,
		<quark:charred_nether_brick_stairs:0>,
		<quark:charred_nether_bricks:0>,
		<quark:polished_netherrack:0>,
		<quark:red_nether_brick_slab:0>,
		<quark:red_nether_brick_stairs:0>,
		<quark:smoker:0>,

		// Misc
		<quark:black_ash:0>,
		<quark:glowcelium:0>,
		<quark:glowshroom:0>,
		<quark:magma_bricks_slab:0>,
		<quark:magma_bricks_stairs:0>,
		<quark:magma_bricks:0>,
		<quark:quartz_wall:0>,
		<quark:soul_bead:0>,
		<quark:soul_powder:0>,
		<quark:soul_sandstone_slab:0>,
		<quark:soul_sandstone:1>,
		<quark:soul_sandstone:2>,
		<quark:soul_sandstone:0>
	],

	stageFour.stage: [
		// End
		<quark:biotite_ore:0>,
		<quark:biotite_stairs:0>,
		<quark:biotite:0>,
		<quark:duskbound_block_stairs:0>,
		<quark:end_bricks_slab:0>,
		<quark:end_bricks_stairs:0>,
		<quark:end_bricks_wall:0>,
		<quark:purpur_block_wall:0>,

		// Misc
		<quark:arrow_ender:0>,
		<quark:biotite_block:0>,
		<quark:biotite_block:1>,
		<quark:biotite_block:2>,
		<quark:biotite_slab:0>,
		<quark:biotite_wall:0>,
		<quark:duskbound_block:0>,
		<quark:duskbound_block_slab:0>,
		<quark:duskbound_block_wall:0>,
		<quark:duskbound_lantern:0>,
		<quark:ender_watcher:0>,
		<quark:iron_rod:0>,
		<quark:rain_detector:0>,
		<quark:redstone_randomizer:0>
	],

	stageDisabled.stage: [
		<quark:paper_wall_big>
	]
};

function init() {
	var modId as string = stagedItems.entrySet[0].value[0].items[0].definition.owner;

	var modStage as string = scripts.crafttweaker.staging.itemsAndRecipes.modId.containsMod(modId);
	var doOverride as bool = modStage != "";

	for stageName, items in stagedItems {
		if (doOverride && stageName != modStage) {
			ZenStager.addModItemOverrides(modId, items);
		}

		ZenStager.getStage(stageName).addIngredients(items);
	}
}
