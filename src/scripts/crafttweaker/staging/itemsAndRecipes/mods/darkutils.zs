import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageOne;
import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageThree;
import scripts.crafttweaker.stages.stageFour;
import scripts.crafttweaker.stages.stageDisabled;

static stagedItems as IIngredient[][string] = {
	stageOne.stage: [
		<darkutils:charm_gluttony:0>,
		<darkutils:charm_sleep:0>,
		<darkutils:slime_dyed:*>
	],

	stageTwo.stage: [
		<darkutils:charm_null:0>,
		<darkutils:charm_portal:0>,
		<darkutils:focus_sash:0>,
		<darkutils:lore_tag:1>,
		<darkutils:lore_tag:2>,
		<darkutils:lore_tag:3>,
		<darkutils:lore_tag:4>,
		<darkutils:lore_tag:5>,
		<darkutils:lore_tag:6>,
		<darkutils:lore_tag:7>,
		<darkutils:lore_tag:8>,
		<darkutils:lore_tag:9>,
		<darkutils:lore_tag:10>,
		<darkutils:lore_tag:11>,
		<darkutils:lore_tag:12>,
		<darkutils:lore_tag:13>,
		<darkutils:lore_tag:14>,
		<darkutils:lore_tag:15>,
		<darkutils:lore_tag:0>,
		<darkutils:sneaky_ghost:0>,
		<darkutils:sneaky_lever:0>,
		<darkutils:sneaky_obsidian:0>,
		<darkutils:sneaky_plate:0>,
		<darkutils:sneaky_torch:0>,
		<darkutils:sneaky:0>,
		<darkutils:trap_move:0>
	],

	stageThree.stage: [
		<darkutils:charm_agression:0>,
		<darkutils:charm_null:0>,
		<darkutils:ender_hopper:0>,
		<darkutils:ender_tether:0>,
		<darkutils:fake_tnt:0>,
		<darkutils:filter_inverted:*>,
		<darkutils:filter:*>,
		<darkutils:focus_sash:0>,
		<darkutils:grate:0>,
		<darkutils:material:1>,
		<darkutils:material:2>,
		<darkutils:material:3>,
		<darkutils:material:0>,
		<darkutils:timer:0>,
		<darkutils:trap_anchor:0>,
		<darkutils:trap_move_fast:0>,
		<darkutils:trap_move_hyper:0>,
		<darkutils:trap_tile:3>,
		<darkutils:trap_tile:5>,
		<darkutils:update_detector:0>,
		<darkutils:wither_block:1>,
		<darkutils:wither_block:2>,
		<darkutils:wither_block:3>,
		<darkutils:wither_block:4>,
		<darkutils:wither_block:5>,
		<darkutils:wither_block:0>
	],

	stageFour.stage: [
		<darkutils:anti_slime:0>,
		<darkutils:ender_pearl_hopper:0>,
		<darkutils:monolith:1>,
		<darkutils:monolith:0>,
		<darkutils:pearl_block:1>,
		<darkutils:pearl_block:2>,
		<darkutils:pearl_block:3>,
		<darkutils:pearl_block:0>,
		<darkutils:shulker_pearl:0>,
		<darkutils:sneaky_button:0>,
		<darkutils:trap_tile:1>,
		<darkutils:trap_tile:2>,
		<darkutils:trap_tile:4>,
		<darkutils:trap_tile:6>,
		<darkutils:trap_tile:7>,
		<darkutils:trap_tile:0>
	]
};

static hiddenRemove as IIngredient[] = [
	<darkutils:sneaky_bedrock:0>
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
