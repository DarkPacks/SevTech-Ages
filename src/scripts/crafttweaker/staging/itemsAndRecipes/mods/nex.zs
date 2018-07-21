import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageThree;

static stagedItems as IIngredient[][string] = {
	stageTwo.stage: [
		<nex:food_meat_ghast_cooked:0>,
		<nex:food_meat_ghast_raw:0>,
		<nex:tool_axe_bone:0>,
		<nex:tool_hammer_bone:0>,
		<nex:tool_hoe_bone:0>,
		<nex:tool_pickaxe_bone:0>,
		<nex:tool_shovel_bone:0>,
		<nex:tool_sword_bone:0>
	],

	stageThree.stage: [
		<nex:slab_basalt_double:1>,
		<nex:slab_basalt_double:2>,
		<nex:slab_basalt_double:3>,
		<nex:slab_basalt_double:0>,
		<nex:slab_brick_nether_double:1>,
		<nex:slab_brick_nether_double:2>,
		<nex:slab_brick_nether_double:3>,
		<nex:slab_brick_nether_double:0>,
		<nex:slab_vanilla_double:0>
	]
};

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.mods.nex.stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
}
