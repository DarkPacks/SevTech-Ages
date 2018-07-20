/*
	SevTech: Ages Horse Power Script

	This script handles custom integration control to a mod.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.horsepower.Recipes;

/*
	Grinder Recipes

	Layout of the map should be the following:

	int (time): [[output IItemStack, input IItemStack]]
*/
static grinderRecipes as IIngredient[][][int] = {
	12: [
		[<minecraft:clay_ball> * 4, <minecraft:clay>],
		[<minecraft:dye:1>, <minecraft:double_plant:4>],
		[<minecraft:dye:1>, <minecraft:red_flower:4>],
		[<minecraft:dye:1>, <minecraft:red_flower>],
		[<ore:dyeLightGray>.firstItem, <minecraft:red_flower:3>],
		[<ore:dyeLightGray>.firstItem, <minecraft:red_flower:6>],
		[<ore:dyeLightGray>.firstItem, <minecraft:red_flower:8>],
		[<ore:dyePink>.firstItem, <minecraft:double_plant:5>],
		[<ore:dyePink>.firstItem, <minecraft:red_flower:7>],
		[<minecraft:dye:11>, <minecraft:double_plant>],
		[<minecraft:dye:11>, <minecraft:yellow_flower>],
		[<ore:dyeLightBlue>.firstItem, <minecraft:red_flower:1>],
		[<ore:dyeMagenta>.firstItem, <minecraft:double_plant:1>],
		[<ore:dyeMagenta>.firstItem, <minecraft:red_flower:2>],
		[<ore:dyeOrange>.firstItem, <minecraft:red_flower:5>],
		[<minecraft:sand> * 2, <minecraft:sandstone>],
		[<minecraft:sugar> * 1, <minecraft:reeds>],
		[<natura:materials:1>, <natura:materials>],
		[<ore:dyeYellow>.firstItem * 2, <minecraft:dye:11>],
		[<ore:dyeBlue>.firstItem * 2, <ferdinandsflowers:block_cff_flowers:4>],
		[<ore:dyeBlue>.firstItem * 2, <ferdinandsflowers:block_cff_flowersc:6>],
		[<ore:dyeBlue>.firstItem * 2, <minecraft:dye:4>],
		[<betterwithmods:material:44>, <minecraft:dye:3>],
		[<ore:dyeGreen>.firstItem * 2, <minecraft:dye:2>],
		[<ore:dyeRed>.firstItem * 2, <minecraft:dye:1>],
		[<ore:dyeBlack>.firstItem * 2, <actuallyadditions:block_black_lotus>],
		[<ore:dyeBlack>.firstItem * 2, <minecraft:dye>],
		[<ore:dyeWhite>.firstItem * 2, <minecraft:dye:15>]
	],
	16: [
		[<ore:dustWood>.firstItem * 4, <ore:logWood>],
		[<abyssalcraft:shadowfragment> * 9, <abyssalcraft:shadowshard>],
		[<actuallyadditions:item_dust:7>, <actuallyadditions:block_misc:3>],
		[<betterwithaddons:japanmat:4>, <actuallyadditions:item_food:16>],
		[<horsepower:flour>, <minecraft:wheat>],
		[<pickletweaks:coal_piece:1> * 8, <minecraft:coal:1>],
		[<ore:dyeRed>.firstItem, <rustic:wildberries>],
		[<primal:bone_knapp> * 2, <minecraft:bone>],
		[<primal:tannin_ground> * 2, <ore:barkWood>]
	],
	24: [
		[<abyssalcraft:shadowshard> * 9, <abyssalcraft:shadowgem>],
		[<minecraft:coal:1> * 4, <primal_tech:charcoal_block>],
		[<minecraft:coal:1> * 9, <charcoalblock:charcoal_block>],
		[<minecraft:coal> * 9, <minecraft:coal_block>],
		[<minecraft:dye:15> * 9, <minecraft:bone_block>],
		[<minecraft:gravel>, <minecraft:cobblestone>],
		[<pickletweaks:coal_piece> * 8, <minecraft:coal>],
		[<primal:salt_dust_rock>, <minecraft:sand>],

		// Salt Grinding
		[<primal:salt_dust_netjry> * 4, <primal:salt_netjry_block>],
		[<primal:salt_dust_rock> * 4, <primal:ore_salt>],
		[<primal:salt_dust_fire> * 4, <primal:ore_salt:1>],
		[<mekanism:salt> * 4, <mekanism:saltblock>]
	],
	32: [
		[<tconstruct:stone_stick>, <minecraft:cobblestone>],
		[<minecraft:dye:15> * 2, <primal:shark_tooth>],
		[<minecraft:prismarine_shard> * 4, <minecraft:prismarine>]
	]
};

/*
	Press Recipes

	IItemStack output: IIngredient input
*/
static pressRecipes as IIngredient[IItemStack] = {
	<abyssalcraft:shadowgem>: <abyssalcraft:shadowshard> * 9,
	<abyssalcraft:shadowshard>: <abyssalcraft:shadowfragment> * 9,
	<betterwithaddons:japanmat:11>: <betterwithaddons:japanmat:10>,
	<charcoalblock:charcoal_block>: <minecraft:coal:1> * 9,
	<minecraft:clay>: <minecraft:clay_ball> * 4,
	<minecraft:coal:1>: <pickletweaks:coal_piece:1> * 8,
	<minecraft:coal>: <pickletweaks:coal_piece> * 8,
	<minecraft:coal_block>: <minecraft:coal> * 9,
	<minecraft:prismarine_crystals>: <minecraft:prismarine_shard> * 4,

	// Salt Pressing
	<primal:salt_netjry_block>: <primal:salt_dust_netjry> * 4,
	<primal:ore_salt>: <primal:salt_dust_rock> * 4,
	<primal:ore_salt:1>: <primal:salt_dust_fire> * 4,
	<mekanism:saltblock>: <mekanism:salt> * 4,
	<minecraft:diamond_block>: <minecraft:diamond> * 9,
	<minecraft:lapis_block>: <minecraft:dye:4> * 9,
	<minecraft:redstone_block>: <minecraft:redstone> * 9,
	<minecraft:emerald_block>: <minecraft:emerald> * 9
};

var plankWoodCopy = <ore:plankWoodCopy>; // Create an oreDict to hold our plank clone.
plankWoodCopy.addAll(<ore:plankWood>); // Clone the main oreDict.
// Array containing all the betweenland planks we want to remove from the main cloned one.
var betweenlandPlanks as IItemStack[] = [
	<thebetweenlands:weedwood_planks>
];
// Remove the planks in the array from the cloned oreDict.
for plank in betweenlandPlanks {
	plankWoodCopy.remove(plank);
}

/*
	Chopping Block Recipes

	"Standardized" Recipes for manual and automatic. 4 for manual, 2 automatic. If not desired, do recipe manually.
*/
static choppingRecipes as IIngredient[][IItemStack] = {
	<ore:stickWood>.firstItem * 4 : [
		<ore:plankWoodCopy>
	],
	<thebetweenlands:items_misc:20> * 4: [
		<thebetweenlands:weedwood_planks>
	],
	<primal:thin_slab_acacia> * 2 : [
		<minecraft:wooden_slab:4>
	],
	<primal:thin_slab_bigoak> * 2 : [
		<minecraft:wooden_slab:5>
	],
	<primal:thin_slab_birch> * 2 : [
		<minecraft:wooden_slab:2>
	],
	<primal:thin_slab_corypha> * 2 : [
		<primal:slab_corypha>
	],
	<primal:thin_slab_ironwood> * 2 : [
		<rustic:ironwood_slab_item>
	],
	<primal:thin_slab_jungle> * 2 : [
		<minecraft:wooden_slab:3>
	],
	<primal:thin_slab_lacquer> * 2 : [
		<primal:slab_lacquer>
	],
	<primal:thin_slab_oak> * 2 : [
		<minecraft:wooden_slab>
	],
	<primal:thin_slab_spruce> * 2 : [
		<minecraft:wooden_slab:1>
	],
	<primal:thin_slab_thatch> * 2 : [
		<primal:thatch>
	]
};

function init() {
	/*
		Dynamic Chopping Block Recipes

		https://github.com/GoryMoon/HorsePower/wiki/CraftTweaker-Support
	*/
	Recipes.addShapeless(<ore:logWood>, <horsepower:chopping_block>, [<ore:logWood>]);
	Recipes.addShaped(<horsepower:chopping_block>, <horsepower:chopper>, [[<minecraft:lead>, <ore:stickWood>, <minecraft:lead>], [<ore:plankWood>, <minecraft:flint>, <ore:plankWood>], [<ore:plankWood>, <horsepower:chopping_block>, <ore:plankWood>]]);

	// Recipe Map Imports
	var grinderRecipes as IIngredient[][][int] = scripts.crafttweaker.integrations.mods.horsepower.grinderRecipes;
	var pressRecipes as IIngredient[IItemStack] = scripts.crafttweaker.integrations.mods.horsepower.pressRecipes;
	var choppingRecipes as IIngredient[][IItemStack] = scripts.crafttweaker.integrations.mods.horsepower.choppingRecipes;

	// Add the Grindstone Recipes.
	for time, grindRecipes in grinderRecipes {
		for itemRecipe in grindRecipes {
			for item in itemRecipe[0].items {
				horsePower.addGrindstone(item, itemRecipe[1], time, false);
			}
		}
	}

	// Recipes with Secondary Outputs
	horsePower.addGrindstone(<minecraft:dye:15>, <primal:bone_knapp>, 16, false, <minecraft:dye:15>, 20);
	horsePower.addGrindstone(<minecraft:dye:15>, <primal:bone_point>, 16, false, <minecraft:dye:15>, 20);
	horsePower.addGrindstone(<minecraft:dye:15>, <primal_tech:bone_shard>, 16, false, <minecraft:dye:15>, 20);

	// Add the Press Recipes.
	for output, input in pressRecipes {
		horsePower.addPress(input, output);
	}

	// Add the Press Recipes for Seeds.
	var seedOreDict = <ore:thisIsWhatHappensWhenYouDontFollowOreDictionariesForSeeds>;
	for seed in seedOreDict.items {
		horsePower.addPress(<minecraft:dirt>, seed * 12);
	}

	// Add the Chopping Block Recipes.
	for output, inputs in choppingRecipes {
		for input in inputs {
			// Add recipe for manual and automatic with different times for each. Makes it consistent for all
			horsePower.addChopping(output, input, 4, true);
			horsePower.addChopping(output, input, 2, false);
		}
	}
}
