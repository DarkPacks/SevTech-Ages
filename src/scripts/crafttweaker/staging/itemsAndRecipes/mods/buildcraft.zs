import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageThree;
import scripts.crafttweaker.stages.stageFour;
import scripts.crafttweaker.stages.stageFive;

static stagedItems as IIngredient[][string] = {
	stageThree.stage: [
		<buildcraftcore:engine>,
		<buildcraftcore:wrench>,
		<buildcraftfactory:tank>,
		<buildcraftlib:guide>,
		<buildcrafttransport:pipe_clay_fluid:*>,
		<buildcrafttransport:pipe_clay_item:*>,
		<buildcrafttransport:pipe_cobble_fluid:*>,
		<buildcrafttransport:pipe_cobble_item:*>,
		<buildcrafttransport:pipe_iron_fluid:*>,
		<buildcrafttransport:pipe_iron_item:*>,
		<buildcrafttransport:pipe_quartz_fluid:*>,
		<buildcrafttransport:pipe_quartz_item:*>,
		<buildcrafttransport:pipe_sandstone_fluid:*>,
		<buildcrafttransport:pipe_sandstone_item:*>,
		<buildcrafttransport:pipe_stone_fluid:*>,
		<buildcrafttransport:pipe_stone_item:*>,
		<buildcrafttransport:pipe_stripes_item:*>,
		<buildcrafttransport:pipe_structure:*>,
		<buildcrafttransport:pipe_void_fluid:*>,
		<buildcrafttransport:pipe_void_item:*>,
		<buildcrafttransport:pipe_wood_fluid:*>,
		<buildcrafttransport:pipe_wood_item:*>,
		<buildcrafttransport:plug_blocker>,
		<buildcrafttransport:waterproof>
	],

	stageFour.stage: [
		<buildcraftbuilders:architect>,
		<buildcraftbuilders:builder>,
		<buildcraftbuilders:filler>,
		<buildcraftbuilders:frame>,
		<buildcraftbuilders:library>,
		<buildcraftbuilders:quarry>,
		<buildcraftbuilders:schematic_single>,
		<buildcraftbuilders:snapshot:2>,
		<buildcraftbuilders:snapshot>,
		<buildcraftcore:decorated:1>,
		<buildcraftcore:decorated:2>,
		<buildcraftcore:decorated:5>,
		<buildcraftcore:list>,
		<buildcraftcore:map_location>,
		<buildcraftcore:marker_connector>,
		<buildcraftcore:marker_path>,
		<buildcraftcore:marker_volume>,
		<buildcraftfactory:autoworkbench_item>,
		<buildcraftfactory:chute>,
		<buildcraftfactory:distiller>,
		<buildcraftfactory:flood_gate>,
		<buildcraftfactory:gel>,
		<buildcraftfactory:heat_exchange>,
		<buildcraftfactory:mining_well>,
		<buildcraftfactory:water_gel_spawn>,
		<buildcraftrobotics:zone_planner>,
		<buildcraftsilicon:plug_gate:*>,
		<buildcraftsilicon:plug_light_sensor>,
		<buildcraftsilicon:plug_pulsar>,
		<buildcrafttransport:filtered_buffer>,
		<buildcrafttransport:pipe_cobble_power:*>,
		<buildcrafttransport:pipe_gold_fluid:*>,
		<buildcrafttransport:pipe_gold_item:*>,
		<buildcrafttransport:pipe_gold_power:*>,
		<buildcrafttransport:pipe_lapis_item:*>,
		<buildcrafttransport:pipe_obsidian_item:*>,
		<buildcrafttransport:pipe_quartz_power:*>,
		<buildcrafttransport:pipe_sandstone_power:*>,
		<buildcrafttransport:pipe_stone_power:*>,
		<buildcrafttransport:pipe_stripes_item:*>,
		<buildcrafttransport:pipe_wood_power:*>,
		<buildcrafttransport:plug_power_adaptor>
	],

	stageFive.stage: [
		<buildcrafttransport:pipe_daizuli_item>,
		<buildcrafttransport:pipe_diamond_fluid>,
		<buildcrafttransport:pipe_diamond_item>,
		<buildcrafttransport:pipe_diamond_wood_fluid>,
		<buildcrafttransport:pipe_diamond_wood_item:*>,
		<buildcrafttransport:pipe_emzuli_item>
	]
};

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.mods.buildcraft.stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
}
