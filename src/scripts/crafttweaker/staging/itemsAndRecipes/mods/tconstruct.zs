import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageZero;
import scripts.crafttweaker.stages.stageOne;
import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageThree;
import scripts.crafttweaker.stages.stageFour;
import scripts.crafttweaker.stages.stageCreative;
import scripts.crafttweaker.stages.stageDisabled;

static stagedItems as IIngredient[][string] = {
	stageZero.stage: [
		<tconstruct:casting:1>,
		<tconstruct:casting:0>,
		<tconstruct:dried_clay_slab:0>,
		<tconstruct:dried_clay:0>,
		<tconstruct:edible:10>,
		<tconstruct:edible:11>,
		<tconstruct:edible:12>,
		<tconstruct:edible:13>,
		<tconstruct:edible:14>,
		<tconstruct:edible:15>,
		<tconstruct:edible:20>,
		<tconstruct:edible:21>,
		<tconstruct:edible:22>,
		<tconstruct:edible:23>,
		<tconstruct:edible:30>,
		<tconstruct:materials:0>,
		<tconstruct:punji:0>,
		<tconstruct:rack:1>.withTag({textureBlock: {id: "minecraft:wooden_slab", Count: 1 as byte, Damage: 0 as short}}),
		<tconstruct:rack:0>.withTag({textureBlock: {id: "minecraft:wooden_slab", Count: 1 as byte, Damage: 0 as short}}),
		<tconstruct:seared_slab:3>,
		<tconstruct:seared_slab:4>,
		<tconstruct:seared:3>,
		<tconstruct:seared:4>,
		<tconstruct:slime_channel:0>,
		<tconstruct:slime_congealed:0>,
		<tconstruct:slime:0>,
		<tconstruct:soil:3>,
		<tconstruct:soil:4>,
		<tconstruct:soil:0>,
		<tconstruct:stone_ladder:0>,
		<tconstruct:stone_stick:0>
	],

	stageOne.stage: [
		// Bricks
		<tconstruct:brownstone_slab:3>,
		<tconstruct:brownstone_slab:4>,
		<tconstruct:brownstone_slab:5>,
		<tconstruct:brownstone_slab:6>,
		<tconstruct:brownstone_slab2:1>,
		<tconstruct:brownstone_slab2:2>,
		<tconstruct:brownstone_stairs_brick_cracked:0>,
		<tconstruct:brownstone_stairs_brick_fancy:0>,
		<tconstruct:brownstone_stairs_brick_small:0>,
		<tconstruct:brownstone_stairs_brick_square:0>,
		<tconstruct:brownstone_stairs_brick_triangle:0>,
		<tconstruct:brownstone_stairs_brick:0>,
		<tconstruct:brownstone:3>,
		<tconstruct:deco_ground_slab:0>,
		<tconstruct:deco_ground:0>,
		<tconstruct:dried_brick_stairs:0>,
		<tconstruct:dried_clay_slab:1>,
		<tconstruct:dried_clay:1>,
		<tconstruct:mudbrick_stairs:0>,

		// Misc
		<tconstruct:book:0>,
		<tconstruct:channel:0>,
		<tconstruct:dried_clay_stairs:0>,
		<tconstruct:edible:3>,
		<tconstruct:edible:33>,
		<tconstruct:faucet:0>,
		<tconstruct:firewood_slab:0>,
		<tconstruct:firewood:0>,
		<tconstruct:materials:1>,
		<tconstruct:materials:2>,
		<tconstruct:seared_slab:1>,
		<tconstruct:seared_slab:2>,
		<tconstruct:seared_slab:0>,
		<tconstruct:seared:1>,
		<tconstruct:seared:2>,
		<tconstruct:seared:0>,
		<tconstruct:slime_boots:0>,
		<tconstruct:slime_boots:3>,
		<tconstruct:slime_channel:3>,
		<tconstruct:slime_congealed:3>,
		<tconstruct:slime_dirt:0>,
		<tconstruct:slime:3>,
		<tconstruct:stone_torch:0>
	],

	stageTwo.stage: [
		<tconstruct:cast_custom:1>,
		<tconstruct:cast_custom:2>,
		<tconstruct:cast_custom:3>,
		<tconstruct:cast_custom:4>,
		<tconstruct:cast_custom:0>,
		<tconstruct:cast:0>.withTag({}),
		<tconstruct:cast:0>.withTag({PartType: "tconstruct:shard"}),
		<tconstruct:clay_cast:0>.withTag({}),
		<tconstruct:clay_cast:0>.withTag({PartType: "tconstruct:shard"}),
		<tconstruct:clear_glass:*>,
		<tconstruct:clear_stained_glass:*>,
		<tconstruct:fancy_frame:5>,
		<tconstruct:fancy_frame:6>,
		<tconstruct:fancy_frame:0>,
		<tconstruct:materials:9>,
		<tconstruct:materials:18>,
		<tconstruct:pattern:0>.withTag({}),
		<tconstruct:pattern:0>.withTag({PartType: "tconstruct:shard"}),
		<tconstruct:piggybackpack:0>,
		<tconstruct:seared_furnace_controller:0>,
		<tconstruct:seared_glass:0>,
		<tconstruct:seared_slab:1>,
		<tconstruct:seared_slab:2>,
		<tconstruct:seared_slab:3>,
		<tconstruct:seared_slab:4>,
		<tconstruct:seared_slab:5>,
		<tconstruct:seared_slab:6>,
		<tconstruct:seared_slab:7>,
		<tconstruct:seared_slab:0>,
		<tconstruct:seared_slab2:1>,
		<tconstruct:seared_slab2:2>,
		<tconstruct:seared_slab2:3>,
		<tconstruct:seared_slab2:0>,
		<tconstruct:seared_stairs_brick_cracked:0>,
		<tconstruct:seared_stairs_brick_fancy:0>,
		<tconstruct:seared_stairs_brick_small:0>,
		<tconstruct:seared_stairs_brick_square:0>,
		<tconstruct:seared_stairs_brick_triangle:0>,
		<tconstruct:seared_stairs_brick:0>,
		<tconstruct:seared_stairs_cobble:0>,
		<tconstruct:seared_stairs_creeper:0>,
		<tconstruct:seared_stairs_paver:0>,
		<tconstruct:seared_stairs_road:0>,
		<tconstruct:seared_stairs_stone:0>,
		<tconstruct:seared_stairs_tile:0>,
		<tconstruct:seared_tank:1>,
		<tconstruct:seared_tank:2>,
		<tconstruct:seared_tank:0>,
		<tconstruct:seared:5>,
		<tconstruct:seared:6>,
		<tconstruct:seared:7>,
		<tconstruct:seared:8>,
		<tconstruct:seared:9>,
		<tconstruct:seared:10>,
		<tconstruct:seared:11>,
		<tconstruct:slimesling:0>,
		<tconstruct:smeltery_controller:0>,
		<tconstruct:smeltery_io:0>,
		<tconstruct:soil:1>,
		<tconstruct:stone_torch:0>,
		<tconstruct:tinker_tank_controller:0>,
		<tconstruct:toolforge:0>.withTag({textureBlock: {id: "abyssalcraft:ingotblock", Count: 1 as byte, Damage: 0 as short}}),
		<tconstruct:toolforge:0>.withTag({textureBlock: {id: "abyssalcraft:ingotblock", Count: 1 as byte, Damage: 1 as short}}),
		<tconstruct:toolforge:0>.withTag({textureBlock: {id: "abyssalcraft:ingotblock", Count: 1 as byte, Damage: 2 as short}}),
		<tconstruct:toolforge:0>.withTag({textureBlock: {id: "immersiveengineering:storage", Count: 1 as byte, Damage: 0 as short}}),
		<tconstruct:toolforge:0>.withTag({textureBlock: {id: "immersiveengineering:storage", Count: 1 as byte, Damage: 3 as short}}),
		<tconstruct:toolforge:0>.withTag({textureBlock: {id: "mekanism:basicblock", Count: 1 as byte, Damage: 1 as short}}),
		<tconstruct:toolforge:0>.withTag({textureBlock: {id: "mekanism:basicblock", Count: 1 as byte, Damage: 13 as short}}),
		<tconstruct:toolforge:0>.withTag({textureBlock: {id: "minecraft:gold_block", Count: 1 as byte, Damage: 0 as short}}),
		<tconstruct:toolforge:0>.withTag({textureBlock: {id: "minecraft:iron_block", Count: 1 as byte, Damage: 0 as short}}),
		<tconstruct:toolforge:0>.withTag({textureBlock: {id: "twilightforest:block_storage", Count: 1 as byte, Damage: 1 as short}}),
		<tconstruct:toolforge:0>.withTag({textureBlock: {id: "twilightforest:block_storage", Count: 1 as byte, Damage: 2 as short}})
	],

	stageThree.stage: [
		// Stairs
		<tconstruct:firewood_stairs:0>,
		<tconstruct:lavawood_stairs:0>,

		// Rails
		<tconstruct:wood_rail_trapdoor:0>,
		<tconstruct:wood_rail:0>,

		// Misc
		<tconstruct:brownstone_slab:1>,
		<tconstruct:brownstone_slab:2>,
		<tconstruct:brownstone_slab:7>,
		<tconstruct:brownstone_slab:0>,
		<tconstruct:brownstone_slab2:3>,
		<tconstruct:brownstone_slab2:0>,
		<tconstruct:brownstone_stairs_creeper:0>,
		<tconstruct:brownstone_stairs_paver:0>,
		<tconstruct:brownstone_stairs_road:0>,
		<tconstruct:brownstone_stairs_rough:0>,
		<tconstruct:brownstone_stairs_smooth:0>,
		<tconstruct:brownstone_stairs_tile:0>,
		<tconstruct:brownstone:1>,
		<tconstruct:brownstone:2>,
		<tconstruct:brownstone:4>,
		<tconstruct:brownstone:5>,
		<tconstruct:brownstone:6>,
		<tconstruct:brownstone:7>,
		<tconstruct:brownstone:8>,
		<tconstruct:brownstone:9>,
		<tconstruct:brownstone:10>,
		<tconstruct:brownstone:11>,
		<tconstruct:brownstone:0>,
		<tconstruct:edible:1>,
		<tconstruct:edible:2>,
		<tconstruct:edible:4>,
		<tconstruct:edible:31>,
		<tconstruct:edible:32>,
		<tconstruct:edible:34>,
		<tconstruct:edible:0>,
		<tconstruct:fancy_frame:1>,
		<tconstruct:firewood_slab:1>,
		<tconstruct:firewood:1>,
		<tconstruct:materials:10>,
		<tconstruct:materials:11>,
		<tconstruct:materials:12>,
		<tconstruct:materials:13>,
		<tconstruct:materials:14>,
		<tconstruct:materials:15>,
		<tconstruct:materials:16>,
		<tconstruct:materials:17>,
		<tconstruct:materials:19>,
		<tconstruct:metal:6>,
		<tconstruct:slime_boots:1>,
		<tconstruct:slime_boots:2>,
		<tconstruct:slime_boots:4>,
		<tconstruct:slime_channel:1>,
		<tconstruct:slime_channel:2>,
		<tconstruct:slime_channel:4>,
		<tconstruct:slime_congealed:1>,
		<tconstruct:slime_congealed:2>,
		<tconstruct:slime_congealed:4>,
		<tconstruct:slime_dirt:1>,
		<tconstruct:slime_dirt:2>,
		<tconstruct:slime_dirt:3>,
		<tconstruct:slime_grass:1>,
		<tconstruct:slime_grass:2>,
		<tconstruct:slime_grass:3>,
		<tconstruct:slime_grass:4>,
		<tconstruct:slime_grass:5>,
		<tconstruct:slime_grass:6>,
		<tconstruct:slime_grass:7>,
		<tconstruct:slime_grass:8>,
		<tconstruct:slime_grass:9>,
		<tconstruct:slime_grass:10>,
		<tconstruct:slime_grass:11>,
		<tconstruct:slime_grass:12>,
		<tconstruct:slime_grass:13>,
		<tconstruct:slime_grass:14>,
		<tconstruct:slime_grass:0>,
		<tconstruct:slime_leaves:1>,
		<tconstruct:slime_leaves:2>,
		<tconstruct:slime_leaves:0>,
		<tconstruct:slime_sapling:1>,
		<tconstruct:slime_sapling:2>,
		<tconstruct:slime_sapling:0>,
		<tconstruct:slime:1>,
		<tconstruct:slime:2>,
		<tconstruct:slime:4>,
		<tconstruct:soil:2>,
		<tconstruct:soil:5>,
		<tconstruct:throwball:0>,
		<tconstruct:toolforge:0>.withTag({textureBlock: {id: "immersiveengineering:storage", Count: 1 as byte, Damage: 1 as short}}),
		<tconstruct:toolforge:0>.withTag({textureBlock: {id: "immersiveengineering:storage", Count: 1 as byte, Damage: 2 as short}}),
		<tconstruct:toolforge:0>.withTag({textureBlock: {id: "immersiveengineering:storage", Count: 1 as byte, Damage: 4 as short}}),
		<tconstruct:toolforge:0>.withTag({textureBlock: {id: "immersiveengineering:storage", Count: 1 as byte, Damage: 6 as short}}),
		<tconstruct:toolforge:0>.withTag({textureBlock: {id: "immersiveengineering:storage", Count: 1 as byte, Damage: 7 as short}}),
		<tconstruct:toolforge:0>.withTag({textureBlock: {id: "immersiveengineering:storage", Count: 1 as byte, Damage: 8 as short}}),
		<tconstruct:toolforge:0>.withTag({textureBlock: {id: "tconstruct:metal", Count: 1 as byte, Damage: 3 as short}}),
		<tconstruct:toolforge:0>.withTag({textureBlock: {id: "tconstruct:metal", Count: 1 as byte, Damage: 5 as short}})
	],

	stageFour.stage: [
		<tconstruct:fancy_frame:2>,
		<tconstruct:fancy_frame:3>,
		<tconstruct:fancy_frame:4>,
		<tconstruct:ore:1>,
		<tconstruct:ore:0>,
		<tconstruct:toolforge:0>.withTag({textureBlock: {id: "tconstruct:metal", Count: 1 as byte, Damage: 0 as short}}),
		<tconstruct:toolforge:0>.withTag({textureBlock: {id: "tconstruct:metal", Count: 1 as byte, Damage: 1 as short}}),
		<tconstruct:toolforge:0>.withTag({textureBlock: {id: "tconstruct:metal", Count: 1 as byte, Damage: 2 as short}}),
		<tconstruct:toolforge:0>.withTag({textureBlock: {id: "tconstruct:metal", Count: 1 as byte, Damage: 4 as short}})
	],

	stageCreative.stage: [
		<tconstruct:materials:50>
	]
};

static hiddenItems as IIngredient[] = [
	<tconstruct:moms_spaghetti:0>,
	<tconstruct:slime_grass_tall:1>,
	<tconstruct:slime_grass_tall:4>,
	<tconstruct:slime_grass_tall:5>,
	<tconstruct:slime_grass_tall:8>,
	<tconstruct:slime_grass_tall:9>,
	<tconstruct:slime_grass_tall:0>,
	<tconstruct:slime_vine_blue:0>,
	<tconstruct:slime_vine_blue_end:0>,
	<tconstruct:slime_vine_blue_mid:0>,
	<tconstruct:slime_vine_purple:0>,
	<tconstruct:slime_vine_purple_end:0>,
	<tconstruct:slime_vine_purple_mid:0>,
	<tconstruct:spaghetti:0>
];

static hiddenRemove as IIngredient[] = [
	<tconstruct:slimesling:1>,
	<tconstruct:slimesling:2>,
	<tconstruct:slimesling:3>,
	<tconstruct:slimesling:4>,
	<tconstruct:throwball:1>,
	<tconstruct:toolforge:0>.withTag({textureBlock: {id: "extraplanets:neptune", Count: 1 as byte, Damage: 7 as short}}),
	<tconstruct:toolforge:0>.withTag({textureBlock: {id: "primal:metalblock", Count: 1 as byte, Damage: 12 as short}}),
	<tconstruct:wooden_hopper>,

	// YoYo is here because we don't use the Vanilla system and force the Tinkers Path. So it can be hidden and disabled here!
	<yoyos:cord:0>
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

	// Handle the Tool Tables
	for subItem in <tconstruct:tooltables>.definition.subItems {
		stageTwo.addIngredient(subItem);
	}
}
