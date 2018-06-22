import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageTutorial;
import scripts.crafttweaker.stages.stageOne;
import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageThree;
import scripts.crafttweaker.stages.stageFour;
import scripts.crafttweaker.stages.stageFive;

static stagedItems as IIngredient[][string] = {
	stageTutorial.stage: [
		<cyclicmagic:sleeping_mat>
	],

	stageOne.stage: [
		<cyclicmagic:apple>,
		<cyclicmagic:ender_torch>,
		<cyclicmagic:food_step>,
		<cyclicmagic:plate_launch_large>,
		<cyclicmagic:plate_launch_small>,
		<cyclicmagic:sandstone_axe>,
		<cyclicmagic:sandstone_hoe>,
		<cyclicmagic:sandstone_pickaxe>,
		<cyclicmagic:sandstone_spade>,
		<cyclicmagic:tool_harvest_leaves>,
		<cyclicmagic:tool_harvest_weeds>
	],

	stageTwo.stage: [
		<cyclicmagic:apple_lapis>,
		<cyclicmagic:block_fragile_auto>,
		<cyclicmagic:block_fragile_weak>,
		<cyclicmagic:block_fragile>,
		<cyclicmagic:block_soundproofing>,
		<cyclicmagic:glove_climb>,
		<cyclicmagic:horse_upgrade_variant>,
		<cyclicmagic:plate_launch_med>,
		<cyclicmagic:spikes_iron>,
		<cyclicmagic:tool_mount>,
		<cyclicmagic:tool_rotate>,
		<cyclicmagic:tool_spawn_inspect>,
		<cyclicmagic:tool_spelunker>,
		<cyclicmagic:tool_torch_launcher>,
		<cyclicmagic:tool_trade>,
		<cyclicmagic:trash>,
		<cyclicmagic:water_freezer>
	],

	stageThree.stage: [
		// Redstone
		<cyclicmagic:builder_block>,
		<cyclicmagic:charm_antidote>,
		<cyclicmagic:charm_water>,
		<cyclicmagic:clock>,

		// Misc
		<cyclicmagic:beacon_redstone>,
		<cyclicmagic:block_hydrator>,
		<cyclicmagic:carbon_paper>,
		<cyclicmagic:charm_fire>,
		<cyclicmagic:charm_wing>,
		<cyclicmagic:chest_sack_empty>,
		<cyclicmagic:chest_sack>,
		<cyclicmagic:dropper_minecart>,
		<cyclicmagic:ender_blaze>,
		<cyclicmagic:ender_dungeon>,
		<cyclicmagic:ender_lightning>,
		<cyclicmagic:ender_snow>,
		<cyclicmagic:ender_water>,
		<cyclicmagic:entity_detector>,
		<cyclicmagic:evoker_fang>,
		<cyclicmagic:fire_dark_anim>,
		<cyclicmagic:fire_dark>,
		<cyclicmagic:fire_killer>,
		<cyclicmagic:gold_furnace_minecart>,
		<cyclicmagic:gold_minecart>,
		<cyclicmagic:horse_upgrade_jump>,
		<cyclicmagic:horse_upgrade_speed>,
		<cyclicmagic:magnet_anti_block>,
		<cyclicmagic:password_block>,
		<cyclicmagic:placer_block>,
		<cyclicmagic:sprinkler>,
		<cyclicmagic:stone_minecart>,
		<cyclicmagic:tool_auto_torch>,
		<cyclicmagic:tool_harvest_crops>,
		<cyclicmagic:tool_launcher>,
		<cyclicmagic:tool_push>,
		<cyclicmagic:tool_swap>,
		<cyclicmagic:turret_minecart>,
		<cyclicmagic:wand_hypno>,
		<cyclicmagic:wand_missile>
	],

	stageFour.stage: [
		// End
		<cyclicmagic:block_library_ctrl>,
		<cyclicmagic:block_library>,

		// Misc
		<cyclicmagic:block_screen>,
		<cyclicmagic:block_storeempty>,
		<cyclicmagic:block_user>,
		<cyclicmagic:block_vacuum>,
		<cyclicmagic:bundled_pipe>,
		<cyclicmagic:charm_void>,
		<cyclicmagic:corrupted_chorus>,
		<cyclicmagic:dropper_exact>,
		<cyclicmagic:ender_eye_orb>,
		<cyclicmagic:ender_pearl_mounted>,
		<cyclicmagic:ender_pearl_reuse>,
		<cyclicmagic:energy_pipe>,
		<cyclicmagic:energy_pump>,
		<cyclicmagic:exp_pylon>,
		<cyclicmagic:fan>,
		<cyclicmagic:fluid_pipe>,
		<cyclicmagic:fluid_placer>,
		<cyclicmagic:fluid_pump>,
		<cyclicmagic:glowing_helmet>,
		<cyclicmagic:item_pipe_sort>,
		<cyclicmagic:item_pipe>,
		<cyclicmagic:item_pump>,
		<cyclicmagic:magnet_block>,
		<cyclicmagic:plate_vector>,
		<cyclicmagic:tool_mount_inverse>,
		<cyclicmagic:wireless_receiver>,
		<cyclicmagic:wireless_transmitter>
	],

	stageFive.stage: [
		// Diamond Stuff
		<cyclicmagic:block_anvil>,
		<cyclicmagic:charm_speed>,
		<cyclicmagic:horse_upgrade_health>,
		<cyclicmagic:spikes_diamond>,

		// Misc
		<cyclicmagic:apple_emerald>,
		<cyclicmagic:auto_crafter>,
		<cyclicmagic:beacon_potion>,
		<cyclicmagic:block_disenchanter>,
		<cyclicmagic:block_enchanter>,
		<cyclicmagic:block_forester>,
		<cyclicmagic:book_ender>,
		<cyclicmagic:builder_pattern>,
		<cyclicmagic:charm_boat>,
		<cyclicmagic:crafting_food>,
		<cyclicmagic:cyclic_wand_build>,
		<cyclicmagic:ender_wool>,
		<cyclicmagic:harvester_block>,
		<cyclicmagic:heart_food>,
		<cyclicmagic:horse_upgrade_type>,
		<cyclicmagic:inventory_food>,
		<cyclicmagic:magic_net>,
		<cyclicmagic:password_remote>,
		<cyclicmagic:purple_boots>,
		<cyclicmagic:purple_chestplate>,
		<cyclicmagic:purple_helmet>,
		<cyclicmagic:purple_leggings>,
		<cyclicmagic:soulstone>,
		<cyclicmagic:sword_ender>,
		<cyclicmagic:sword_slowness>,
		<cyclicmagic:sword_weakness>,
		<cyclicmagic:tool_elevate>,
		<cyclicmagic:tool_swap_match>,
		<cyclicmagic:tool_warp_home>,
		<cyclicmagic:tool_warp_spawn>,
		<cyclicmagic:water_spreader>
	]
};

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.mods.cyclicmagic.stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
}
