import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

var STAGE = STAGES.five;

//Entire Mods into Stage five
var modIDs = [
	"appliedenergistics2",
	"compactmachines3",
	"enderutilities",
	"environmentaltech",
	"mysticalagradditions",
	"mysticalagriculture",
	"quantumstorage",
	"refinedstorage",
	"refinedstorageaddons",
	"scannable"
] as string[];
for id in modIDs {
    for item in loadedMods[id].items {
        mods.recipestages.Recipes.setRecipeStage(STAGE, item);
    }
}

/*
<item> : [
	[RECIPE1],
	[RECIPE2],
	[Recipe3],
	[etc...]
]

Put the normal recipe you make inside of the main array from the item (<betterwithaddons:bolt:1> : [])

<betterwithaddons:bolt:1> : [
	//You can do one recipe or as many recipes as you want
	[
		//IF LONG
		[<minecraft:vine>, <minecraft:vine>, <minecraft:vine>],
		[<minecraft:vine>, <betterwithaddons:spindle>, <minecraft:vine>],
		[<minecraft:vine>, <minecraft:vine>, <minecraft:vine>]
	],
	//IF SHORT
	[[<minecraft:reeds>, <minecraft:reeds>, null], [<minecraft:reeds>, <minecraft:reeds>, null]]
]
*/
var shapedRecipes = {
	<betterbuilderswands:wandunbreakable> : [
		[[null, null, <minecraft:nether_star>], [null, log, null], [log, null, null]]
	],
	<prospectors:prospector_best> : [
		[[null, <minecraft:diamond>, <ore:blockGlass>], [null, <minecraft:blaze_rod>, <minecraft:diamond>], [<minecraft:blaze_rod>, null, null]]
	],

	//Spartan Shields
	<spartanshields:shield_basic_diamond> : [
		[[null, <minecraft:diamond>, null], [<minecraft:diamond>, <spartanshields:shield_basic_iron>, <minecraft:diamond>], [null, <minecraft:diamond>, null]]
	],
	<spartanshields:shield_riot_rftools> : [
		[[null, <actuallyadditions:item_battery_quadruple>, null], [<tconstruct:materials:14>, <spartanshields:shield_basic_copper>, <tconstruct:materials:14>], [null, <rftools:shield_block3>, null]]
	]
} as IIngredient[][][][IItemStack];

for item, recipesForItem in shapedRecipes {
	for recipe in recipesForItem {
		mods.recipestages.Recipes.addShaped(STAGE, item, recipe);
	}
}


////
//
// TO DO
//
////
mods.recipestages.Recipes.setRecipeStage("five", <cyclicmagic:horse_upgrade_type>);
mods.recipestages.Recipes.setRecipeStage("five", <cyclicmagic:tool_swap_match>);
mods.recipestages.Recipes.setRecipeStage("five", <cyclicmagic:book_ender>);
mods.recipestages.Recipes.setRecipeStage("five", <cyclicmagic:beacon_potion>);
mods.recipestages.Recipes.setRecipeStage("five", <cyclicmagic:password_remote>);
mods.recipestages.Recipes.setRecipeStage("five", <cyclicmagic:water_spreader>);
mods.recipestages.Recipes.setRecipeStage("five", <cyclicmagic:sword_slowness>);
mods.recipestages.Recipes.setRecipeStage("five", <cyclicmagic:sword_weakness>);
mods.recipestages.Recipes.setRecipeStage("five", <cyclicmagic:tool_warp_home>);
mods.recipestages.Recipes.setRecipeStage("five", <cyclicmagic:inventory_food>);
mods.recipestages.Recipes.setRecipeStage("five", <cyclicmagic:heart_food>);
mods.recipestages.Recipes.setRecipeStage("five", <cyclicmagic:apple_emerald>);
mods.recipestages.Recipes.setRecipeStage("five", <cyclicmagic:glowing_chorus>);
mods.recipestages.Recipes.setRecipeStage("five", <cyclicmagic:builder_pattern>);
mods.recipestages.Recipes.setRecipeStage("five", <cyclicmagic:charm_boat>);
mods.recipestages.Recipes.setRecipeStage("five", <cyclicmagic:tool_warp_spawn>);
mods.recipestages.Recipes.setRecipeStage("five", <cyclicmagic:magic_net>);
mods.recipestages.Recipes.setRecipeStage("five", <cyclicmagic:ender_wool>);
mods.recipestages.Recipes.setRecipeStage("five", <cyclicmagic:tool_elevate>);
mods.recipestages.Recipes.setRecipeStage("five", <cyclicmagic:sword_ender>);


//NEEDS RECIPES
mods.recipestages.Recipes.setRecipeStage("five", <extendedcrafting:material:128>);

//<ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:diamond", spec: "STORAGE"}})
//<ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:diamond", spec: "UPGRADE"}})
