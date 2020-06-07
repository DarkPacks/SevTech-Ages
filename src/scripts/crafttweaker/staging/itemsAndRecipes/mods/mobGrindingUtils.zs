import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageFour;
import scripts.crafttweaker.stages.stageDisabled;

static stagedItems as IIngredient[][string] = {
	stageFour.stage: [
		<mob_grinding_utils:absorption_hopper>,
		<mob_grinding_utils:absorption_upgrade>,
		<mob_grinding_utils:dark_oak_stone>,
		<mob_grinding_utils:dragon_muffler>,
		<mob_grinding_utils:fan_upgrade:1>,
		<mob_grinding_utils:fan_upgrade:2>,
		<mob_grinding_utils:fan_upgrade>,
		<mob_grinding_utils:fan>,
		<mob_grinding_utils:saw_upgrade:1>,
		<mob_grinding_utils:saw_upgrade:2>,
		<mob_grinding_utils:saw_upgrade:3>,
		<mob_grinding_utils:saw_upgrade:4>,
		<mob_grinding_utils:saw_upgrade:5>,
		<mob_grinding_utils:saw_upgrade>,
		<mob_grinding_utils:saw>,
		<mob_grinding_utils:spikes>,
		<mob_grinding_utils:tank_sink>,
		<mob_grinding_utils:tank>,
		<mob_grinding_utils:wither_muffler>,
		<mob_grinding_utils:xp_tap>
	]
};

static hiddenItems as IIngredient[] = [
	<mob_grinding_utils:gm_chicken_feed:0>,
	<mob_grinding_utils:null_sword:*>
];

static hiddenRemove as IIngredient[] = [
	<mob_grinding_utils:ender_inhibitor_off:0>,
	<mob_grinding_utils:ender_inhibitor_on:0>,
	<mob_grinding_utils:entity_conveyor:0>,
	<mob_grinding_utils:mob_swab:0>
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
