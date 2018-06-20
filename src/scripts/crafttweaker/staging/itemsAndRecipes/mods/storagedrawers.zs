import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageThree;
import scripts.crafttweaker.stages.stageFive;

static stagedItems as IIngredient[][string] = {
	stageTwo.stage: [
		<storagedrawers:customdrawers:1>,
		<storagedrawers:customdrawers:2>,
		<storagedrawers:customdrawers:3>,
		<storagedrawers:customdrawers:4>,
		<storagedrawers:customdrawers>,
		<storagedrawers:customtrim>,
		<storagedrawers:drawer_key>,
		<storagedrawers:framingtable>,
		<storagedrawers:personal_key>,
		<storagedrawers:quantify_key>,
		<storagedrawers:shroud_key>,
		<storagedrawers:tape>,
		<storagedrawers:trim:1>,
		<storagedrawers:trim:2>,
		<storagedrawers:trim:3>,
		<storagedrawers:trim:4>,
		<storagedrawers:trim:5>,
		<storagedrawers:trim>,
		<storagedrawers:upgrade_conversion>,
		<storagedrawers:upgrade_one_stack>,
		<storagedrawers:upgrade_storage:1>,
		<storagedrawers:upgrade_storage>,
		<storagedrawers:upgrade_template>
	],

	stageThree.stage: [
		<storagedrawers:compdrawers>,
		<storagedrawers:controller>,
		<storagedrawers:controllerslave>,
		<storagedrawers:keybutton:1>,
		<storagedrawers:keybutton:2>,
		<storagedrawers:keybutton:3>,
		<storagedrawers:keybutton>,
		<storagedrawers:upgrade_redstone:1>,
		<storagedrawers:upgrade_redstone:2>,
		<storagedrawers:upgrade_redstone>,
		<storagedrawers:upgrade_status:1>,
		<storagedrawers:upgrade_status>,
		<storagedrawers:upgrade_storage:2>,
		<storagedrawers:upgrade_void>
	],

	stageFive.stage: [
		<storagedrawers:upgrade_storage:3>,
		<storagedrawers:upgrade_storage:4>
	]
};

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.mods.storagedrawers.stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
}
