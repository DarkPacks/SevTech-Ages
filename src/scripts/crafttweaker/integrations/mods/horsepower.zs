/*
	SevTech: Ages Horse Power Script

	This script handles custom integration control to a mod.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

/*
	Grinder Recipes

	Layout of the map should be the following:

	int (time): [[output IItemStack, input IItemStack]]
*/
static grinderRecipes as IIngredient[][][int] = {
	12: [
		[<minecraft:clay_ball:0> * 4, <minecraft:clay:0>],
		[<ore:dyeRed>.firstItem, <minecraft:double_plant:4>],
		[<ore:dyeRed>.firstItem, <minecraft:red_flower:4>],
		[<ore:dyeRed>.firstItem, <minecraft:red_flower:0>],
		[<ore:dyeLightGray>.firstItem, <minecraft:red_flower:3>],
		[<ore:dyeLightGray>.firstItem, <minecraft:red_flower:6>],
		[<ore:dyeLightGray>.firstItem, <minecraft:red_flower:8>],
		[<ore:dyePink>.firstItem, <minecraft:double_plant:5>],
		[<ore:dyePink>.firstItem, <minecraft:red_flower:7>],
		[<ore:dyeYellow>.firstItem, <minecraft:double_plant:0>],
		[<ore:dyeYellow>.firstItem, <minecraft:yellow_flower:0>],
		[<ore:dyeLightBlue>.firstItem, <minecraft:red_flower:1>],
		[<ore:dyeMagenta>.firstItem, <minecraft:double_plant:1>],
		[<ore:dyeMagenta>.firstItem, <minecraft:red_flower:2>],
		[<ore:dyeOrange>.firstItem, <minecraft:red_flower:5>],
		[<minecraft:sand:0> * 2, <minecraft:sandstone:0>],
		[<minecraft:sugar:0> * 1, <minecraft:reeds:0>],
		[<horsepower:flour:0>, <natura:materials:0>],
		[<ore:dyeYellow>.firstItem * 2, <minecraft:dye:11>],
		[<ore:dyeBlue>.firstItem * 2, <ferdinandsflowers:block_cff_flowers:4>],
		[<ore:dyeBlue>.firstItem * 2, <ferdinandsflowers:block_cff_flowersc:6>],
		[<ore:dyeBlue>.firstItem * 2, <minecraft:dye:4>],
		[<betterwithmods:material:44>, <minecraft:dye:3>],
		[<ore:dyeGreen>.firstItem * 2, <minecraft:dye:2>],
		[<ore:dyeRed>.firstItem * 2, <minecraft:dye:1>],
		[<ore:dyeBlack>.firstItem * 2, <actuallyadditions:block_black_lotus:0>],
		[<ore:dyeBlack>.firstItem * 2, <minecraft:dye:0>],
		[<ore:dyeWhite>.firstItem * 2, <minecraft:dye:15>]
	],
	16: [
		[<ore:dustWood>.firstItem * 4, <ore:logWood>],
		[<abyssalcraft:shadowfragment:0> * 9, <abyssalcraft:shadowshard:0>],
		[<actuallyadditions:item_dust:7>, <actuallyadditions:block_misc:3>],
		[<betterwithaddons:japanmat:4>, <actuallyadditions:item_food:16>],
		[<horsepower:flour:0>, <minecraft:wheat:0>],
		[<pickletweaks:coal_piece:1> * 8, <minecraft:coal:1>],
		[<ore:dyeRed>.firstItem, <rustic:wildberries:0>],
		[<primal:bone_knapp:0> * 2, <minecraft:bone:0>],
		[<primal:tannin_ground:0> * 2, <ore:barkWood>]
	],
	24: [
		[<abyssalcraft:shadowshard:0> * 9, <abyssalcraft:shadowgem:0>],
		[<minecraft:coal:1> * 4, <primal_tech:charcoal_block>],
		[<minecraft:coal:1> * 9, <charcoalblock:charcoal_block:0>],
		[<minecraft:coal:0> * 9, <minecraft:coal_block:0>],
		[<minecraft:dye:15> * 9, <minecraft:bone_block:0>],
		[<minecraft:gravel:0>, <minecraft:cobblestone:0>],
		[<pickletweaks:coal_piece:0> * 8, <minecraft:coal:0>],
		[<primal:salt_dust_rock:0>, <minecraft:sand:0>],

		// Salt Grinding
		[<primal:salt_dust_netjry:0> * 4, <primal:salt_netjry_block:0>],
		[<primal:salt_dust_rock:0> * 4, <primal:ore_salt:0>],
		[<primal:salt_dust_fire:0> * 4, <primal:ore_salt:1>],
		[<mekanism:salt:0> * 4, <mekanism:saltblock:0>]
	],
	32: [
		[<tconstruct:stone_stick:0>, <minecraft:cobblestone:0>],
		[<minecraft:dye:15> * 2, <primal:shark_tooth:0>],
		[<minecraft:dye:15> * 2, <death_compass:death_compass>.withTag({})], // Death Compass -> Bone Meal
		[<minecraft:prismarine_shard:0> * 4, <minecraft:prismarine:0>]
	]
};

/*
	Press Recipes

	IItemStack output: IIngredient input
*/
static pressRecipes as IIngredient[IItemStack] = {
	<abyssalcraft:shadowgem:0>: <abyssalcraft:shadowshard:0> * 9,
	<abyssalcraft:shadowshard:0>: <abyssalcraft:shadowfragment:0> * 9,
	<betterwithaddons:japanmat:11>: <betterwithaddons:japanmat:10>,
	<charcoalblock:charcoal_block:0>: <minecraft:coal:1> * 9,
	<minecraft:clay:0>: <minecraft:clay_ball:0> * 4,
	<minecraft:coal:1>: <pickletweaks:coal_piece:1> * 8,
	<minecraft:coal:0>: <pickletweaks:coal_piece:0> * 8,
	<minecraft:coal_block:0>: <minecraft:coal:0> * 9,
	<minecraft:prismarine_crystals:0>: <minecraft:prismarine_shard:0> * 4,

	// Salt Pressing
	<primal:salt_netjry_block:0>: <primal:salt_dust_netjry:0> * 4,
	<primal:ore_salt:0>: <primal:salt_dust_rock:0> * 4,
	<primal:ore_salt:1>: <primal:salt_dust_fire:0> * 4,
	<mekanism:saltblock:0>: <mekanism:salt:0> * 4,
	<minecraft:diamond_block:0>: <minecraft:diamond:0> * 9,
	<minecraft:lapis_block:0>: <minecraft:dye:4> * 9,
	<minecraft:redstone_block:0>: <minecraft:redstone:0> * 9,
	<minecraft:emerald_block:0>: <minecraft:emerald:0> * 9
};

var plankWoodCopy = <ore:plankWoodCopy>; // Create an oreDict to hold our plank clone.
plankWoodCopy.addAll(<ore:plankWood>); // Clone the main oreDict.
// Array containing all the betweenland planks we want to remove from the main cloned one.
var betweenlandPlanks as IItemStack[] = [
	<thebetweenlands:weedwood_planks:0>
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
		<thebetweenlands:weedwood_planks:0>
	],
	<thebetweenlands:nibblestick:0> * 4: [
		<thebetweenlands:nibbletwig_planks:0>
	],
	<primal:thin_slab_acacia:0> * 2 : [
		<minecraft:wooden_slab:4>
	],
	<primal:thin_slab_bigoak:0> * 2 : [
		<minecraft:wooden_slab:5>
	],
	<primal:thin_slab_birch:0> * 2 : [
		<minecraft:wooden_slab:2>
	],
	<primal:thin_slab_corypha:0> * 2 : [
		<primal:slab_corypha:0>
	],
	<primal:thin_slab_ironwood:0> * 2 : [
		<rustic:ironwood_slab_item:0>
	],
	<primal:thin_slab_jungle:0> * 2 : [
		<minecraft:wooden_slab:3>
	],
	<primal:thin_slab_lacquer:0> * 2 : [
		<primal:slab_lacquer:0>
	],
	<primal:thin_slab_oak:0> * 2 : [
		<minecraft:wooden_slab:0>
	],
	<primal:thin_slab_spruce:0> * 2 : [
		<minecraft:wooden_slab:1>
	],
	<primal:thin_slab_thatch:0> * 2 : [
		<primal:thatch:0>
	]
};

function init() {
	// Add the Grindstone Recipes.
	for time, grindRecipes in grinderRecipes {
		for itemRecipe in grindRecipes {
			for item in itemRecipe[0].items {
				horsePower.addGrindstone(item, itemRecipe[1], time, false);
			}
		}
	}

	// Recipes with Secondary Outputs
	horsePower.addGrindstone(<minecraft:dye:15>, <primal:bone_knapp:0>, 16, false, <minecraft:dye:15>, 20);
	horsePower.addGrindstone(<minecraft:dye:15>, <primal:bone_point:0>, 16, false, <minecraft:dye:15>, 20);
	horsePower.addGrindstone(<minecraft:dye:15>, <primal_tech:bone_shard>, 16, false, <minecraft:dye:15>, 20);

	// Add the Press Recipes.
	for output, input in pressRecipes {
		horsePower.addPress(input, output);
	}

	// Add the Press Recipes for Seeds.
	var seedOreDict = <ore:thisIsWhatHappensWhenYouDontFollowOreDictionariesForSeeds>;
	for seed in seedOreDict.items {
		horsePower.addPress(<minecraft:dirt:0>, seed * 12);
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
