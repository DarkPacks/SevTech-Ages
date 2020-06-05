import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageFour;
import scripts.crafttweaker.stages.stageFive;
import scripts.crafttweaker.stages.stageDisabled;
import scripts.crafttweaker.stages.stageCreativeUnused;

static stagedItems as IIngredient[][string] = {
	stageFour.stage: [
		<refinedstorage:cable:0>,
		<refinedstorage:controller:0>,
		<refinedstorage:external_storage:0>,
		<refinedstorage:grid:1>,
		<refinedstorage:grid:0>,
		<refinedstorage:machine_casing:0>,
		<refinedstorage:network_card:0>,
		<refinedstorage:quartz_enriched_iron_block:0>,
		<refinedstorage:quartz_enriched_iron:0>,
		<refinedstorage:security_card:0>,
		<refinedstorage:wrench:0>
	],

	stageFive.stage: [
		<refinedstorage:constructor:0>,
		<refinedstorage:crafter_manager:0>,
		<refinedstorage:crafter:0>,
		<refinedstorage:crafting_monitor:0>,
		<refinedstorage:destructor:0>,
		<refinedstorage:detector:0>,
		<refinedstorage:disk_drive:0>,
		<refinedstorage:disk_manipulator:0>,
		<refinedstorage:exporter:0>,
		<refinedstorage:filter:0>,
		<refinedstorage:fluid_interface:0>,
		<refinedstorage:fluid_storage_disk:1>,
		<refinedstorage:fluid_storage_disk:2>,
		<refinedstorage:fluid_storage_disk:3>,
		<refinedstorage:fluid_storage_disk:4>,
		<refinedstorage:fluid_storage_disk:0>,
		<refinedstorage:fluid_storage_part:1>,
		<refinedstorage:fluid_storage_part:2>,
		<refinedstorage:fluid_storage_part:3>,
		<refinedstorage:fluid_storage_part:0>,
		<refinedstorage:fluid_storage:1>,
		<refinedstorage:fluid_storage:2>,
		<refinedstorage:fluid_storage:3>,
		<refinedstorage:fluid_storage:4>,
		<refinedstorage:fluid_storage:0>,
		<refinedstorage:grid:2>,
		<refinedstorage:grid:3>,
		<refinedstorage:importer:0>,
		<refinedstorage:interface:0>,
		<refinedstorage:network_receiver:0>,
		<refinedstorage:network_transmitter:0>,
		<refinedstorage:pattern:0>,
		<refinedstorage:portable_grid:1>,
		<refinedstorage:portable_grid:0>,
		<refinedstorage:reader:0>,
		<refinedstorage:relay:0>,
		<refinedstorage:security_manager:0>,
		<refinedstorage:storage_disk:1>,
		<refinedstorage:storage_disk:2>,
		<refinedstorage:storage_disk:3>,
		<refinedstorage:storage_disk:4>,
		<refinedstorage:storage_disk:0>,
		<refinedstorage:storage_housing:0>,
		<refinedstorage:storage_monitor:0>,
		<refinedstorage:storage_part:1>,
		<refinedstorage:storage_part:2>,
		<refinedstorage:storage_part:3>,
		<refinedstorage:storage_part:0>,
		<refinedstorage:storage:1>,
		<refinedstorage:storage:2>,
		<refinedstorage:storage:3>,
		<refinedstorage:storage:4>,
		<refinedstorage:storage:0>,
		<refinedstorage:upgrade:1>,
		<refinedstorage:upgrade:2>,
		<refinedstorage:upgrade:3>,
		<refinedstorage:upgrade:4>,
		<refinedstorage:upgrade:6>,
		<refinedstorage:upgrade:7>,
		<refinedstorage:upgrade:8>,
		<refinedstorage:upgrade:9>,
		<refinedstorage:upgrade:0>,
		<refinedstorage:wireless_crafting_monitor:1>,
		<refinedstorage:wireless_crafting_monitor:0>,
		<refinedstorage:wireless_fluid_grid:1>,
		<refinedstorage:wireless_fluid_grid:0>,
		<refinedstorage:wireless_grid:1>,
		<refinedstorage:wireless_grid:0>,
		<refinedstorage:wireless_transmitter:0>,
		<refinedstorage:writer:0>,
		<refinedstorage:cutting_tool:1>
	],

	stageCreativeUnused.stage: [
		<refinedstorage:controller:1>,
		<refinedstorage:fluid_storage:4>,
		<refinedstorage:fluid_storage_disk:4>,
		<refinedstorage:portable_grid:1>,
		<refinedstorage:storage:4>,
		<refinedstorage:storage_disk:4>,
		<refinedstorage:wireless_crafting_monitor:1>,
		<refinedstorage:wireless_fluid_grid:1>,
		<refinedstorage:wireless_grid:1>
	]
};

static hiddenItems as IIngredient[] = [
	<refinedstorage:processor:0>,
	<refinedstorage:processor:1>,
	<refinedstorage:processor:2>,
	<refinedstorage:processor:3>,
	<refinedstorage:processor:4>,
	<refinedstorage:processor:5>,
	<refinedstorage:processor:6>,
	<refinedstorage:processor_binding:0>
];

static hiddenRemove as IIngredient[] = [
	// The beginning of bringing down the Minecraft community as we know it
	// by combining AE2 and RS recipes to use many of the same items. DOWN WITH THE SYSTEM!
	<refinedstorage:core:0>,
	<refinedstorage:core:1>
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
	recipeUtil.hideItems(hiddenItems as IIngredient[]);
	recipeUtil.hideItems(hiddenRemove as IIngredient[], true);
}
