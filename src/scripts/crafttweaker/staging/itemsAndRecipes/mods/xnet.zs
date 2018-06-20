import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageFive;

static stagedItems as IIngredient[][string] = {
	stageFive.stage: [
		<xnet:advanced_connector:1>.withTag({display: {LocName: "tile.xnet.advanced_connector_red.name"}}),
		<xnet:advanced_connector:2>.withTag({display: {LocName: "tile.xnet.advanced_connector_yellow.name"}}),
		<xnet:advanced_connector:3>.withTag({display: {LocName: "tile.xnet.advanced_connector_green.name"}}),
		<xnet:advanced_connector>.withTag({display: {LocName: "tile.xnet.advanced_connector_blue.name"}}),
		<xnet:connector_upgrade>,
		<xnet:connector:1>,
		<xnet:connector:2>,
		<xnet:connector:3>,
		<xnet:connector:4>,
		<xnet:connector>,
		<xnet:controller>,
		<xnet:facade>,
		<xnet:netcable:1>,
		<xnet:netcable:2>,
		<xnet:netcable:3>,
		<xnet:netcable:4>,
		<xnet:netcable>,
		<xnet:redstone_proxy_upd>,
		<xnet:redstone_proxy>,
		<xnet:router>,
		<xnet:xnet_manual>
	]
};

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.mods.xnet.stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
}
