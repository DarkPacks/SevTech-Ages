import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageThree;

static stagedItems as IIngredient[][string] = {
	stageTwo.stage: [
		<nex:ghast_meat_cooked:0>,
		<nex:ghast_meat_raw:0>,
		<nex:golden_wither_bone_axe:0>,
		<nex:golden_wither_bone_hammer:0>,
		<nex:golden_wither_bone_hoe:0>,
		<nex:golden_wither_bone_pickaxe:0>,
		<nex:golden_wither_bone_shovel:0>,
		<nex:golden_wither_bone_sword:0>
	],

	stageThree.stage: [
		<nex:basalt_slab_double:1>,
		<nex:basalt_slab_double:2>,
		<nex:basalt_slab_double:3>,
		<nex:basalt_slab_double:0>,
		<nex:nether_brick_slab_double:1>,
		<nex:nether_brick_slab_double:2>,
		<nex:nether_brick_slab_double:3>,
		<nex:nether_brick_slab_double:0>,
		<nex:vanilla_slab_double:0>
	]
};

function init() {
	for stageName, items in stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
}
