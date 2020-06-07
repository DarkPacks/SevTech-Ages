import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageThree;

static stagedItems as IIngredient[][string] = {
	stageTwo.stage: [
		<nex:ghast_meat_cooked:0>,
		<nex:ghast_meat_raw:0>,
		<nex:golden_wither_bone_axe:*>,
		<nex:golden_wither_bone_hammer:0>,
		<nex:golden_wither_bone_hoe:*>,
		<nex:golden_wither_bone_pickaxe:*>,
		<nex:golden_wither_bone_shovel:*>,
		<nex:golden_wither_bone_sword:*>
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
	var modId as string = stagedItems.entrySet[0].value[0].items[0].definition.owner;

	var modStage as string = scripts.crafttweaker.staging.itemsAndRecipes.modId.containsMod(modId);
	var doOverride as bool = modStage != "";

	for stageName, items in stagedItems {
		if (doOverride && stageName != modStage) {
			ZenStager.addModItemOverrides(modId, items);
		}

		ZenStager.getStage(stageName).addIngredients(items);
	}
}
