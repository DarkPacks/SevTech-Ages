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
	<minecraft:ender_chest> : [
		[
			[<minecraft:obsidian>, <quark:biotite>, <minecraft:obsidian>],
			[<quark:biotite>, <ironchest:iron_chest:6>, <quark:biotite>],
			[<minecraft:obsidian>, <quark:biotite>, <minecraft:obsidian>]
		]
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
	],

	//Steve's Carts
	<stevescarts:cartmodule:45> : [
		[
			[<stevescarts:modulecomponents:44>, metals.iron.plate, <stevescarts:modulecomponents:44>],
			[metals.iron.plate, <immersiveengineering:material:27>, metals.iron.plate],
			[null, <minecraft:piston>, null]
		]
	],
	<stevescarts:modulecomponents:58> : [
		[
			[<stevescarts:modulecomponents:44>, null, <stevescarts:modulecomponents:44>],
			[metals.aluminum.plate, <immersiveengineering:material:27>, metals.aluminum.plate],
			[<stevescarts:modulecomponents:44>, null, <stevescarts:modulecomponents:44>]
		]
	],
	<stevescarts:upgrade:19> : [
		[
			[<stevescarts:modulecomponents:44>, <stevescarts:modulecomponents:44>, <stevescarts:modulecomponents:44>],
			[metals.platinum.plate, <minecraft:redstone>, metals.platinum.plate],
			[<minecraft:redstone>, <stevescarts:modulecomponents:59>, <minecraft:redstone>]
		]
	],

	//Storage Drawers
	<storagedrawers:controller> : [
		[
			[metals.compressedIron.plate, metals.compressedIron.plate, metals.compressedIron.plate],
			[<minecraft:comparator>, <ore:drawerTrim>, <minecraft:comparator>],
			[metals.compressedIron.plate, metals.redstoneAlloy.plate, metals.compressedIron.plate]
		]
	],
	<storagedrawers:compdrawers> : [
		[
			[metals.iron.plate, metals.compressedIron.plate, metals.iron.plate],
			[<minecraft:piston>, <ore:drawerTrim>, <minecraft:piston>],
			[metals.iron.plate, metals.redstoneAlloy.plate, metals.iron.plate]
		]
	],

	//Modular Routers
	<modularrouters:module:13> : [
		[
			[null, <tcomplement:manyullyn_helmet>, null],
			[<modularrouters:module:7>, <minecraft:skull:*>, <modularrouters:module:9>],
			[null, <tcomplement:manyullyn_chestplate>, null]
		]
	],
	<modularrouters:filter> : [
		[
			[metals.iron.plate, <ore:blockGlass>, metals.iron.plate],
			[<modularrouters:blank_module>, metals.platinum.plate, <modularrouters:blank_module>],
			[metals.iron.plate, <ore:blockGlass>, metals.iron.plate]
		]
	],
	<modularrouters:augment_core> * 4: [
		[
			[<modularrouters:blank_module>, <modularrouters:blank_upgrade>, null],
			[null, null, null],
			[null, null, null]
		]
	],
	<modularrouters:blank_upgrade> * 4: [
		[
			[<minecraft:paper>, <minecraft:paper>, metals.gold.plate],
			[<minecraft:paper>, <minecraft:dye:4>, metals.gold.plate],
			[null, <minecraft:paper>, metals.gold.plate]
		]
	],
	<modularrouters:blank_module> * 6: [
		[
			[null, <minecraft:paper>, null],
			[<minecraft:paper>, <minecraft:paper>, <minecraft:paper>],
			[metals.gold.plate, metals.gold.plate, metals.gold.plate]
		]
	],
	<modularrouters:item_router> * 4: [
		[
			[metals.iron.plate, <minecraft:iron_bars>, metals.iron.plate],
			[<minecraft:iron_bars>, <minecraft:paper>, <minecraft:iron_bars>],
			[metals.iron.plate, <minecraft:iron_bars>, metals.iron.plate]
		]
	],
	<modularrouters:upgrade:4> * 8: [
		[
			[null, null, null],
			[metals.redstoneAlloy.plate, <minecraft:clock>, metals.redstoneAlloy.plate],
			[metals.redstoneAlloy.plate, <modularrouters:blank_upgrade>, metals.redstoneAlloy.plate]
		]
	],
	<modularrouters:upgrade:5> * 8: [
		[
			[null, null, null],
			[null, <minecraft:bucket>, null],
			[<ore:blockGlass>, <modularrouters:blank_upgrade>, <ore:blockGlass>]
		]
	],
	
	//Storage Network
	<storagenetwork:master>: [
		[
			[metals.compressedIron.plate, <storagenetwork:kabel>, metals.compressedIron.plate],
			[<storagenetwork:kabel>, <teslacorelib:machine_case>, <storagenetwork:kabel>],
			[metals.compressedIron.plate, <storagenetwork:kabel>, metals.compressedIron.plate]
		]
	],
	<storagenetwork:kabel> * 8 : [
		[
			[metals.compressedIron.plate, <immersiveengineering:wirecoil:4>, metals.compressedIron.plate],
		]
	],
	<storagenetwork:request>: [
		[
			[metals.compressedIron.plate, <integrateddynamics:part_display_panel_item>, metals.compressedIron.plate],
			[<storagenetwork:kabel>, <immersiveengineering:metal_decoration0:5>, <storagenetwork:kabel>],
			[metals.compressedIron.plate, <storagedrawers:controller>, metals.compressedIron.plate]
		]
	],
	<storagenetwork:im_kabel> * 4: [
		[
			[null, <storagenetwork:kabel>, null],
			[<storagenetwork:kabel>, <minecraft:hopper>, <storagenetwork:kabel>],
			[null, <storagenetwork:kabel>, null]
		]
	],
	<storagenetwork:ex_kabel> * 4: [
		[
			[null, <storagenetwork:kabel>, null],
			[<storagenetwork:kabel>, <minecraft:piston>, <storagenetwork:kabel>],
			[null, <storagenetwork:kabel>, null]
		]
	],
	<storagenetwork:storage_kabel> * 4: [
		[
			[null, <storagenetwork:kabel>, null],
			[<storagenetwork:kabel>, <minecraft:chest>, <storagenetwork:kabel>],
			[null, <storagenetwork:kabel>, null]
		]
	],
	<storagenetwork:upgrade:1> * 4: [
		[
			[null, <minecraft:comparator>, null],
			[<minecraft:redstone>, <storagenetwork:kabel>, <minecraft:redstone>],
			[null, <minecraft:comparator>, null]
		]
	],
	<storagenetwork:upgrade> * 4: [
		[
			[null, metals.redstoneAlloy.plate, null],
			[metals.gold.plate, <storagenetwork:kabel>, metals.gold.plate],
			[null, metals.redstoneAlloy.plate, null]
		]
	],
	<storagenetwork:upgrade:2> * 4: [
		[
			[null, metals.redstoneAlloy.plate, null],
			[<minecraft:blaze_powder>, <storagenetwork:kabel>, <minecraft:blaze_powder>],
			[null, metals.redstoneAlloy.plate, null]
		]
	],
	<storagenetwork:upgrade:3> * 4: [
		[
			[null, <minecraft:comparator>, null],
			[null, <storagenetwork:kabel>, null],
			[null, <minecraft:comparator>, null]
		]
	],

	<minecraft:ender_chest> : [
		[
			[<minecraft:obsidian>, <minecraft:ender_eye>, <minecraft:obsidian>],
			[<quark:biotite>, <ironchest:iron_chest:6>, <quark:biotite>],
			[<minecraft:obsidian>, <quark:biotite>, <minecraft:obsidian>]
		]
	],

	//Cooking For Blockheads
	<cookingforblockheads:recipe_book:2> : [
		[
			[null, metals.platinum.plate, null],
			[<ore:workbench>, <cookingforblockheads:recipe_book:1>, <ore:workbench>],
			[null, metals.platinum.plate, null]
		]
	],
	<cookingforblockheads:oven> : [
		[
			[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>],
			[metals.aluminum.plate, <natura:netherrack_furnace>, metals.aluminum.plate],
			[metals.aluminum.plate, metals.aluminum.plate, metals.aluminum.plate]
		]
	],
	<cookingforblockheads:sink> : [
		[
			[metals.aluminum.plate, metals.aluminum.plate, metals.aluminum.plate],
			[<minecraft:hardened_clay>, <minecraft:water_bucket>, <minecraft:hardened_clay>],
			[<minecraft:hardened_clay>, <minecraft:hardened_clay>, <minecraft:hardened_clay>]
		]
	],
	<cookingforblockheads:tool_rack> : [
		[
			[null, null, null],
			[<ore:slabWood>, <ore:slabWood>, <ore:slabWood>],
			[metals.aluminum.rod, null, metals.aluminum.rod]
		]
	],
	<cookingforblockheads:toaster> : [
		[
			[null, null, <minecraft:stone_button>],
			[metals.aluminum.plate, <minecraft:iron_trapdoor>, metals.aluminum.plate],
			[metals.aluminum.plate, <minecraft:lava_bucket>, metals.aluminum.plate]
		]
	],

	//Pneumaticraft
	<pneumaticcraft:programming_puzzle:1> * 8 : [
		[
			[<pneumaticcraft:plastic:1>, <pneumaticcraft:plastic:1>, <pneumaticcraft:plastic:1>],
			[<pneumaticcraft:plastic:1>, <pneumaticcraft:printed_circuit_board>, <pneumaticcraft:plastic:1>],
			[<pneumaticcraft:plastic:1>, <pneumaticcraft:plastic:1>, <pneumaticcraft:plastic:1>]
		]
	],
	<pneumaticcraft:programming_puzzle:2> * 8 : [
		[
			[<pneumaticcraft:plastic:2>, <pneumaticcraft:plastic:2>, <pneumaticcraft:plastic:2>],
			[<pneumaticcraft:plastic:2>, <pneumaticcraft:printed_circuit_board>, <pneumaticcraft:plastic:2>],
			[<pneumaticcraft:plastic:2>, <pneumaticcraft:plastic:2>, <pneumaticcraft:plastic:2>]
		]
	],
	<pneumaticcraft:programming_puzzle:3> * 8 : [
		[
			[<pneumaticcraft:plastic:3>, <pneumaticcraft:plastic:3>, <pneumaticcraft:plastic:3>],
			[<pneumaticcraft:plastic:3>, <pneumaticcraft:printed_circuit_board>, <pneumaticcraft:plastic:3>],
			[<pneumaticcraft:plastic:3>, <pneumaticcraft:plastic:3>, <pneumaticcraft:plastic:3>]
		]
	],
	<pneumaticcraft:programming_puzzle:4> * 8 : [
		[
			[<pneumaticcraft:plastic:4>, <pneumaticcraft:plastic:4>, <pneumaticcraft:plastic:4>],
			[<pneumaticcraft:plastic:4>, <pneumaticcraft:printed_circuit_board>, <pneumaticcraft:plastic:4>],
			[<pneumaticcraft:plastic:4>, <pneumaticcraft:plastic:4>, <pneumaticcraft:plastic:4>]
		]
	],
	<pneumaticcraft:programming_puzzle:5> * 8 : [
		[
			[<pneumaticcraft:plastic:5>, <pneumaticcraft:plastic:5>, <pneumaticcraft:plastic:5>],
			[<pneumaticcraft:plastic:5>, <pneumaticcraft:printed_circuit_board>, <pneumaticcraft:plastic:5>],
			[<pneumaticcraft:plastic:5>, <pneumaticcraft:plastic:5>, <pneumaticcraft:plastic:5>]
		]
	],
	<pneumaticcraft:programming_puzzle:6> * 8 : [
		[
			[<pneumaticcraft:plastic:6>, <pneumaticcraft:plastic:6>, <pneumaticcraft:plastic:6>],
			[<pneumaticcraft:plastic:6>, <pneumaticcraft:printed_circuit_board>, <pneumaticcraft:plastic:6>],
			[<pneumaticcraft:plastic:6>, <pneumaticcraft:plastic:6>, <pneumaticcraft:plastic:6>]
		]
	],
	<pneumaticcraft:programming_puzzle:8> * 8 : [
		[
			[<pneumaticcraft:plastic:8>, <pneumaticcraft:plastic:8>, <pneumaticcraft:plastic:8>],
			[<pneumaticcraft:plastic:8>, <pneumaticcraft:printed_circuit_board>, <pneumaticcraft:plastic:8>],
			[<pneumaticcraft:plastic:8>, <pneumaticcraft:plastic:8>, <pneumaticcraft:plastic:8>]
		]
	],
	<pneumaticcraft:programming_puzzle:9> * 8 : [
		[
			[<pneumaticcraft:plastic:9>, <pneumaticcraft:plastic:9>, <pneumaticcraft:plastic:9>],
			[<pneumaticcraft:plastic:9>, <pneumaticcraft:printed_circuit_board>, <pneumaticcraft:plastic:9>],
			[<pneumaticcraft:plastic:9>, <pneumaticcraft:plastic:9>, <pneumaticcraft:plastic:9>]
		]
	],
	<pneumaticcraft:programming_puzzle:10> * 8 : [
		[
			[<pneumaticcraft:plastic:10>, <pneumaticcraft:plastic:10>, <pneumaticcraft:plastic:10>],
			[<pneumaticcraft:plastic:10>, <pneumaticcraft:printed_circuit_board>, <pneumaticcraft:plastic:10>],
			[<pneumaticcraft:plastic:10>, <pneumaticcraft:plastic:10>, <pneumaticcraft:plastic:10>]
		]
	],
	<pneumaticcraft:programming_puzzle:11> * 8 : [
		[
			[<pneumaticcraft:plastic:11>, <pneumaticcraft:plastic:11>, <pneumaticcraft:plastic:11>],
			[<pneumaticcraft:plastic:11>, <pneumaticcraft:printed_circuit_board>, <pneumaticcraft:plastic:11>],
			[<pneumaticcraft:plastic:11>, <pneumaticcraft:plastic:11>, <pneumaticcraft:plastic:11>]
		]
	],
	<pneumaticcraft:programming_puzzle:12> * 8 : [
		[
			[<pneumaticcraft:plastic:12>, <pneumaticcraft:plastic:12>, <pneumaticcraft:plastic:12>],
			[<pneumaticcraft:plastic:12>, <pneumaticcraft:printed_circuit_board>, <pneumaticcraft:plastic:12>],
			[<pneumaticcraft:plastic:12>, <pneumaticcraft:plastic:12>, <pneumaticcraft:plastic:12>]
		]
	],
	<pneumaticcraft:programming_puzzle:14> * 8 : [
		[
			[<pneumaticcraft:plastic:14>, <pneumaticcraft:plastic:14>, <pneumaticcraft:plastic:14>],
			[<pneumaticcraft:plastic:14>, <pneumaticcraft:printed_circuit_board>, <pneumaticcraft:plastic:14>],
			[<pneumaticcraft:plastic:14>, <pneumaticcraft:plastic:14>, <pneumaticcraft:plastic:14>]
		]
	],
	<pneumaticcraft:programming_puzzle:15> * 8 : [
		[
			[<pneumaticcraft:plastic:15>, <pneumaticcraft:plastic:15>, <pneumaticcraft:plastic:15>],
			[<pneumaticcraft:plastic:15>, <pneumaticcraft:printed_circuit_board>, <pneumaticcraft:plastic:15>],
			[<pneumaticcraft:plastic:15>, <pneumaticcraft:plastic:15>, <pneumaticcraft:plastic:15>]
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
