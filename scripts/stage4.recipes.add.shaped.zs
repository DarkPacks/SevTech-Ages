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
	<buildcraftcore:engine> : [
		[
			[<ore:plankTreatedWood>, <ore:plankTreatedWood>, <ore:plankTreatedWood>],
			[<ore:blockGlass>, metals.steel.gear, <ore:blockGlass>],
			[<minecraft:redstone>, <minecraft:piston>, <minecraft:redstone>]
		]
	],
	<prospectors:prospector_high> : [
		[[null, <minecraft:redstone>, <ore:blockGlass>], [null, <minecraft:blaze_rod>, <minecraft:redstone>], [<minecraft:blaze_rod>, null, null]]
	],

	//Extended Crafting
	<extendedcrafting:table_elite> : [
		[
			[<extendedcrafting:material:16>, <extendedcrafting:material:10>, <extendedcrafting:material:16>],
			[metals.manyullyn.block, <extendedcrafting:table_advanced>, metals.manyullyn.block],
			[<extendedcrafting:material:16>, <quark:biotite>, <extendedcrafting:material:16>]
		]
	],
	<extendedcrafting:material:16> : [
		[
			[<extendedcrafting:material:2>, <extendedcrafting:material:7>, null],
			[metals.manyullyn.ingot, metals.manyullyn.ingot, null],
			[null, null, null]
		]
	],
	<extendedcrafting:material:10> : [
		[
			[null, <extendedcrafting:material:16>, null],
			[<extendedcrafting:material:16>, <extendedcrafting:material>, <extendedcrafting:material:16>],
			[null, <extendedcrafting:material:16>, null]
		]
	],

	<minecraft:ender_chest> : [
		[
			[<minecraft:obsidian>, <quark:biotite>, <minecraft:obsidian>],
			[<quark:biotite>, <ironchest:iron_chest:6>, <quark:biotite>],
			[<minecraft:obsidian>, <quark:biotite>, <minecraft:obsidian>]
		]
	],

	<immersiveengineering:metal_device0:5> : [
		[
			[plastic, <immersiveengineering:material:9>, plastic],
			[metals.steel.plate, <immersiveengineering:material:9>, metals.steel.plate],
			[<immersiveengineering:metal_device1:6>, <immersiveengineering:metal_device1:6>, <immersiveengineering:metal_device1:6>]
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
			[metals.compressedIron.plate, <minecraft:glass_pane>, metals.compressedIron.plate],
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
	],
	<pneumaticcraft:pcb_blueprint> : [
		[
			[<industrialforegoing:plastic>, <industrialforegoing:plastic>, <industrialforegoing:plastic>],
			[<immersiveengineering:material:27>, <buildcraftbuilders:snapshot:2>, <immersiveengineering:material:27>],
			[<industrialforegoing:plastic>, <industrialforegoing:plastic>, <industrialforegoing:plastic>]
		]
	],
	<pneumaticcraft:pressure_chamber_wall> * 8 : [
		[
			[<pneumaticcraft:ingot_iron_compressed>, <pneumaticcraft:ingot_iron_compressed>, <pneumaticcraft:ingot_iron_compressed>],
			[<pneumaticcraft:ingot_iron_compressed>, null, <pneumaticcraft:ingot_iron_compressed>],
			[<pneumaticcraft:ingot_iron_compressed>, <pneumaticcraft:ingot_iron_compressed>, <pneumaticcraft:ingot_iron_compressed>]
		]
	],
	<pneumaticcraft:pressure_chamber_glass> * 8 : [
		[
			[<pneumaticcraft:ingot_iron_compressed>, <pneumaticcraft:ingot_iron_compressed>, <pneumaticcraft:ingot_iron_compressed>],
			[<pneumaticcraft:ingot_iron_compressed>, <ore:blockGlass>, <pneumaticcraft:ingot_iron_compressed>],
			[<pneumaticcraft:ingot_iron_compressed>, <pneumaticcraft:ingot_iron_compressed>, <pneumaticcraft:ingot_iron_compressed>]
		]
	],

//<pneumaticcraft:amadron_tablet:30000>


	<pneumaticcraft:gps_tool:0> : [
		[
			[null, <minecraft:redstone_torch>, null],
			[<pneumaticcraft:plastic:1>, <ore:paneGlass>, <pneumaticcraft:plastic:1>],
			[<pneumaticcraft:plastic:1>, metals.platinum.plate, <pneumaticcraft:plastic:1>]
		]
	],




	//Inductive Logistics
	<indlog:inv_connector> : [
		[
			[<indlog:buffer:10>, <indlog:buffer:10>, <indlog:buffer:10>],
			[metals.aluminum.plate, <minecraft:ender_eye>, metals.aluminum.plate],
			[<indlog:buffer:10>, <indlog:buffer:10>, <indlog:buffer:10>]
		]
	],
	<indlog:buffer:1> : [
		[
			[<ore:sidingWood>, <minecraft:iron_bars>, <ore:sidingWood>],
			[<minecraft:iron_bars>, <minecraft:chest>, <minecraft:iron_bars>],
			[<ore:sidingWood>, <minecraft:iron_bars>, <ore:sidingWood>]
		]
	],
	<indlog:buffer:5> : [
		[
			[metals.iron.plate, metals.iron.plate, metals.iron.plate],
			[metals.iron.gear, <indlog:buffer:1>, metals.iron.gear],
			[metals.iron.plate, metals.iron.gear, metals.iron.plate]
		]
	],
	<indlog:buffer:9> : [
		[
			[metals.gold.plate, metals.gold.plate, metals.gold.plate],
			[metals.gold.gear, <indlog:buffer:5>, metals.gold.gear],
			[metals.gold.plate, metals.gold.gear, metals.gold.plate]
		]
	],
	<indlog:buffer:13> : [
	  	[
	  		[<minecraft:ender_eye>, metals.platinum.gear, <minecraft:ender_eye>],
	  		[metals.platinum.gear, <indlog:buffer:9>, metals.platinum.gear],
	  		[metals.platinum.plate, metals.platinum.gear, metals.platinum.plate]
	  	]
	],	
	<indlog:fluid_pipe> * 8: [
		[
			[<appliedenergistics2:quartz_glass>, <appliedenergistics2:quartz_glass>, <appliedenergistics2:quartz_glass>],
			[<minecraft:iron_bars>, null, <minecraft:iron_bars>],
			[<appliedenergistics2:quartz_glass>, <appliedenergistics2:quartz_glass>, <appliedenergistics2:quartz_glass>]
		]
	],
	<indlog:fluid_pipe:1> * 4 : [
		[
			[null, <indlog:fluid_pipe>, null],
			[<indlog:fluid_pipe>, <minecraft:piston>, <indlog:fluid_pipe>],
			[null, <indlog:fluid_pipe>, null]
		]
	],
	<indlog:fluid_pipe:2> * 4 : [
		[
			[null, <indlog:fluid_pipe:1>, null],
			[<indlog:fluid_pipe:1>, <thebetweenlands:octine_ingot>, <indlog:fluid_pipe:1>],
			[null, <indlog:fluid_pipe:1>, null]
		]
	],
	<indlog:item_pipe> * 8: [
		[
			[<pneumaticcraft:plastic:3>, <pneumaticcraft:plastic:3>, <pneumaticcraft:plastic:3>],
			[<minecraft:iron_bars>, null, <minecraft:iron_bars>],
			[<pneumaticcraft:plastic:3>, <pneumaticcraft:plastic:3>, <pneumaticcraft:plastic:3>]
		]
	],
	<indlog:item_pipe:1> * 4: [
		[
			[null, <indlog:item_pipe>, null],
			[<indlog:item_pipe>, <pneumaticcraft:plastic:2>, <indlog:item_pipe>],
			[null, <indlog:item_pipe>, null]
		]
	],
	<indlog:item_pipe:2> * 4: [
		[
			[null, <indlog:item_pipe:1>, null],
			[<indlog:item_pipe:1>, <pneumaticcraft:plastic:1>, <indlog:item_pipe:1>],
			[null, <indlog:item_pipe:1>, null]
		]
	],
	<indlog:warp_pipe> * 12: [
		[
			[<indlog:fluid_pipe>, <indlog:fluid_pipe>, <indlog:fluid_pipe>],
			[<minecraft:ender_eye>, <quark:biotite_block>, <minecraft:ender_eye>],
			[<indlog:item_pipe>, <indlog:item_pipe>, <indlog:item_pipe>]
		]
	],
	<indlog:tank>: [
		[
			[<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>],
			[<ore:paneGlass>, <mob_grinding_utils:tank>, <ore:paneGlass>],
			[<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>]
		]
	],
	<indlog:tank:1>: [
		[
			[null, <ore:blockGlass>, null],
			[<ore:blockGlass>, metals.iron.plate, <ore:blockGlass>],
			[null, <ore:blockGlass>, null]
		],
		[
			[<indlog:tank>, <indlog:tank>, <indlog:tank>],
			[<indlog:tank>, null, <indlog:tank>],
			[<indlog:tank>, <indlog:tank>, <indlog:tank>]
		]
	],
	<indlog:tank:2>: [
		[
			[<indlog:tank:1>, <indlog:tank:1>, <indlog:tank:1>],
			[<indlog:tank:1>, null, <indlog:tank:1>],
			[<indlog:tank:1>, <indlog:tank:1>, <indlog:tank:1>]
		]
	],
	<indlog:tank:3>: [
		[
			[metals.gold.plate, metals.gold.plate, metals.gold.plate],
			[metals.gold.plate, <indlog:tank:2>, metals.gold.plate],
			[metals.gold.plate, metals.gold.plate, metals.gold.plate]
		],
		[
			[<indlog:tank:2>, <indlog:tank:2>, <indlog:tank:2>],
			[<indlog:tank:2>, null, <indlog:tank:2>],
			[<indlog:tank:2>, <indlog:tank:2>, <indlog:tank:2>]
		]
	],
	<indlog:tank:4>: [
		[
			[null, <quark:biotite_block>, null],
			[<minecraft:purpur_block>, <indlog:tank:3>, <minecraft:purpur_block>],
			[null, <quark:biotite_block>, null]
		]
	],
	<indlog:tank:5>: [
		[
			[metals.platinum.plate, metals.platinum.plate, metals.platinum.plate],
			[metals.platinum.plate, <indlog:tank:4>, metals.platinum.plate],
			[metals.platinum.plate, metals.platinum.plate, metals.platinum.plate]
		]
	],
	<indlog:tank:6>: [
		[
			[<minecraft:ender_eye>, <minecraft:end_stone>, <minecraft:ender_eye>],
			[<minecraft:nether_star>, <indlog:tank:5>, <minecraft:nether_star>],
			[<minecraft:ender_eye>, <minecraft:end_stone>, <minecraft:ender_eye>]
		]
	],
	<indlog:tank:7>: [
		[
			[<indlog:tank:6>, <indlog:tank:6>, <indlog:tank:6>],
			[<indlog:tank:6>, null, <indlog:tank:6>],
			[<indlog:tank:6>, <indlog:tank:6>, <indlog:tank:6>]
		]
	],
	<indlog:remote_inv>: [
		[
			[<indlog:item_pipe:2>, <indlog:warp_pipe>, <indlog:item_pipe:1>],
			[<indlog:item_pipe:2>, <minecraft:ender_chest>, <indlog:item_pipe:1>],
			[<immersiveengineering:material:4>, <indlog:tank:6>, <immersiveengineering:material:4>]
		]
	],

	//Industrial Foregoing
	<industrialforegoing:petrified_fuel_generator>: [
		[
			[<industrialforegoing:plastic>, metals.enhancedGalgadorian.ingot, <industrialforegoing:plastic>],
			[metals.gold.gear, <teslacorelib:machine_case>, metals.gold.gear],
			[<industrialforegoing:plastic>, <natura:netherrack_furnace>, <industrialforegoing:plastic>]
		]
	],
	<industrialforegoing:enchantment_refiner>: [
		[
			[<industrialforegoing:plastic>, <minecraft:ender_pearl>, <industrialforegoing:plastic>],
			[<minecraft:book>, <teslacorelib:machine_case>, <minecraft:enchanted_book>],
			[<industrialforegoing:plastic>, metals.enhancedGalgadorian.ingot, <industrialforegoing:plastic>]
		]
	],
	<industrialforegoing:enchantment_extractor>: [
		[
			[<industrialforegoing:plastic>, <minecraft:nether_brick>, <industrialforegoing:plastic>],
			[<minecraft:book>, <teslacorelib:machine_case>, <minecraft:book>],
			[metals.enhancedGalgadorian.ingot, metals.gold.gear, metals.enhancedGalgadorian.ingot]
		]
	],
	<industrialforegoing:animal_independence_selector>: [
		[
			[<industrialforegoing:plastic>, metals.reinforcedMetal.ingot, <industrialforegoing:plastic>],
			[metals.reinforcedMetal.ingot, <teslacorelib:machine_case>, metals.reinforcedMetal.ingot],
			[<ore:dyePurple>, metals.gold.gear, <ore:dyePurple>]
		]
	],
	<industrialforegoing:mob_duplicator>: [
		[
			[<industrialforegoing:plastic>, <minecraft:nether_wart>, <industrialforegoing:plastic>],
			[<minecraft:magma_cream>, <teslacorelib:machine_case>, <minecraft:magma_cream>],
			[metals.reinforcedMetal.ingot, <minecraft:redstone>, metals.reinforcedMetal.ingot]
		]
	],
	<industrialforegoing:enchantment_invoker>: [
		[
			[<industrialforegoing:plastic>, <minecraft:book>, <industrialforegoing:plastic>],
			[metals.enhancedGalgadorian.ingot, <teslacorelib:machine_case>, metals.enhancedGalgadorian.ingot],
			[<minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>]
		]
	],
	<industrialforegoing:villager_trade_exchanger>: [
		[
			[<industrialforegoing:plastic>, metals.gold.plate, <industrialforegoing:plastic>],
			[metals.reinforcedMetal.ingot, <teslacorelib:machine_case>, metals.reinforcedMetal.ingot],
			[<industrialforegoing:plastic>, metals.gold.gear, <industrialforegoing:plastic>]
		]
	],
	<industrialforegoing:energy_field_provider>: [
		[
			[metals.gold.plate, <industrialforegoing:energy_field_addon>, metals.gold.plate],
			[metals.gold.plate, <teslacorelib:machine_case>, metals.gold.plate],
			[<minecraft:repeater>, metals.enhancedGalgadorian.gear, <minecraft:repeater>]
		]
	],
	<industrialforegoing:black_hole_controller>: [
		[
			[<industrialforegoing:plastic>, metals.enhancedGalgadorian.block, <industrialforegoing:plastic>],
			[<minecraft:ender_eye>, <minecraft:ender_chest>, <minecraft:ender_eye>],
			[<industrialforegoing:plastic>, <teslacorelib:machine_case>, <industrialforegoing:plastic>]
		]
	],
	<industrialforegoing:range_addon:9>: [
		[
			[metals.platinum.plate, <industrialforegoing:plastic>, metals.platinum.plate],
			[metals.platinum.plate, <ore:paneGlass>, metals.platinum.plate],
			[metals.platinum.plate, <industrialforegoing:plastic>, metals.platinum.plate]
		]
	],
	<industrialforegoing:range_addon:10>: [
	  	[
	  		[<minecraft:prismarine_shard>, <industrialforegoing:plastic>, <minecraft:prismarine_shard>],
	  		[<minecraft:prismarine_shard>, <ore:paneGlass>, <minecraft:prismarine_shard>],
	  		[<minecraft:prismarine_shard>, <industrialforegoing:plastic>, <minecraft:prismarine_shard>]
	  	]
	],	
	<industrialforegoing:range_addon:11>: [
		[
			[metals.enhancedGalgadorian.ingot, <industrialforegoing:plastic>, metals.enhancedGalgadorian.ingot],
			[metals.enhancedGalgadorian.ingot, <ore:paneGlass>, metals.enhancedGalgadorian.ingot],
			[metals.enhancedGalgadorian.ingot, <industrialforegoing:plastic>, metals.enhancedGalgadorian.ingot]
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
