import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageFour;
import scripts.crafttweaker.stages.stageCreativeUnused;

static stagedItems as IIngredient[][string] = {
	stageFour.stage: [
		<enderutilities:asu:0>,
		<enderutilities:barrel:0>,
		<enderutilities:builderswand:0>,
		<enderutilities:chairwand:0>,
		<enderutilities:dolly:0>,
		<enderutilities:draw_bridge:1>,
		<enderutilities:draw_bridge:0>,
		<enderutilities:ender_elevator_layer:0>,
		<enderutilities:ender_elevator_slab:0>,
		<enderutilities:ender_elevator:0>,
		<enderutilities:enderarrow:0>,
		<enderutilities:enderbag:0>,
		<enderutilities:enderbow:0>,
		<enderutilities:enderbucket:0>,
		<enderutilities:endercapacitor:1>,
		<enderutilities:endercapacitor:2>,
		<enderutilities:endercapacitor:0>,
		<enderutilities:enderlasso:0>,
		<enderutilities:enderpart:1>,
		<enderutilities:enderpart:2>,
		<enderutilities:enderpart:10>,
		<enderutilities:enderpart:11>,
		<enderutilities:enderpart:12>,
		<enderutilities:enderpart:15>,
		<enderutilities:enderpart:16>,
		<enderutilities:enderpart:17>,
		<enderutilities:enderpart:20>,
		<enderutilities:enderpart:21>,
		<enderutilities:enderpart:40>,
		<enderutilities:enderpart:45>,
		<enderutilities:enderpart:50>,
		<enderutilities:enderpart:51>,
		<enderutilities:enderpart:52>,
		<enderutilities:enderpart:53>,
		<enderutilities:enderpart:54>,
		<enderutilities:enderpart:70>,
		<enderutilities:enderpart:71>,
		<enderutilities:enderpart:72>,
		<enderutilities:enderpart:73>,
		<enderutilities:enderpart:80>,
		<enderutilities:enderpart:0>,
		<enderutilities:enderpearlreusable:1>,
		<enderutilities:enderpearlreusable:0>,
		<enderutilities:enderporter:1>,
		<enderutilities:enderporter:0>,
		<enderutilities:endersword:*>,
		<enderutilities:endertool:1>,
		<enderutilities:endertool:2>,
		<enderutilities:endertool:3>,
		<enderutilities:endertool:0>,
		<enderutilities:energy_bridge:1>,
		<enderutilities:energy_bridge:2>,
		<enderutilities:energy_bridge:0>,
		<enderutilities:floor:1>,
		<enderutilities:floor:0>,
		<enderutilities:frame:0>,
		<enderutilities:handybag:1>,
		<enderutilities:handybag:0>,
		<enderutilities:icemelter:1>,
		<enderutilities:icemelter:0>,
		<enderutilities:inserter:1>,
		<enderutilities:inserter:0>,
		<enderutilities:inventoryswapper:0>,
		<enderutilities:linkcrystal:1>,
		<enderutilities:linkcrystal:2>,
		<enderutilities:linkcrystal:0>,
		<enderutilities:livingmanipulator:0>,
		<enderutilities:machine_0:0>,
		<enderutilities:machine_1:1>,
		<enderutilities:machine_1:2>,
		<enderutilities:machine_1:3>,
		<enderutilities:machine_1:0>,
		<enderutilities:mobharness:0>,
		<enderutilities:molecular_exciter:0>,
		<enderutilities:msu:1>,
		<enderutilities:msu:0>,
		<enderutilities:nullifier:0>,
		<enderutilities:pet_contract:0>,
		<enderutilities:phasing:1>,
		<enderutilities:phasing:0>,
		<enderutilities:pickupmanager:0>,
		<enderutilities:portal_panel:0>,
		<enderutilities:portalscaler:0>,
		<enderutilities:quickstacker:0>,
		<enderutilities:ruler:0>,
		<enderutilities:sound_block:0>,
		<enderutilities:storage_0:1>,
		<enderutilities:storage_0:2>,
		<enderutilities:storage_0:3>,
		<enderutilities:storage_0:4>,
		<enderutilities:storage_0:5>,
		<enderutilities:storage_0:6>,
		<enderutilities:storage_0:7>,
		<enderutilities:storage_0:0>,
		<enderutilities:syringe:1>,
		<enderutilities:syringe:2>,
		<enderutilities:syringe:3>,
		<enderutilities:syringe:0>,
		<enderutilities:void_pickaxe:*>
	],

	stageCreativeUnused.stage: [
		<enderutilities:endercapacitor:3>,
		<enderutilities:enderpart:30>,
		<enderutilities:enderpart:81>
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
