/*
    SevTech: Ages Primal Tech Recipe Script

    This script handles the recipes for Primal Tech.

    Note: These scripts are created and for the usage in SevTech: Ages and other
    modpacks curated by DarkPacks. You can use these scripts for reference and for
    learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.zenstages.Utils;

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
	<primal_tech:stone_mallet> : [
		[
			[<minecraft:stone:0>],
			[<ore:stickWood>.firstItem]
		]
	],
	<primal_tech:charcoal_hopper> : [
		[
			[<totemic:cedar_plank:0>, <abyssalcraft:shadowgem:0>, <totemic:cedar_plank:0>],
			[<betterwithmods:material:37>, <primal:shark_tooth:0>, <betterwithmods:material:37>],
			[null, <primal_tech:wooden_hopper>, null]
		]
	],
	<primal_tech:wooden_basin> : [
		[
			[<ore:logWood>, <ore:stickWood>.firstItem, <ore:logWood>],
			[<ore:logWood>, <ore:logWood>, <ore:logWood>],
			[<ore:stickWood>.firstItem, null, <ore:stickWood>.firstItem]
		]
	],
	<primal_tech:stone_anvil> : [
		[
			[<minecraft:stone:0>, <minecraft:stone:0>, <minecraft:stone:0>],
			[null, <minecraft:stone:0>, null],
			[<minecraft:stone_slab:0>, <minecraft:stone_slab:0>, <minecraft:stone_slab:0>]
		]
	],
	<primal_tech:leaf_bed> : [
		[
			[<ore:treeLeaves>, <ore:treeLeaves>, <ore:treeLeaves>],
			[<minecraft:hay_block:0>, <minecraft:hay_block:0>, <minecraft:hay_block:0>]
		]
	],
	<primal_tech:flint_edged_disc> : [
		[
			[null, <primal:flint_knapp:0>, null],
			[<primal:flint_knapp:0>, <ore:gearTin>, <primal:flint_knapp:0>],
			[null, <primal:flint_knapp:0>, null]
		]
	],
	<primal_tech:bone_shears>: [
		[
			[<minecraft:bone:0>, null],
			[<ore:cordageGeneral>, <minecraft:bone:0>]
		]
	],
	<primal_tech:work_stump>: [
		[
			[<horsepower:chopping_block>],
			[<ore:logWood>]
		]
	],
	<primal_tech:work_stump_upgraded>: [
		[
			[null, <immcraft:shelf:0>, null],
			[<horsepower:chopping_block>, <primal_tech:work_stump>, <horsepower:chopping_block>],
			[null, <minecraft:log2:1>, null]
		],
		[
			[null, <immcraft:shelf:0>, null],
			[<horsepower:chopping_block>, <primal_tech:work_stump>, <horsepower:chopping_block>],
			[null, <natura:overworld_logs2:1>, null]
		],
		[
			[null, <immcraft:shelf:0>, null],
			[<horsepower:chopping_block>, <primal_tech:work_stump>, <horsepower:chopping_block>],
			[null, <natura:overworld_logs2:3> | <betterwithaddons:log_sakura:0>, null]
		]
	],
	<primal_tech:clay_kiln>: [
		[
			[<minecraft:clay_ball:0>, <minecraft:clay_ball:0>, <minecraft:clay_ball:0>],
			[<minecraft:clay_ball:0>, null, <minecraft:clay_ball:0>],
			[<minecraft:clay_ball:0>, <ore:slabCobblestone>, <minecraft:clay_ball:0>]
		]
	],
	<primal_tech:wood_club>: [
		[
			[null, <ore:logWood>],
			[<ore:stickWood>.firstItem, null]
		]
	],
	<primal_tech:bone_club>: [
		[
			[null, <minecraft:bone_block:0>],
			[<ore:stickWood>.firstItem, null]
		]
	],
	<primal_tech:stone_club>: [
		[
			[null, <minecraft:stone:0>],
			[<ore:stickWood>.firstItem, null]
		]
	],
	<primal_tech:bone_pickaxe>: [
		[
			[<primal:sharp_bone:0>, <minecraft:bone:0>, <primal:sharp_bone:0>],
			[null, <ore:stickWood>.firstItem, null],
			[null, <ore:stickWood>.firstItem, null]
		]
	],
	<primal_tech:bone_axe>: [
		[
			[<primal:bone_knapp:0>, <minecraft:bone:0>],
			[<primal:bone_knapp:0>, <ore:stickWood>.firstItem],
			[null, <ore:stickWood>.firstItem]
		]
	],
	<primal_tech:bone_shovel>: [
		[
			[<primal:bone_knapp:0>],
			[<ore:stickWood>.firstItem],
			[<ore:stickWood>.firstItem]
		]
	],
	<primal_tech:bone_sword>: [
		[
			[<primal:sharp_bone:0>],
			[<minecraft:bone:0>],
			[<ore:stickWood>.firstItem]
		]
	],
	<primal_tech:fibre_torch>: [
		[
			[<ore:cordageGeneral>],
			[<ore:stickWood>.firstItem]
		]
	],
	<primal_tech:stick_bundle>: [
		[
			[<ore:stickWood>.firstItem, <ore:cordageGeneral>, <ore:stickWood>.firstItem],
			[<ore:stickWood>.firstItem, <ore:stickWood>.firstItem, <ore:stickWood>.firstItem],
			[<ore:stickWood>.firstItem, <ore:cordageGeneral>, <ore:stickWood>.firstItem]
		]
	],
	<primal_tech:stone_grill>: [
		[
			[null, <immcraft:rock:0>, null],
			[<immcraft:rock:0>, null, <immcraft:rock:0>],
			[<minecraft:stone:*>, <minecraft:stone:*>, <minecraft:stone:*>]
		]
	],
	<primal_tech:fluid_bladder>: [
		[
			[<ore:dyeBrown>, <minecraft:dye:0>, <ore:dyeBrown>],
			[<primal:plant_cordage:0>, <primal:plant_cordage:0>, <primal:plant_cordage:0>]
		]
	],
	<primal_tech:wooden_hopper>: [
		[
			[<ore:barkWood>, <minecraft:web:0>, <ore:barkWood>],
			[<ore:barkWood>, <wopper:wopper:0>, <ore:barkWood>],
			[null, <ore:barkWood>, null]
		]
	]
};

static namedShapedRecipes as IIngredient[][][][string][IItemStack] = {
	<primal_tech:charcoal_hopper>: {
		Utils.genRecipeName(stageOne, "charcoal_hopper"): [
			[
				[<tconstruct:firewood:0>],
				[<primal_tech:wooden_hopper>]
			]
		],
		Utils.genRecipeName(stageTwo, "charcoal_hopper"): [
			[
				[<tconstruct:firewood:0>],
				[<minecraft:hopper:0>]
			]
		]
	}
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
	<primal_tech:rock>: [
		[<immcraft:rock:0>]
	]
};

static namedShapelessRecipes as IIngredient[][][string][IItemStack] = {
};

/*
    Recipe Removals
*/
static removeRecipes as IItemStack[] = [
	<primal_tech:leaf_bed>,
	<primal_tech:rock>,
	<primal_tech:stone_anvil>,
	<primal_tech:wooden_hopper>
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

	recipeUtil.removeRecipes(removeRecipes);

	// Specific Recipes/Overrides.
	recipes.addShapeless("primal_tech_fire_sticks",
		<primal_tech:fire_sticks>,
		[<ore:stickWood>.firstItem, <ore:stickWood>.firstItem],
		function(out, ins, cInfo) {
			return out.withTag({
				"rubbingCount": 0,
				"animate": false
			});
		},
		null
	);
}
