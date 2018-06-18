import crafttweaker.item.IIngredient;

import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageThree;
import scripts.crafttweaker.stages.stageFour;
import scripts.crafttweaker.stages.stageFive;

static stagedItems as IIngredient[][string] = {
	stageTwo.stage: [
		<conarm:armorforge>.withTag({textureBlock: {id: "immersiveengineering:storage", Count: 1 as byte, Damage: 0 as short}}),
		<conarm:armorforge>.withTag({textureBlock: {id: "immersiveengineering:storage", Count: 1 as byte, Damage: 3 as short}}),
		<conarm:armorforge>.withTag({textureBlock: {id: "mekanism:basicblock", Count: 1 as byte, Damage: 1 as short}}),
		<conarm:armorforge>.withTag({textureBlock: {id: "mekanism:basicblock", Count: 1 as byte, Damage: 13 as short}}),
		<conarm:armorforge>.withTag({textureBlock: {id: "minecraft:gold_block", Count: 1 as byte, Damage: 0 as short}}),
		<conarm:armorforge>.withTag({textureBlock: {id: "minecraft:iron_block", Count: 1 as byte, Damage: 0 as short}}),
		<conarm:armorforge>.withTag({textureBlock: {id: "twilightforest:block_storage", Count: 1 as byte, Damage: 1 as short}}),
		<conarm:armorforge>.withTag({textureBlock: {id: "twilightforest:block_storage", Count: 1 as byte, Damage: 2 as short}}),
		<conarm:armorstation>,
		<conarm:book>,
		<conarm:gauntlet_mat_speed>,
		<conarm:gauntlet_mat>,
		<conarm:travel_cloak>,
		<conarm:travel_goggles_base>,
		<conarm:travel_goggles>,
		<conarm:travel_slowfall>
	],

	stageThree.stage: [
		<conarm:armorforge>.withTag({textureBlock: {id: "immersiveengineering:storage", Count: 1 as byte, Damage: 1 as short}}),
		<conarm:armorforge>.withTag({textureBlock: {id: "immersiveengineering:storage", Count: 1 as byte, Damage: 2 as short}}),
		<conarm:armorforge>.withTag({textureBlock: {id: "immersiveengineering:storage", Count: 1 as byte, Damage: 4 as short}}),
		<conarm:armorforge>.withTag({textureBlock: {id: "immersiveengineering:storage", Count: 1 as byte, Damage: 6 as short}}),
		<conarm:armorforge>.withTag({textureBlock: {id: "immersiveengineering:storage", Count: 1 as byte, Damage: 7 as short}}),
		<conarm:armorforge>.withTag({textureBlock: {id: "immersiveengineering:storage", Count: 1 as byte, Damage: 8 as short}}),
		<conarm:armorforge>.withTag({textureBlock: {id: "tconstruct:metal", Count: 1 as byte, Damage: 3 as short}}),
		<conarm:armorforge>.withTag({textureBlock: {id: "tconstruct:metal", Count: 1 as byte, Damage: 5 as short}}),
		<conarm:gauntlet_mat_attack>,
		<conarm:gauntlet_mat_reach>,
		<conarm:resist_mat_blast>,
		<conarm:resist_mat_fire>,
		<conarm:resist_mat_proj>,
		<conarm:resist_mat>,
		<conarm:travel_night>,
		<conarm:travel_sneak>,
		<conarm:travel_soul>
	],

	stageFour.stage: [
		<conarm:armorforge>.withTag({textureBlock: {id: "tconstruct:metal", Count: 1 as byte, Damage: 0 as short}}),
		<conarm:armorforge>.withTag({textureBlock: {id: "tconstruct:metal", Count: 1 as byte, Damage: 1 as short}}),
		<conarm:armorforge>.withTag({textureBlock: {id: "tconstruct:metal", Count: 1 as byte, Damage: 2 as short}}),
		<conarm:armorforge>.withTag({textureBlock: {id: "tconstruct:metal", Count: 1 as byte, Damage: 4 as short}})
	],

	stageFive.stage: [
		<conarm:armorforge>.withTag({textureBlock: {id: "extraplanets:neptune", Count: 1 as byte, Damage: 7 as short}})
	]
};

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.conarm.stagedItems {
		Stager.getStage(stageName).addIngredients(items);
	}
}
