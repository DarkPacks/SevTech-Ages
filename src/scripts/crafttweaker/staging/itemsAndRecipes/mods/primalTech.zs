import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageTutorial;
import scripts.crafttweaker.stages.stageZero;
import scripts.crafttweaker.stages.stageOne;

static stagedItems as IIngredient[][string] = {
	stageTutorial.stage: [
		<primal_tech:bone_club>,
		<primal_tech:fibre_torch_lit>,
		<primal_tech:fibre_torch>,
		<primal_tech:fire_sticks>,
		<primal_tech:rock>,
		<primal_tech:stone_club>,
		<primal_tech:wood_club>,
		<primal_tech:work_stump>
	],

	stageZero.stage: [
		<primal_tech:bone_axe>,
		<primal_tech:bone_knife>,
		<primal_tech:bone_pickaxe>,
		<primal_tech:bone_shard>,
		<primal_tech:bone_shears>,
		<primal_tech:bone_shovel>,
		<primal_tech:bone_sword>,
		<primal_tech:charcoal_block>,
		<primal_tech:charcoal_hopper>,
		<primal_tech:clay_kiln>,
		<primal_tech:flint_block>,
		<primal_tech:fluid_bladder>,
		<primal_tech:stick_bundle>,
		<primal_tech:stone_grill>,
		<primal_tech:wooden_hopper>,
		<primal_tech:work_stump_upgraded>
	],

	stageOne.stage: [
		<primal_tech:flint_edged_disc>,
		<primal_tech:leaf_bed>,
		<primal_tech:stone_anvil>,
		<primal_tech:stone_mallet>,
		<primal_tech:wooden_basin>
	]
};

static hiddenItems as IIngredient[] = [
	<primal_tech:plant_fibres:0>,
	<primal_tech:twine>,
	<primal_tech:water_saw:0>
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
}
