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
	<primal:slab_yew> * 3 : [
		[
			[<primal:planks:1>,<primal:planks:1>, <primal:planks:1>]
		]
	],
	<primal:armor_wolf_body> : [
		[
			[<primal:pelt_wolf>, null, <primal:pelt_wolf>],
			[<primal:pelt_wolf>, <primal:pelt_wolf>, <primal:pelt_wolf>],
			[<primal:pelt_wolf>, <primal:pelt_wolf>, <primal:pelt_wolf>]
		]
	],
	<primal:armor_wolf_feet> : [
		[
			[<primal:pelt_wolf>, null, <primal:pelt_wolf>],
			[<primal:pelt_wolf>, null, <primal:pelt_wolf>]
		]
	],
	<primal:armor_wolf_head> : [
		[
			[<primal:pelt_wolf>, <primal:wolf_head_item>, <primal:pelt_wolf>],
			[<primal:pelt_wolf>, null, <primal:pelt_wolf>]
		]
	],
	<primal:armor_wolf_legs> : [
		[
			[<primal:pelt_wolf>, <primal:pelt_wolf>, <primal:pelt_wolf>],
			[<primal:pelt_wolf>, null, <primal:pelt_wolf>],
			[<primal:pelt_wolf>, null, <primal:pelt_wolf>]
		]
	],
	<primal:slab_ironwood> * 3 : [
		[
			[<primal:planks:0>, <primal:planks:0>, <primal:planks:0>]
		]
	],
	<primal:slat_acacia> * 3 : [
		[
			[<minecraft:wooden_slab:4>, <minecraft:wooden_slab:4>, <minecraft:wooden_slab:4>],
			[<ore:stickWood>.firstItem, <ore:stickWood>.firstItem, <ore:stickWood>.firstItem],
			[<minecraft:wooden_slab:4>, <minecraft:wooden_slab:4>, <minecraft:wooden_slab:4>]
		]
	],
	<primal:slat_bigoak> * 3 : [
		[
			[<minecraft:wooden_slab:5>, <minecraft:wooden_slab:5>, <minecraft:wooden_slab:5>],
			[<ore:stickWood>.firstItem, <ore:stickWood>.firstItem, <ore:stickWood>.firstItem],
			[<minecraft:wooden_slab:5>, <minecraft:wooden_slab:5>, <minecraft:wooden_slab:5>]
		]
	],
	<primal:slat_birch> * 3 : [
		[
			[<minecraft:wooden_slab:2>, <minecraft:wooden_slab:2>, <minecraft:wooden_slab:2>],
			[<ore:stickWood>.firstItem, <ore:stickWood>.firstItem, <ore:stickWood>.firstItem],
			[<minecraft:wooden_slab:2>, <minecraft:wooden_slab:2>, <minecraft:wooden_slab:2>]
		]
	],
	<primal:slat_corypha> * 3 : [
		[
			[<primal:slab_corypha>, <primal:slab_corypha>, <primal:slab_corypha>],
			[<ore:stickWood>.firstItem, <ore:stickWood>.firstItem, <ore:stickWood>.firstItem],
			[<primal:slab_corypha>, <primal:slab_corypha>, <primal:slab_corypha>]
		]
	],
	<primal:slat_ironwood> * 3 : [
		[
			[<primal:slab_ironwood>, <primal:slab_ironwood>, <primal:slab_ironwood>],
			[<ore:stickWood>.firstItem, <ore:stickWood>.firstItem, <ore:stickWood>.firstItem],
			[<primal:slab_ironwood>, <primal:slab_ironwood>, <primal:slab_ironwood>]
		]
	],
	<primal:slat_jungle> * 3 : [
		[
			[<minecraft:wooden_slab:3>, <minecraft:wooden_slab:3>, <minecraft:wooden_slab:3>],
			[<ore:stickWood>.firstItem, <ore:stickWood>.firstItem, <ore:stickWood>.firstItem],
			[<minecraft:wooden_slab:3>, <minecraft:wooden_slab:3>, <minecraft:wooden_slab:3>]
		]
	],
	<primal:slat_lacquer> * 3 : [
		[
			[<primal:slab_lacquer>, <primal:slab_lacquer>, <primal:slab_lacquer>],
			[<ore:stickWood>.firstItem, <ore:stickWood>.firstItem, <ore:stickWood>.firstItem],
			[<primal:slab_lacquer>, <primal:slab_lacquer>, <primal:slab_lacquer>]
		]
	],
	<primal:slat_oak> * 3 : [
		[
			[<minecraft:wooden_slab>, <minecraft:wooden_slab>, <minecraft:wooden_slab>],
			[<ore:stickWood>.firstItem, <ore:stickWood>.firstItem, <ore:stickWood>.firstItem],
			[<minecraft:wooden_slab>, <minecraft:wooden_slab>, <minecraft:wooden_slab>]
		]
	],
	<primal:slat_spruce> * 3 : [
		[
			[<minecraft:wooden_slab:1>, <minecraft:wooden_slab:1>, <minecraft:wooden_slab:1>],
			[<ore:stickWood>.firstItem, <ore:stickWood>.firstItem, <ore:stickWood>.firstItem],
			[<minecraft:wooden_slab:1>, <minecraft:wooden_slab:1>, <minecraft:wooden_slab:1>]
		]
	],
	<primal:barrel> : [
		[
			[<ore:barrelPlank>, null, <ore:barrelPlank>],
			[<ore:barrelPlank>, null, <ore:barrelPlank>],
			[<ore:barrelPlank>, <ore:barrelSlab>, <ore:barrelPlank>]
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
			[<primal:planks>, null, <primal:planks>],
			[<primal:planks>, null, <primal:planks>],
			[<primal:planks>, <primal:slab_ironwood>, <primal:planks>]
		]
	],
	<primal:barrel:7> : [
		[
			[<primal:planks:1>, null, <primal:planks:1>],
			[<primal:planks:1>, null, <primal:planks:1>],
			[<primal:planks:1>, <primal:slab_yew>, <primal:planks:1>]
		]
	],
	<primal:barrel:8> : [
		[
			[<primal:planks:2>, null, <primal:planks:2>],
			[<primal:planks:2>, null, <primal:planks:2>],
			[<primal:planks:2>, <primal:slab_lacquer>, <primal:planks:2>]
		]
	],
	<primal:barrel:9> : [
		[
			[<primal:planks:3>, null, <primal:planks:3>],
			[<primal:planks:3>, null, <primal:planks:3>],
			[<primal:planks:3>, <primal:slab_corypha>, <primal:planks:3>]
		]
	],

	<primal:barrel_oak_lid> : [
		[
			[null, <ore:slabOak>, null],
			[<ore:slabOak>, null, <ore:slabOak>],
			[null, <ore:slabOak>, null]
		]
	],
	<primal:barrel_spruce_lid> : [
		[
			[null, <ore:slabSpruce>, null],
			[<ore:slabSpruce>, null, <ore:slabSpruce>],
			[null, <ore:slabSpruce>, null]
		]
	],
	<primal:barrel_birch_lid> : [
		[
			[null, <ore:slabBirch>, null],
			[<ore:slabBirch>, null, <ore:slabBirch>],
			[null, <ore:slabBirch>, null]
		]
	],
	<primal:barrel_jungle_lid> : [
		[
			[null, <ore:slabJungle>, null],
			[<ore:slabJungle>, null, <ore:slabJungle>],
			[null, <ore:slabJungle>, null]
		]
	],
	<primal:barrel_acacia_lid> : [
		[
			[null, <ore:slabAcacia>, null],
			[<ore:slabAcacia>, null, <ore:slabAcacia>],
			[null, <ore:slabAcacia>, null]
		]
	],
	<primal:barrel_dark_oak_lid> : [
		[
			[null, <ore:slabDarkOak>, null],
			[<ore:slabDarkOak>, null, <ore:slabDarkOak>],
			[null, <ore:slabDarkOak>, null]
		]
	],
	<primal:barrel_ironwood_lid> : [
		[
			[null, <primal:slab_ironwood>, null],
			[<primal:slab_ironwood>, null, <primal:slab_ironwood>],
			[null, <primal:slab_ironwood>, null]
		]
	],
	<primal:barrel_yew_lid> : [
		[
			[null, <primal:slab_yew>, null],
			[<primal:slab_yew>, null, <primal:slab_yew>],
			[null, <primal:slab_yew>, null]
		]
	],
	<primal:barrel_corypha_lid> : [
		[
			[null, <primal:slab_corypha>, null],
			[<primal:slab_corypha>, null, <primal:slab_corypha>],
			[null, <primal:slab_corypha>, null]
		]
	],
	<primal:barrel_lacquer_lid> : [
		[
			[null, <primal:slab_lacquer>, null],
			[<primal:slab_lacquer>, null, <primal:slab_lacquer>],
			[null, <primal:slab_lacquer>, null]
		]
	],
	<primal:storage_crate:1> : [
		[
			[<minecraft:planks:1>, <minecraft:planks:1>, <minecraft:planks:1>],
			[<minecraft:planks:1>, <minecraft:chest>, <minecraft:planks:1>],
			[<minecraft:planks:1>, <minecraft:planks:1>, <minecraft:planks:1>]
		]
	],
	<primal:storage_crate:2> : [
		[
			[<minecraft:planks:2>, <minecraft:planks:2>, <minecraft:planks:2>],
			[<minecraft:planks:2>, <minecraft:chest>, <minecraft:planks:2>],
			[<minecraft:planks:2>, <minecraft:planks:2>, <minecraft:planks:2>]
		]
	],
	<primal:storage_crate:3> : [
		[
			[<minecraft:planks:3>, <minecraft:planks:3>, <minecraft:planks:3>],
			[<minecraft:planks:3>, <minecraft:chest>, <minecraft:planks:3>],
			[<minecraft:planks:3>, <minecraft:planks:3>, <minecraft:planks:3>]
		]
	],
	<primal:storage_crate:4> : [
		[
			[<minecraft:planks:4>, <minecraft:planks:4>, <minecraft:planks:4>],
			[<minecraft:planks:4>, <minecraft:chest>, <minecraft:planks:4>],
			[<minecraft:planks:4>, <minecraft:planks:4>, <minecraft:planks:4>]
		]
	],
	<primal:storage_crate:5> : [
		[
			[<minecraft:planks:5>, <minecraft:planks:5>, <minecraft:planks:5>],
			[<minecraft:planks:5>, <minecraft:chest>, <minecraft:planks:5>],
			[<minecraft:planks:5>, <minecraft:planks:5>, <minecraft:planks:5>]
		]
	],
	<primal:storage_crate:6> : [
		[
			[<rustic:planks:1>, <rustic:planks:1>, <rustic:planks:1>],
			[<rustic:planks:1>, <minecraft:chest>, <rustic:planks:1>],
			[<rustic:planks:1>, <rustic:planks:1>, <rustic:planks:1>]
		]
	],
	<primal:storage_crate:7> : [
		[
			[<primal:planks:1>, <primal:planks:1>, <primal:planks:1>],
			[<primal:planks:1>, <minecraft:chest>, <primal:planks:1>],
			[<primal:planks:1>, <primal:planks:1>, <primal:planks:1>]
		]
	],
	<primal:storage_crate:8> : [
		[
			[<primal:planks:2>, <primal:planks:2>, <primal:planks:2>],
			[<primal:planks:2>, <minecraft:chest>, <primal:planks:2>],
			[<primal:planks:2>, <primal:planks:2>, <primal:planks:2>]
		]
	],
	<primal:storage_crate:9> : [
		[
			[<primal:planks:3>, <primal:planks:3>, <primal:planks:3>],
			[<primal:planks:3>, <minecraft:chest>, <primal:planks:3>],
			[<primal:planks:3>, <primal:planks:3>, <primal:planks:3>]
		]
	],
	<primal:storage_crate> : [
		[
			[<minecraft:planks>, <minecraft:planks>, <minecraft:planks>],
			[<minecraft:planks>, <minecraft:chest>, <minecraft:planks>],
			[<minecraft:planks>, <minecraft:planks>, <minecraft:planks>]
		]
	],
	<primal:iron_workblade> : [
		[
			[metals.iron.plate, <ore:stickWood>.firstItem, metals.iron.plate],
			[metals.iron.plate, <ore:stickWood>.firstItem, metals.iron.plate],
			[null, <ore:stickWood>.firstItem, null]
		]
	],
	<primal:diamond_workblade>: [
		[
			[<minecraft:diamond>, <ore:stickWood>.firstItem, <minecraft:diamond>],
			[<minecraft:diamond>, <ore:stickWood>.firstItem, <minecraft:diamond>],
			[null, <ore:stickWood>.firstItem, null]
		]
	],
	<primal:emerald_workblade>: [
		[
			[<minecraft:emerald>, <ore:stickWood>.firstItem, <minecraft:emerald>],
			[<minecraft:emerald>, <ore:stickWood>.firstItem, <minecraft:emerald>],
			[null, <ore:stickWood>.firstItem, null]
		]
	],
	// Thatching
	<primal:thatching_wet> * 4: [
		[
			[<ore:thatchingMaterialBasic>, <ore:thatchingMaterialBasic>],
			[<ore:thatchingMaterialBasic>, <ore:thatchingMaterialBasic>]
		]
	],
	<primal:thatch_wet>: [
		[
			[<primal:thatching_wet>, <primal:thatching_wet>],
			[<primal:thatching_wet>, <primal:thatching_wet>]
		]
	],
	<primal:thatch>: [
		[
			[<primal:thatching_dry>, <primal:thatching_dry>]
		]
	],
	<primal:leather_cordage>: [
		[
			[null, <primal:leather_strip>, null],
			[<primal:leather_strip>, <minecraft:string>, <primal:leather_strip>]
		]
	],
	<primal:mud_wet>: [
		[
			[<primal:mud_clump>, <primal:mud_clump>],
			[<primal:mud_clump>, <primal:mud_clump>]
		]
	],
	// Flint tools
	<primal:flint_hatchet>: [
		[
			[<ore:cordageGeneral>, <primal:flint_knapp>],
			[<ore:stickWood>.firstItem, null]
		]
	],
	<primal:flint_shovel>: [
		[
			[null, <ore:cordageGeneral>, <primal:flint_knapp>],
			[null, <ore:stickWood>.firstItem, <ore:cordageGeneral>],
			[<ore:stickWood>.firstItem, null, null]
		]
	],
	<primal:flint_hoe>: [
		[
			[null, <primal:flint_knapp>, <minecraft:flint>],
			[null, <ore:stickWood>.firstItem, <ore:cordageGeneral>],
			[<ore:stickWood>.firstItem, null, null]
		]
	],
	<primal:flint_axe>: [
		[
			[null, <primal:flint_knapp>, <primal:flint_knapp>],
			[<ore:cordageGeneral>, <ore:stickWood>.firstItem, <minecraft:flint>],
			[<ore:stickWood>.firstItem, <ore:cordageGeneral>, null]
		]
	],
	<primal:flint_shears>: [
		[
			[<primal:flint_knapp>, null, null],
			[<primal:flint_knapp>, null, null],
			[<ore:cordageGeneral>, <primal:flint_knapp>, <primal:flint_knapp>]
		]
	],
	<primal:flint_workblade>: [
		[
			[<primal:flint_knapp>, <ore:cordageGeneral>, <primal:flint_knapp>],
			[<primal:flint_knapp>, <ore:stickWood>.firstItem, <primal:flint_knapp>],
			[null, <ore:stickWood>.firstItem, null]
		]
	],
	<primal:flint_saw>: [
		[
			[<ore:cordageGeneral>, null, null],
			[<primal:flint_knapp>, <ore:stickWood>.firstItem, null],
			[null, <primal:flint_knapp>, <ore:stickWood>.firstItem]
		]
	],
	<primal:flint_pickaxe>: [
		[
			[null, <primal:flint_knapp>, <ore:cordageGeneral>],
			[null, <ore:stickWood>.firstItem, <primal:flint_knapp>],
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
	<primal:bark_acacia> : [
		[<minecraft:log2>.transformReplace(<primal:logs_stripped:4>), <ore:toolWorkBlade>]
	],
	<primal:bark_bigoak> : [
		[<minecraft:log2:1>.transformReplace(<primal:logs_stripped:5>), <ore:toolWorkBlade>]
	],
	<primal:bark_birch> : [
		[<minecraft:log:2>.transformReplace(<primal:logs_stripped:2>), <ore:toolWorkBlade>]
	],
	<primal:bark_jungle> : [
		[<minecraft:log:3>.transformReplace(<primal:logs_stripped:3>), <ore:toolWorkBlade>]
	],
	<primal:bark_oak> : [
		[<minecraft:log>.transformReplace(<primal:logs_stripped>), <ore:toolWorkBlade>]
	],
	<primal:bark_spruce> : [
		[<minecraft:log:1>.transformReplace(<primal:logs_stripped:1>), <ore:toolWorkBlade>]
	],
	<primal:bark_yew> : [
		[<primal:logs:1>.transformReplace(<primal:logs_stripped:7>), <ore:toolWorkBlade>]
	],
	<primal:plant_fiber_pulp> * 3 : [
		[<betterwithmods:material:22>, <betterwithmods:material:12>, craftingUtils.getBucketIngredient(<liquid:water>)],
		[<betterwithmods:material:22>, <betterwithmods:material:12>, <primal_tech:fluid_bladder:1>.withTag({Fluid: {FluidName: "water", Amount: 1000}})]
	],
	<primal:hide_raw> * 1: [
		[<ore:toolWorkBlade>, <minecraft:rabbit_hide>, <minecraft:rabbit_hide>, <minecraft:rabbit_hide>, <minecraft:rabbit_hide>]
	],
	<primal:hide_raw> * 6: [
		[<ore:toolWorkBlade>, <totemic:buffalo_items>]
	],
	<primal:hide_raw> * 4: [
		[<ore:toolWorkBlade>, <ore:peltLarge>]
	],
	<primal:hide_raw> * 2: [
		[<ore:toolWorkBlade>, <primal:pelt_animal>],
		[<ore:toolWorkBlade>, <ore:peltWolf>],
		[<ore:toolWorkBlade>, <ore:peltPig>],
		[<ore:toolWorkBlade>, <ore:peltOvis>],
		[<ore:toolWorkBlade>, <animalium:wild_dog_pelt>]
	],
	<primal:hide_raw> * 3: [
		[<ore:toolWorkBlade>, <ore:peltSheep>],
		[<ore:toolWorkBlade>, <primal:pelt_shark>]
	],
	// Leather Processing
	<primal:hide_salted>: [
		[<primal:pigman_hide_raw>, <ore:foodSalt>, <primal_tech:fluid_bladder:1>.withTag({Fluid: {FluidName: "water", Amount: 1000}})],
		[<primal:hide_raw>, <ore:foodSalt>, <primal_tech:fluid_bladder:1>.withTag({Fluid: {FluidName: "water", Amount: 1000}})],
		[<primal:hide_dried>, <primal:tannin_ground>, <primal_tech:fluid_bladder:1>.withTag({Fluid: {FluidName: "water", Amount: 1000}})]
	],
	// Mud Clump
	<primal:mud_clump>: [
		[<minecraft:dirt>, <minecraft:dirt>, <ore:bottleWater>.transformReplace(<minecraft:glass_bottle>)],
		[<minecraft:dirt>, <minecraft:dirt>, craftingUtils.getBucketIngredient(<liquid:water>)],
		[<minecraft:dirt>, <minecraft:dirt>, <primal_tech:fluid_bladder:1>.withTag({Fluid: {FluidName: "water", Amount: 1000}})]
	],
	<primal:plant_cordage>: [
		[<primal:plant_fiber>, <primal:plant_fiber>, <primal:plant_fiber>]
	],
	<primal:leather_strip> * 9: [
		[<minecraft:leather>, <ore:toolWorkBlade>]
	],
	<primal:plant_cloth>: [
		[<ore:cordageGeneral>, <ore:cordageGeneral>, <ore:cordageGeneral>, <ore:cordageGeneral>, <ore:cordageGeneral>, <ore:cordageGeneral>, <ore:cordageGeneral>, <ore:cordageGeneral>, <ore:cordageGeneral>]
	]
};

static namedShapelessRecipes as IIngredient[][][string][IItemStack] = {
	<primal:nether_cordage>: {
		Utils.genRecipeName(stageThree, <primal:nether_cordage>): [
			[<primal:nether_fiber>, <primal:nether_fiber>, <primal:nether_fiber>]
		]
	}
};

/*
    Recipe Removals
*/
static removeRecipes as IIngredient[] = [
	<primal:slab_ironwood>,
	<primal:thatching_wet>,
	<primal:leather_cordage>
];

static removeRegex as string[] = [
	"primal:diamond_boots",
	"primal:diamond_chestplate",
	"primal:diamond_helmet",
	"primal:diamond_leggings"
];

function init() {
	// Un-named recipes
	var shapedRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.primal.shapedRecipes;
	var mirroredRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.primal.mirroredRecipes;
	var shapelessRecipes as IIngredient[][][IItemStack] = scripts.crafttweaker.recipes.mods.primal.shapelessRecipes;

	// Named recipes
	var namedShapedRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.primal.namedShapedRecipes;
	var namedMirroredRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.primal.namedMirroredRecipes;
	var namedShapelessRecipes as IIngredient[][][string][IItemStack] = scripts.crafttweaker.recipes.mods.primal.namedShapelessRecipes;

	var removeRegex as string[] = scripts.crafttweaker.recipes.mods.primal.removeRegex;
	var removeRecipes as IItemStack[] = scripts.crafttweaker.recipes.mods.primal.removeRecipes;


	// Un-named recipes
	recipeUtil.process(shapedRecipes, false);
    recipeUtil.process(mirroredRecipes, true);
    recipeUtil.process(shapelessRecipes);

	// Named recipes
	recipeUtil.processNamed(namedShapedRecipes, false);
    recipeUtil.processNamed(namedMirroredRecipes, true);
    recipeUtil.processNamed(namedShapelessRecipes);

	recipeUtil.removeRecipes(removeRecipes);
	recipeUtil.removeRecipes(removeRegex);
}
