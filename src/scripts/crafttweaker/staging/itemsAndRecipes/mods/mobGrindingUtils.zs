import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageFour;

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

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.mods.mobGrindingUtils.stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
}
