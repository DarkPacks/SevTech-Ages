import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

var STAGE = STAGES.four;

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
	<betterbuilderswands:wanddiamond> : [
		[[null, null, <minecraft:diamond>], [null, log, null], [log, null, null]]
	],
	<prospectors:prospector_high> : [
		[[null, <minecraft:redstone>, <ore:blockGlass>], [null, <minecraft:blaze_rod>, <minecraft:redstone>], [<minecraft:blaze_rod>, null, null]]
	],

	<pneumaticcraft:flux_compressor> : [
		[
			[<minecraft:redstone>, metals.compressedIron.gear, <pneumaticcraft:printed_circuit_board>],
			[<minecraft:redstone_block>, <pneumaticcraft:turbine_rotor>, <pneumaticcraft:advanced_pressure_tube>],
			[<minecraft:redstone>, <minecraft:furnace>, <pneumaticcraft:printed_circuit_board>]
		]
	],
	<pneumaticcraft:pneumatic_dynamo> : [
		[
			[null, <pneumaticcraft:advanced_pressure_tube>, null],
			[metals.compressedIron.gear, metals.compressedIron.ingot, metals.compressedIron.gear],
			[metals.compressedIron.ingot, <pneumaticcraft:printed_circuit_board>, metals.compressedIron.ingot]
		]
	],

	//Actually Additions
	<actuallyadditions:block_coal_generator> : [
		[
			[cobblestone, <stevescarts:cartmodule>, cobblestone],
			[cobblestone, <teslacorelib:machine_case>, cobblestone],
			[cobblestone, <stevescarts:cartmodule>, cobblestone]
		]
	],
	<actuallyadditions:block_oil_generator> : [
		[
			[cobblestone, <actuallyadditions:block_canola_press>, cobblestone],
			[cobblestone, <teslacorelib:machine_case>, cobblestone],
			[cobblestone, <actuallyadditions:block_canola_press>, cobblestone]
		]
	],
	<actuallyadditions:block_feeder> : [
		[
			[metals.compressedIron.plate, <darkutils:grate>, metals.compressedIron.plate],
			[<immersiveengineering:metal_decoration0:1>, <teslacorelib:machine_case>, <immersiveengineering:metal_decoration0:1>],
			[metals.compressedIron.ingot, metals.compressedIron.plate, metals.compressedIron.ingot]
		]
	],
	<actuallyadditions:block_grinder> : [
		[
			[metals.compressedIron.plate, <minecraft:piston>, metals.compressedIron.plate],
			[<minecraft:piston>, <teslacorelib:machine_case>, <minecraft:piston>],
			[metals.compressedIron.plate, <minecraft:piston>, metals.compressedIron.plate]
		]
	],
	<actuallyadditions:block_grinder_double> : [
		[
			[metals.compressedIron.plate, metals.compressedIron.plate, metals.compressedIron.plate],
			[<actuallyadditions:block_grinder>, <teslacorelib:machine_case>, <actuallyadditions:block_grinder>],
			[metals.compressedIron.plate, metals.compressedIron.plate, metals.compressedIron.plate]
		]
	],
	<actuallyadditions:block_furnace_double> : [
		[
			[metals.compressedIron.plate, <natura:netherrack_furnace>, metals.compressedIron.plate],
			[<actuallyadditions:block_coal_generator>, <teslacorelib:machine_case>, <actuallyadditions:block_coal_generator>],
			[metals.compressedIron.ingot, <natura:netherrack_furnace>, metals.compressedIron.ingot]
		]
	],
	<actuallyadditions:block_farmer> : [
		[
			[metals.compressedIron.ingot, <stevescarts:cartmodule:14>, metals.compressedIron.ingot],
			[metals.compressedIron.gear, <teslacorelib:machine_case>, metals.compressedIron.gear],
			[metals.compressedIron.ingot, <stevescarts:cartmodule:14>, metals.compressedIron.ingot]
		]
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
mods.recipestages.Recipes.setRecipeStage("four", <cyclicmagic:block_shears>);
mods.recipestages.Recipes.setRecipeStage("four", <cyclicmagic:exp_pylon>);
mods.recipestages.Recipes.setRecipeStage("four", <cyclicmagic:block_user>);
mods.recipestages.Recipes.setRecipeStage("four", <cyclicmagic:tool_mount_inverse>);
mods.recipestages.Recipes.setRecipeStage("four", <cyclicmagic:block_disenchanter>);
mods.recipestages.Recipes.setRecipeStage("four", <cyclicmagic:charm_void>);
mods.recipestages.Recipes.setRecipeStage("four", <cyclicmagic:block_vacuum>);
mods.recipestages.Recipes.setRecipeStage("four", <cyclicmagic:ender_pearl_reuse>);
mods.recipestages.Recipes.setRecipeStage("four", <cyclicmagic:ender_pearl_mounted>);
mods.recipestages.Recipes.setRecipeStage("four", <cyclicmagic:plate_vector>);

//Embers
mods.recipestages.Recipes.setRecipeStage("four", <embers:pipe>);
mods.recipestages.Recipes.setRecipeStage("four", <embers:pump>);
mods.recipestages.Recipes.setRecipeStage("four", <embers:item_pump>);
mods.recipestages.Recipes.setRecipeStage("four", <embers:item_pipe>);


//mods.recipestages.Recipes.setRecipeStage("four", <quantumstorage:quantum_tank>);
//mods.recipestages.Recipes.setRecipeStage("four", <quantumstorage:quantum_barrel>);
//mods.recipestages.Recipes.setRecipeStage("four", <quantumstorage:crater>);
//mods.recipestages.Recipes.setRecipeStage("four", <quantumstorage:quantum_storage_unit>);
//mods.recipestages.Recipes.setRecipeStage("four", <quantumstorage:quantumcrafter>);
//mods.recipestages.Recipes.setRecipeStage("four", <quantumstorage:trashcan>);
//mods.recipestages.Recipes.setRecipeStage("four", <quantumstorage:trashcanfluid>);
