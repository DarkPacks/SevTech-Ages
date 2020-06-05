import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageThree;
import scripts.crafttweaker.stages.stageFour;
import scripts.crafttweaker.stages.stageFive;
import scripts.crafttweaker.stages.stageDisabled;
import scripts.crafttweaker.stages.stageCreativeUnused;

static stagedItems as IIngredient[][string] = {
	stageThree.stage: [
		<buildcraftcore:engine:0>,
		<buildcraftcore:wrench:0>,
		<buildcraftfactory:tank:0>,
		<buildcraftlib:guide:*>,
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
		<buildcrafttransport:plug_blocker:0>,
		<buildcrafttransport:waterproof:0>
	],

	stageFour.stage: [
		<buildcraftbuilders:architect:0>,
		<buildcraftbuilders:builder:0>,
		<buildcraftbuilders:filler:0>,
		<buildcraftbuilders:frame:0>,
		<buildcraftbuilders:library:0>,
		<buildcraftbuilders:quarry:0>,
		<buildcraftbuilders:schematic_single:0>,
		<buildcraftbuilders:snapshot:2>,
		<buildcraftbuilders:snapshot:0>,
		<buildcraftcore:decorated:1>,
		<buildcraftcore:decorated:2>,
		<buildcraftcore:decorated:5>,
		<buildcraftcore:list:0>,
		<buildcraftcore:map_location:0>,
		<buildcraftcore:marker_connector:0>,
		<buildcraftcore:marker_path:0>,
		<buildcraftcore:marker_volume:0>,
		<buildcraftfactory:autoworkbench_item:0>,
		<buildcraftfactory:chute:0>,
		<buildcraftfactory:distiller:0>,
		<buildcraftfactory:flood_gate:0>,
		<buildcraftfactory:gel:0>,
		<buildcraftfactory:heat_exchange:0>,
		<buildcraftfactory:mining_well:0>,
		<buildcraftfactory:water_gel_spawn:0>,
		<buildcraftrobotics:zone_planner:0>,
		<buildcraftsilicon:plug_gate:*>,
		<buildcraftsilicon:plug_light_sensor:0>,
		<buildcraftsilicon:plug_pulsar:0>,
		<buildcrafttransport:filtered_buffer:0>,
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
		<buildcrafttransport:plug_power_adaptor:0>
	],

	stageFive.stage: [
		<buildcrafttransport:pipe_daizuli_item:0>,
		<buildcrafttransport:pipe_diamond_fluid:0>,
		<buildcrafttransport:pipe_diamond_item:0>,
		<buildcrafttransport:pipe_diamond_wood_fluid:0>,
		<buildcrafttransport:pipe_diamond_wood_item:*>,
		<buildcrafttransport:pipe_emzuli_item:0>
	],

	stageCreativeUnused.stage: [
		<buildinggadgets:constructionpastecontainercreative>,
		<buildcraftcore:engine:3>
	]
};

static hiddenRemove as IIngredient[] = [
	<buildcraftbuilders:filler_planner:0>,
	<buildcraftbuilders:replacer:0>,
	<buildcraftcore:decorated:3>,
	<buildcraftcore:decorated:4>,
	<buildcraftcore:decorated:0>,
	<buildcraftcore:spring:1>,
	<buildcraftcore:spring:0>,
	<buildcraftcore:volume_box:0>,
	<buildcraftfactory:distiller:0>,
	<buildcraftlib:debugger:0>,
	<buildcraftlib:guide_note:0>,
	<buildcraftsilicon:redstone_chipset:4>,
	<buildcraftsilicon:redstone_chipset:3>,
	<buildcraftsilicon:redstone_chipset:2>,
	<buildcraftsilicon:redstone_chipset:1>,
	<buildcraftsilicon:redstone_chipset:0>
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
