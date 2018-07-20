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
			[<minecraft:stone>, null],
			[<ore:stickWood>.firstItem, null]
		]
	],
	<primal_tech:charcoal_hopper> : [
		[
			[null, null, null],
			[null, <tconstruct:firewood>, null],
			[null, <primal_tech:wooden_hopper>, null]
		],
		[
			[<totemic:cedar_plank>, <abyssalcraft:shadowgem>, <totemic:cedar_plank>],
			[<betterwithmods:material:37>, <primal:shark_tooth>, <betterwithmods:material:37>],
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
			[<minecraft:stone>, <minecraft:stone>, <minecraft:stone>],
			[null, <minecraft:stone>, null],
			[<minecraft:stone_slab>, <minecraft:stone_slab>, <minecraft:stone_slab>]
		]
	],
	<primal_tech:leaf_bed> : [
		[
			[null, null, null],
			[<ore:treeLeaves>, <ore:treeLeaves>, <ore:treeLeaves>],
			[<minecraft:hay_block>, <minecraft:hay_block>, <minecraft:hay_block>]
		]
	],
	<primal_tech:flint_edged_disc> : [
		[
			[null, <primal:flint_knapp>, null],
			[<primal:flint_knapp>, <ore:gearTin>, <primal:flint_knapp>],
			[null, <primal:flint_knapp>, null]
		]
	],
	<primal_tech:bone_shears>: [
		[
			[<minecraft:bone>, null],
			[<ore:cordageGeneral>, <minecraft:bone>]
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
			[null, <immcraft:shelf>, null],
			[<horsepower:chopping_block>, <primal_tech:work_stump>, <horsepower:chopping_block>],
			[null, <minecraft:log2:1>, null]
		],
		[
			[null, <immcraft:shelf>, null],
			[<horsepower:chopping_block>, <primal_tech:work_stump>, <horsepower:chopping_block>],
			[null, <natura:overworld_logs2:1>, null]
		],
		[
			[null, <immcraft:shelf>, null],
			[<horsepower:chopping_block>, <primal_tech:work_stump>, <horsepower:chopping_block>],
			[null, <natura:overworld_logs2:3> | <betterwithaddons:log_sakura>, null]
		]
	],
	<primal_tech:clay_kiln>: [
		[
			[<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>],
			[<minecraft:clay_ball>, null, <minecraft:clay_ball>],
			[<minecraft:clay_ball>, <ore:slabCobblestone>, <minecraft:clay_ball>]
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
			[null, <minecraft:bone_block>],
			[<ore:stickWood>.firstItem, null]
		]
	],
	<primal_tech:stone_club>: [
		[
			[null, <minecraft:stone>],
			[<ore:stickWood>.firstItem, null]
		]
	],
	<primal_tech:bone_pickaxe>: [
		[
			[<primal:sharp_bone>, <minecraft:bone>, <primal:sharp_bone>],
			[null, <ore:stickWood>.firstItem, null],
			[null, <ore:stickWood>.firstItem, null]
		]
	],
	<primal_tech:bone_axe>: [
		[
			[<primal:bone_knapp>, <minecraft:bone>, null],
			[<primal:bone_knapp>, <ore:stickWood>.firstItem, null],
			[null, <ore:stickWood>.firstItem, null]
		]
	],
	<primal_tech:bone_shovel>: [
		[
			[null, <primal:bone_knapp>, null],
			[null, <ore:stickWood>.firstItem, null],
			[null, <ore:stickWood>.firstItem, null]
		]
	],
	<primal_tech:bone_sword>: [
		[
			[null, <primal:sharp_bone>, null],
			[null, <minecraft:bone>, null],
			[null, <ore:stickWood>.firstItem, null]
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
			[null, <immcraft:rock>, null],
			[<immcraft:rock>, null, <immcraft:rock>],
			[<minecraft:stone:*>, <minecraft:stone:*>, <minecraft:stone:*>]
		]
	],
	<primal_tech:fluid_bladder>: [
		[
			[null, null, null],
			[<ore:dyeBrown>, <minecraft:dye>, <ore:dyeBrown>],
			[<primal:plant_cordage>, <primal:plant_cordage>, <primal:plant_cordage>]
		]
	],
	<primal_tech:wooden_hopper>: [
		[
			[<ore:barkWood>, <minecraft:web>, <ore:barkWood>],
			[<ore:barkWood>, <wopper:wopper>, <ore:barkWood>],
			[null, <ore:barkWood>, null]
		]
	]
};

static namedShapedRecipes as IIngredient[][][][string][IItemStack] = {
	<primal_tech:charcoal_hopper>: {
		Utils.genRecipeName(stageTwo, "charcoal_hopper"): [
			[
				[null, null, null],
				[null, <tconstruct:firewood>, null],
				[null, <minecraft:hopper>, null]
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
		[<immcraft:rock>]
	]
};

static namedShapelessRecipes as IIngredient[][][string][IItemStack] = {
};

/*
    Recipe Removals
*/
static removeRecipes as IIngredient[] = [
	<primal_tech:leaf_bed>,
	<primal_tech:rock>,
	<primal_tech:stone_anvil>,
	<primal_tech:wooden_hopper>
];

function init() {
	// Un-named recipes
	var shapedRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.primaltech.shapedRecipes;
	var mirroredRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.primaltech.mirroredRecipes;
	var shapelessRecipes as IIngredient[][][IItemStack] = scripts.crafttweaker.recipes.mods.primaltech.shapelessRecipes;

	// Named recipes
	var namedShapedRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.primaltech.namedShapedRecipes;
	var namedMirroredRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.primaltech.namedMirroredRecipes;
	var namedShapelessRecipes as IIngredient[][][string][IItemStack] = scripts.crafttweaker.recipes.mods.primaltech.namedShapelessRecipes;

	var removeRecipes as IItemStack[] = scripts.crafttweaker.recipes.mods.primaltech.removeRecipes;

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
