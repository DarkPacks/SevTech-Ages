import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageFour;
import scripts.crafttweaker.stages.stageFive;

static stagedItems as IIngredient[][string] = {
	stageFour.stage: [
		<refinedstorage:cable>,
		<refinedstorage:controller>,
		<refinedstorage:external_storage>,
		<refinedstorage:grid:1>,
		<refinedstorage:grid>,
		<refinedstorage:machine_casing>,
		<refinedstorage:network_card>,
		<refinedstorage:quartz_enriched_iron_block>,
		<refinedstorage:quartz_enriched_iron>,
		<refinedstorage:security_card>
	],

	stageFive.stage: [
		<refinedstorage:constructor>,
		<refinedstorage:crafter_manager>,
		<refinedstorage:crafter>,
		<refinedstorage:crafting_monitor>,
		<refinedstorage:destructor>,
		<refinedstorage:detector>,
		<refinedstorage:disk_drive>,
		<refinedstorage:disk_manipulator>,
		<refinedstorage:exporter>,
		<refinedstorage:filter>,
		<refinedstorage:fluid_interface>,
		<refinedstorage:fluid_storage_disk:1>,
		<refinedstorage:fluid_storage_disk:2>,
		<refinedstorage:fluid_storage_disk:3>,
		<refinedstorage:fluid_storage_disk:4>,
		<refinedstorage:fluid_storage_disk>,
		<refinedstorage:fluid_storage_part:1>,
		<refinedstorage:fluid_storage_part:2>,
		<refinedstorage:fluid_storage_part:3>,
		<refinedstorage:fluid_storage_part>,
		<refinedstorage:fluid_storage:1>,
		<refinedstorage:fluid_storage:2>,
		<refinedstorage:fluid_storage:3>,
		<refinedstorage:fluid_storage:4>,
		<refinedstorage:fluid_storage>,
		<refinedstorage:grid:2>,
		<refinedstorage:grid:3>,
		<refinedstorage:importer>,
		<refinedstorage:interface>,
		<refinedstorage:network_receiver>,
		<refinedstorage:network_transmitter>,
		<refinedstorage:pattern>,
		<refinedstorage:portable_grid:1>,
		<refinedstorage:portable_grid>,
		<refinedstorage:reader>,
		<refinedstorage:relay>,
		<refinedstorage:security_manager>,
		<refinedstorage:storage_disk:1>,
		<refinedstorage:storage_disk:2>,
		<refinedstorage:storage_disk:3>,
		<refinedstorage:storage_disk:4>,
		<refinedstorage:storage_disk>,
		<refinedstorage:storage_housing>,
		<refinedstorage:storage_monitor>,
		<refinedstorage:storage_part:1>,
		<refinedstorage:storage_part:2>,
		<refinedstorage:storage_part:3>,
		<refinedstorage:storage_part>,
		<refinedstorage:storage:1>,
		<refinedstorage:storage:2>,
		<refinedstorage:storage:3>,
		<refinedstorage:storage:4>,
		<refinedstorage:storage>,
		<refinedstorage:upgrade:1>,
		<refinedstorage:upgrade:2>,
		<refinedstorage:upgrade:3>,
		<refinedstorage:upgrade:4>,
		<refinedstorage:upgrade:5>,
		<refinedstorage:upgrade:6>,
		<refinedstorage:upgrade:7>,
		<refinedstorage:upgrade:8>,
		<refinedstorage:upgrade:9>,
		<refinedstorage:upgrade>,
		<refinedstorage:wireless_crafting_monitor:1>,
		<refinedstorage:wireless_crafting_monitor>,
		<refinedstorage:wireless_fluid_grid:1>,
		<refinedstorage:wireless_fluid_grid>,
		<refinedstorage:wireless_grid:1>,
		<refinedstorage:wireless_grid>,
		<refinedstorage:wireless_transmitter>,
		<refinedstorage:wrench>,
		<refinedstorage:writer>
	]
};

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.mods.refinedstorage.stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
}
