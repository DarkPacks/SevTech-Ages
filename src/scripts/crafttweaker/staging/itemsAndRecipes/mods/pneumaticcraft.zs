import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageFour;
import scripts.crafttweaker.stages.stageCreative;
import scripts.crafttweaker.stages.stageDisabled;
import scripts.crafttweaker.stages.stageCreativeUnused;

static stagedItems as IIngredient[][string] = {
	stageTwo.stage: [
		<pneumaticcraft:liquid_hopper:0>
	],

	stageFour.stage: [
		<pneumaticcraft:advanced_air_compressor:0>,
		<pneumaticcraft:advanced_liquid_compressor:0>,
		<pneumaticcraft:advanced_pcb:0>,
		<pneumaticcraft:advanced_pressure_tube:0>,
		<pneumaticcraft:aerial_interface:0>,
		<pneumaticcraft:air_canister:0>.withTag({air: 0}),
		<pneumaticcraft:air_canister:*>,
		<pneumaticcraft:air_cannon:0>,
		<pneumaticcraft:air_compressor:0>,
		<pneumaticcraft:air_grate_module:0>,
		<pneumaticcraft:amadron_tablet:*>,
		<pneumaticcraft:aphorism_tile:0>,
		<pneumaticcraft:armor_upgrade:0>,
		<pneumaticcraft:assembly_controller:0>,
		<pneumaticcraft:assembly_drill:0>,
		<pneumaticcraft:assembly_io_unit:0>,
		<pneumaticcraft:assembly_laser:0>,
		<pneumaticcraft:assembly_platform:0>,
		<pneumaticcraft:assembly_program:1>,
		<pneumaticcraft:assembly_program:2>,
		<pneumaticcraft:assembly_program:0>,
		<pneumaticcraft:block_tracker_upgrade:0>,
		<pneumaticcraft:camo_applicator:*>,
		<pneumaticcraft:cannon_barrel:0>,
		<pneumaticcraft:capacitor:0>,
		<pneumaticcraft:charging_module:0>,
		<pneumaticcraft:charging_station:0>,
		<pneumaticcraft:charging_upgrade:0>,
		<pneumaticcraft:coordinate_tracker_upgrade:0>,
		<pneumaticcraft:crop_support:0>,
		<pneumaticcraft:dispenser_upgrade:0>,
		<pneumaticcraft:drone:0>,
		<pneumaticcraft:electrostatic_compressor:0>,
		<pneumaticcraft:elevator_base:0>,
		<pneumaticcraft:elevator_caller:0>,
		<pneumaticcraft:elevator_frame:0>,
		<pneumaticcraft:empty_pcb:100>,
		<pneumaticcraft:empty_pcb:0>,
		<pneumaticcraft:entity_tracker_upgrade:0>,
		<pneumaticcraft:failed_pcb:0>,
		<pneumaticcraft:flow_detector_module:0>,
		<pneumaticcraft:flux_compressor:0>,
		<pneumaticcraft:gas_lift:0>,
		<pneumaticcraft:gps_area_tool:0>,
		<pneumaticcraft:gps_tool:0>,
		<pneumaticcraft:gun_ammo:0>,
		<pneumaticcraft:gun_ammo_incendiary:0>,
		<pneumaticcraft:gun_ammo_weighted:0>,
		<pneumaticcraft:gun_ammo_ap:0>,
		<pneumaticcraft:gun_ammo_explosive:0>,
		<pneumaticcraft:gun_ammo_freezing:0>,
		<pneumaticcraft:harvesting_drone:0>,
		<pneumaticcraft:heat_frame:0>,
		<pneumaticcraft:heat_sink:0>,
		<pneumaticcraft:item_life_upgrade:0>,
		<pneumaticcraft:kerosene_lamp:0>,
		<pneumaticcraft:liquid_compressor:0>,
		<pneumaticcraft:logistic_drone:0>,
		<pneumaticcraft:logistic_frame_active_provider:0>,
		<pneumaticcraft:logistic_frame_default_storage:0>,
		<pneumaticcraft:logistic_frame_passive_provider:0>,
		<pneumaticcraft:logistic_frame_requester:0>,
		<pneumaticcraft:logistic_frame_storage:0>,
		<pneumaticcraft:logistics_configurator:*>,
		<pneumaticcraft:logistics_module:0>,
		<pneumaticcraft:magnet_upgrade:0>,
		<pneumaticcraft:manometer:*>,
		<pneumaticcraft:micromissiles:0>,
		<pneumaticcraft:minigun:0>,
		<pneumaticcraft:network_component:1>,
		<pneumaticcraft:network_component:2>,
		<pneumaticcraft:network_component:3>,
		<pneumaticcraft:network_component:4>,
		<pneumaticcraft:network_component:5>,
		<pneumaticcraft:network_component:0>,
		<pneumaticcraft:night_vision_upgrade:0>,
		<pneumaticcraft:nuke_virus:0>,
		<pneumaticcraft:omnidirectional_hopper:0>,
		<pneumaticcraft:pcb_blueprint:0>,
		<pneumaticcraft:plastic:10>,
		<pneumaticcraft:plastic:11>,
		<pneumaticcraft:plastic:12>,
		<pneumaticcraft:plastic:13>,
		<pneumaticcraft:plastic:14>,
		<pneumaticcraft:plastic:15>,
		<pneumaticcraft:plastic:1>,
		<pneumaticcraft:plastic:2>,
		<pneumaticcraft:plastic:3>,
		<pneumaticcraft:plastic:4>,
		<pneumaticcraft:plastic:5>,
		<pneumaticcraft:plastic:6>,
		<pneumaticcraft:plastic:7>,
		<pneumaticcraft:plastic:8>,
		<pneumaticcraft:plastic:9>,
		<pneumaticcraft:plastic:0>,
		<pneumaticcraft:plastic_mixer:0>,
		<pneumaticcraft:pneumatic_boots:*>,
		<pneumaticcraft:pneumatic_chestplate:*>,
		<pneumaticcraft:pneumatic_cylinder:0>,
		<pneumaticcraft:pneumatic_door:0>,
		<pneumaticcraft:pneumatic_door_base:0>,
		<pneumaticcraft:pneumatic_dynamo:0>,
		<pneumaticcraft:pneumatic_helmet:*>,
		<pneumaticcraft:pneumatic_leggings:*>,
		<pneumaticcraft:pneumatic_wrench:*>,
		<pneumaticcraft:pressure_chamber_glass:0>,
		<pneumaticcraft:pressure_chamber_interface:0>,
		<pneumaticcraft:pressure_chamber_valve:0>,
		<pneumaticcraft:pressure_chamber_wall:0>,
		<pneumaticcraft:pressure_gauge:0>,
		<pneumaticcraft:pressure_gauge_module:0>,
		<pneumaticcraft:pressure_tube:0>,
		<pneumaticcraft:printed_circuit_board:0>,
		<pneumaticcraft:programmable_controller:0>,
		<pneumaticcraft:programmer:0>,
		<pneumaticcraft:programming_puzzle:10>,
		<pneumaticcraft:programming_puzzle:11>,
		<pneumaticcraft:programming_puzzle:12>,
		<pneumaticcraft:programming_puzzle:14>,
		<pneumaticcraft:programming_puzzle:15>,
		<pneumaticcraft:programming_puzzle:1>,
		<pneumaticcraft:programming_puzzle:2>,
		<pneumaticcraft:programming_puzzle:3>,
		<pneumaticcraft:programming_puzzle:4>,
		<pneumaticcraft:programming_puzzle:5>,
		<pneumaticcraft:programming_puzzle:6>,
		<pneumaticcraft:programming_puzzle:8>,
		<pneumaticcraft:programming_puzzle:9>,
		<pneumaticcraft:range_upgrade:0>,
		<pneumaticcraft:redstone_module>,
		<pneumaticcraft:regulator_tube_module:0>,
		<pneumaticcraft:reinforced_air_canister:0>.withTag({air: 0}),
		<pneumaticcraft:reinforced_air_canister:*>,
		<pneumaticcraft:remote:0>,
		<pneumaticcraft:safety_tube_module:0>,
		<pneumaticcraft:scuba_upgrade:0>,
		<pneumaticcraft:search_upgrade:0>,
		<pneumaticcraft:security_station:0>,
		<pneumaticcraft:security_upgrade:0>,
		<pneumaticcraft:seismic_sensor:0>,
		<pneumaticcraft:sentry_turret:0>,
		<pneumaticcraft:spawner_agitator:0>,
		<pneumaticcraft:speed_upgrade:0>,
		<pneumaticcraft:stone_base:0>,
		<pneumaticcraft:stop_worm:0>,
		<pneumaticcraft:thermal_compressor>,
		<pneumaticcraft:transfer_gadget:0>,
		<pneumaticcraft:transistor:0>,
		<pneumaticcraft:turbine_blade:0>,
		<pneumaticcraft:turbine_rotor:0>,
		<pneumaticcraft:unassembled_pcb:0>,
		<pneumaticcraft:universal_sensor:0>,
		<pneumaticcraft:uv_light_box:0>,
		<pneumaticcraft:vacuum_pump:0>,
		<pneumaticcraft:volume_upgrade:0>,
		<pneumaticcraft:vortex_cannon:*>,
		<pneumaticcraft:vortex_tube:0>

	],

	stageCreative.stage: [
		<pneumaticcraft:creative_compressor:0>
	],

	stageCreativeUnused.stage: [
		<pneumaticcraft:creative_upgrade:0>
	]
};

static hiddenRemove as IIngredient[] = [
	<pneumaticcraft:refinery:0>,
	<pneumaticcraft:thermopneumatic_processing_plant:0>,
	<pneumaticcraft:jet_boots_upgrade:*>
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
