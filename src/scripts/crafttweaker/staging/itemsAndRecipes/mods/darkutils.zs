import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageOne;
import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageThree;
import scripts.crafttweaker.stages.stageFour;
import scripts.crafttweaker.stages.stageDisabled;

static stagedItems as IIngredient[][string] = {
	stageOne.stage: [
		<darkutils:charm_gluttony>,
		<darkutils:charm_sleep>,
		<darkutils:slime_dyed:*>
	],

	stageTwo.stage: [
		<darkutils:charm_null>,
		<darkutils:charm_portal>,
		<darkutils:focus_sash>,
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
		<darkutils:lore_tag>,
		<darkutils:sneaky_ghost>,
		<darkutils:sneaky_lever>,
		<darkutils:sneaky_obsidian>,
		<darkutils:sneaky_plate>,
		<darkutils:sneaky_torch>,
		<darkutils:sneaky>,
		<darkutils:trap_move>
	],

	stageThree.stage: [
		<darkutils:charm_agression>,
		<darkutils:charm_null>,
		<darkutils:ender_hopper>,
		<darkutils:ender_tether>,
		<darkutils:fake_tnt>,
		<darkutils:filter_inverted:*>,
		<darkutils:filter:*>,
		<darkutils:focus_sash>,
		<darkutils:grate>,
		<darkutils:material:1>,
		<darkutils:material:2>,
		<darkutils:material:3>,
		<darkutils:material>,
		<darkutils:timer>,
		<darkutils:trap_anchor>,
		<darkutils:trap_move_fast>,
		<darkutils:trap_move_hyper>,
		<darkutils:trap_tile:3>,
		<darkutils:trap_tile:5>,
		<darkutils:update_detector>,
		<darkutils:wither_block:1>,
		<darkutils:wither_block:2>,
		<darkutils:wither_block:3>,
		<darkutils:wither_block:4>,
		<darkutils:wither_block:5>,
		<darkutils:wither_block>
	],

	stageFour.stage: [
		<darkutils:anti_slime>,
		<darkutils:ender_pearl_hopper>,
		<darkutils:monolith:1>,
		<darkutils:monolith>,
		<darkutils:pearl_block:1>,
		<darkutils:pearl_block:2>,
		<darkutils:pearl_block:3>,
		<darkutils:pearl_block>,
		<darkutils:shulker_pearl>,
		<darkutils:sneaky_button>,
		<darkutils:trap_tile:1>,
		<darkutils:trap_tile:2>,
		<darkutils:trap_tile:4>,
		<darkutils:trap_tile:6>,
		<darkutils:trap_tile:7>,
		<darkutils:trap_tile>
	]
};

static hiddenItems as IIngredient[] = [
	<darkutils:sneaky_bedrock>
];

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.mods.darkutils.stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
	for ingredient in scripts.crafttweaker.staging.itemsAndRecipes.mods.darkutils.hiddenItems {
		mods.jei.JEI.removeAndHide(ingredient);
		ZenStager.getStage(stageDisabled.stage).addIngredient(ingredient, false);
	}
}
