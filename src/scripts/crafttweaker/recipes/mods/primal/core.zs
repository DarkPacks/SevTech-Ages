/*
    SevTech: Ages Primal Core Recipe Script

    This script handles the recipes for Primal Core.

    Note: These scripts are created and for the usage in SevTech: Ages and other
    modpacks curated by DarkPacks. You can use these scripts for reference and for
    learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.zenstages.Utils;

import scripts.crafttweaker.craftingUtils;
import scripts.crafttweaker.stages.stageZero;
import scripts.crafttweaker.stages.stageOne;
import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageThree;
import scripts.crafttweaker.stages.stageFour;
import scripts.crafttweaker.stages.stageFive;

/*
    Shaped Recipes
*/
static shapedRecipes as IIngredient[][][][IItemStack] = {
	<primal:slab_yew:0> * 3 : [
		[
			[<primal:planks:1>,<primal:planks:1>, <primal:planks:1>]
		]
	],
	<primal:armor_wolf_body:0> : [
		[
			[<primal:pelt_wolf:0>, null, <primal:pelt_wolf:0>],
			[<primal:pelt_wolf:0>, <primal:pelt_wolf:0>, <primal:pelt_wolf:0>],
			[<primal:pelt_wolf:0>, <primal:pelt_wolf:0>, <primal:pelt_wolf:0>]
		]
	],
	<primal:armor_wolf_feet:0> : [
		[
			[<primal:pelt_wolf:0>, null, <primal:pelt_wolf:0>],
			[<primal:pelt_wolf:0>, null, <primal:pelt_wolf:0>]
		]
	],
	<primal:armor_wolf_head:0> : [
		[
			[<primal:pelt_wolf:0>, <primal:wolf_head_item:0>, <primal:pelt_wolf:0>],
			[<primal:pelt_wolf:0>, null, <primal:pelt_wolf:0>]
		]
	],
	<primal:armor_wolf_legs:0> : [
		[
			[<primal:pelt_wolf:0>, <primal:pelt_wolf:0>, <primal:pelt_wolf:0>],
			[<primal:pelt_wolf:0>, null, <primal:pelt_wolf:0>],
			[<primal:pelt_wolf:0>, null, <primal:pelt_wolf:0>]
		]
	],
	<primal:slat_acacia:0> * 3 : [
		[
			[<minecraft:wooden_slab:4>, <minecraft:wooden_slab:4>, <minecraft:wooden_slab:4>],
			[<ore:stickWood>.firstItem, <ore:stickWood>.firstItem, <ore:stickWood>.firstItem],
			[<minecraft:wooden_slab:4>, <minecraft:wooden_slab:4>, <minecraft:wooden_slab:4>]
		]
	],
	<primal:slat_bigoak:0> * 3 : [
		[
			[<minecraft:wooden_slab:5>, <minecraft:wooden_slab:5>, <minecraft:wooden_slab:5>],
			[<ore:stickWood>.firstItem, <ore:stickWood>.firstItem, <ore:stickWood>.firstItem],
			[<minecraft:wooden_slab:5>, <minecraft:wooden_slab:5>, <minecraft:wooden_slab:5>]
		]
	],
	<primal:slat_birch:0> * 3 : [
		[
			[<minecraft:wooden_slab:2>, <minecraft:wooden_slab:2>, <minecraft:wooden_slab:2>],
			[<ore:stickWood>.firstItem, <ore:stickWood>.firstItem, <ore:stickWood>.firstItem],
			[<minecraft:wooden_slab:2>, <minecraft:wooden_slab:2>, <minecraft:wooden_slab:2>]
		]
	],
	<primal:slat_corypha:0> * 3 : [
		[
			[<primal:slab_corypha:0>, <primal:slab_corypha:0>, <primal:slab_corypha:0>],
			[<ore:stickWood>.firstItem, <ore:stickWood>.firstItem, <ore:stickWood>.firstItem],
			[<primal:slab_corypha:0>, <primal:slab_corypha:0>, <primal:slab_corypha:0>]
		]
	],
	<primal:slat_ironwood:0> * 3 : [
		[
			[<rustic:ironwood_slab_item>, <rustic:ironwood_slab_item>, <rustic:ironwood_slab_item>],
			[<ore:stickWood>.firstItem, <ore:stickWood>.firstItem, <ore:stickWood>.firstItem],
			[<rustic:ironwood_slab_item>, <rustic:ironwood_slab_item>, <rustic:ironwood_slab_item>]
		]
	],
	<primal:slat_jungle:0> * 3 : [
		[
			[<minecraft:wooden_slab:3>, <minecraft:wooden_slab:3>, <minecraft:wooden_slab:3>],
			[<ore:stickWood>.firstItem, <ore:stickWood>.firstItem, <ore:stickWood>.firstItem],
			[<minecraft:wooden_slab:3>, <minecraft:wooden_slab:3>, <minecraft:wooden_slab:3>]
		]
	],
	<primal:slat_lacquer:0> * 3 : [
		[
			[<primal:slab_lacquer:0>, <primal:slab_lacquer:0>, <primal:slab_lacquer:0>],
			[<ore:stickWood>.firstItem, <ore:stickWood>.firstItem, <ore:stickWood>.firstItem],
			[<primal:slab_lacquer:0>, <primal:slab_lacquer:0>, <primal:slab_lacquer:0>]
		]
	],
	<primal:slat_oak:0> * 3 : [
		[
			[<minecraft:wooden_slab:0>, <minecraft:wooden_slab:0>, <minecraft:wooden_slab:0>],
			[<ore:stickWood>.firstItem, <ore:stickWood>.firstItem, <ore:stickWood>.firstItem],
			[<minecraft:wooden_slab:0>, <minecraft:wooden_slab:0>, <minecraft:wooden_slab:0>]
		]
	],
	<primal:slat_spruce:0> * 3 : [
		[
			[<minecraft:wooden_slab:1>, <minecraft:wooden_slab:1>, <minecraft:wooden_slab:1>],
			[<ore:stickWood>.firstItem, <ore:stickWood>.firstItem, <ore:stickWood>.firstItem],
			[<minecraft:wooden_slab:1>, <minecraft:wooden_slab:1>, <minecraft:wooden_slab:1>]
		]
	],
	<primal:barrel:0> : [
		// [
		// 	[<ore:barrelPlank>, null, <ore:barrelPlank>],
		// 	[<ore:barrelPlank>, null, <ore:barrelPlank>],
		// 	[<ore:barrelPlank>, <ore:barrelSlab>, <ore:barrelPlank>]
		// ]
		[
			[<minecraft:planks:0>, null, <minecraft:planks:0>],
			[<minecraft:planks:0>, null, <minecraft:planks:0>],
			[<minecraft:planks:0>, <minecraft:wooden_slab:0>, <minecraft:planks:0>]
		]
	],
	<primal:barrel:1> : [
		[
			[<minecraft:planks:1>, null, <minecraft:planks:1>],
			[<minecraft:planks:1>, null, <minecraft:planks:1>],
			[<minecraft:planks:1>, <minecraft:wooden_slab:1>, <minecraft:planks:1>]
		]
	],
	<primal:barrel:2> : [
		[
			[<minecraft:planks:2>, null, <minecraft:planks:2>],
			[<minecraft:planks:2>, null, <minecraft:planks:2>],
			[<minecraft:planks:2>, <minecraft:wooden_slab:2>, <minecraft:planks:2>]
		]
	],
	<primal:barrel:3> : [
		[
			[<minecraft:planks:3>, null, <minecraft:planks:3>],
			[<minecraft:planks:3>, null, <minecraft:planks:3>],
			[<minecraft:planks:3>, <minecraft:wooden_slab:3>, <minecraft:planks:3>]
		]
	],
	<primal:barrel:4> : [
		[
			[<minecraft:planks:4>, null, <minecraft:planks:4>],
			[<minecraft:planks:4>, null, <minecraft:planks:4>],
			[<minecraft:planks:4>, <minecraft:wooden_slab:4>, <minecraft:planks:4>]
		]
	],
	<primal:barrel:5> : [
		[
			[<minecraft:planks:5>, null, <minecraft:planks:5>],
			[<minecraft:planks:5>, null, <minecraft:planks:5>],
			[<minecraft:planks:5>, <minecraft:wooden_slab:5>, <minecraft:planks:5>]
		]
	],
	<primal:barrel:6> : [
		[
			[<rustic:planks:1>, null, <rustic:planks:1>],
			[<rustic:planks:1>, null, <rustic:planks:1>],
			[<rustic:planks:1>, <rustic:ironwood_slab_item>, <rustic:planks:1>]
		]
	],
	<primal:barrel:7> : [
		[
			[<primal:planks:1>, null, <primal:planks:1>],
			[<primal:planks:1>, null, <primal:planks:1>],
			[<primal:planks:1>, <primal:slab_yew:0>, <primal:planks:1>]
		]
	],
	<primal:barrel:8> : [
		[
			[<primal:planks:2>, null, <primal:planks:2>],
			[<primal:planks:2>, null, <primal:planks:2>],
			[<primal:planks:2>, <primal:slab_lacquer:0>, <primal:planks:2>]
		]
	],
	<primal:barrel:9> : [
		[
			[<primal:planks:3>, null, <primal:planks:3>],
			[<primal:planks:3>, null, <primal:planks:3>],
			[<primal:planks:3>, <primal:slab_corypha:0>, <primal:planks:3>]
		]
	],

	<primal:barrel_oak_lid:0> : [
		[
			[null, <ore:slabOak>, null],
			[<ore:slabOak>, null, <ore:slabOak>],
			[null, <ore:slabOak>, null]
		]
	],
	<primal:barrel_spruce_lid:0> : [
		[
			[null, <ore:slabSpruce>, null],
			[<ore:slabSpruce>, null, <ore:slabSpruce>],
			[null, <ore:slabSpruce>, null]
		]
	],
	<primal:barrel_birch_lid:0> : [
		[
			[null, <ore:slabBirch>, null],
			[<ore:slabBirch>, null, <ore:slabBirch>],
			[null, <ore:slabBirch>, null]
		]
	],
	<primal:barrel_jungle_lid:0> : [
		[
			[null, <ore:slabJungle>, null],
			[<ore:slabJungle>, null, <ore:slabJungle>],
			[null, <ore:slabJungle>, null]
		]
	],
	<primal:barrel_acacia_lid:0> : [
		[
			[null, <ore:slabAcacia>, null],
			[<ore:slabAcacia>, null, <ore:slabAcacia>],
			[null, <ore:slabAcacia>, null]
		]
	],
	<primal:barrel_dark_oak_lid:0> : [
		[
			[null, <ore:slabDarkOak>, null],
			[<ore:slabDarkOak>, null, <ore:slabDarkOak>],
			[null, <ore:slabDarkOak>, null]
		]
	],
	<primal:barrel_ironwood_lid:0> : [
		[
			[null, <rustic:ironwood_slab_item>, null],
			[<rustic:ironwood_slab_item>, null, <rustic:ironwood_slab_item>],
			[null, <rustic:ironwood_slab_item>, null]
		]
	],
	<primal:barrel_yew_lid:0> : [
		[
			[null, <primal:slab_yew:0>, null],
			[<primal:slab_yew:0>, null, <primal:slab_yew:0>],
			[null, <primal:slab_yew:0>, null]
		]
	],
	<primal:barrel_corypha_lid:0> : [
		[
			[null, <primal:slab_corypha:0>, null],
			[<primal:slab_corypha:0>, null, <primal:slab_corypha:0>],
			[null, <primal:slab_corypha:0>, null]
		]
	],
	<primal:barrel_lacquer_lid:0> : [
		[
			[null, <primal:slab_lacquer:0>, null],
			[<primal:slab_lacquer:0>, null, <primal:slab_lacquer:0>],
			[null, <primal:slab_lacquer:0>, null]
		]
	],
	<primal:storage_crate:1> : [
		[
			[<minecraft:planks:1>, <minecraft:planks:1>, <minecraft:planks:1>],
			[<minecraft:planks:1>, <minecraft:chest:0>, <minecraft:planks:1>],
			[<minecraft:planks:1>, <minecraft:planks:1>, <minecraft:planks:1>]
		]
	],
	<primal:storage_crate:2> : [
		[
			[<minecraft:planks:2>, <minecraft:planks:2>, <minecraft:planks:2>],
			[<minecraft:planks:2>, <minecraft:chest:0>, <minecraft:planks:2>],
			[<minecraft:planks:2>, <minecraft:planks:2>, <minecraft:planks:2>]
		]
	],
	<primal:storage_crate:3> : [
		[
			[<minecraft:planks:3>, <minecraft:planks:3>, <minecraft:planks:3>],
			[<minecraft:planks:3>, <minecraft:chest:0>, <minecraft:planks:3>],
			[<minecraft:planks:3>, <minecraft:planks:3>, <minecraft:planks:3>]
		]
	],
	<primal:storage_crate:4> : [
		[
			[<minecraft:planks:4>, <minecraft:planks:4>, <minecraft:planks:4>],
			[<minecraft:planks:4>, <minecraft:chest:0>, <minecraft:planks:4>],
			[<minecraft:planks:4>, <minecraft:planks:4>, <minecraft:planks:4>]
		]
	],
	<primal:storage_crate:5> : [
		[
			[<minecraft:planks:5>, <minecraft:planks:5>, <minecraft:planks:5>],
			[<minecraft:planks:5>, <minecraft:chest:0>, <minecraft:planks:5>],
			[<minecraft:planks:5>, <minecraft:planks:5>, <minecraft:planks:5>]
		]
	],
	<primal:storage_crate:6> : [
		[
			[<rustic:planks:1>, <rustic:planks:1>, <rustic:planks:1>],
			[<rustic:planks:1>, <minecraft:chest:0>, <rustic:planks:1>],
			[<rustic:planks:1>, <rustic:planks:1>, <rustic:planks:1>]
		]
	],
	<primal:storage_crate:7> : [
		[
			[<primal:planks:1>, <primal:planks:1>, <primal:planks:1>],
			[<primal:planks:1>, <minecraft:chest:0>, <primal:planks:1>],
			[<primal:planks:1>, <primal:planks:1>, <primal:planks:1>]
		]
	],
	<primal:storage_crate:8> : [
		[
			[<primal:planks:2>, <primal:planks:2>, <primal:planks:2>],
			[<primal:planks:2>, <minecraft:chest:0>, <primal:planks:2>],
			[<primal:planks:2>, <primal:planks:2>, <primal:planks:2>]
		]
	],
	<primal:storage_crate:9> : [
		[
			[<primal:planks:3>, <primal:planks:3>, <primal:planks:3>],
			[<primal:planks:3>, <minecraft:chest:0>, <primal:planks:3>],
			[<primal:planks:3>, <primal:planks:3>, <primal:planks:3>]
		]
	],
	<primal:storage_crate:0> : [
		[
			[<minecraft:planks:0>, <minecraft:planks:0>, <minecraft:planks:0>],
			[<minecraft:planks:0>, <minecraft:chest:0>, <minecraft:planks:0>],
			[<minecraft:planks:0>, <minecraft:planks:0>, <minecraft:planks:0>]
		]
	],
	<primal:iron_workblade:0> : [
		[
			[metals.iron.plate, <ore:stickWood>.firstItem, metals.iron.plate],
			[metals.iron.plate, <ore:stickWood>.firstItem, metals.iron.plate],
			[null, <ore:stickWood>.firstItem, null]
		]
	],
	<primal:diamond_workblade:0>: [
		[
			[<minecraft:diamond:0>, <ore:stickWood>.firstItem, <minecraft:diamond:0>],
			[<minecraft:diamond:0>, <ore:stickWood>.firstItem, <minecraft:diamond:0>],
			[null, <ore:stickWood>.firstItem, null]
		]
	],
	<primal:emerald_workblade:0>: [
		[
			[<minecraft:emerald:0>, <ore:stickWood>.firstItem, <minecraft:emerald:0>],
			[<minecraft:emerald:0>, <ore:stickWood>.firstItem, <minecraft:emerald:0>],
			[null, <ore:stickWood>.firstItem, null]
		]
	],
	// Thatching
	<primal:thatching_wet:0> * 4: [
		[
			[<ore:thatchingMaterialBasic>, <ore:thatchingMaterialBasic>],
			[<ore:thatchingMaterialBasic>, <ore:thatchingMaterialBasic>]
		]
	],
	<primal:thatch_wet:0>: [
		[
			[<primal:thatching_wet:0>, <primal:thatching_wet:0>],
			[<primal:thatching_wet:0>, <primal:thatching_wet:0>]
		]
	],
	<primal:thatch:0>: [
		[
			[<primal:thatching_dry:0>, <primal:thatching_dry:0>]
		]
	],
	<primal:leather_cordage:0>: [
		[
			[null, <primal:leather_strip:0>, null],
			[<primal:leather_strip:0>, <minecraft:string:0>, <primal:leather_strip:0>]
		]
	],
	<primal:mud_wet:0>: [
		[
			[<primal:mud_clump:0>, <primal:mud_clump:0>],
			[<primal:mud_clump:0>, <primal:mud_clump:0>]
		]
	],
	// Flint tools
	<primal:flint_hatchet:0>: [
		[
			[<ore:cordageGeneral>, <primal:flint_knapp:0>],
			[<ore:stickWood>.firstItem, null]
		]
	],
	<primal:flint_shovel:0>: [
		[
			[null, <ore:cordageGeneral>, <primal:flint_knapp:0>],
			[null, <ore:stickWood>.firstItem, <ore:cordageGeneral>],
			[<ore:stickWood>.firstItem, null, null]
		]
	],
	<primal:flint_hoe:0>: [
		[
			[null, <primal:flint_knapp:0>, <minecraft:flint:0>],
			[null, <ore:stickWood>.firstItem, <ore:cordageGeneral>],
			[<ore:stickWood>.firstItem, null, null]
		]
	],
	<primal:flint_axe:0>: [
		[
			[null, <primal:flint_knapp:0>, <primal:flint_knapp:0>],
			[<ore:cordageGeneral>, <ore:stickWood>.firstItem, <minecraft:flint:0>],
			[<ore:stickWood>.firstItem, <ore:cordageGeneral>, null]
		]
	],
	<primal:flint_shears:0>: [
		[
			[<primal:flint_knapp:0>, null, null],
			[<primal:flint_knapp:0>, null, null],
			[<ore:cordageGeneral>, <primal:flint_knapp:0>, <primal:flint_knapp:0>]
		]
	],
	<primal:flint_workblade:0>: [
		[
			[<primal:flint_knapp:0>, <ore:cordageGeneral>, <primal:flint_knapp:0>],
			[<primal:flint_knapp:0>, <ore:stickWood>.firstItem, <primal:flint_knapp:0>],
			[null, <ore:stickWood>.firstItem, null]
		]
	],
	<primal:flint_saw:0>: [
		[
			[<ore:cordageGeneral>, null, null],
			[<primal:flint_knapp:0>, <ore:stickWood>.firstItem, null],
			[null, <primal:flint_knapp:0>, <ore:stickWood>.firstItem]
		]
	],
	<primal:flint_pickaxe:0>: [
		[
			[null, <primal:flint_knapp:0>, <ore:cordageGeneral>],
			[null, <ore:stickWood>.firstItem, <primal:flint_knapp:0>],
			[<ore:stickWood>.firstItem, null, null]
		]
	]
};

static namedShapedRecipes as IIngredient[][][][string][IItemStack] = {
};

/*
    Mirrored Recipes
*/
static mirroredRecipes as IIngredient[][][][IItemStack] = {
};

static namedMirroredRecipes as IIngredient[][][][string][IItemStack] = {
};

/*
    Shapeless Recipes
*/
static shapelessRecipes as IIngredient[][][IItemStack] = {
	<primal:bark_acacia:0> : [
		[<minecraft:log2:0>.transformReplace(<primal:logs_stripped:4>), <ore:toolWorkBlade>]
	],
	<primal:bark_bigoak:0> : [
		[<minecraft:log2:1>.transformReplace(<primal:logs_stripped:5>), <ore:toolWorkBlade>]
	],
	<primal:bark_birch:0> : [
		[<minecraft:log:2>.transformReplace(<primal:logs_stripped:2>), <ore:toolWorkBlade>]
	],
	<primal:bark_jungle:0> : [
		[<minecraft:log:3>.transformReplace(<primal:logs_stripped:3>), <ore:toolWorkBlade>]
	],
	<primal:bark_oak:0> : [
		[<minecraft:log:0>.transformReplace(<primal:logs_stripped:0>), <ore:toolWorkBlade>]
	],
	<primal:bark_spruce:0> : [
		[<minecraft:log:1>.transformReplace(<primal:logs_stripped:1>), <ore:toolWorkBlade>]
	],
	<primal:bark_yew:0> : [
		[<primal:logs:1>.transformReplace(<primal:logs_stripped:7>), <ore:toolWorkBlade>]
	],
	<primal:bark_ironwood:0> : [
		[<primal:logs:0>.transformReplace(<primal:logs_stripped:6>), <ore:toolWorkBlade>],
		[<rustic:log:1>.transformReplace(<primal:logs_stripped:6>), <ore:toolWorkBlade>]
	],
	<primal:corn_seeds:0> : [
		[<primal:corn_cob:0>, <ore:toolWorkBlade>]
	],
	<primal:plant_fiber_pulp:0> * 3 : [
		[<betterwithmods:material:22>, <betterwithmods:material:12>, craftingUtils.getBucketAndTankIngredient(<liquid:water>)],
		[<betterwithmods:material:22>, <betterwithmods:material:12>, <primal_tech:fluid_bladder:1>.withTag({Fluid: {FluidName: "water", Amount: 1000}})]
	],
	<primal:hide_raw:0> * 1: [
		[<ore:toolWorkBlade>, <minecraft:rabbit_hide:0>, <minecraft:rabbit_hide:0>, <minecraft:rabbit_hide:0>, <minecraft:rabbit_hide:0>]
	],
	<primal:hide_raw:0> * 6: [
		[<ore:toolWorkBlade>, <totemic:buffalo_items:0>]
	],
	<primal:hide_raw:0> * 4: [
		[<ore:toolWorkBlade>, <ore:peltLarge>]
	],
	<primal:hide_raw:0> * 2: [
		[<ore:toolWorkBlade>, <primal:pelt_animal:0>],
		[<ore:toolWorkBlade>, <ore:peltWolf>],
		[<ore:toolWorkBlade>, <ore:peltPig>],
		[<ore:toolWorkBlade>, <ore:peltAtre>],
		[<ore:toolWorkBlade>, <animalium:wild_dog_pelt:0>]
	],
	<primal:hide_raw:0> * 3: [
		[<ore:toolWorkBlade>, <primal:pigman_hide_raw:0>],
		[<ore:toolWorkBlade>, <ore:peltSheep>],
		[<ore:toolWorkBlade>, <primal:pelt_shark:0>]
	],
	// Leather Processing
	<primal:hide_salted:0>: [
		[<primal:hide_raw:0>, <ore:foodSalt>, <primal_tech:fluid_bladder:1>.withTag({Fluid: {FluidName: "water", Amount: 1000}})]
	],
	<primal:hide_tanned:0>: [
		[<primal_tech:fluid_bladder:1>.withTag({Fluid: {FluidName: "water", Amount: 1000}}), <primal:hide_dried:0>, <primal:tannin_ground:0>]
	],
	// Mud Clump
	<primal:mud_clump:0>: [
		[<minecraft:dirt:0>, <minecraft:dirt:0>, <ore:bottleWater>.transformReplace(<minecraft:glass_bottle:0>)],
		[<minecraft:dirt:0>, <minecraft:dirt:0>, craftingUtils.getBucketAndTankIngredient(<liquid:water>)],
		[<minecraft:dirt:0>, <minecraft:dirt:0>, <primal_tech:fluid_bladder:1>.withTag({Fluid: {FluidName: "water", Amount: 1000}})]
	],
	<primal:plant_cordage:0>: [
		[<primal:plant_fiber:0>, <primal:plant_fiber:0>, <primal:plant_fiber:0>]
	],
	<primal:leather_strip:0> * 9: [
		[<minecraft:leather:0>, <ore:toolWorkBlade>]
	],
	<primal:plant_cloth:0>: [
		[<ore:cordageGeneral>, <ore:cordageGeneral>, <ore:cordageGeneral>, <ore:cordageGeneral>, <ore:cordageGeneral>, <ore:cordageGeneral>, <ore:cordageGeneral>, <ore:cordageGeneral>, <ore:cordageGeneral>]
	],
	//Adding back primal core stacked logs
	<primal:logs_stacked>: [
		[<primal:logs_stripped>, <primal:logs_stripped>]
	],
	<primal:logs_stacked:1>: [
		[<primal:logs_stripped:1>, <primal:logs_stripped:1>]
	],
	<primal:logs_stacked:2>: [
		[<primal:logs_stripped:2>, <primal:logs_stripped:2>]
	],
	<primal:logs_stacked:3>: [
		[<primal:logs_stripped:3>, <primal:logs_stripped:3>]
	],
	<primal:logs_stacked:4>: [
		[<primal:logs_stripped:4>, <primal:logs_stripped:4>]
	],
	<primal:logs_stacked:5>: [
		[<primal:logs_stripped:5>, <primal:logs_stripped:5>]
	],
	<primal:logs_stacked:6>: [
		[<primal:logs_stripped:6>, <primal:logs_stripped:6>]
	],
	<primal:logs_stacked:7>: [
		[<primal:logs_stripped:7>, <primal:logs_stripped:7>]
	]
};

static namedShapelessRecipes as IIngredient[][][string][IItemStack] = {
	<primal:nether_cordage:0>: {
		Utils.genRecipeName(stageThree, <primal:nether_cordage:0>): [
			[<primal:nether_fiber:0>, <primal:nether_fiber:0>, <primal:nether_fiber:0>]
		]
	}
};

/*
	Furnace Recipes
*/
static furnaceRecipes as IIngredient[][IItemStack] = {
	<primal:shark_meat_cooked:0>: [<primal:shark_meat_raw:0>]
};

/*
    Recipe Removals
*/
static removeRecipes as IItemStack[] = [
	<primal:leather_cordage:0>,
	<primal:logs_stripped:*>,
	<primal:smelter:2>.withTag({type: "cinis"}),
	<primal:smelter:1>.withTag({type: "terra"}),
	<primal:smelter:0>.withTag({type: "mud"}),
	<primal:smelter:*>,
	<primal:thatching_wet:0>,

	// Remove all the Wall Recipes to be sure about the mod adding them somehow.
	<primal:wall:*>,
	<primal:common_stone:*>,
	<primal:sarsen_stone:*>,
	<primal:blue_stone:*>,
	<primal:ortho_stone:*>,
	<primal:schist_green_stone:*>,
	<primal:schist_blue_stone:*>,
	<primal:scoria_stone:*>,
	<primal:purpurite_stone:*>,
	<primal:ferro_stone:*>,
	<primal:carbonate_stone:*>,
	<primal:nether_stone:*>,
	<primal:eroded_end_stone:*>,
	<primal:soul_stone:*>,
	<primal:terracotta_block:*>,
	<primal:ciniscotta_block:*>,
	<primal:desiccated_stone:*>,
	<primal:mud_dried:*>,
	<primal:nether_earth:*>,
	<primal:night_stone:*>,
	<primal:porphyry_stone:*>
];

static removeRegex as string[] = [
	"primal:diamond_boots",
	"primal:diamond_chestplate",
	"primal:diamond_helmet",
	"primal:diamond_leggings"
];

static removeFurnace as IIngredient[] = [
	<primal:carbonate_stone:0>,
	<primal:diamond_plate:0>,
	<primal:pelt_wolf:0>,
	<primal:ironglass:0>,
	<primal:valus_bread:0>
];

function init() {
	// Un-named recipes
	recipeUtil.process(shapedRecipes, false);
    recipeUtil.process(mirroredRecipes, true);
    recipeUtil.process(shapelessRecipes);

	// Named recipes
	recipeUtil.processNamed(namedShapedRecipes, false);
    recipeUtil.processNamed(namedMirroredRecipes, true);
    recipeUtil.processNamed(namedShapelessRecipes);

	// Furnace recipes
	recipeUtil.processFurnace(furnaceRecipes);

	recipeUtil.removeRecipes(removeRecipes);
	recipeUtil.removeRecipes(removeRegex);
	recipeUtil.removeFurnace(removeFurnace);
}
