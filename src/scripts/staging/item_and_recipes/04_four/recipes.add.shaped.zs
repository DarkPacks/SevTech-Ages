#priority -2

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

<testmod:test_item> : [
	//You can do one recipe or as many recipes as you want
	[
		//IF LONG
		[<testmod:test_item1>, <testmod:test_item>, <testmod:test_item>],
		[<testmod:test_item2>, <testmod:test_item>, <testmod:test_item>],
		[<testmod:test_item3>, <testmod:test_item>, <testmod:test_item>]
	],
	//IF SHORT
	[[<testmod:test_item>, <testmod:test_item>, null], [<testmod:test_item>, <testmod:test_item>, null]]
]
*/
var shapedRecipes as IIngredient[][][][IItemStack] = {
	//Better Builder's Wand
	<betterbuilderswands:wandunbreakable> : [
		[[null, null, <minecraft:nether_star>], [null, log, null], [log, null, null]]
	],

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
	<extendedcrafting:ender_crafter>: [
		[
			[<enderutilities:enderpart:1>, <enderutilities:enderpart:1>, <enderutilities:enderpart:1>],
			[<enderutilities:enderpart>, <astralsorcery:blockaltar>, <enderutilities:enderpart>],
			[<enderutilities:enderpart>, <enderutilities:enderpart>, <enderutilities:enderpart>]
		]
	],
	<extendedcrafting:ender_alternator>: [
		[
			[null, <minecraft:ender_eye>, null],
			[null, <enderutilities:enderpart>, null],
			[<enderutilities:enderpart>, <enderutilities:enderpart>, <enderutilities:enderpart>]
		]
	],

	<minecraft:ender_chest> : [
		[
			[<minecraft:obsidian>, <quark:biotite>, <minecraft:obsidian>],
			[<quark:biotite>, <ironchest:iron_chest:6>, <quark:biotite>],
			[<minecraft:obsidian>, <quark:biotite>, <minecraft:obsidian>]
		],
		[
			[<minecraft:obsidian>, <minecraft:ender_eye>, <minecraft:obsidian>],
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
			[<tconstruct:seared_furnace_controller>, <actuallyadditions:block_coal_generator>, <tconstruct:seared_furnace_controller>],
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
	<actuallyadditions:item_misc:7>: [
		[
			[null, <immersiveengineering:wirecoil:5>, <actuallyadditions:item_misc:5>],
			[<immersiveengineering:wirecoil:5>, metals.iron.rod, <immersiveengineering:wirecoil:5>],
			[<actuallyadditions:item_misc:5>, <immersiveengineering:wirecoil:5>, null]
		]
	],
	<actuallyadditions:item_misc:8>: [
		[
			[null, <immersiveengineering:wirecoil:1>, <actuallyadditions:item_misc:5>],
			[<immersiveengineering:wirecoil:1>, metals.compressedIron.rod, <immersiveengineering:wirecoil:1>],
			[<actuallyadditions:item_misc:5>, <immersiveengineering:wirecoil:1>, null]
		]
	],
	<actuallyadditions:item_battery>: [
		[
			[null, <immersiveengineering:wirecoil:5>, null],
			[metals.nickel.plate, <actuallyadditions:item_misc:8>, metals.nickel.plate],
			[metals.nickel.plate, metals.nickel.plate, metals.nickel.plate]
		]
	],
	<actuallyadditions:item_battery_double>: [
		[
			[null, <actuallyadditions:item_battery>, null],
			[metals.nickel.plate, <actuallyadditions:item_misc:8>, metals.nickel.plate],
			[metals.nickel.plate, metals.nickel.plate, metals.nickel.plate]
		]
	],
	<actuallyadditions:item_battery_triple>: [
		[
			[null, <actuallyadditions:item_battery_double>, null],
			[metals.invar.plate, <actuallyadditions:item_misc:8>, metals.invar.plate],
			[metals.invar.plate, metals.invar.plate, metals.invar.plate]
		]
	],
	<actuallyadditions:item_battery_quadruple>: [
		[
			[null, <actuallyadditions:item_battery_triple>, null],
			[metals.invar.plate, <actuallyadditions:item_misc:8>, metals.invar.plate],
			[metals.invar.plate, metals.invar.plate, metals.invar.plate]
		]
	],
	<actuallyadditions:item_battery_quintuple>: [
		[
			[null, <actuallyadditions:item_battery_quadruple>, null],
			[metals.silver.plate, <actuallyadditions:item_misc:8>, metals.silver.plate],
			[metals.silver.plate, metals.silver.plate, metals.silver.plate]
		]
	],
	<actuallyadditions:block_misc:9>: [
		[
			[metals.iron.plate, stick, metals.iron.plate],
			[stick, <actuallyadditions:item_misc:5>, stick],
			[metals.iron.plate, stick, metals.iron.plate]
		]
	],
	<actuallyadditions:block_bio_reactor>: [
		[
			[metals.modularium.plate, <actuallyadditions:block_misc:9>, metals.modularium.plate],
			[metals.modularium.plate, <ore:treeSapling>, metals.modularium.plate],
			[metals.modularium.plate, <actuallyadditions:block_misc:9>, metals.modularium.plate]
		]
	],
	<actuallyadditions:block_canola_press>: [
		[
			[cobblestone, metals.iron.plate, cobblestone],
			[cobblestone, <actuallyadditions:item_misc:13>, cobblestone],
			[cobblestone, <actuallyadditions:item_misc:8>, cobblestone]
		]
	],
	<actuallyadditions:block_fermenting_barrel>: [
		[
			[log, metals.iron.plate, log],
			[log, <actuallyadditions:item_misc:13>, log],
			[log, <actuallyadditions:block_misc:4>, log]
		]
	],
	<actuallyadditions:block_misc:8>: [
		[
			[<minecraft:ender_eye>, metals.modularium.plate, <minecraft:ender_eye>],
			[metals.modularium.plate, <actuallyadditions:block_misc:2>, metals.modularium.plate],
			[<minecraft:ender_eye>, metals.modularium.plate, <minecraft:ender_eye>]
		]
	],
	<actuallyadditions:block_giant_chest_medium>: [
		[
			[<ore:plankTreatedWood>, <actuallyadditions:block_giant_chest>, <ore:plankTreatedWood>],
			[metals.nickel.plate, null, metals.nickel.plate],
			[<ore:plankTreatedWood>, <actuallyadditions:block_giant_chest>, <ore:plankTreatedWood>]
		]
	],
	<actuallyadditions:block_giant_chest_large>: [
		[
			[<ore:plankTreatedWood>, <actuallyadditions:block_giant_chest>, <ore:plankTreatedWood>],
			[metals.modularium.plate, null, metals.modularium.plate],
			[<ore:plankTreatedWood>, <actuallyadditions:block_giant_chest_medium>, <ore:plankTreatedWood>]
		]
	],
/*
	<actuallyadditions:block_inputter>: [
		[
			[<ore:plankTreatedWood>, <ore:plankTreatedWood>, <ore:plankTreatedWood>],
			[<pneumaticcraft:omnidirectional_hopper>, null, <pneumaticcraft:omnidirectional_hopper>],
			[<ore:plankTreatedWood>, <ore:plankTreatedWood>, <ore:plankTreatedWood>]
		]
	],
	<actuallyadditions:block_inputter_advanced>: [
		[
			[<actuallyadditions:block_inputter>, <actuallyadditions:item_misc:8>],
			[<actuallyadditions:item_misc:5>, metals.redstoneAlloy.plate]
		]
	],
*/
	<actuallyadditions:block_breaker>: [
		[
			[cobblestone, cobblestone, cobblestone],
			[cobblestone, <actuallyadditions:item_misc:7>, <immersiveengineering:drillhead:1>],
			[cobblestone, cobblestone, cobblestone]
		]
	],
	<actuallyadditions:block_directional_breaker>: [
		[
			[null, null, null],
			[<actuallyadditions:block_breaker>, <actuallyadditions:block_breaker>, <actuallyadditions:block_breaker>],
			[null, <stevescarts:cartmodule:42>, null]
		]
	],
	<actuallyadditions:item_drill_upgrade_speed>: [
		[
			[metals.nickel.plate, <minecraft:sugar>, metals.nickel.plate],
			[<minecraft:sugar>, metals.redstoneAlloy.plate, <minecraft:sugar>],
			[metals.nickel.plate, <minecraft:sugar>, metals.nickel.plate]
		]
	],
	<actuallyadditions:item_drill_upgrade_speed_ii>: [
		[
			[metals.nickel.plate, <minecraft:sugar>, metals.nickel.plate],
			[<minecraft:sugar>, <minecraft:cake>, <minecraft:sugar>],
			[metals.nickel.plate, <minecraft:sugar>, metals.nickel.plate]
		]
	],
	<actuallyadditions:item_drill_upgrade_speed_iii>: [
		[
			[metals.modularium.plate, <minecraft:sugar>, metals.modularium.plate],
			[<minecraft:sugar>, <stevescarts:modulecomponents:21>, <minecraft:sugar>],
			[metals.modularium.plate, <minecraft:sugar>, metals.modularium.plate]
		]
	],
	<actuallyadditions:item_drill_upgrade_silk_touch>: [
		[
			[<tconstruct:materials:16>, metals.platinum.plate, <tconstruct:materials:16>],
			[metals.platinum.plate, <actuallyadditions:item_misc:8>, metals.platinum.plate],
			[<tconstruct:materials:16>, metals.platinum.plate, <tconstruct:materials:16>]
		]
	],
	<actuallyadditions:item_drill_upgrade_fortune>: [
		[
			[<minecraft:glowstone>, <minecraft:redstone>, <minecraft:glowstone>],
			[<minecraft:redstone>, <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 35 as short}]}), <minecraft:redstone>],
			[<minecraft:glowstone>, <minecraft:redstone>, <minecraft:glowstone>]
		]
	],
	<actuallyadditions:item_drill_upgrade_fortune_ii>: [
		[
			[<minecraft:glowstone>, metals.redstoneAlloy.plate, <minecraft:glowstone>],
			[metals.redstoneAlloy.plate, <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 35 as short}]}), metals.redstoneAlloy.plate],
			[<minecraft:glowstone>, metals.redstoneAlloy.plate, <minecraft:glowstone>]
		]
	],
	<actuallyadditions:item_drill_upgrade_three_by_three>: [
		[
			[metals.platinum.plate, <tconstruct:materials:12>, metals.platinum.plate],
			[metals.nickel.plate, <actuallyadditions:item_misc:7>, metals.nickel.plate],
			[metals.platinum.plate, <tconstruct:materials:13>, metals.platinum.plate]
		]
	],
	<actuallyadditions:item_drill_upgrade_five_by_five>: [
		[
			[metals.platinum.plate, <tconstruct:materials:12>, metals.platinum.plate],
			[<tconstruct:materials:13>, <actuallyadditions:item_misc:8>, <tconstruct:materials:13>],
			[metals.platinum.plate, <tconstruct:materials:12>, metals.platinum.plate]
		]
	],
	<actuallyadditions:item_drill_upgrade_block_placing>: [
		[
			[cobblestone, <minecraft:paper>, cobblestone],
			[metals.nickel.plate, <actuallyadditions:item_misc:7>, metals.nickel.plate],
			[cobblestone, <minecraft:paper>, cobblestone]
		]
	],
	<actuallyadditions:item_laser_wrench>: [
		[
			[<actuallyadditions:item_misc:8>, null, null],
			[null, metals.nickel.rod, null],
			[null, null, metals.nickel.rod]
		]
	],
	<actuallyadditions:block_furnace_solar>: [
		[
			[<galacticraftcore:basic_item:12>, <actuallyadditions:block_misc:9>, <galacticraftcore:basic_item:12>],
			[<actuallyadditions:item_misc:8>, <minecraft:glowstone_dust>, <actuallyadditions:item_misc:8>],
			[<galacticraftcore:basic_item:12>, <minecraft:iron_bars>, <galacticraftcore:basic_item:12>]
		]
	],
	<actuallyadditions:block_greenhouse_glass> * 2: [
		[
			[<appliedenergistics2:quartz_vibrant_glass>, <ore:treeSapling>, <appliedenergistics2:quartz_vibrant_glass>],
			[<ore:treeSapling>, <minecraft:lapis_block>, <ore:treeSapling>],
			[<appliedenergistics2:quartz_vibrant_glass>, <ore:treeSapling>, <appliedenergistics2:quartz_vibrant_glass>]
		]
	],
	<actuallyadditions:block_coffee_machine>: [
		[
			[null, <actuallyadditions:item_misc:13>, null],
			[null, <actuallyadditions:block_misc:9>, null],
			[<actuallyadditions:item_misc:7>, metals.nickel.plate, <actuallyadditions:item_misc:7>]
		]
	],
	<actuallyadditions:block_fishing_net>: [
		[
			[<minecraft:string>, <minecraft:string>, <minecraft:string>],
			[<minecraft:string>, <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 61 as short}]}), <minecraft:string>],
			[<minecraft:string>, <minecraft:string>, <minecraft:string>]
		]
	],
	<actuallyadditions:block_heat_collector>: [
		[
			[<minecraft:iron_bars>, <minecraft:repeater>, <minecraft:iron_bars>],
			[<actuallyadditions:item_misc:8>, metals.nickel.plate, <actuallyadditions:item_misc:8>],
			[<minecraft:iron_bars>, <actuallyadditions:block_misc:9>, <minecraft:iron_bars>]
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
			[<minecraft:hardened_clay>, scripts.crafting_utils.getBucketIngredient(<liquid:water>), <minecraft:hardened_clay>],
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
			[metals.aluminum.plate, scripts.crafting_utils.getBucketIngredient(<liquid:lava>), metals.aluminum.plate]
		]
	],
	<cookingforblockheads:milk_jar>: [
		[
			[null, <ore:plankWood>, null],
			[<ore:blockGlass>, <buildcraftfactory:tank>, <ore:blockGlass>],
			[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>]
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

	<pneumaticcraft:gps_tool:0> : [
		[
			[null, <minecraft:redstone_torch>, null],
			[<pneumaticcraft:plastic:1>, <ore:paneGlass>, <pneumaticcraft:plastic:1>],
			[<pneumaticcraft:plastic:1>, metals.platinum.plate, <pneumaticcraft:plastic:1>]
		]
	],
	<pneumaticcraft:crop_support> * 2: [
		[
			[metals.compressedIron.rod, null, metals.compressedIron.rod],
			[metals.compressedIron.rod, null, metals.compressedIron.rod],
			[metals.compressedIron.rod, null, metals.compressedIron.rod]
		]
	],

	//Modular Machinery
	<modularmachinery:blockcasing:3> * 8 : [
		[
			[null, metals.cobalt.gear, null],
			[metals.cobalt.gear, <modularmachinery:blockcasing>, metals.cobalt.gear],
			[null, metals.cobalt.gear, null]
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
			[sidingWood, <minecraft:iron_bars>, sidingWood],
			[<minecraft:iron_bars>, <minecraft:chest>, <minecraft:iron_bars>],
			[sidingWood, <minecraft:iron_bars>, sidingWood]
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
	<indlog:tank:8>: [
		[
			[<indlog:tank:7>, <indlog:tank:7>, <indlog:tank:7>],
			[<indlog:tank:7>, null, <indlog:tank:7>],
			[<indlog:tank:7>, <indlog:tank:7>, <indlog:tank:7>]
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
	],

	//Ender Utilities
	<enderutilities:enderpart:12>: [
		[
			[<ore:obsidian>, <enderutilities:enderpart:2>, <ore:obsidian>],
			[<enderutilities:enderpart:2>, metals.enhancedGalgadorian.ingot, <enderutilities:enderpart:2>],
			[<ore:obsidian>, <enderutilities:enderpart:2>, <ore:obsidian>]
		]
	],
	<enderutilities:enderpart:11>: [
		[
			[<ore:obsidian>, <enderutilities:enderpart:1>, <ore:obsidian>],
			[<enderutilities:enderpart:1>, metals.reinforcedMetal.ingot, <enderutilities:enderpart:1>],
			[<ore:obsidian>, <enderutilities:enderpart:1>, <ore:obsidian>]
		]
	],
	<enderutilities:endercapacitor:1>: [
		[
			[null, <minecraft:ender_pearl>, null],
			[<enderutilities:enderpart:1>, metals.reinforcedMetal.ingot, <enderutilities:enderpart:1>],
			[<ore:obsidian>, <enderutilities:enderpart:1>, <ore:obsidian>]
		]
	],
	<enderutilities:endercapacitor:2>: [
		[
			[<ore:obsidian>, <minecraft:ender_pearl>, <ore:obsidian>],
			[<enderutilities:enderpart:2>, metals.enhancedGalgadorian.ingot, <enderutilities:enderpart:2>],
			[<ore:obsidian>, <enderutilities:enderpart:2>, <ore:obsidian>]
		]
	],

	//Applied Energistics 2
	<appliedenergistics2:part:180>: [
		[
			[null, <extendedcrafting:material:7>, <appliedenergistics2:quartz_glass>],
			[<refinedstorage:quartz_enriched_iron>, <minecraft:redstone>, <appliedenergistics2:quartz_glass>],
			[null, <extendedcrafting:material:7>, <appliedenergistics2:quartz_glass>]
		]
	],
	<appliedenergistics2:part:380>: [
		[
			[<appliedenergistics2:part:180>, <appliedenergistics2:material:43>],
			[<appliedenergistics2:material:44>, <appliedenergistics2:material:22>]
		]
	],
	<appliedenergistics2:part:360>: [
		[
			[<appliedenergistics2:part:380>],
			[<extendedcrafting:table_advanced>],
			[<appliedenergistics2:material:24>]
		]
	],
	<appliedenergistics2:interface>: [
		[
			[<refinedstorage:quartz_enriched_iron>, <appliedenergistics2:quartz_glass>, <refinedstorage:quartz_enriched_iron>],
			[<appliedenergistics2:material:43>, <appliedenergistics2:material:22>, <appliedenergistics2:material:44>],
			[<refinedstorage:quartz_enriched_iron>, <appliedenergistics2:quartz_glass>, <refinedstorage:quartz_enriched_iron>]
		]
	],

	//Refined Storage
	<refinedstorage:grid:1>: [
		[
			[<refinedstorage:grid>],
			[<extendedcrafting:table_advanced>],
			[<appliedenergistics2:material:24>]
		]
	],
	<refinedstorage:grid>: [
		[
			[<extendedcrafting:material:7>, <appliedenergistics2:material:43>, <appliedenergistics2:quartz_glass>],
			[<appliedenergistics2:material:22>, <refinedstorage:machine_casing>, <appliedenergistics2:quartz_glass>],
			[<extendedcrafting:material:7>, <appliedenergistics2:material:44>, <appliedenergistics2:quartz_glass>]
		]
	],
	<refinedstorage:controller>: [
		[
			[<refinedstorage:quartz_enriched_iron>, <darkutils:shulker_pearl>, <refinedstorage:quartz_enriched_iron>],
			[<ore:itemSilicon>, <refinedstorage:machine_casing>, <ore:itemSilicon>],
			[<refinedstorage:quartz_enriched_iron>, <ore:itemSilicon>, <refinedstorage:quartz_enriched_iron>]
		]
	],
	<refinedstorage:external_storage>: [
		[
			[<appliedenergistics2:material:43>, <refinedstorage:quartz_enriched_iron>, <appliedenergistics2:material:44>],
			[<ore:chest>, <refinedstorage:cable>, <ore:chest>],
			[<refinedstorage:quartz_enriched_iron>, <appliedenergistics2:material:22>, <refinedstorage:quartz_enriched_iron>]
		]
	],
	<refinedstorage:cable> * 12: [
		[
			[<refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>],
			[<ore:chest>, <minecraft:redstone>, <ore:chest>],
			[<refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>]
		]
	],
	<refinedstorage:importer>: [
		[
			[<refinedstorage:cable>, <appliedenergistics2:material:44>],
			[<appliedenergistics2:material:22>]
		]
	],
	<refinedstorage:exporter>: [
		[
			[<refinedstorage:cable>, <appliedenergistics2:material:43>],
			[<appliedenergistics2:material:22>]
		]
	],
	<refinedstorage:interface>: [
		[
			[<refinedstorage:exporter>, <refinedstorage:quartz_enriched_iron>, <refinedstorage:importer>],
			[<refinedstorage:quartz_enriched_iron>, null, <refinedstorage:quartz_enriched_iron>],
			[<appliedenergistics2:quartz_glass>, <refinedstorage:quartz_enriched_iron>, <appliedenergistics2:quartz_glass>]
		]
	],
	<refinedstorage:network_card>: [
		[
			[<refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>],
			[<minecraft:paper>, <ore:processorEngineering>, <minecraft:paper>],
			[<refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>]
		]
	],
	<refinedstorage:security_card>: [
		[
			[<refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>],
			[<refinedstorage:network_card>, <ore:processorEngineering>, <refinedstorage:network_card>],
			[<refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>]
		]
	],

	//Use Liquid hopper instead of normal hopper
	<mob_grinding_utils:tank_sink>: [
		[
			[null, <minecraft:iron_bars>, null],
			[<minecraft:ender_eye>, <pneumaticcraft:liquid_hopper>, <minecraft:ender_eye>],
			[null, <mob_grinding_utils:tank>, null]
		]
	],

	//DRILL CORE THING!
	<actuallyadditions:item_misc:16>: [
		[
			[null, <immersiveengineering:material:20>, <immersiveengineering:drillhead>],
			[<immersiveengineering:material:20>, <immersiveengineering:metal_device0>, <immersiveengineering:material:20>],
			[<immersiveengineering:metal_decoration1:1>, <immersiveengineering:material:20>, null]
		]
	],
	<actuallyadditions:item_drill:3>: [
		[
			[null, <immersiveengineering:metal_decoration1:5>, <actuallyadditions:item_misc:16>],
			[<stevescarts:modulecomponents:12>, <pneumaticcraft:plastic:14>, <immersiveengineering:metal_decoration1:5>],
			[<stevescarts:modulecomponents:12>, <stevescarts:modulecomponents:12>, null]
		]
	],
	<pneumaticcraft:assembly_drill>: [
		[
			[<actuallyadditions:item_misc:16>, <pneumaticcraft:pneumatic_cylinder>, <pneumaticcraft:pneumatic_cylinder>],
			[null, null, <pneumaticcraft:pneumatic_cylinder>],
			[metals.compressedIron.ingot, <pneumaticcraft:printed_circuit_board>, metals.compressedIron.ingot]
		]
	],

	//Galacticraft
	<galacticraftcore:machine:12>: [
		[
			[metals.aluminum.plate, <minecraft:piston>, metals.aluminum.plate],
			[metals.aluminum.plate, <natura:netherrack_furnace>, metals.aluminum.plate],
			[<enderutilities:enderpart:2>, <betterwithmods:steel_anvil>, <enderutilities:enderpart:2>]
		]
	],
	<galacticraftcore:fuel_loader>: [
		[
			[<galacticraftcore:basic_item:6>, <galacticraftcore:basic_item:6>, <galacticraftcore:basic_item:6>],
			[<appliedenergistics2:material:22>, <galacticraftcore:canister>, <appliedenergistics2:material:24>],
			[<galacticraftcore:basic_item:7>, <pneumaticcraft:printed_circuit_board>, <galacticraftcore:basic_item:7>]
		]
	],
	<galacticraftcore:air_fan>: [
		[
			[<galacticraftcore:basic_item:9>, null, <galacticraftcore:basic_item:9>],
			[null, metals.invar.gear, null],
			[<galacticraftcore:basic_item:9>, null, <galacticraftcore:basic_item:9>]
		]
	],

	//Car
	<car:sign_post>: [
		[
			[null, metals.iron.rod, null],
			[null, metals.iron.rod, null]
		]
	],
	<car:screw_driver>: [
		[
			[null, metals.iron.rod, null],
			[null, metals.iron.rod, null],
			[null, metals.iron.ingot, null]
		]
	],
	<car:hammer>: [
		[
			[metals.iron.ingot, metals.iron.ingot, metals.iron.ingot],
			[null, metals.iron.rod, null],
			[null, metals.iron.rod, null]
		]
	],
	<car:sign> * 3: [
		[
			[metals.iron.ingot, metals.iron.ingot, metals.iron.ingot],
			[metals.iron.ingot, metals.iron.ingot, metals.iron.ingot],
			[null, metals.iron.rod, null]
		]
	],
	<car:engine_piston>: [
		[
			[null, null, metals.iron.ingot],
			[null, metals.iron.rod, null],
			[metals.iron.rod, null, null]
		]
	],
	<car:wrench>: [
		[
			[null, metals.iron.ingot, null],
			[null, metals.iron.rod, metals.iron.ingot],
			[metals.iron.rod, null, null]
		]
	],
	<car:axle>: [
		[
			[null, null, null],
			[<car:wheel>, metals.iron.rod, <car:wheel>],
			[null, null, null]
		]
	],
	<car:battery>: [
		[
			[metals.iron.rod, null, metals.iron.rod],
			[metals.iron.ingot, metals.iron.ingot, metals.iron.ingot],
			[metals.iron.ingot, metals.iron.ingot, metals.iron.ingot]
		]
	],
	<car:number_plate>: [
		[
			[metals.iron.ingot, metals.iron.ingot, metals.iron.ingot],
			[metals.iron.ingot, metals.iron.rod, metals.iron.ingot],
			[metals.iron.ingot, metals.iron.ingot, metals.iron.ingot]
		]
	],
	<car:painter_yellow>: [
		[
			[null, <ore:dyeYellow>, null],
			[null, <ore:stickWood>, <ore:dyeYellow>],
			[<ore:stickWood>, null, null]
		]
	],

	//Buildcraft Quarry
	<buildcraftbuilders:quarry>: [
		[
			[metals.platinum.gear, <stevescarts:cartmodule:9>, metals.platinum.gear],
			[metals.gold.gear, <teslacorelib:machine_case>, metals.gold.gear],
			[metals.iron.gear, <modularmachinery:blockcontroller>, metals.iron.gear]
		]
	],

	<cookingforblockheads:kitchen_floor> * 12: [
		[
			[<minecraft:quartz_block>, <actuallyadditions:block_misc:2>],
			[<actuallyadditions:block_misc:2>, <minecraft:quartz_block>]
		]
	],

	//Extra Planet Tier 1 Space Suits
	<extraplanets:tier1_space_suit_helmet:0>.withTag({electricity: 50000.0f}): [
		[
			[null, <extraplanets:tier1_armor_layer>, null],
			[<extraplanets:tier1_radiation_layer>, <extraplanets:tier1_un_prepared_space_suit_helmet>, <extraplanets:tier1_pressure_layer>],
			[null, <extraplanets:tier1_armor_layer>, null]
		]
	],
	<extraplanets:tier1_space_suit_chest:0>.withTag({electricity: 50000.0f}): [
		[
			[null, <extraplanets:tier1_armor_layer>, null],
			[<extraplanets:tier1_radiation_layer>, <extraplanets:tier1_un_prepared_space_suit_chest>, <extraplanets:tier1_pressure_layer>],
			[null, <extraplanets:tier1_armor_layer>, null]
		]
	],
	<extraplanets:tier1_space_suit_legings:0>.withTag({electricity: 50000.0f}): [
		[
			[null, <extraplanets:tier1_armor_layer>, null],
			[<extraplanets:tier1_radiation_layer>, <extraplanets:tier1_un_prepared_space_suit_legings>, <extraplanets:tier1_pressure_layer>],
			[null, <extraplanets:tier1_armor_layer>, null]
		]
	],
	<extraplanets:tier1_space_suit_boots:0>.withTag({electricity: 50000.0f}): [
		[
			[null, <extraplanets:tier1_armor_layer>, null],
			[<extraplanets:tier1_radiation_layer>, <extraplanets:tier1_un_prepared_space_suit_boots>, <extraplanets:tier1_pressure_layer>],
			[null, <extraplanets:tier1_armor_layer>, null]
		]
	],
	<extraplanets:tier1_pressure_layer> : [
		[
			[<minecraft:wool:*>, null, <minecraft:wool:*>],
			[<galacticraftcore:oxygen_concentrator>, null, <galacticraftcore:oxygen_concentrator>],
			[<minecraft:wool:*>, null, <minecraft:wool:*>]
		]
	],
	<extraplanets:tier1_radiation_layer> : [
		[
			[metals.lead.plate, <minecraft:wool:*>, metals.lead.plate],
			[metals.lead.plate, null, metals.lead.plate],
			[metals.lead.plate, <minecraft:wool:*>, metals.lead.plate]
		]
	],
	<extraplanets:tier1_un_prepared_space_suit_helmet> : [
		[
			[metals.aluminum.plate, <industrialforegoing:plastic>, metals.aluminum.plate],
			[metals.aluminum.plate, null, metals.aluminum.plate]
		]
	],
	<extraplanets:tier1_un_prepared_space_suit_chest> : [
		[
			[metals.aluminum.plate, null, metals.aluminum.plate],
			[metals.aluminum.plate, <industrialforegoing:plastic>, metals.aluminum.plate],
			[metals.aluminum.plate, metals.aluminum.plate, metals.aluminum.plate]
		]
	],
	<extraplanets:tier1_un_prepared_space_suit_legings> : [
		[
			[metals.aluminum.plate, <industrialforegoing:plastic>, metals.aluminum.plate],
			[metals.aluminum.plate, null, metals.aluminum.plate],
			[metals.aluminum.plate, null, metals.aluminum.plate]
		]
	],
	<extraplanets:tier1_un_prepared_space_suit_boots> : [
		[
			[<industrialforegoing:plastic>, null, <industrialforegoing:plastic>],
			[metals.aluminum.plate, null, metals.aluminum.plate]
		]
	],

	//Power Adapters
	<poweradapters:mj> : [
		[
			[<pneumaticcraft:ingot_iron_compressed>, <buildcrafttransport:pipe_gold_power>, <pneumaticcraft:ingot_iron_compressed>],
			[<immersiveengineering:connector:4>, <immersiveengineering:metal_device1:2>, <immersiveengineering:connector:4>],
			[<pneumaticcraft:ingot_iron_compressed> , <buildcrafttransport:pipe_gold_power>, <pneumaticcraft:ingot_iron_compressed>]
		]
	],

	<integrateddynamics:mechanical_squeezer>: [
		[
			[null, <appliedenergistics2:nether_quartz_pickaxe>, null],
			[<integrateddynamics:energy_battery>, <integrateddynamics:squeezer>, <integrateddynamics:energy_battery>],
			[null, <minecraft:obsidian>, null]
		]
	],

	//Mob Grinding Utils
	<mob_grinding_utils:saw>: [
		[
			[<minecraft:iron_sword>, <appliedenergistics2:material>, <minecraft:iron_sword>],
			[<mob_grinding_utils:spikes>, <minecraft:redstone_block>, <mob_grinding_utils:spikes>],
			[<appliedenergistics2:material>, metals.iron.block, <appliedenergistics2:material>]
		]
	],

	//BuildCraft
	<buildcrafttransport:filtered_buffer>: [
		[
			[<ore:plankWood>, <buildcrafttransport:pipe_stripes_item>, <ore:plankWood>],
			[<ore:plankWood>, <minecraft:chest>, <ore:plankWood>],
			[<ore:plankWood>, <minecraft:piston>, <ore:plankWood>]
		]
	],

	//Cyclic Magic
	<cyclicmagic:charm_void>: [
		[
			[<minecraft:nether_wart>, null, <minecraft:ender_eye>],
			[metals.iron.ingot, <astralsorcery:itemcraftingcomponent:4>, null],
			[metals.iron.ingot, metals.iron.ingot, <minecraft:nether_wart>]
		]
	]
};

for item, recipesForItem in shapedRecipes {
	for recipe in recipesForItem {
		mods.recipestages.Recipes.addShaped(STAGE, item, recipe);
	}
}
