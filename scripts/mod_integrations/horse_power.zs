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
//"Standardized" Recipes for manual and automatic. 4 for manual, 2 automatic
//If not desired, do recipe manually
var choppingRecipeItems as IIngredient[][IItemStack] = {
	stick * 4 : [
		<ore:plankWood>
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
addGrindstoneRecipe(<minecraft:dye:7>, <minecraft:red_flower:3>, 12, false);
addGrindstoneRecipe(<minecraft:dye:7>, <minecraft:red_flower:6>, 12, false);
addGrindstoneRecipe(<minecraft:dye:7>, <minecraft:red_flower:8>, 12, false);
addGrindstoneRecipe(<minecraft:dye:9>, <minecraft:double_plant:5>, 12, false);
addGrindstoneRecipe(<minecraft:dye:9>, <minecraft:red_flower:7>, 12, false);
addGrindstoneRecipe(<minecraft:dye:11>, <minecraft:double_plant>, 12, false);
addGrindstoneRecipe(<minecraft:dye:11>, <minecraft:yellow_flower>, 12, false);
addGrindstoneRecipe(<minecraft:dye:12>, <minecraft:red_flower:1>, 12, false);
addGrindstoneRecipe(<minecraft:dye:13>, <minecraft:double_plant:1>, 12, false);
addGrindstoneRecipe(<minecraft:dye:13>, <minecraft:red_flower:2>, 12, false);
addGrindstoneRecipe(<minecraft:dye:14>, <minecraft:red_flower:5>, 12, false);
addGrindstoneRecipe(<minecraft:dye:15> * 9, <minecraft:bone_block>, 24, false);
addGrindstoneRecipe(<minecraft:gravel>, <minecraft:cobblestone>, 24, false);
addGrindstoneRecipe(<minecraft:sand> * 2, <minecraft:sandstone>, 12, false);
addGrindstoneRecipe(<minecraft:sugar> * 1, <minecraft:reeds>, 12, false);
addGrindstoneRecipe(<natura:materials:1>, <natura:materials>, 12, false);
addGrindstoneRecipe(<pickletweaks:coal_piece:1> * 8, <minecraft:coal:1>, 16, false);
addGrindstoneRecipe(<pickletweaks:coal_piece> * 8, <minecraft:coal>, 24, false);
addGrindstoneRecipe(<pickletweaks:dye_powder:4> * 2, <minecraft:dye:11>, 12, false);
addGrindstoneRecipe(<pickletweaks:dye_powder:11> * 2, <ferdinandsflowers:block_cff_flowers:4>, 12, false);
addGrindstoneRecipe(<pickletweaks:dye_powder:11> * 2, <ferdinandsflowers:block_cff_flowersc:6>, 12, false);
addGrindstoneRecipe(<pickletweaks:dye_powder:11> * 2, <minecraft:dye:4>, 12, false);
addGrindstoneRecipe(<pickletweaks:dye_powder:12> * 2, <minecraft:dye:3>, 12, false);
addGrindstoneRecipe(<pickletweaks:dye_powder:13> * 2, <minecraft:dye:2>, 12, false);
addGrindstoneRecipe(<pickletweaks:dye_powder:14> * 2, <minecraft:dye:1>, 12, false);
addGrindstoneRecipe(<pickletweaks:dye_powder:14>, <rustic:wildberries>, 16, false);
addGrindstoneRecipe(<pickletweaks:dye_powder:15> * 2, <actuallyadditions:block_black_lotus>, 12, false);
addGrindstoneRecipe(<pickletweaks:dye_powder:15> * 2, <minecraft:dye>, 12, false);
addGrindstoneRecipe(<pickletweaks:dye_powder> * 2, <minecraft:dye:15>, 12, false);
addGrindstoneRecipe(<primal:bone_knapp> * 2, <minecraft:bone>, 16, false);
addGrindstoneRecipe(<primal:salt_dust_netjry> * 4, <primal:salt_netjry_block>, 24, false);
addGrindstoneRecipe(<primal:salt_dust_rock>, <minecraft:sand>, 24, false);
addGrindstoneRecipe(<primal:tannin_ground> * 2, <ore:barkWood>, 16, false);
addGrindstoneRecipe(<tconstruct:stone_stick>, <minecraft:cobblestone>, 32, false);

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
	<minecraft:dirt>: <minecraft:wheat_seeds> * 12
};

for output, input in pressPairs {
	addPressRecipe(output, input);
}
