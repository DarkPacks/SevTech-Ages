import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageZero;
import scripts.crafttweaker.stages.stageOne;
import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageThree;
import scripts.crafttweaker.stages.stageFour;
import scripts.crafttweaker.stages.stageFive;

static stagedItems as IIngredient[][string] = {
	stageZero.stage: [
		<actuallyadditions:block_black_lotus>,
		<actuallyadditions:block_compost>,
		<actuallyadditions:item_canola_seed>,
		<actuallyadditions:item_coffee_beans>,
		<actuallyadditions:item_coffee_seed>,
		<actuallyadditions:item_fertilizer>,
		<actuallyadditions:item_flax_seed>,
		<actuallyadditions:item_food:16>,
		<actuallyadditions:item_food:17>,
		<actuallyadditions:item_misc:1>,
		<actuallyadditions:item_misc:9>,
		<actuallyadditions:item_misc:12>,
		<actuallyadditions:item_misc:13>,
		<actuallyadditions:item_misc:20>,
		<actuallyadditions:item_misc:21>,
		<actuallyadditions:item_misc:22>,
		<actuallyadditions:item_rice_seed>,
		<actuallyadditions:item_worm>
	],

	stageOne.stage: [
		// Ore
		<actuallyadditions:block_misc:3>,

		// Misc
		<actuallyadditions:block_misc:1>,
		<actuallyadditions:block_misc:2>,
		<actuallyadditions:block_misc>,
		<actuallyadditions:block_tiny_torch>,
		<actuallyadditions:item_axe_quartz>,
		<actuallyadditions:item_boots_quartz>,
		<actuallyadditions:item_chest_quartz>,
		<actuallyadditions:item_dust:6>,
		<actuallyadditions:item_dust:7>,
		<actuallyadditions:item_helm_quartz>,
		<actuallyadditions:item_hoe_quartz>,
		<actuallyadditions:item_misc:5>,
		<actuallyadditions:item_pants_quartz>,
		<actuallyadditions:item_pickaxe_quartz>,
		<actuallyadditions:item_shovel_quartz>,
		<actuallyadditions:item_sword_quartz>,
		<actuallyadditions:quartz_paxel>
	],

	stageTwo.stage: [
		<actuallyadditions:block_smiley_cloud>,
		<actuallyadditions:iron_paxel>,
		<actuallyadditions:item_dust:4>
	],

	stageThree.stage: [
		<actuallyadditions:item_axe_obsidian>,
		<actuallyadditions:item_boots_obsidian>,
		<actuallyadditions:item_chest_obsidian>,
		<actuallyadditions:item_dust:5>,
		<actuallyadditions:item_food:1>,
		<actuallyadditions:item_food:2>,
		<actuallyadditions:item_food:3>,
		<actuallyadditions:item_food:4>,
		<actuallyadditions:item_food:5>,
		<actuallyadditions:item_food:6>,
		<actuallyadditions:item_food:7>,
		<actuallyadditions:item_food:8>,
		<actuallyadditions:item_food:9>,
		<actuallyadditions:item_food:10>,
		<actuallyadditions:item_food:11>,
		<actuallyadditions:item_food:12>,
		<actuallyadditions:item_food:13>,
		<actuallyadditions:item_food:14>,
		<actuallyadditions:item_food:15>,
		<actuallyadditions:item_food:18>,
		<actuallyadditions:item_food:19>,
		<actuallyadditions:item_food:20>,
		<actuallyadditions:item_food>,
		<actuallyadditions:item_helm_obsidian>,
		<actuallyadditions:item_hoe_obsidian>,
		<actuallyadditions:item_knife>,
		<actuallyadditions:item_misc:2>,
		<actuallyadditions:item_misc:3>,
		<actuallyadditions:item_misc>,
		<actuallyadditions:item_pants_obsidian>,
		<actuallyadditions:item_pickaxe_obsidian>,
		<actuallyadditions:item_shovel_obsidian>,
		<actuallyadditions:item_sword_obsidian>,
		<actuallyadditions:obsidian_paxel>
	],

	stageFour.stage: [
		<actuallyadditions:battery_bauble>,
		<actuallyadditions:battery_double_bauble>,
		<actuallyadditions:battery_quadruple_bauble>,
		<actuallyadditions:battery_quintuple_bauble>,
		<actuallyadditions:battery_triple_bauble>,
		<actuallyadditions:block_battery_box>,
		<actuallyadditions:block_bio_reactor>,
		<actuallyadditions:block_breaker>,
		<actuallyadditions:block_canola_press>,
		<actuallyadditions:block_chiseled_quartz_slab>,
		<actuallyadditions:block_chiseled_quartz_stair>,
		<actuallyadditions:block_chiseled_quartz_wall>,
		<actuallyadditions:block_coal_generator>,
		<actuallyadditions:block_coffee_machine>,
		<actuallyadditions:block_directional_breaker>,
		<actuallyadditions:block_farmer>,
		<actuallyadditions:block_feeder>,
		<actuallyadditions:block_fermenting_barrel>,
		<actuallyadditions:block_furnace_double>,
		<actuallyadditions:block_furnace_solar>,
		<actuallyadditions:block_giant_chest_large>,
		<actuallyadditions:block_giant_chest_medium>,
		<actuallyadditions:block_giant_chest>,
		<actuallyadditions:block_greenhouse_glass>,
		<actuallyadditions:block_grinder_double>,
		<actuallyadditions:block_grinder>,
		<actuallyadditions:block_heat_collector>,
		<actuallyadditions:block_item_viewer_hopping>,
		<actuallyadditions:block_misc:4>,
		<actuallyadditions:block_misc:6>,
		<actuallyadditions:block_misc:7>,
		<actuallyadditions:block_misc:8>,
		<actuallyadditions:block_misc:9>,
		<actuallyadditions:block_oil_generator>,
		<actuallyadditions:block_pillar_quartz_slab>,
		<actuallyadditions:block_pillar_quartz_stair>,
		<actuallyadditions:block_pillar_quartz_wall>,
		<actuallyadditions:block_quartz_slab>,
		<actuallyadditions:block_quartz_stair>,
		<actuallyadditions:block_quartz_wall>,
		<actuallyadditions:block_smiley_cloud>,
		<actuallyadditions:item_bag>,
		<actuallyadditions:item_battery_double>,
		<actuallyadditions:item_battery_quadruple>,
		<actuallyadditions:item_battery_quintuple>,
		<actuallyadditions:item_battery_triple>,
		<actuallyadditions:item_battery>,
		<actuallyadditions:item_booklet>,
		<actuallyadditions:item_chest_to_crate_upgrade>,
		<actuallyadditions:item_coffee>,
		<actuallyadditions:item_crate_keeper>,
		<actuallyadditions:item_drill_upgrade_block_placing>,
		<actuallyadditions:item_drill_upgrade_five_by_five>,
		<actuallyadditions:item_drill_upgrade_fortune_ii>,
		<actuallyadditions:item_drill_upgrade_fortune>,
		<actuallyadditions:item_drill_upgrade_silk_touch>,
		<actuallyadditions:item_drill_upgrade_speed_ii>,
		<actuallyadditions:item_drill_upgrade_speed_iii>,
		<actuallyadditions:item_drill_upgrade_speed>,
		<actuallyadditions:item_drill_upgrade_three_by_three>,
		<actuallyadditions:item_drill:*>,
		<actuallyadditions:item_filter>,
		<actuallyadditions:item_growth_ring>,
		<actuallyadditions:item_laser_wrench>,
		<actuallyadditions:item_leaf_blower>,
		<actuallyadditions:item_medium_to_large_crate_upgrade>,
		<actuallyadditions:item_misc:6>,
		<actuallyadditions:item_misc:7>,
		<actuallyadditions:item_misc:8>,
		<actuallyadditions:item_misc:14>,
		<actuallyadditions:item_misc:16>,
		<actuallyadditions:item_resonant_rice>,
		<actuallyadditions:item_small_to_medium_crate_upgrade>,
		<actuallyadditions:item_void_bag>,
		<actuallyadditions:magnet_ring_bauble>
	],

	stageFive.stage: [
		<actuallyadditions:block_atomic_reconstructor>,
		<actuallyadditions:block_colored_lamp:*>,
		<actuallyadditions:block_colored_lamp:1>,
		<actuallyadditions:block_colored_lamp>,
		<actuallyadditions:block_crystal_cluster_coal>,
		<actuallyadditions:block_crystal_cluster_diamond>,
		<actuallyadditions:block_crystal_cluster_emerald>,
		<actuallyadditions:block_crystal_cluster_iron>,
		<actuallyadditions:block_crystal_cluster_lapis>,
		<actuallyadditions:block_crystal_cluster_redstone>,
		<actuallyadditions:block_crystal_empowered:1>,
		<actuallyadditions:block_crystal_empowered:2>,
		<actuallyadditions:block_crystal_empowered:3>,
		<actuallyadditions:block_crystal_empowered:4>,
		<actuallyadditions:block_crystal_empowered:5>,
		<actuallyadditions:block_crystal_empowered>,
		<actuallyadditions:block_crystal:1>,
		<actuallyadditions:block_crystal:2>,
		<actuallyadditions:block_crystal:3>,
		<actuallyadditions:block_crystal:4>,
		<actuallyadditions:block_crystal:5>,
		<actuallyadditions:block_crystal>,
		<actuallyadditions:block_display_stand>,
		<actuallyadditions:block_dropper>,
		<actuallyadditions:block_empowerer>,
		<actuallyadditions:block_energizer>,
		<actuallyadditions:block_enervator>,
		<actuallyadditions:block_firework_box>,
		<actuallyadditions:block_fishing_net>,
		<actuallyadditions:block_fluid_collector>,
		<actuallyadditions:block_fluid_placer>,
		<actuallyadditions:block_item_repairer>,
		<actuallyadditions:block_item_viewer>,
		<actuallyadditions:block_lamp_powerer>,
		<actuallyadditions:block_laser_relay_advanced>,
		<actuallyadditions:block_laser_relay_extreme>,
		<actuallyadditions:block_laser_relay_fluids>,
		<actuallyadditions:block_laser_relay_item_whitelist>,
		<actuallyadditions:block_laser_relay_item>,
		<actuallyadditions:block_laser_relay>,
		<actuallyadditions:block_lava_factory_controller>,
		<actuallyadditions:block_leaf_generator>,
		<actuallyadditions:block_miner>,
		<actuallyadditions:block_phantom_booster>,
		<actuallyadditions:block_phantom_breaker>,
		<actuallyadditions:block_phantom_energyface>,
		<actuallyadditions:block_phantom_liquiface>,
		<actuallyadditions:block_phantom_placer>,
		<actuallyadditions:block_phantom_redstoneface>,
		<actuallyadditions:block_phantomface>,
		<actuallyadditions:block_placer>,
		<actuallyadditions:block_player_interface>,
		<actuallyadditions:block_ranged_collector>,
		<actuallyadditions:block_shock_suppressor>,
		<actuallyadditions:block_testifi_bucks_green_fence>,
		<actuallyadditions:block_testifi_bucks_green_slab>,
		<actuallyadditions:block_testifi_bucks_green_stairs>,
		<actuallyadditions:block_testifi_bucks_green_wall>,
		<actuallyadditions:block_testifi_bucks_white_fence>,
		<actuallyadditions:block_testifi_bucks_white_slab>,
		<actuallyadditions:block_testifi_bucks_white_stairs>,
		<actuallyadditions:block_testifi_bucks_white_wall>,
		<actuallyadditions:block_xp_solidifier>,
		<actuallyadditions:diamond_paxel>,
		<actuallyadditions:emerald_paxel>,
		<actuallyadditions:item_axe_crystal_black>,
		<actuallyadditions:item_axe_crystal_blue>,
		<actuallyadditions:item_axe_crystal_green>,
		<actuallyadditions:item_axe_crystal_light_blue>,
		<actuallyadditions:item_axe_crystal_red>,
		<actuallyadditions:item_axe_crystal_white>,
		<actuallyadditions:item_axe_emerald>,
		<actuallyadditions:item_boots_crystal_black>,
		<actuallyadditions:item_boots_crystal_blue>,
		<actuallyadditions:item_boots_crystal_green>,
		<actuallyadditions:item_boots_crystal_light_blue>,
		<actuallyadditions:item_boots_crystal_red>,
		<actuallyadditions:item_boots_crystal_white>,
		<actuallyadditions:item_boots_emerald>,
		<actuallyadditions:item_chest_crystal_black>,
		<actuallyadditions:item_chest_crystal_blue>,
		<actuallyadditions:item_chest_crystal_green>,
		<actuallyadditions:item_chest_crystal_light_blue>,
		<actuallyadditions:item_chest_crystal_red>,
		<actuallyadditions:item_chest_crystal_white>,
		<actuallyadditions:item_chest_emerald>,
		<actuallyadditions:item_crystal_empowered:1>,
		<actuallyadditions:item_crystal_empowered:2>,
		<actuallyadditions:item_crystal_empowered:3>,
		<actuallyadditions:item_crystal_empowered:4>,
		<actuallyadditions:item_crystal_empowered:5>,
		<actuallyadditions:item_crystal_empowered>,
		<actuallyadditions:item_crystal_shard:1>,
		<actuallyadditions:item_crystal_shard:2>,
		<actuallyadditions:item_crystal_shard:3>,
		<actuallyadditions:item_crystal_shard:4>,
		<actuallyadditions:item_crystal_shard:5>,
		<actuallyadditions:item_crystal_shard>,
		<actuallyadditions:item_crystal:1>,
		<actuallyadditions:item_crystal:2>,
		<actuallyadditions:item_crystal:3>,
		<actuallyadditions:item_crystal:4>,
		<actuallyadditions:item_crystal:5>,
		<actuallyadditions:item_crystal>,
		<actuallyadditions:item_damage_lens>,
		<actuallyadditions:item_disenchanting_lens>,
		<actuallyadditions:item_dust:2>,
		<actuallyadditions:item_dust:3>,
		<actuallyadditions:item_engineer_goggles_advanced>,
		<actuallyadditions:item_engineer_goggles>,
		<actuallyadditions:item_explosion_lens>,
		<actuallyadditions:item_filling_wand>,
		<actuallyadditions:item_helm_crystal_black>,
		<actuallyadditions:item_helm_crystal_blue>,
		<actuallyadditions:item_helm_crystal_green>,
		<actuallyadditions:item_helm_crystal_light_blue>,
		<actuallyadditions:item_helm_crystal_red>,
		<actuallyadditions:item_helm_crystal_white>,
		<actuallyadditions:item_helm_emerald>,
		<actuallyadditions:item_hoe_crystal_black>,
		<actuallyadditions:item_hoe_crystal_blue>,
		<actuallyadditions:item_hoe_crystal_green>,
		<actuallyadditions:item_hoe_crystal_light_blue>,
		<actuallyadditions:item_hoe_crystal_red>,
		<actuallyadditions:item_hoe_crystal_white>,
		<actuallyadditions:item_hoe_emerald>,
		<actuallyadditions:item_laser_upgrade_invisibility>,
		<actuallyadditions:item_laser_upgrade_range>,
		<actuallyadditions:item_leaf_blower_advanced>,
		<actuallyadditions:item_mining_lens>,
		<actuallyadditions:item_misc:18>,
		<actuallyadditions:item_misc:19>,
		<actuallyadditions:item_misc:23>,
		<actuallyadditions:item_misc:24>,
		<actuallyadditions:item_more_damage_lens>,
		<actuallyadditions:item_pants_crystal_black>,
		<actuallyadditions:item_pants_crystal_blue>,
		<actuallyadditions:item_pants_crystal_green>,
		<actuallyadditions:item_pants_crystal_light_blue>,
		<actuallyadditions:item_pants_crystal_red>,
		<actuallyadditions:item_pants_crystal_white>,
		<actuallyadditions:item_pants_emerald>,
		<actuallyadditions:item_paxel_crystal_black>,
		<actuallyadditions:item_paxel_crystal_blue>,
		<actuallyadditions:item_paxel_crystal_green>,
		<actuallyadditions:item_paxel_crystal_light_blue>,
		<actuallyadditions:item_paxel_crystal_red>,
		<actuallyadditions:item_paxel_crystal_white>,
		<actuallyadditions:item_phantom_connector>,
		<actuallyadditions:item_pickaxe_crystal_black>,
		<actuallyadditions:item_pickaxe_crystal_blue>,
		<actuallyadditions:item_pickaxe_crystal_green>,
		<actuallyadditions:item_pickaxe_crystal_light_blue>,
		<actuallyadditions:item_pickaxe_crystal_red>,
		<actuallyadditions:item_pickaxe_crystal_white>,
		<actuallyadditions:item_pickaxe_emerald>,
		<actuallyadditions:item_player_probe>,
		<actuallyadditions:item_potion_ring_advanced:*>,
		<actuallyadditions:item_potion_ring:*>,
		<actuallyadditions:item_shovel_crystal_black>,
		<actuallyadditions:item_shovel_crystal_blue>,
		<actuallyadditions:item_shovel_crystal_green>,
		<actuallyadditions:item_shovel_crystal_light_blue>,
		<actuallyadditions:item_shovel_crystal_red>,
		<actuallyadditions:item_shovel_crystal_white>,
		<actuallyadditions:item_shovel_emerald>,
		<actuallyadditions:item_spawner_changer>,
		<actuallyadditions:item_suction_ring>,
		<actuallyadditions:item_sword_crystal_black>,
		<actuallyadditions:item_sword_crystal_blue>,
		<actuallyadditions:item_sword_crystal_green>,
		<actuallyadditions:item_sword_crystal_light_blue>,
		<actuallyadditions:item_sword_crystal_red>,
		<actuallyadditions:item_sword_crystal_white>,
		<actuallyadditions:item_sword_emerald>,
		<actuallyadditions:item_tele_staff>,
		<actuallyadditions:item_water_removal_ring>,
		<actuallyadditions:item_wings_of_the_bats>,
		<actuallyadditions:magnet_ring_bauble>,
		<actuallyadditions:potion_ring_advanced_bauble:*>
	]
};

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.actuallyadditions.stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
}
