import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageThree;

static stagedItems as IIngredient[][string] = {
	stageTwo.stage: [
		<nex:food_meat_ghast_cooked>,
		<nex:food_meat_ghast_raw>,
		<nex:tool_axe_bone>,
		<nex:tool_hammer_bone>,
		<nex:tool_hoe_bone>,
		<nex:tool_pickaxe_bone>,
		<nex:tool_shovel_bone>,
		<nex:tool_sword_bone>
	],

	stageThree.stage: [
		<nex:slab_basalt_double:1>,
		<nex:slab_basalt_double:2>,
		<nex:slab_basalt_double:3>,
		<nex:slab_basalt_double>,
		<nex:slab_brick_nether_double:1>,
		<nex:slab_brick_nether_double:2>,
		<nex:slab_brick_nether_double:3>,
		<nex:slab_brick_nether_double>,
		<nex:slab_vanilla_double>
	]
};

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.mods.nex.stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
}
