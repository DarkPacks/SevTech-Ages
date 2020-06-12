import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageTutorial;
import scripts.crafttweaker.stages.stageOne;
import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageThree;
import scripts.crafttweaker.stages.stageFour;
import scripts.crafttweaker.stages.stageFive;
import scripts.crafttweaker.stages.stageDisabled;

static stagedItems as IIngredient[][string] = {
	stageTutorial.stage: [
		<cyclicmagic:sleeping_mat:0>
	],

	stageOne.stage: [
		<cyclicmagic:apple:0>,
		<cyclicmagic:ender_torch:0>,
		<cyclicmagic:food_step:0>,
		<cyclicmagic:plate_launch_large:0>,
		<cyclicmagic:plate_launch_small:0>,
		<cyclicmagic:sandstone_axe:*>,
		<cyclicmagic:sandstone_hoe:*>,
		<cyclicmagic:sandstone_pickaxe:*>,
		<cyclicmagic:sandstone_spade:*>,
		<cyclicmagic:sandstone_sword:*>,
		<cyclicmagic:tool_harvest_leaves:0>,
		<cyclicmagic:tool_harvest_weeds:0>
	],

	stageTwo.stage: [
		<cyclicmagic:apple_lapis:0>,
		<cyclicmagic:block_fragile_auto:0>,
		<cyclicmagic:block_fragile_weak:0>,
		<cyclicmagic:block_fragile:0>,
		<cyclicmagic:block_soundproofing:0>,
		<cyclicmagic:glove_climb:0>,
		<cyclicmagic:horse_upgrade_variant:0>,
		<cyclicmagic:plate_launch_med:0>,
		<cyclicmagic:spikes_iron:0>,
		<cyclicmagic:tool_mount:0>,
		<cyclicmagic:tool_rotate:0>,
		<cyclicmagic:tool_spawn_inspect:0>,
		<cyclicmagic:tool_spelunker:0>,
		<cyclicmagic:tool_torch_launcher:0>,
		<cyclicmagic:trash:0>,
		<cyclicmagic:water_freezer:0>
	],

	stageThree.stage: [
		// Redstone
		<cyclicmagic:builder_block:0>,
		<cyclicmagic:charm_antidote:0>,
		<cyclicmagic:charm_water:0>,
		<cyclicmagic:clock:0>,

		// Misc
		<cyclicmagic:beacon_redstone:0>,
		<cyclicmagic:block_hydrator:0>,
		<cyclicmagic:carbon_paper:0>,
		<cyclicmagic:charm_fire:0>,
		<cyclicmagic:charm_wing:0>,
		<cyclicmagic:chest_sack_empty:0>,
		<cyclicmagic:chest_sack:0>,
		<cyclicmagic:crystallized_amber:0>,
		<cyclicmagic:dropper_minecart:0>,
		<cyclicmagic:ender_blaze:0>,
		<cyclicmagic:ender_dungeon:0>,
		<cyclicmagic:ender_lightning:0>,
		<cyclicmagic:ender_snow:0>,
		<cyclicmagic:ender_water:0>,
		<cyclicmagic:entity_detector:0>,
		<cyclicmagic:fire_dark_anim:0>,
		<cyclicmagic:fire_dark:0>,
		<cyclicmagic:fire_killer:0>,
		<cyclicmagic:gold_furnace_minecart:0>,
		<cyclicmagic:gold_minecart:0>,
		<cyclicmagic:horse_upgrade_jump:0>,
		<cyclicmagic:horse_upgrade_speed:0>,
		<cyclicmagic:melter:0>,
		<cyclicmagic:password_block:0>,
		<cyclicmagic:placer_block:0>,
		<cyclicmagic:plate_launch_extra:0>,
		<cyclicmagic:solidifier:0>,
		<cyclicmagic:sprinkler:0>,
		<cyclicmagic:stone_minecart:0>,
		<cyclicmagic:tool_auto_torch:0>,
		<cyclicmagic:tool_harvest_crops:0>,
		<cyclicmagic:tool_launcher:0>,
		<cyclicmagic:tool_push:0>,
		<cyclicmagic:tool_swap:0>,
		<cyclicmagic:turret_minecart:0>,
		<cyclicmagic:wand_hypno:0>
	],

	stageFour.stage: [
		// End
		<cyclicmagic:block_library_ctrl:0>,
		<cyclicmagic:block_library:0>,

		// Misc
		<cyclicmagic:block_screen:0>,
		<cyclicmagic:block_storeempty:0>,
		<cyclicmagic:block_user:0>,
		<cyclicmagic:block_vacuum:0>,
		<cyclicmagic:bundled_pipe:0>,
		<cyclicmagic:card_location:0>,
		<cyclicmagic:charm_void:0>,
		<cyclicmagic:corrupted_chorus:0>,
		<cyclicmagic:dropper_exact:0>,
		<cyclicmagic:ender_eye_orb:0>,
		<cyclicmagic:ender_pearl_mounted:0>,
		<cyclicmagic:ender_pearl_reuse:0>,
		<cyclicmagic:energy_pipe:0>,
		<cyclicmagic:energy_pump:0>,
		<cyclicmagic:exp_pylon:0>,
		<cyclicmagic:fan:0>,
		<cyclicmagic:fluid_drain:0>,
		<cyclicmagic:fluid_pipe:0>,
		<cyclicmagic:fluid_placer:0>,
		<cyclicmagic:fluid_pump:0>,
		<cyclicmagic:glowing_helmet:*>,
		<cyclicmagic:item_pipe_sort:0>,
		<cyclicmagic:item_pipe:0>,
		<cyclicmagic:item_pump:0>,
		<cyclicmagic:magnet_block:0>,
		<cyclicmagic:plate_vector:0>,
		<cyclicmagic:screen_target:0>,
		<cyclicmagic:tool_mount_inverse:0>,
		<cyclicmagic:wireless_receiver:0>,
		<cyclicmagic:wireless_transmitter:0>
	],

	stageFive.stage: [
		// Diamond Stuff
		<cyclicmagic:block_anvil:0>,
		<cyclicmagic:charm_speed:0>,
		<cyclicmagic:horse_upgrade_health:0>,
		<cyclicmagic:spikes_diamond:0>,

		// Misc
		<cyclicmagic:apple_emerald:0>,
		<cyclicmagic:auto_crafter:0>,
		<cyclicmagic:beacon_potion:0>,
		<cyclicmagic:block_disenchanter:0>,
		<cyclicmagic:block_enchanter:0>,
		<cyclicmagic:block_forester:0>,
		<cyclicmagic:book_ender:0>,
		<cyclicmagic:builder_pattern:0>,
		<cyclicmagic:charm_boat:0>,
		<cyclicmagic:crafting_food:0>,
		<cyclicmagic:crystal_axe:*>,
		<cyclicmagic:crystal_hoe:*>,
		<cyclicmagic:crystal_pickaxe:*>,
		<cyclicmagic:crystal_spade:*>,
		<cyclicmagic:crystal_sword:*>,
		<cyclicmagic:crystallized_obsidian:0>,
		<cyclicmagic:cyclic_wand_build:0>,
		<cyclicmagic:ender_wool:0>,
		<cyclicmagic:evoker_fang:0>,
		<cyclicmagic:harvester_block:0>,
		<cyclicmagic:heart_food:0>,
		<cyclicmagic:horse_upgrade_type:0>,
		<cyclicmagic:inventory_food:0>,
		<cyclicmagic:magic_net:0>,
		<cyclicmagic:magnet_anti_block:0>,
		<cyclicmagic:password_remote:0>,
		<cyclicmagic:purple_boots:*>,
		<cyclicmagic:purple_chestplate:*>,
		<cyclicmagic:purple_helmet:*>,
		<cyclicmagic:purple_leggings:*>,
		<cyclicmagic:soulstone:0>,
		<cyclicmagic:sword_ender:*>,
		<cyclicmagic:sword_slowness:*>,
		<cyclicmagic:sword_weakness:*>,
		<cyclicmagic:tool_elevate:0>,
		<cyclicmagic:tool_swap_match:0>,
		<cyclicmagic:tool_warp_home:0>,
		<cyclicmagic:tool_warp_spawn:0>,
		<cyclicmagic:wand_missile:0>,
		<cyclicmagic:water_spreader:0>
	]
};

static hiddenRemove as IIngredient[] = [
	<cyclicmagic:block_fishing:0>,
	<cyclicmagic:block_miner:0>,
	<cyclicmagic:block_miner_smart:0>,
	<cyclicmagic:block_workbench:0>,
	<cyclicmagic:charm_air:0>,
	<cyclicmagic:glowing_chorus:0>,
	<cyclicmagic:mattock:0>,
	<cyclicmagic:sack_ender:0>,
	<cyclicmagic:storage_bag:0>,
	<cyclicmagic:tool_prospector:0>,
	<cyclicmagic:tool_randomize:0>,
	<cyclicmagic:tool_trade:0>,
	<cyclicmagic:uncrafting_block:0>
];

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

	recipeUtil.hideItems(hiddenRemove as IIngredient[], true);
}
