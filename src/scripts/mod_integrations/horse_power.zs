import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

import mods.horsepower.ChoppingBlock;
import mods.horsepower.Grindstone;
import mods.horsepower.Press;
import mods.horsepower.Recipes;

/*
	Dynamic Chopping Block Recipes

	https://github.com/GoryMoon/HorsePower/wiki/CraftTweaker-Support
*/
Recipes.addShapeless(log, <horsepower:chopping_block>, [log]);
Recipes.addShaped(<horsepower:chopping_block>, <horsepower:chopper>, [[<minecraft:lead>, <ore:stickWood>, <minecraft:lead>], [plank, <minecraft:flint>, plank], [plank, <horsepower:chopping_block>, plank]]);

/*
	Fix "Machine" Recipe add functions
	Output, then input PLEASE!
*/
function addChoppingBlockRecipe(output as IItemStack, input as IIngredient, time as int, manual as bool) {
	ChoppingBlock.add(input, output, time, manual);
}

function addGrindstoneRecipe(output as IItemStack, input as IIngredient, time as int, hand as bool) {
	Grindstone.add(input, output, time, hand);
}

function addGrindstoneRecipeWithSecondary(output as IItemStack, input as IIngredient, time as int, hand as bool, secondaryOutput as IItemStack, secondaryChance as int) {
	Grindstone.add(input, output, time, hand, secondaryOutput, secondaryChance);
}

function addPressRecipe(output as IItemStack, input as IIngredient) {
	Press.add(input, output);
}

/*
	Chopping Block

	https://github.com/GoryMoon/HorsePower/wiki/CraftTweaker-Support
*/

// This as a meh way to handle this. But if we remove the planks from the dict people will moan about is not working in recipes
// so this is a way to get around that and to solve the end goal of getting the right sticks from the plank.
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

//"Standardized" Recipes for manual and automatic. 4 for manual, 2 automatic
//If not desired, do recipe manually
var choppingRecipeItems as IIngredient[][IItemStack] = {
	stick * 4 : [
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

for output, inputs in choppingRecipeItems {
	for input in inputs {
		//Add recipe for manual and automatic with different times for each. Makes it consistent for all
		addChoppingBlockRecipe(output, input, 4, true);
		addChoppingBlockRecipe(output, input, 2, false);
	}
}

/*
	Grindstone

	https://github.com/GoryMoon/HorsePower/wiki/CraftTweaker-Support
*/
addGrindstoneRecipe(<ore:dustWood>.firstItem * 4, <ore:logWood>, 16, false);
addGrindstoneRecipe(<abyssalcraft:shadowfragment> * 9, <abyssalcraft:shadowshard>, 16, false);
addGrindstoneRecipe(<abyssalcraft:shadowshard> * 9, <abyssalcraft:shadowgem>, 24, false);
addGrindstoneRecipe(<actuallyadditions:item_dust:7>, <actuallyadditions:block_misc:3>, 16, false);
addGrindstoneRecipe(<betterwithaddons:japanmat:4>, <actuallyadditions:item_food:16>, 16, false);
addGrindstoneRecipe(<horsepower:flour>, <minecraft:wheat>, 16, false);
addGrindstoneRecipe(<minecraft:clay_ball> * 4, <minecraft:clay>, 12, false);
addGrindstoneRecipe(<minecraft:coal:1> * 4, <primal_tech:charcoal_block>, 24, false);
addGrindstoneRecipe(<minecraft:coal:1> * 9, <charcoalblock:charcoal_block>, 24, false);
addGrindstoneRecipe(<minecraft:coal> * 9, <minecraft:coal_block>, 24, false);
addGrindstoneRecipe(<minecraft:dye:1>, <minecraft:double_plant:4>, 12, false);
addGrindstoneRecipe(<minecraft:dye:1>, <minecraft:red_flower:4>, 12, false);
addGrindstoneRecipe(<minecraft:dye:1>, <minecraft:red_flower>, 12, false);
addGrindstoneRecipe(<ore:dyeLightGray>.firstItem, <minecraft:red_flower:3>, 12, false);
addGrindstoneRecipe(<ore:dyeLightGray>.firstItem, <minecraft:red_flower:6>, 12, false);
addGrindstoneRecipe(<ore:dyeLightGray>.firstItem, <minecraft:red_flower:8>, 12, false);
addGrindstoneRecipe(<ore:dyePink>.firstItem, <minecraft:double_plant:5>, 12, false);
addGrindstoneRecipe(<ore:dyePink>.firstItem, <minecraft:red_flower:7>, 12, false);
addGrindstoneRecipe(<minecraft:dye:11>, <minecraft:double_plant>, 12, false);
addGrindstoneRecipe(<minecraft:dye:11>, <minecraft:yellow_flower>, 12, false);
addGrindstoneRecipe(<ore:dyeLightBlue>.firstItem, <minecraft:red_flower:1>, 12, false);
addGrindstoneRecipe(<ore:dyeMagenta>.firstItem, <minecraft:double_plant:1>, 12, false);
addGrindstoneRecipe(<ore:dyeMagenta>.firstItem, <minecraft:red_flower:2>, 12, false);
addGrindstoneRecipe(<ore:dyeOrange>.firstItem, <minecraft:red_flower:5>, 12, false);
addGrindstoneRecipe(<minecraft:dye:15> * 9, <minecraft:bone_block>, 24, false);
addGrindstoneRecipe(<minecraft:gravel>, <minecraft:cobblestone>, 24, false);
addGrindstoneRecipe(<minecraft:sand> * 2, <minecraft:sandstone>, 12, false);
addGrindstoneRecipe(<minecraft:sugar> * 1, <minecraft:reeds>, 12, false);
addGrindstoneRecipe(<natura:materials:1>, <natura:materials>, 12, false);
addGrindstoneRecipe(<pickletweaks:coal_piece:1> * 8, <minecraft:coal:1>, 16, false);
addGrindstoneRecipe(<pickletweaks:coal_piece> * 8, <minecraft:coal>, 24, false);
addGrindstoneRecipe(<ore:dyeYellow>.firstItem * 2, <minecraft:dye:11>, 12, false);
addGrindstoneRecipe(<ore:dyeBlue>.firstItem * 2, <ferdinandsflowers:block_cff_flowers:4>, 12, false);
addGrindstoneRecipe(<ore:dyeBlue>.firstItem * 2, <ferdinandsflowers:block_cff_flowersc:6>, 12, false);
addGrindstoneRecipe(<ore:dyeBlue>.firstItem * 2, <minecraft:dye:4>, 12, false);
addGrindstoneRecipe(<betterwithmods:material:44>, <minecraft:dye:3>, 12, false);
addGrindstoneRecipe(<ore:dyeGreen>.firstItem * 2, <minecraft:dye:2>, 12, false);
addGrindstoneRecipe(<ore:dyeRed>.firstItem * 2, <minecraft:dye:1>, 12, false);
addGrindstoneRecipe(<ore:dyeRed>.firstItem, <rustic:wildberries>, 16, false);
addGrindstoneRecipe(<ore:dyeBlack>.firstItem * 2, <actuallyadditions:block_black_lotus>, 12, false);
addGrindstoneRecipe(<ore:dyeBlack>.firstItem * 2, <minecraft:dye>, 12, false);
addGrindstoneRecipe(<ore:dyeWhite>.firstItem * 2, <minecraft:dye:15>, 12, false);
addGrindstoneRecipe(<primal:bone_knapp> * 2, <minecraft:bone>, 16, false);
addGrindstoneRecipe(<primal:salt_dust_rock>, <minecraft:sand>, 24, false);
addGrindstoneRecipe(<primal:tannin_ground> * 2, <ore:barkWood>, 16, false);
addGrindstoneRecipe(<tconstruct:stone_stick>, <minecraft:cobblestone>, 32, false);
addGrindstoneRecipe(<minecraft:dye:15> * 2, <primal:shark_tooth>, 32, false);
addGrindstoneRecipe(<minecraft:prismarine_shard> * 4, <minecraft:prismarine>, 32, false);

// Salt Grinding
addGrindstoneRecipe(<primal:salt_dust_netjry> * 4, <primal:salt_netjry_block>, 24, false);
addGrindstoneRecipe(<primal:salt_dust_rock> * 4, <primal:ore_salt>, 24, false);
addGrindstoneRecipe(<primal:salt_dust_fire> * 4, <primal:ore_salt:1>, 24, false);
addGrindstoneRecipe(<mekanism:salt> * 4, <mekanism:saltblock>, 24, false);

//Recipes with Secondary Outputs
addGrindstoneRecipeWithSecondary(<minecraft:dye:15>, <primal:bone_knapp>, 16, false, <minecraft:dye:15>, 20);
addGrindstoneRecipeWithSecondary(<minecraft:dye:15>, <primal:bone_point>, 16, false, <minecraft:dye:15>, 20);
addGrindstoneRecipeWithSecondary(<minecraft:dye:15>, <primal_tech:bone_shard>, 16, false, <minecraft:dye:15>, 20);

/*
	Press

	https://github.com/GoryMoon/HorsePower/wiki/CraftTweaker-Support
*/
//IItemStack output: IIngredient input
var pressPairs as IIngredient[IItemStack] = {
	<abyssalcraft:shadowgem>: <abyssalcraft:shadowshard> * 9,
	<abyssalcraft:shadowshard>: <abyssalcraft:shadowfragment> * 9,
	<betterwithaddons:japanmat:11>: <betterwithaddons:japanmat:10>,
	<charcoalblock:charcoal_block>: <minecraft:coal:1> * 9,
	<minecraft:clay>: <minecraft:clay_ball> * 4,
	<minecraft:coal:1>: <pickletweaks:coal_piece:1> * 8,
	<minecraft:coal>: <pickletweaks:coal_piece> * 8,
	<minecraft:coal_block>: <minecraft:coal> * 9,
	<minecraft:prismarine_crystals>: <minecraft:prismarine_shard> * 4
};

// Add seeds processing to Dirt.
var seedOreDict = <ore:thisIsWhatHappensWhenYouDontFollowOreDictionariesForSeeds>;
for seed in seedOreDict.items {
	addPressRecipe(<minecraft:dirt>, seed * 12);
}

for output, input in pressPairs {
	addPressRecipe(output, input);
}

// Salt Pressing
addPressRecipe(<primal:salt_netjry_block>, <primal:salt_dust_netjry> * 4);
addPressRecipe(<primal:ore_salt>, <primal:salt_dust_rock> * 4);
addPressRecipe(<primal:ore_salt:1>, <primal:salt_dust_fire> * 4);
addPressRecipe(<mekanism:saltblock>, <mekanism:salt> * 4);
addPressRecipe(<minecraft:diamond_block>, <minecraft:diamond> * 9);
addPressRecipe(<minecraft:lapis_block>, <minecraft:dye:4> * 9);
addPressRecipe(<minecraft:redstone_block>, <minecraft:redstone> * 9);
addPressRecipe(<minecraft:emerald_block>, <minecraft:emerald> * 9);
