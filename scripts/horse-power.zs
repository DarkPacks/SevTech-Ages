import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

//Dynamic Chopping Blocks
mods.horsepower.Recipes.addShapeless(log, <horsepower:chopping_block>, [log]);
mods.horsepower.Recipes.addShaped(<horsepower:chopping_block>, <horsepower:chopper>, [[<minecraft:lead>, <ore:stickWood>, <minecraft:lead>], [plank, <minecraft:flint>, plank], [plank, <horsepower:chopping_block>, plank]]);

/*
	Fix "Machine" Recipe add functions
	Output, then input PLEASE!
*/
function addChoppingBlockRecipe(output as IItemStack, input as IIngredient, time as int, manual as bool) {
	mods.horsepower.ChoppingBlock.add(input, output, time, manual);
}

function addGrindstoneRecipe(output as IItemStack, input as IIngredient, time as int, hand as bool) {
	mods.horsepower.Grindstone.add(input, output, time, hand);
}

function addGrindstoneRecipeWithSecondary(output as IItemStack, input as IIngredient, time as int, hand as bool, secondaryOutput as IItemStack, secondaryChance as int) {
	mods.horsepower.Grindstone.add(input, output, time, hand, secondaryOutput, secondaryChance);
}

function addPressRecipe(output as IItemStack, input as IIngredient) {
	mods.horsepower.Press.add(input, output);
}

/*
	Chopping Block
	mods.horsepower.ChoppingBlock.add(<input>, <output>, <time>, <manual>);
*/
//"Standardized" Recipes for manual and automatic. 4 for manual, 2 automatic
//If not desired, do recipe manually
var choppingRecipeItems as IItemStack[][IItemStack]= {
	<abyssalcraft:dltplank> * 4 : [
		<abyssalcraft:dltlog>
	],
	<abyssalcraft:dreadplanks> * 4 : [
		<abyssalcraft:dreadlog>
	],
	<betterwithaddons:planks_mulberry> * 4 : [
		<betterwithaddons:log_mulberry>
	],
	<betterwithaddons:planks_sakura> * 4 : [
		<betterwithaddons:log_sakura>
	],
	<minecraft:planks:1> * 4 : [
		<minecraft:log:1>,
		<primal:logs_stripped:1>,
		<twilightforest:twilight_log:1>,
		<twilightforest:twilight_log:3>
	],
	<minecraft:planks:2> * 4 : [
		<minecraft:log:2>,
		<primal:logs_stripped:2>,
		<twilightforest:twilight_log:2>
	],
	<minecraft:planks:3> * 4 : [
		<betterwithmods:blood_log>,
		<minecraft:log:3>,
		<primal:logs_stripped:3>
	],
	<minecraft:planks:4> * 4 : [
		<minecraft:log2>,
		<primal:logs_stripped:4>
	],
	<minecraft:planks:5> * 4 : [
		<minecraft:log2:1>,
		<primal:logs_stripped:5>
	],
	<minecraft:planks> * 4 : [
		<minecraft:log>,
		<primal:logs_stripped>,
		<twilightforest:twilight_log>
	],
	<minecraft:stick> * 4 : [
		<abyssalcraft:dltplank>,
		<abyssalcraft:dreadplanks>,
		<betterwithaddons:planks_mulberry>,
		<betterwithaddons:planks_sakura>,
		<minecraft:planks:1>,
		<minecraft:planks:2>,
		<minecraft:planks:3>,
		<minecraft:planks:4>,
		<minecraft:planks:5>,
		<minecraft:planks>,
		<natura:nether_planks:1>,
		<natura:nether_planks:2>,
		<natura:nether_planks:3>,
		<natura:nether_planks>,
		<natura:overworld_planks:1>,
		<natura:overworld_planks:3>,
		<natura:overworld_planks:4>,
		<natura:overworld_planks:5>,
		<natura:overworld_planks:6>,
		<natura:overworld_planks:7>,
		<natura:overworld_planks:8>,
		<natura:overworld_planks>,
		<primal:planks:1>,
		<primal:planks:3>,
		<primal:planks>,
		<totemic:cedar_plank>,
		<traverse:fir_planks>
	],
	<natura:nether_planks:1> * 4 : [
		<natura:nether_logs2:15>,
		<natura:nether_logs2>
	],
	<natura:nether_planks:2> * 4 : [
		<natura:nether_logs:1>
	],
	<natura:nether_planks:3> * 4 : [
		<natura:nether_logs:2>
	],
	<natura:nether_planks> * 4 : [
		<natura:nether_logs>
	],
	<natura:overworld_planks:1> * 4 : [
		<natura:overworld_logs:1>
	],
	<natura:overworld_planks:2> * 4 : [
		<natura:overworld_logs:2>
	],
	<natura:overworld_planks:3> * 4 : [
		<natura:overworld_logs:3>
	],
	<natura:overworld_planks:4> * 4 : [
		<natura:overworld_logs2>
	],
	<natura:overworld_planks:5> * 4 : [
		<natura:overworld_logs2:1>
	],
	<natura:overworld_planks:6> * 4 : [
		<natura:overworld_logs2:2>
	],
	<natura:overworld_planks:7> * 4 : [
		<natura:overworld_logs2:3>
	],
	<natura:overworld_planks:8> * 4 : [
		<natura:redwood_logs:1>
	],
	<natura:overworld_planks> * 4 : [
		<natura:overworld_logs>
	],
	<primal:planks> * 4 : [
		<primal:logs>,
		<primal:logs_stripped:6>
	],
	<primal:planks:1> * 4 : [
		<primal:logs:1>,
		<primal:logs_stripped:7>
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
	<rustic:planks:1> * 4 : [
		<rustic:log:1>
	],
	<rustic:planks> * 4 : [
		<rustic:log>
	],
	<totemic:cedar_plank> * 4 : [
		<totemic:cedar_log>,
		<totemic:stripped_cedar_log>
	],
	<traverse:fir_planks> * 4 : [
		<traverse:fir_log>
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
*/
addGrindstoneRecipe(<abyssalcraft:shadowfragment> * 9, <abyssalcraft:shadowshard>, 16, false);
addGrindstoneRecipe(<abyssalcraft:shadowshard> * 9, <abyssalcraft:shadowgem>, 24, false);
addGrindstoneRecipe(<actuallyadditions:item_dust:7>, <actuallyadditions:block_misc:3>, 16, false);
addGrindstoneRecipe(<betterwithaddons:japanmat:4>, <actuallyadditions:item_food:16>, 16, false);
addGrindstoneRecipe(<ore:dustWood>.firstItem * 4, <abyssalcraft:dltlog>, 16, false);
addGrindstoneRecipe(<ore:dustWood>.firstItem * 4, <abyssalcraft:dreadlog>, 16, false);
addGrindstoneRecipe(<ore:dustWood>.firstItem * 4, <betterwithaddons:log_mulberry>, 16, false);
addGrindstoneRecipe(<ore:dustWood>.firstItem * 4, <betterwithaddons:log_sakura>, 16, false);
addGrindstoneRecipe(<ore:dustWood>.firstItem * 4, <betterwithmods:blood_log>, 16, false);
addGrindstoneRecipe(<ore:dustWood>.firstItem * 4, <minecraft:log2:1>, 16, false);
addGrindstoneRecipe(<ore:dustWood>.firstItem * 4, <minecraft:log2>, 16, false);
addGrindstoneRecipe(<ore:dustWood>.firstItem * 4, <minecraft:log:1>, 16, false);
addGrindstoneRecipe(<ore:dustWood>.firstItem * 4, <minecraft:log:2>, 16, false);
addGrindstoneRecipe(<ore:dustWood>.firstItem * 4, <minecraft:log:3>, 16, false);
addGrindstoneRecipe(<ore:dustWood>.firstItem * 4, <minecraft:log>, 16, false);
addGrindstoneRecipe(<ore:dustWood>.firstItem * 4, <natura:nether_logs2:15>, 16, false);
addGrindstoneRecipe(<ore:dustWood>.firstItem * 4, <natura:nether_logs2>, 16, false);
addGrindstoneRecipe(<ore:dustWood>.firstItem * 4, <natura:nether_logs:1>, 16, false);
addGrindstoneRecipe(<ore:dustWood>.firstItem * 4, <natura:nether_logs:2>, 16, false);
addGrindstoneRecipe(<ore:dustWood>.firstItem * 4, <natura:nether_logs>, 16, false);
addGrindstoneRecipe(<ore:dustWood>.firstItem * 4, <natura:overworld_logs2:1>, 16, false);
addGrindstoneRecipe(<ore:dustWood>.firstItem * 4, <natura:overworld_logs2:2>, 16, false);
addGrindstoneRecipe(<ore:dustWood>.firstItem * 4, <natura:overworld_logs2:3>, 16, false);
addGrindstoneRecipe(<ore:dustWood>.firstItem * 4, <natura:overworld_logs2>, 16, false);
addGrindstoneRecipe(<ore:dustWood>.firstItem * 4, <natura:overworld_logs:1>, 16, false);
addGrindstoneRecipe(<ore:dustWood>.firstItem * 4, <natura:overworld_logs:2>, 16, false);
addGrindstoneRecipe(<ore:dustWood>.firstItem * 4, <natura:overworld_logs:3>, 16, false);
addGrindstoneRecipe(<ore:dustWood>.firstItem * 4, <natura:overworld_logs>, 16, false);
addGrindstoneRecipe(<ore:dustWood>.firstItem * 4, <natura:redwood_logs:1>, 16, false);
addGrindstoneRecipe(<ore:dustWood>.firstItem * 4, <natura:redwood_logs:2>, 16, false);
addGrindstoneRecipe(<ore:dustWood>.firstItem * 4, <natura:redwood_logs>, 16, false);
addGrindstoneRecipe(<ore:dustWood>.firstItem * 4, <primal:logs:1>, 16, false);
addGrindstoneRecipe(<ore:dustWood>.firstItem * 4, <primal:logs>, 16, false);
addGrindstoneRecipe(<ore:dustWood>.firstItem * 4, <primal:logs_stripped:1>, 16, false);
addGrindstoneRecipe(<ore:dustWood>.firstItem * 4, <primal:logs_stripped:2>, 16, false);
addGrindstoneRecipe(<ore:dustWood>.firstItem * 4, <primal:logs_stripped:3>, 16, false);
addGrindstoneRecipe(<ore:dustWood>.firstItem * 4, <primal:logs_stripped:4>, 16, false);
addGrindstoneRecipe(<ore:dustWood>.firstItem * 4, <primal:logs_stripped:5>, 16, false);
addGrindstoneRecipe(<ore:dustWood>.firstItem * 4, <primal:logs_stripped:6>, 16, false);
addGrindstoneRecipe(<ore:dustWood>.firstItem * 4, <primal:logs_stripped:7>, 16, false);
addGrindstoneRecipe(<ore:dustWood>.firstItem * 4, <primal:logs_stripped>, 16, false);
addGrindstoneRecipe(<ore:dustWood>.firstItem * 4, <rustic:log:1>, 16, false);
addGrindstoneRecipe(<ore:dustWood>.firstItem * 4, <rustic:log>, 16, false);
addGrindstoneRecipe(<ore:dustWood>.firstItem * 4, <totemic:cedar_log>, 16, false);
addGrindstoneRecipe(<ore:dustWood>.firstItem * 4, <totemic:stripped_cedar_log>, 16, false);
addGrindstoneRecipe(<ore:dustWood>.firstItem * 4, <traverse:fir_log>, 16, false);
addGrindstoneRecipe(<ore:dustWood>.firstItem * 4, <twilightforest:magic_log:1>, 16, false);
addGrindstoneRecipe(<ore:dustWood>.firstItem * 4, <twilightforest:magic_log:2>, 16, false);
addGrindstoneRecipe(<ore:dustWood>.firstItem * 4, <twilightforest:magic_log:3>, 16, false);
addGrindstoneRecipe(<ore:dustWood>.firstItem * 4, <twilightforest:magic_log>, 16, false);
addGrindstoneRecipe(<ore:dustWood>.firstItem * 4, <twilightforest:twilight_log:1>, 16, false);
addGrindstoneRecipe(<ore:dustWood>.firstItem * 4, <twilightforest:twilight_log:2>, 16, false);
addGrindstoneRecipe(<ore:dustWood>.firstItem * 4, <twilightforest:twilight_log:3>, 16, false);
addGrindstoneRecipe(<ore:dustWood>.firstItem * 4, <twilightforest:twilight_log>, 16, false);
addGrindstoneRecipe(<embers:shard_ember> * 9, <embers:crystal_ember>, 24, false);
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
addGrindstoneRecipe(<primal:tannin_ground> * 2, <betterwithaddons:japanmat:35>, 16, false);
addGrindstoneRecipe(<primal:tannin_ground> * 2, <betterwithaddons:japanmat:36>, 16, false);
addGrindstoneRecipe(<primal:tannin_ground> * 2, <betterwithmods:bark:1>, 16, false);
addGrindstoneRecipe(<primal:tannin_ground> * 2, <betterwithmods:bark:2>, 16, false);
addGrindstoneRecipe(<primal:tannin_ground> * 2, <betterwithmods:bark:3>, 16, false);
addGrindstoneRecipe(<primal:tannin_ground> * 2, <betterwithmods:bark:4>, 16, false);
addGrindstoneRecipe(<primal:tannin_ground> * 2, <betterwithmods:bark:5>, 16, false);
addGrindstoneRecipe(<primal:tannin_ground> * 2, <betterwithmods:bark:6>, 16, false);
addGrindstoneRecipe(<primal:tannin_ground> * 2, <betterwithmods:bark:7>, 16, false);
addGrindstoneRecipe(<primal:tannin_ground> * 2, <betterwithmods:bark:8>, 16, false);
addGrindstoneRecipe(<primal:tannin_ground> * 2, <betterwithmods:bark>, 16, false);
addGrindstoneRecipe(<primal:tannin_ground> * 2, <primal:bark_acacia>, 16, false);
addGrindstoneRecipe(<primal:tannin_ground> * 2, <primal:bark_bigoak>, 16, false);
addGrindstoneRecipe(<primal:tannin_ground> * 2, <primal:bark_birch>, 16, false);
addGrindstoneRecipe(<primal:tannin_ground> * 2, <primal:bark_corypha>, 16, false);
addGrindstoneRecipe(<primal:tannin_ground> * 2, <primal:bark_ironwood>, 16, false);
addGrindstoneRecipe(<primal:tannin_ground> * 2, <primal:bark_jungle>, 16, false);
addGrindstoneRecipe(<primal:tannin_ground> * 2, <primal:bark_oak>, 16, false);
addGrindstoneRecipe(<primal:tannin_ground> * 2, <primal:bark_spruce>, 16, false);
addGrindstoneRecipe(<primal:tannin_ground> * 2, <primal:bark_yew>, 16, false);
addGrindstoneRecipe(<primal:tannin_ground> * 2, <roots:bark_acacia>, 16, false);
addGrindstoneRecipe(<primal:tannin_ground> * 2, <roots:bark_birch>, 16, false);
addGrindstoneRecipe(<primal:tannin_ground> * 2, <roots:bark_dark_oak>, 16, false);
addGrindstoneRecipe(<primal:tannin_ground> * 2, <roots:bark_jungle>, 16, false);
addGrindstoneRecipe(<primal:tannin_ground> * 2, <roots:bark_oak>, 16, false);
addGrindstoneRecipe(<primal:tannin_ground> * 2, <roots:bark_spruce>, 16, false);
addGrindstoneRecipe(<tconstruct:stone_stick>, <minecraft:cobblestone>, 32, false);

//Recipes with Secondary Outputs
addGrindstoneRecipeWithSecondary(<minecraft:dye:15>, <primal:bone_knapp>, 16, false, <minecraft:dye:15>, 20);
addGrindstoneRecipeWithSecondary(<minecraft:dye:15>, <primal:bone_point>, 16, false, <minecraft:dye:15>, 20);
addGrindstoneRecipeWithSecondary(<minecraft:dye:15>, <primal_tech:bone_shard>, 16, false, <minecraft:dye:15>, 20);

/*
	Press
*/
//IItemStack output: IIngredient input
var pressPairs = {
	<abyssalcraft:shadowgem>: <abyssalcraft:shadowshard> * 9,
	<abyssalcraft:shadowshard>: <abyssalcraft:shadowfragment> * 9,
	<betterwithaddons:japanmat:11>: <betterwithaddons:japanmat:10>,
	<charcoalblock:charcoal_block>: <minecraft:coal:1> * 9,
	<embers:crystal_ember>: <embers:shard_ember> * 9,
	<minecraft:clay>: <minecraft:clay_ball> * 4,
	<minecraft:coal:1>: <pickletweaks:coal_piece:1> * 8,
	<minecraft:coal>: <pickletweaks:coal_piece> * 8,
	<minecraft:coal_block>: <minecraft:coal> * 9,
	<minecraft:dirt>: <minecraft:wheat_seeds> * 12
} as IIngredient[IItemStack];

for output, input in pressPairs {
	addPressRecipe(output, input);
}
