import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageThree;
import scripts.crafttweaker.stages.stageFive;
import scripts.crafttweaker.stages.stageCreativeUnused;
import scripts.crafttweaker.stages.stageDisabled;

static stagedItems as IIngredient[][string] = {
	stageTwo.stage: [
		<storagedrawers:customdrawers:1>,
		<storagedrawers:customdrawers:2>,
		<storagedrawers:customdrawers:3>,
		<storagedrawers:customdrawers:4>,
		<storagedrawers:customdrawers:0>,
		<storagedrawers:customtrim:0>,
		<storagedrawers:drawer_key:0>,
		<storagedrawers:framingtable:0>,
		<storagedrawers:personal_key:0>,
		<storagedrawers:quantify_key:0>,
		<storagedrawers:shroud_key:0>,
		<storagedrawers:tape:0>,
		<storagedrawers:trim:1>,
		<storagedrawers:trim:2>,
		<storagedrawers:trim:3>,
		<storagedrawers:trim:4>,
		<storagedrawers:trim:5>,
		<storagedrawers:trim:0>,
		<storagedrawers:upgrade_conversion:0>,
		<storagedrawers:upgrade_one_stack:0>,
		<storagedrawers:upgrade_storage:1>,
		<storagedrawers:upgrade_storage:0>,
		<storagedrawers:upgrade_template:0>
	],

	stageThree.stage: [
		<storagedrawers:compdrawers:0>,
		<storagedrawers:controller:0>,
		<storagedrawers:controllerslave:0>,
		<storagedrawers:keybutton:1>,
		<storagedrawers:keybutton:2>,
		<storagedrawers:keybutton:3>,
		<storagedrawers:keybutton:0>,
		<storagedrawers:upgrade_redstone:1>,
		<storagedrawers:upgrade_redstone:2>,
		<storagedrawers:upgrade_redstone:0>,
		<storagedrawers:upgrade_status:1>,
		<storagedrawers:upgrade_status:0>,
		<storagedrawers:upgrade_storage:2>,
		<storagedrawers:upgrade_void:0>
	],

	stageFive.stage: [
		<storagedrawers:upgrade_storage:3>,
		<storagedrawers:upgrade_storage:4>
	],

	stageCreativeUnused.stage: [
		<storagedrawers:upgrade_creative:1>,
		<storagedrawers:upgrade_creative:0>
	]
};

static hiddenRemove as IIngredient[] = [
	<storagedrawers:basicdrawers:*>
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
