import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageTutorial;
import scripts.crafttweaker.stages.stageZero;
import scripts.crafttweaker.stages.stageOne;
import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageThree;
import scripts.crafttweaker.stages.stageFour;
import scripts.crafttweaker.stages.stageFive;

static stagedItems as IIngredient[][string] = {
	stageTutorial.stage: [
		<primal:bone_knapp>,
		<primal:bone_point>,
		<primal:fish_clown_cooked>,
		<primal:fish_puffer_cooked>,
		<primal:flint_hatchet>,
		<primal:flint_knapp>,
		<primal:flint_pickaxe>,
		<primal:flint_workblade>,
		<primal:plant_cordage>,
		<primal:plant_fiber>,
		<primal:potato_boiled>,
		<primal:sharp_bone>
	],

	stageZero.stage: [
		<primal:aconite_petal>,
		<primal:aconite_sprig>,
		<primal:aconite>,
		<primal:animal_fur>,
		<primal:armor_wolf_body>,
		<primal:armor_wolf_feet>,
		<primal:armor_wolf_head>,
		<primal:armor_wolf_legs>,
		<primal:ash_common>,
		<primal:ash_ironwood>,
		<primal:ash_yew>,
		<primal:bark_acacia>,
		<primal:bark_bigoak>,
		<primal:bark_birch>,
		<primal:bark_ironwood>,
		<primal:bark_jungle>,
		<primal:bark_oak>,
		<primal:bark_spruce>,
		<primal:bark_yew>,
		<primal:barrel_acacia_lid>,
		<primal:barrel_birch_lid>,
		<primal:barrel_corypha_lid>,
		<primal:barrel_dark_oak_lid>,
		<primal:barrel_ironwood_lid>,
		<primal:barrel_jungle_lid>,
		<primal:barrel_lacquer_lid>,
		<primal:barrel_oak_lid>,
		<primal:barrel_spruce_lid>,
		<primal:barrel_yew_lid>,
		<primal:barrel:1>,
		<primal:barrel:2>,
		<primal:barrel:3>,
		<primal:barrel:4>,
		<primal:barrel:5>,
		<primal:barrel:6>,
		<primal:barrel:7>,
		<primal:barrel:8>,
		<primal:barrel:9>,
		<primal:barrel>,
		<primal:bat_meat_cooked>,
		<primal:bat_meat_dried>,
		<primal:bat_meat_raw>,
		<primal:bat_meat_rotten>,
		<primal:bear_fat>,
		<primal:bear_meat_cooked>,
		<primal:bear_meat_dried>,
		<primal:bear_meat_raw>,
		<primal:blue_stone:1>,
		<primal:blue_stone:2>,
		<primal:blue_stone:3>,
		<primal:blue_stone:4>,
		<primal:blue_stone:5>,
		<primal:blue_stone:6>,
		<primal:blue_stone>,
		<primal:carbonate_stone:1>,
		<primal:carbonate_stone:2>,
		<primal:carbonate_stone:3>,
		<primal:carbonate_stone:4>,
		<primal:carbonate_stone:5>,
		<primal:carbonate_stone:6>,
		<primal:cheese_white>,
		<primal:chum>,
		<primal:ciniscotta_block>,
		<primal:common_stone:1>,
		<primal:common_stone:2>,
		<primal:common_stone:3>,
		<primal:common_stone:4>,
		<primal:common_stone:5>,
		<primal:common_stone:6>,
		<primal:common_stone>,
		<primal:corn_bread>,
		<primal:corn_cob_cooked>,
		<primal:corn_cob>,
		<primal:corn_ground>,
		<primal:corn_seeds>,
		<primal:corn_stalk_dry>,
		<primal:corn_stalk_wet>,
		<primal:corn_stalk>,
		<primal:daucus_murn_fronds>,
		<primal:daucus_murn_root_cooked>,
		<primal:daucus_murn_root>,
		<primal:earthwax_clump>,
		<primal:ferro_stone:1>,
		<primal:ferro_stone:2>,
		<primal:ferro_stone:3>,
		<primal:ferro_stone:4>,
		<primal:ferro_stone:5>,
		<primal:ferro_stone:6>,
		<primal:ferro_stone>,
		<primal:fish_clown_dried>,
		<primal:fish_cod_dried>,
		<primal:fish_puffer_dried>,
		<primal:fish_salmon_dried>,
		<primal:fish_trap:1>.withTag({type: "spruce"}),
		<primal:fish_trap:2>.withTag({type: "birch"}),
		<primal:fish_trap:3>.withTag({type: "jungle"}),
		<primal:fish_trap:4>.withTag({type: "acacia"}),
		<primal:fish_trap:5>.withTag({type: "dark_oak"}),
		<primal:fish_trap:6>.withTag({type: "ironwood"}),
		<primal:fish_trap:7>.withTag({type: "yew"}),
		<primal:fish_trap:8>.withTag({type: "lacquer"}),
		<primal:fish_trap:9>.withTag({type: "corypha"}),
		<primal:fish_trap>.withTag({type: "oak"}),
		<primal:flint_axe>,
		<primal:flint_point>,
		<primal:flint_saw>,
		<primal:flint_shears>,
		<primal:flint_shovel>,
		<primal:gator_meat_cooked>,
		<primal:gator_meat_raw>,
		<primal:hide_dried>,
		<primal:hide_raw>,
		<primal:hide_salted>,
		<primal:hide_tanned>,
		<primal:horse_meat_cooked>,
		<primal:horse_meat_dried>,
		<primal:horse_meat_raw>,
		<primal:ladder_block_andesite>,
		<primal:ladder_block_cobblestone_mossy>,
		<primal:ladder_block_cobblestone>,
		<primal:ladder_block_diorite>,
		<primal:ladder_block_granite>,
		<primal:ladder_block_smoothandesite>,
		<primal:ladder_block_smoothdiorite>,
		<primal:ladder_block_smoothgranite>,
		<primal:ladder_block_smoothstone>,
		<primal:lard>,
		<primal:leather_boiled>,
		<primal:leather_cordage>,
		<primal:leather_strip>,
		<primal:leaves:1>,
		<primal:leaves>,
		<primal:llama_meat_charqui>,
		<primal:llama_meat_cooked>,
		<primal:llama_meat_raw>,
		<primal:loam_block>,
		<primal:logs_stripped:1>,
		<primal:logs_stripped:2>,
		<primal:logs_stripped:3>,
		<primal:logs_stripped:4>,
		<primal:logs_stripped:5>,
		<primal:logs_stripped:6>,
		<primal:logs_stripped:7>,
		<primal:logs_stripped>,
		<primal:logs:1>,
		<primal:logs>,
		<primal:muck>,
		<primal:mud_clump>,
		<primal:mud_dried:1>,
		<primal:mud_dried:2>,
		<primal:mud_dried:3>,
		<primal:mud_dried:4>,
		<primal:mud_dried:5>,
		<primal:mud_dried:6>,
		<primal:mud_dried:7>,
		<primal:mud_dried>,
		<primal:mud_wet>,
		<primal:night_stone:1>,
		<primal:night_stone:2>,
		<primal:night_stone:3>,
		<primal:night_stone:4>,
		<primal:night_stone:5>,
		<primal:night_stone:6>,
		<primal:night_stone>,
		<primal:ore_salt>,
		<primal:ortho_stone:1>,
		<primal:ortho_stone:2>,
		<primal:ortho_stone:3>,
		<primal:ortho_stone:4>,
		<primal:ortho_stone:5>,
		<primal:ortho_stone:6>,
		<primal:ortho_stone>,
		<primal:pelt_animal_large>,
		<primal:pelt_animal>,
		<primal:pelt_bear_black>,
		<primal:pelt_bear_brown>,
		<primal:pelt_bear_polar>,
		<primal:pelt_cow>,
		<primal:pelt_dog>,
		<primal:pelt_donkey>,
		<primal:pelt_gator>,
		<primal:pelt_horse>,
		<primal:pelt_llama>,
		<primal:pelt_mooshroom>,
		<primal:pelt_mule>,
		<primal:pelt_ovis>,
		<primal:pelt_pig>,
		<primal:pelt_shark>,
		<primal:pelt_sheep>,
		<primal:pelt_wolf>,
		<primal:pigman_hide_dried>,
		<primal:pigman_hide_raw>,
		<primal:pigman_hide_spoiled>,
		<primal:pigman_hide_tanned>,
		<primal:pigman_leather>,
		<primal:planks:1>,
		<primal:planks>,
		<primal:plant_cloth>,
		<primal:plant_papyrus>,
		<primal:potato_rotten>,
		<primal:pumpkin_piece>,
		<primal:rush_seeds>,
		<primal:rush_stems>,
		<primal:rush_tips_bloom>,
		<primal:rush_tips>,
		<primal:rush>,
		<primal:salo>,
		<primal:salt_dust_netjry>,
		<primal:salt_dust_rock>,
		<primal:salt_dust_void>,
		<primal:salt_netjry_block>,
		<primal:sapling:1>,
		<primal:sapling>,
		<primal:sarsen_stone:1>,
		<primal:sarsen_stone:2>,
		<primal:sarsen_stone:3>,
		<primal:sarsen_stone:4>,
		<primal:sarsen_stone:5>,
		<primal:sarsen_stone:6>,
		<primal:sarsen_stone>,
		<primal:schist_blue_stone:1>,
		<primal:schist_blue_stone:2>,
		<primal:schist_blue_stone:3>,
		<primal:schist_blue_stone:4>,
		<primal:schist_blue_stone:5>,
		<primal:schist_blue_stone:6>,
		<primal:schist_blue_stone>,
		<primal:schist_green_stone:1>,
		<primal:schist_green_stone:2>,
		<primal:schist_green_stone:3>,
		<primal:schist_green_stone:4>,
		<primal:schist_green_stone:5>,
		<primal:schist_green_stone:6>,
		<primal:schist_green_stone>,
		<primal:shark_fin>,
		<primal:shark_meat_cooked>,
		<primal:shark_meat_dried>,
		<primal:shark_meat_raw>,
		<primal:shark_tooth>,
		<primal:slab_ironwood>,
		<primal:slab_lacquer>,
		<primal:slab_mud>,
		<primal:slab_yew>,
		<primal:slat_acacia>,
		<primal:slat_bigoak>,
		<primal:slat_birch>,
		<primal:slat_corypha>,
		<primal:slat_iron>,
		<primal:slat_ironwood>,
		<primal:slat_jungle>,
		<primal:slat_lacquer>,
		<primal:slat_oak>,
		<primal:slat_spruce>,
		<primal:slat_yew>,
		<primal:stairs_dirt>,
		<primal:strangle_weed>,
		<primal:suet>,
		<primal:tall_grass_growing>,
		<primal:tannin_ground>,
		<primal:terraclay_block>,
		<primal:terraclay_clump>,
		<primal:terracotta_block:1>,
		<primal:terracotta_block:2>,
		<primal:terracotta_block:3>,
		<primal:terracotta_block:4>,
		<primal:terracotta_block:5>,
		<primal:terracotta_block:6>,
		<primal:terracotta_block:7>,
		<primal:terracotta_block>,
		<primal:terracotta_brick>,
		<primal:thatch_nether>,
		<primal:thatch_wet>,
		<primal:thatch>,
		<primal:thatching_dry>,
		<primal:thatching_wet>,
		<primal:thin_slab_acacia>,
		<primal:thin_slab_bigoak>,
		<primal:thin_slab_birch>,
		<primal:thin_slab_ironwood>,
		<primal:thin_slab_jungle>,
		<primal:thin_slab_lacquer>,
		<primal:thin_slab_oak>,
		<primal:thin_slab_spruce>,
		<primal:thin_slab_thatch>,
		<primal:thin_slab_yew>,
		<primal:wall:1>,
		<primal:wall:2>,
		<primal:wall:3>,
		<primal:wall:4>,
		<primal:wall:5>,
		<primal:wall:6>,
		<primal:wall:8>,
		<primal:wall:9>,
		<primal:wall:10>,
		<primal:wall:14>,
		<primal:wall>,
		<primal:wax_residue>,
		<primal:wheat_ground>,
		<primal:wolf_head_item>,
		<primal:wolf_meat_cooked>,
		<primal:wolf_meat_dried>,
		<primal:wolf_meat_raw>,
		<primal:yew_aril_seedless>,
		<primal:yew_aril>,
		<primal:yew_seed>,
		<primal:yew_stick>
	],

	stageOne.stage: [
		// Stairs
		<primal:stairs_ironwood>,
		<primal:stairs_mud>,
		<primal:stairs_path>,

		// Fences and Doors
		<primal:fence:1>,
		<primal:fence:2>,
		<primal:fence:3>,
		<primal:fence>,
		<primal:gate_yew>,

		// Misc
		<primal:drain_carbonate_flag>,
		<primal:drain_ferro_flag>,
		<primal:drain_mud>,
		<primal:drain_schist_green>,
		<primal:drain_scoria>,
		<primal:drain_stonebrick>,
		<primal:drain_thatch>,
		<primal:flint_hoe>,
		<primal:grate_acacia>,
		<primal:grate_bigoak>,
		<primal:grate_birch>,
		<primal:grate_ironwood>,
		<primal:grate_jungle>,
		<primal:grate_lacquer>,
		<primal:grate_oak>,
		<primal:grate_spruce>,
		<primal:grate_thatch>,
		<primal:storage_crate:1>,
		<primal:storage_crate:2>,
		<primal:storage_crate:3>,
		<primal:storage_crate:4>,
		<primal:storage_crate:5>,
		<primal:storage_crate:6>,
		<primal:storage_crate:7>,
		<primal:storage_crate:8>,
		<primal:storage_crate:9>,
		<primal:storage_crate>
	],

	stageTwo.stage: [
		<primal:blue_stone:7>,
		<primal:carbonate_stone:7>,
		<primal:ciniscotta_block:7>,
		<primal:common_stone:7>,
		<primal:desiccated_stone:7>,
		<primal:ferro_stone:7>,
		<primal:iron_workblade>,
		<primal:ladder_block_stonebrick_cracked>,
		<primal:ladder_block_stonebrick_mossy>,
		<primal:ladder_block_stonebrick>,
		<primal:night_stone:7>,
		<primal:ortho_stone:7>,
		<primal:plant_fiber_pulp>,
		<primal:purpurite_stone:7>,
		<primal:sarsen_stone:7>,
		<primal:schist_blue_stone:7>,
		<primal:schist_green_stone:7>,
		<primal:scoria_stone:7>,
		<primal:soul_stone:7>,
		<primal:yew_bow>
	],

	stageThree.stage: [
		// Nether
		<primal:aconite_root>,
		<primal:armor_ovis_body>,
		<primal:armor_ovis_feet>,
		<primal:armor_ovis_head>,
		<primal:armor_ovis_legs>,
		<primal:arrow_quartz>,
		<primal:arrow_torch_nether>,
		<primal:corypha_pin>,
		<primal:corypha_seed>,
		<primal:corypha_stick>,
		<primal:daucus_murn_fronds_withered>,
		<primal:daucus_murn_seeds>,
		<primal:drain_nether_earth>,
		<primal:drain_netherstone>,
		<primal:dry_grass_root>,
		<primal:dry_grass_seed>,
		<primal:lantern_nether>,
		<primal:muck_molten>,
		<primal:nether_bush>,
		<primal:nether_cloth>,
		<primal:nether_cordage>,
		<primal:nether_earth:1>,
		<primal:nether_earth:2>,
		<primal:nether_earth:3>,
		<primal:nether_earth:4>,
		<primal:nether_earth:5>,
		<primal:nether_earth:6>,
		<primal:nether_earth:7>,
		<primal:nether_earth>,
		<primal:nether_farmland>,
		<primal:nether_fiber_pulp>,
		<primal:nether_fiber>,
		<primal:nether_gallagher>,
		<primal:nether_growth>,
		<primal:nether_papyrus>,
		<primal:nether_path>,
		<primal:nether_root>,
		<primal:nether_seed>,
		<primal:nether_stone:1>,
		<primal:nether_stone:2>,
		<primal:nether_stone:3>,
		<primal:nether_stone:4>,
		<primal:nether_stone:5>,
		<primal:nether_stone:6>,
		<primal:nether_stone:7>,
		<primal:nether_stone>,
		<primal:nether_tinder>,
		<primal:nether_vine>,
		<primal:nether_wart_cooked>,
		<primal:ovis_meat_cooked>,
		<primal:pigman_meat_cooked>,
		<primal:quartz_axe>,
		<primal:quartz_clippers>,
		<primal:quartz_gallagher>,
		<primal:quartz_hatchet>,
		<primal:quartz_hoe>,
		<primal:quartz_knapp>,
		<primal:quartz_pickaxe>,
		<primal:quartz_point>,
		<primal:quartz_saw>,
		<primal:quartz_shears>,
		<primal:quartz_shovel>,
		<primal:salt_dust_fire>,
		<primal:scoria_stone:1>,
		<primal:scoria_stone:2>,
		<primal:scoria_stone:3>,
		<primal:scoria_stone:4>,
		<primal:scoria_stone:5>,
		<primal:scoria_stone:6>,
		<primal:scoria_stone>,
		<primal:sinuous_cordage>,
		<primal:sinuous_fiber>,
		<primal:sinuous_spores>,
		<primal:slab_netherearth>,
		<primal:slab_netherrack>,
		<primal:slab_netherstone>,
		<primal:soul_stone:1>,
		<primal:soul_stone:2>,
		<primal:soul_stone:3>,
		<primal:soul_stone:4>,
		<primal:soul_stone:5>,
		<primal:soul_stone:6>,
		<primal:stairs_nether_earth>,
		<primal:stairs_nether_path>,
		<primal:stairs_netherrack>,
		<primal:thatching_nether>,
		<primal:valus_fiber>,
		<primal:valus_melon>, // As generation is turned on already we should let people eat the melon. But the bread recipe has been removed.
		<primal:valus_seed>,
		<primal:valus_sepals>,
		<primal:valus_stalk_fresh>,
		<primal:void_grass_root>,
		<primal:wall:11>,

		// Misc
		<primal:boat_corypha>,
		<primal:cheese_red>,
		<primal:cineris_bloom>,
		<primal:cineris_grass>,
		<primal:corypha_stalk:1>,
		<primal:corypha_stalk>,
		<primal:daucus_murn>,
		<primal:desiccated_stone:1>,
		<primal:desiccated_stone:2>,
		<primal:desiccated_stone:3>,
		<primal:desiccated_stone:4>,
		<primal:desiccated_stone:5>,
		<primal:desiccated_stone:6>,
		<primal:desiccated_stone>,
		<primal:devils_tongue_sepals>,
		<primal:devils_tongue_tendril>,
		<primal:devils_tongue>,
		<primal:dry_grass>,
		<primal:dust_bin:9>.withTag({type: "corypha"}),	<primal:bark_corypha>,
		<primal:ferro_slack>,
		<primal:fish_lava_crawdad_dried>,
		<primal:fish_lava_crawdad_raw>,
		<primal:fish_lava_worm_dried>,
		<primal:fish_lava_worm_raw>,
		<primal:fishing_rod_corypha>,
		<primal:grate_corypha>,
		<primal:ignis_fatuus>,
		<primal:ladder_block_netherbrick>,
		<primal:ladder_block_netherrack>,
		<primal:ladder_block_netherstone>,
		<primal:metalblock:3>,
		<primal:mushroom_cooked>,
		<primal:obsidian_knapp>,
		<primal:obsidian_lens>,
		<primal:obsidian_point>,
		<primal:obsidian_shard>,
		<primal:old_mans_beard>,
		<primal:ore_opal>,
		<primal:ore_salt:1>,
		<primal:ovis_meat_dried>,
		<primal:ovis_meat_raw>,
		<primal:pigman_meat_dried>,
		<primal:pigman_meat_raw>,
		<primal:planks:3>,
		<primal:sapling:2>,
		<primal:searing_ember>,
		<primal:searing_sprig>,
		<primal:sinuous_resin>,
		<primal:sinuous_weed>,
		<primal:slab_corypha>,
		<primal:soulglass>,
		<primal:stairs_corypha>,
		<primal:tamahagane_plate>,
		<primal:thin_slab_corypha>,
		<primal:valus_omniferum>,
		<primal:valus_stalk_withered>,
		<primal:void_grass>,
		<primal:void_seed>
	],

	stageFour.stage: [
		// End
		<primal:eroded_end_stone:1>,
		<primal:eroded_end_stone:2>,
		<primal:eroded_end_stone:3>,
		<primal:eroded_end_stone:4>,
		<primal:eroded_end_stone:5>,
		<primal:eroded_end_stone:6>,
		<primal:eroded_end_stone:7>,
		<primal:eroded_end_stone>,
		<primal:purpurite_stone:1>,
		<primal:purpurite_stone:2>,
		<primal:purpurite_stone:3>,
		<primal:purpurite_stone:4>,
		<primal:purpurite_stone:5>,
		<primal:purpurite_stone:6>,
		<primal:purpurite_stone:7>,
		<primal:purpurite_stone>,
		<primal:wall:7>,
		<primal:wall:12>,

		// Misc
		<primal:ladder_block_endbrick>,
		<primal:ladder_block_endstone>,
		<primal:void_cordage>,
		<primal:void_fiber>,
		<primal:void_seed>
	],

	stageFive.stage: [
		<primal:diamond_knapp>,
		<primal:diamond_point>,
		<primal:diamond_saw>,
		<primal:diamond_workblade>,
		<primal:emerald_knapp>,
		<primal:emerald_point>,
		<primal:emerald_saw>,
		<primal:emerald_workblade>
	]
};

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.mods.primal.stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
}