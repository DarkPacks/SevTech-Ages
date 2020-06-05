import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageFive;

static stagedItems as IIngredient[][string] = {
	stageFive.stage: [
		<xnet:advanced_connector:0>.withTag({display: {LocName: "tile.xnet.advanced_connector_blue.name"}}),
		<xnet:advanced_connector:1>.withTag({display: {LocName: "tile.xnet.advanced_connector_red.name"}}),
		<xnet:advanced_connector:2>.withTag({display: {LocName: "tile.xnet.advanced_connector_yellow.name"}}),
		<xnet:advanced_connector:3>.withTag({display: {LocName: "tile.xnet.advanced_connector_green.name"}}),
		<xnet:antenna:0>,
		<xnet:antenna_base:0>,
		<xnet:antenna_dish:0>,
		<xnet:connector:0>,
		<xnet:connector:1>,
		<xnet:connector:2>,
		<xnet:connector:3>,
		<xnet:connector:4>,
		<xnet:connector_upgrade:0>,
		<xnet:controller:0>,
		<xnet:facade:0>,
		<xnet:netcable:0>,
		<xnet:netcable:1>,
		<xnet:netcable:2>,
		<xnet:netcable:3>,
		<xnet:netcable:4>,
		<xnet:redstone_proxy:0>,
		<xnet:redstone_proxy_upd:0>,
		<xnet:router:0>,
		<xnet:wireless_router:0>,
		<xnet:xnet_manual:0>
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
