/*
    SevTech: Ages Steve Carts Recipe Script

    This script handles the recipes for Steve Carts.

    Note: These scripts are created and for the usage in SevTech: Ages and other
    modpacks curated by DarkPacks. You can use these scripts for reference and for
    learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.zenstages.Utils;

import scripts.crafttweaker.stages.stageZero;
import scripts.crafttweaker.stages.stageOne;
import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageThree;
import scripts.crafttweaker.stages.stageFour;
import scripts.crafttweaker.stages.stageFive;

/*
    Shaped Recipes
*/
static shapedRecipes as IIngredient[][][][IItemStack] = {
	<stevescarts:blockcartassembler> : [
		[
			[<minecraft:clock>, <extendedcrafting:material:8>, <immersiveengineering:material:27>],
			[<minecraft:glass>, <natura:netherrack_furnace>, <minecraft:glass>],
			[metals.lead.plate, <ironchest:iron_chest:1>, metals.lead.plate]
		]
	],
	<stevescarts:cartmodule> : [
		[
			[<minecraft:piston>, <minecraft:piston>, <minecraft:piston>],
			[metals.iron.plate, <natura:netherrack_furnace>, metals.iron.plate],
			[metals.iron.plate, metals.iron.plate, metals.iron.plate]
		]
	],
	<stevescarts:cartmodule:44> : [
		[
			[null, <minecraft:piston>, null],
			[metals.iron.plate, <minecraft:furnace>, metals.iron.plate],
			[null, metals.iron.plate, null]
		]
	],
	<stevescarts:cartmodule:91> : [
		[
			[metals.aluminum.plate, <minecraft:furnace>, metals.aluminum.plate],
			[metals.aluminum.plate, <natura:netherrack_furnace>, metals.aluminum.plate],
			[metals.aluminum.plate, <immersiveengineering:material:27>, metals.aluminum.plate]
		]
	],
	<stevescarts:modulecomponents:17> : [
		[
			[<ore:treeSapling>, <ore:treeSapling>, <ore:treeSapling>],
			[<ore:treeSapling>, <stevescarts:modulecomponents:16>, <ore:treeSapling>],
			[<ore:treeSapling>, <ore:treeSapling>, <ore:treeSapling>]
		]
	],
	<stevescarts:modulecomponents:16> : [
		[
			[<minecraft:redstone>, metals.aluminum.plate, <minecraft:redstone>],
			[<immersiveengineering:material:27>, metals.aluminum.plate, <immersiveengineering:material:27>],
			[<minecraft:redstone>, metals.aluminum.plate, <minecraft:redstone>]
		]
	],
	<stevescarts:modulecomponents:15> : [
		[
			[null, null, null],
			[metals.iron.rod, metals.iron.rod, <primal_tech:flint_edged_disc>],
			[null, null, null]
		]
	],
	<stevescarts:cartmodule:79> : [
		[
			[<stevescarts:modulecomponents:80>, <stevescarts:modulecomponents:80>, <stevescarts:modulecomponents:80>],
			[<stevescarts:modulecomponents:80>, metals.platinum.plate, <stevescarts:modulecomponents:80>],
			[null, <stevescarts:modulecomponents:17>, null]
		],
		[
			[metals.reinforcedMetal.ingot, metals.reinforcedMetal.ingot, metals.reinforcedMetal.ingot],
			[metals.reinforcedMetal.ingot, metals.iron.plate, metals.reinforcedMetal.ingot],
			[null, <stevescarts:cartmodule:15>, null]
		]
	],
	<stevescarts:modulecomponents:59> : [
		[
			[metals.aluminum.plate, metals.aluminum.plate, metals.aluminum.plate],
			[metals.reinforcedMetal.ingot, <minecraft:redstone>, metals.reinforcedMetal.ingot],
			[metals.aluminum.plate, <stevescarts:modulecomponents:16>, metals.aluminum.plate]
		]
	],
	<stevescarts:blockdistributor> : [
		[
			[<minecraft:stone>, <immersiveengineering:material:27>, <minecraft:stone>],
			[<immersiveengineering:material:27>, <minecraft:redstone>, <immersiveengineering:material:27>],
			[<minecraft:stone>, <immersiveengineering:material:27>, <minecraft:stone>]
		]
	],
	<stevescarts:upgrade:10> : [
		[
			[metals.aluminum.plate, <minecraft:rail>, metals.aluminum.plate],
			[<immersiveengineering:material:27>, metals.iron.plate, <immersiveengineering:material:27>],
			[metals.aluminum.plate, <stevescarts:modulecomponents:59>, metals.aluminum.plate]
		]
	],
	<stevescarts:upgrade:12> : [
		[
			[<minecraft:piston>, <minecraft:rail>, <minecraft:piston>],
			[<immersiveengineering:material:27>, metals.aluminum.plate, <immersiveengineering:material:27>],
			[metals.aluminum.plate, <stevescarts:modulecomponents:59>, metals.aluminum.plate]
		]
	],
	<stevescarts:upgrade:17> : [
		[
			[metals.aluminum.plate, <minecraft:ender_pearl>, metals.aluminum.plate],
			[<immersiveengineering:material:27>, <stevescarts:blockdistributor>, <immersiveengineering:material:27>],
			[metals.aluminum.plate, <stevescarts:modulecomponents:59>, metals.aluminum.plate]
		]
	],
	<stevescarts:upgrade:13> : [
		[
			[<immersiveengineering:material:27>, <minecraft:repeater>, <immersiveengineering:material:27>],
			[<minecraft:redstone>, <stevescarts:modulecomponents:16>, <minecraft:redstone>],
			[<minecraft:redstone>, <stevescarts:modulecomponents:59>, <minecraft:redstone>]
		]
	],
	<stevescarts:upgrade:7> : [
		[
			[null, <immersiveengineering:material:27>, null],
			[<minecraft:piston>, <natura:netherrack_furnace>, <minecraft:piston>],
			[metals.aluminum.plate, <stevescarts:modulecomponents:59>, metals.aluminum.plate]
		]
	],
	<stevescarts:upgrade:9> : [
		[
			[null, <immersiveengineering:material:27>, null],
			[<stevescarts:modulecomponents:16>, <minecraft:redstone>, <stevescarts:modulecomponents:16>],
			[metals.reinforcedMetal.ingot, <stevescarts:modulecomponents:59>, metals.reinforcedMetal.ingot]
		]
	],
	<stevescarts:upgrade:11> : [
		[
			[metals.aluminum.plate, null, metals.aluminum.plate],
			[<stevescarts:modulecomponents:16>, <minecraft:anvil>, <stevescarts:modulecomponents:16>],
			[metals.aluminum.plate, <stevescarts:modulecomponents:59>, metals.aluminum.plate]
		]
	],
	<stevescarts:upgrade:6> : [
		[
			[null, <minecraft:piston>, null],
			[<immersiveengineering:material:27>, <minecraft:fence>, <immersiveengineering:material:27>],
			[null, <stevescarts:modulecomponents:59>, null]
		]
	],
	<stevescarts:upgrade:4> : [
		[
			[
				null,
				<minecraft:enchanted_book>
					.withTag({StoredEnchantments: [{lvl: 5 as short, id: 32 as short}]})
					.onlyWithTag({StoredEnchantments: [{lvl: 5 as short, id: 32 as short}]}),
				null
			],
			[null, <minecraft:redstone>, null],
			[metals.iron.ingot, <stevescarts:modulecomponents:59>, metals.iron.ingot]
		],
		[
			[
				null,
				<minecraft:enchanted_book>
					.withTag({StoredEnchantments: [{lvl: 4 as short, id: 32 as short}]})
					.onlyWithTag({StoredEnchantments: [{lvl: 4 as short, id: 32 as short}]}),
				null
			],
			[metals.iron.ingot, <immersiveengineering:material:27>, metals.iron.ingot],
			[metals.reinforcedMetal.ingot, <stevescarts:modulecomponents:59>, metals.reinforcedMetal.ingot]
		],
		[
			[
				<minecraft:redstone>,
				<minecraft:enchanted_book>
					.withTag({StoredEnchantments: [{lvl: 3 as short, id: 32 as short}]})
					.onlyWithTag({StoredEnchantments: [{lvl: 3 as short, id: 32 as short}]}),
				<minecraft:redstone>
			],
			[metals.iron.ingot, <stevescarts:modulecomponents:16>, metals.iron.ingot],
			[metals.reinforcedMetal.ingot, <stevescarts:modulecomponents:59>, metals.reinforcedMetal.ingot]
		],
		[
			[
				<minecraft:redstone>,
				<minecraft:enchanted_book>
					.withTag({StoredEnchantments: [{lvl: 2 as short, id: 32 as short}]})
					.onlyWithTag({StoredEnchantments: [{lvl: 2 as short, id: 32 as short}]}),
				<minecraft:redstone>
			],
			[metals.reinforcedMetal.ingot, <stevescarts:modulecomponents:16>, metals.reinforcedMetal.ingot],
			[metals.reinforcedMetal.ingot, <stevescarts:modulecomponents:59>, metals.reinforcedMetal.ingot]
		],
		[
			[
				<immersiveengineering:material:27>,
				<minecraft:enchanted_book>
					.withTag({StoredEnchantments: [{lvl: 1 as short, id: 32 as short}]})
					.onlyWithTag({StoredEnchantments: [{lvl: 1 as short, id: 32 as short}]}),
				<immersiveengineering:material:27>
			],
			[metals.reinforcedMetal.ingot, <stevescarts:modulecomponents:16>, metals.reinforcedMetal.ingot],
			[metals.reinforcedMetal.ingot, <stevescarts:modulecomponents:59>, metals.reinforcedMetal.ingot]
		]
	],
	<stevescarts:upgrade:5> : [
		[
			[
				metals.galgadorian.ingot,
				<minecraft:enchanted_book>
					.withTag({StoredEnchantments: [{lvl: 5 as short, id: 32 as short}]})
					.onlyWithTag({StoredEnchantments: [{lvl: 5 as short, id: 32 as short}]}),
				metals.galgadorian.ingot
			],
			[metals.galgadorian.ingot, <stevescarts:modulecomponents:16>, metals.galgadorian.ingot],
			[metals.galgadorian.ingot, <stevescarts:upgrade:4>, metals.galgadorian.ingot]
		]
	],
	<stevescarts:blockdetector:1> : [
		[
			[<minecraft:cobblestone>, <minecraft:stone_pressure_plate>, <minecraft:cobblestone>],
			[metals.aluminum.plate, <immersiveengineering:material:27>, metals.aluminum.plate],
			[<minecraft:cobblestone>, <minecraft:redstone>, <minecraft:cobblestone>]
		]
	],
	<stevescarts:blockdetector> : [
		[
			[null, <immersiveengineering:material:27>, null],
			[null, <stevescarts:blockdetector:1>, null],
			[null, null, null]
		]
	],
	<stevescarts:blockdetector:2> : [
		[
			[metals.aluminum.plate, metals.iron.plate, metals.aluminum.plate],
			[null, <stevescarts:blockdetector:1>, null],
			[null, <immersiveengineering:material:27>, null]
		]
	],
	<stevescarts:cartmodule:14> : [
		[
			[metals.platinum.plate, metals.platinum.plate, metals.platinum.plate],
			[null, metals.aluminum.plate, null],
			[<immersiveengineering:material:27>, metals.gold.plate, <immersiveengineering:material:27>]
		]
	],
	<stevescarts:cartmodule:84> : [
		[
			[metals.galgadorian.ingot, metals.galgadorian.ingot, metals.galgadorian.ingot],
			[null, metals.reinforcedMetal.ingot, null],
			[<stevescarts:modulecomponents:16>, metals.gold.plate, <stevescarts:modulecomponents:16>]
		],
		[
			[metals.galgadorian.ingot, metals.galgadorian.ingot, metals.galgadorian.ingot],
			[null, <stevescarts:cartmodule:14>, null],
			[null, <immersiveengineering:material:27>, null]
		]
	],
	<stevescarts:cartmodule:18> : [
		[
			[<actuallyadditions:item_fertilizer>, null, <actuallyadditions:item_fertilizer>],
			[<buildcraftfactory:tank>, <minecraft:leather>, <buildcraftfactory:tank>],
			[<minecraft:leather>,<immersiveengineering:material:27>, <minecraft:leather>]
		]
	],
	<stevescarts:cartmodule:85> : [
		[
			[<stevescarts:modulecomponents:84>, null, <stevescarts:modulecomponents:84>],
			[null, <immersiveengineering:material:27>, null],
			[<stevescarts:modulecomponents:84>, null, <stevescarts:modulecomponents:84>]
		]
	],
	<stevescarts:cartmodule:86> : [
		[
			[<minecraft:wheat>, <minecraft:wheat>, <minecraft:wheat>],
			[<immersiveengineering:material:27>, <minecraft:bucket>, <immersiveengineering:material:27>],
			[null, <immersiveengineering:material:27>, null]
		]
	],
	<stevescarts:cartmodule:57> : [
		[
			[<minecraft:fence>, <minecraft:fence>, <minecraft:fence>],
			[<minecraft:fence>, <immersiveengineering:material:27>, <minecraft:fence>],
			[<minecraft:fence>, <minecraft:fence>, <minecraft:fence>]
		]
	],
	<stevescarts:cartmodule:12> : [
		[
			[null, <minecraft:redstone>, null],
			[<minecraft:brick_block>, <immersiveengineering:material:27>, <minecraft:brick_block>],
			[null, <minecraft:piston>, null]
		]
	],
	<stevescarts:modulecomponents:10> : [
		[
			[metals.gold.plate, metals.platinum.plate, metals.gold.plate],
			[<minecraft:glass_pane>, <immersiveengineering:material:27>, <minecraft:glass_pane>],
			[<minecraft:redstone>, <minecraft:glass_pane>, <minecraft:redstone>]
		]
	],
	<stevescarts:modulecomponents:39> : [
		[
			[<stevescarts:modulecomponents:37>, <stevescarts:modulecomponents:37>, <stevescarts:modulecomponents:37>],
			[<stevescarts:modulecomponents:37>, <immersiveengineering:material:27>, <stevescarts:modulecomponents:37>],
			[<stevescarts:modulecomponents:37>, <stevescarts:modulecomponents:37>, <stevescarts:modulecomponents:37>]
		]
	],
	<stevescarts:modulecomponents:26> : [
		[
			[metals.gold.plate, <immersiveengineering:material:27>, metals.gold.plate],
			[<minecraft:redstone>, <stevescarts:modulecomponents:16>, <minecraft:redstone>],
			[<minecraft:redstone>, null, <minecraft:redstone>]
		]
	],
	<stevescarts:modulecomponents:18> : [
		[
			[<minecraft:obsidian>, null, <minecraft:obsidian>],
			[null, metals.platinum.plate, null],
			[<minecraft:obsidian>, null, <minecraft:obsidian>]
		]
	],
	<stevescarts:modulecomponents:11> : [
		[
			[null, null, metals.blackIron.rod],
			[null, metals.blackIron.rod, null],
			[metals.blackIron.rod, null, null]
		]
	],
	<stevescarts:modulecomponents:28> : [
		[
			[null, <minecraft:redstone>, null],
			[null, <immersiveengineering:material:27>, null],
			[null, null, null]
		]
	],
	<stevescarts:modulecomponents:27> : [
		[
			[metals.aluminum.plate, <minecraft:redstone>, metals.aluminum.plate],
			[metals.aluminum.plate, <immersiveengineering:material:27>, metals.aluminum.plate],
			[metals.aluminum.plate, metals.aluminum.plate, metals.aluminum.plate]
		]
	],
	<stevescarts:modulecomponents:25> : [
		[
			[<minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>],
			[<minecraft:redstone>, metals.gold.plate, <minecraft:redstone>],
			[<minecraft:dispenser>, <immersiveengineering:material:27>, <minecraft:dispenser>]
		]
	],
	<stevescarts:cartmodule:99> : [
		[
			[null, <minecraft:cake>, null],
			[<ore:slabWood>, <ore:slabWood>, <ore:slabWood>],
			[null, <immersiveengineering:material:27>, null]
		]
	],
	<stevescarts:cartmodule:23> : [
		[
			[null, metals.lead.plate, null],
			[null, <stevescarts:modulecomponents:28>, null],
			[null, null, null]
		]
	],
	<stevescarts:cartmodule:78> : [
		[
			[null, <minecraft:glass_pane>, null],
			[<ore:plankWood>, <immersiveengineering:material:27>, <ore:plankWood>],
			[<minecraft:redstone>, <ore:plankWood>, <minecraft:redstone>]
		]
	],
	<stevescarts:upgrade:1> : [
		[
			[metals.platinum.gear, <minecraft:glowstone>, metals.platinum.gear],
			[<minecraft:glowstone>, metals.bronze.block, <minecraft:glowstone>],
			[metals.platinum.gear, <stevescarts:upgrade>, metals.platinum.gear]
		]
	],
	<stevescarts:upgrade:16> : [
		[
			[<stevescarts:modulecomponents:45>, metals.reinforcedMetal.ingot, null],
			[metals.platinum.plates, <minecraft:lapis_block>, metals.platinum.plates],
			[null, <stevescarts:upgrade:15>, <stevescarts:modulecomponents:45>]
		]
	],
	<stevescarts:cartmodule:22> : [

			[[null, <nex:item_crystal_amethyst>, null],
			[<minecraft:glowstone>, <stevescarts:modulecomponents:28>, <minecraft:glowstone>],
			[null, null, null]
		]
	],
	<stevescarts:cartmodule:93> : [
		[
			[null, metals.platinum.plate, null],
			[null, <stevescarts:modulecomponents:16>, null],
			[<immersiveengineering:material:27>, <stevescarts:cartmodule:91>, <immersiveengineering:material:27>]
		]
	],
	<stevescarts:cartmodule:19> : [
		[
			[null, <minecraft:compass>, null],
			[<minecraft:paper>, <immersiveengineering:material:27>, <minecraft:paper>],
			[<minecraft:paper>, <minecraft:paper>, <minecraft:paper>]
		]
	],
	<stevescarts:cartmodule:49> : [
		[
			[null, <minecraft:ender_pearl>, null],
			[<immersiveengineering:material:27>, metals.iron.plate, <immersiveengineering:material:27>],
			[metals.reinforcedMetal.ingot, <stevescarts:modulecomponents:16>, metals.reinforcedMetal.ingot]
		]
	],
	<stevescarts:cartmodule:59> : [
		[
			[<ore:fenceWood>, <minecraft:dispenser>, <ore:fenceWood>],
			[<minecraft:crafting_table>, <stevescarts:modulecomponents:43>, <minecraft:crafting_table>],
			[<immersiveengineering:material:27>, <minecraft:flint_and_steel>, <immersiveengineering:material:27>]
		]
	],
	<stevescarts:cartmodule:89> : [
		[
			[<minecraft:redstone>, <stevescarts:modulecomponents:16>, <minecraft:redstone>],
			[null, <ore:treeSapling>, null],
			[<immersiveengineering:material:27>, <ore:treeSapling>, <immersiveengineering:material:27>]
		]
	],
	<stevescarts:cartmodule:94> : [
		[
			[<minecraft:glass_pane>, <minecraft:glass_pane>, <minecraft:glass_pane>],
			[metals.iron.plate, <minecraft:glowstone_dust>, metals.iron.plate],
			[<immersiveengineering:material:27>, <minecraft:sign>, <immersiveengineering:material:27>]
		]
	],
	<stevescarts:cartmodule:95> : [
		[
			[null, <minecraft:redstone>, null],
			[<minecraft:glowstone_dust>, metals.platinum.plate, <minecraft:glowstone_dust>],
			[<immersiveengineering:material:27>, <minecraft:cauldron>, <immersiveengineering:material:27>]
		]
	],
	<stevescarts:cartmodule:101> : [
		[
			[null, <stevescarts:cartmodule:41>, null],
			[null, <immersiveengineering:material:27>, null],
			[null, null, null]
		]
	],
	<stevescarts:blockdetector:3> : [
		[
			[<minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>],
			[<minecraft:redstone>, <stevescarts:blockdetector>, <minecraft:redstone>],
			[null, <immersiveengineering:material:27>, null]
		]
	],
	<stevescarts:modulecomponents:43> * 12 : [
		[
			[null, null, <minecraft:string>],
			[null, <minecraft:string>, null],
			[<minecraft:string>, null, null]
		]
	],
	<stevescarts:cartmodule:15> : [
		[
			[<stevescarts:modulecomponents:15>, <stevescarts:modulecomponents:15>, <stevescarts:modulecomponents:15>],
			[<stevescarts:modulecomponents:15>, <immersiveengineering:material:27>, <stevescarts:modulecomponents:15>],
			[null, <stevescarts:modulecomponents:17>, null]
		]
	],
	<stevescarts:cartmodule:80> : [
		[
			[<stevescarts:modulecomponents:81>, <stevescarts:modulecomponents:81>, <stevescarts:modulecomponents:81>],
			[<stevescarts:modulecomponents:81>, metals.reinforcedMetal.ingot, <stevescarts:modulecomponents:81>],
			[null, <stevescarts:modulecomponents:17>, null]
		],
		[
			[metals.galgadorian.ingot, metals.galgadorian.ingot, metals.galgadorian.ingot],
			[metals.galgadorian.ingot, metals.iron.plate, metals.galgadorian.ingot],
			[null, <stevescarts:cartmodule:79>, null]
		]
	],
	<stevescarts:blockadvdetector> * 2: [
		[
			[metals.iron.plate, <minecraft:stone_pressure_plate>, metals.iron.plate],
			[metals.iron.plate, <minecraft:redstone>, metals.iron.plate],
			[metals.iron.plate, <minecraft:stone_pressure_plate>, metals.iron.plate]
		]
	],
	<stevescarts:modulecomponents:42> * 2: [
		[
			[<ore:dyeOrange>, metals.iron.plate, <ore:dyeOrange>],
			[<ore:dyeOrange>, metals.iron.plate, <ore:dyeOrange>],
			[<ore:dyeOrange>, metals.iron.plate, <ore:dyeOrange>]
		]
	],
	<stevescarts:modulecomponents:65> * 2: [
		[
			[<ore:dyeGreen>, metals.iron.plate, <ore:dyeGreen>],
			[<ore:dyeGreen>, metals.iron.plate, <ore:dyeGreen>],
			[<ore:dyeGreen>, metals.iron.plate, <ore:dyeGreen>]
		]
	],
	<stevescarts:modulecomponents:30> * 32 : [
		[
			[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
			[<ore:logWood>, <ore:plankWood>, <ore:logWood>],
			[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
		]
	],
	<stevescarts:modulecomponents:34> * 8 : [
		[
			[<stevescarts:modulecomponents:30>, <stevescarts:modulecomponents:30>, <stevescarts:modulecomponents:30>],
			[<stevescarts:modulecomponents:30>, metals.iron.plate, <stevescarts:modulecomponents:30>],
			[<stevescarts:modulecomponents:30>, <stevescarts:modulecomponents:30>, <stevescarts:modulecomponents:30>]
		]
	],
	<stevescarts:modulecomponents:61> * 32 : [
		[
			[<minecraft:glass_pane>, <minecraft:glass_pane>, <minecraft:glass_pane>],
			[<minecraft:glass>, <minecraft:glass_pane>, <minecraft:glass>],
			[<minecraft:glass_pane>, <minecraft:glass_pane>, <minecraft:glass_pane>]
		]
	],
	<stevescarts:modulecomponents:33> * 8 : [
		[
			[null, metals.iron.plate, null],
			[null, <ore:stone>, null],
			[null, null, null]
		]
	],
	<stevescarts:modulecomponents:60> * 8 : [
		[
			[null, metals.iron.plate, null],
			[metals.iron.plate, <minecraft:iron_bars>, metals.iron.plate],
			[null, metals.iron.plate, null]
		]
	],
	<stevescarts:modulecomponents:83> * 4 : [
		[
			[null, <tconstruct:knife_blade>.withTag({Material: "iron"}), null],
			[metals.iron.rod, metals.iron.plate, metals.iron.rod],
			[null, metals.iron.rod, null]
		]
	],
	<stevescarts:cartmodule:42> : [
		[
			[metals.iron.plate, metals.iron.plate, null],
			[metals.iron.plate, metals.iron.plate, <immersiveengineering:drillhead:1>],
			[metals.iron.plate, metals.iron.plate, null]
		]
	],
	<stevescarts:cartmodule:8> : [
		[
			[metals.steel.plate, metals.steel.plate, null],
			[metals.steel.plate, metals.steel.plate, <stevescarts:cartmodule:42>],
			[metals.steel.plate, metals.steel.plate, null]
		]
	],
	<stevescarts:cartmodule:43> : [
		[
			[metals.reinforcedMetal.ingot, metals.reinforcedMetal.ingot, null],
			[metals.platinum.plate, metals.reinforcedMetal.ingot, <stevescarts:cartmodule:8>],
			[metals.reinforcedMetal.ingot, metals.reinforcedMetal.ingot, null]
		]
	],
	<stevescarts:cartmodule:9> : [
		[
			[metals.galgadorian.ingot, metals.enhancedGalgadorian.ingot, null],
			[metals.platinum.plate, metals.enhancedGalgadorian.ingot, <stevescarts:cartmodule:43>],
			[metals.galgadorian.ingot, metals.enhancedGalgadorian.ingot, null]
		]
	],
	<stevescarts:blockliquidmanager> : [
		[
			[<stevescarts:cartmodule:66>, metals.aluminum.plate, <stevescarts:cartmodule:66>],
			[metals.aluminum.plate, null, metals.aluminum.plate],
			[<stevescarts:cartmodule:66>, metals.aluminum.plate, <stevescarts:cartmodule:66>]
		]
	],
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
	]
};

static namedShapedRecipes as IIngredient[][][][string][IItemStack] = {
};

/*
    Mirrored Recipes
*/
static mirroredRecipes as IIngredient[][][][IItemStack] = {
};

static namedMirroredRecipes as IIngredient[][][][string][IItemStack] = {
};

/*
    Shapeless Recipes
*/
static shapelessRecipes as IIngredient[][][IItemStack] = {
};

static namedShapelessRecipes as IIngredient[][][string][IItemStack] = {
};

/*
    Recipe Removals
*/
static removeRecipes as IIngredient[] = [
	<stevescarts:blockadvdetector>,
	<stevescarts:blockcartassembler>,
	<stevescarts:blockdetector:1>,
	<stevescarts:blockdetector:2>,
	<stevescarts:blockdetector:3>,
	<stevescarts:blockdetector>,
	<stevescarts:blockdistributor>,
	<stevescarts:blockliquidmanager>,
	<stevescarts:cartmodule:101>,
	<stevescarts:cartmodule:12>,
	<stevescarts:cartmodule:14>,
	<stevescarts:cartmodule:15>,
	<stevescarts:cartmodule:18>,
	<stevescarts:cartmodule:19>,
	<stevescarts:cartmodule:22>,
	<stevescarts:cartmodule:23>,
	<stevescarts:cartmodule:42>,
	<stevescarts:cartmodule:43>,
	<stevescarts:cartmodule:44>,
	<stevescarts:cartmodule:49>,
	<stevescarts:cartmodule:57>,
	<stevescarts:cartmodule:59>,
	<stevescarts:cartmodule:78>,
	<stevescarts:cartmodule:79>,
	<stevescarts:cartmodule:80>,
	<stevescarts:cartmodule:84>,
	<stevescarts:cartmodule:85>,
	<stevescarts:cartmodule:86>,
	<stevescarts:cartmodule:87>,
	<stevescarts:cartmodule:89>,
	<stevescarts:cartmodule:8>,
	<stevescarts:cartmodule:91>,
	<stevescarts:cartmodule:92>,
	<stevescarts:cartmodule:93>,
	<stevescarts:cartmodule:94>,
	<stevescarts:cartmodule:95>,
	<stevescarts:cartmodule:99>,
	<stevescarts:cartmodule:9>,
	<stevescarts:cartmodule>,
	<stevescarts:modulecomponents:10>,
	<stevescarts:modulecomponents:11>,
	<stevescarts:modulecomponents:15>,
	<stevescarts:modulecomponents:16>,
	<stevescarts:modulecomponents:17>,
	<stevescarts:modulecomponents:18>,
	<stevescarts:modulecomponents:21>,
	<stevescarts:modulecomponents:25>,
	<stevescarts:modulecomponents:26>,
	<stevescarts:modulecomponents:27>,
	<stevescarts:modulecomponents:28>,
	<stevescarts:modulecomponents:30>,
	<stevescarts:modulecomponents:33>,
	<stevescarts:modulecomponents:34>,
	<stevescarts:modulecomponents:39>,
	<stevescarts:modulecomponents:42>,
	<stevescarts:modulecomponents:43>,
	<stevescarts:modulecomponents:46>,
	<stevescarts:modulecomponents:59>,
	<stevescarts:modulecomponents:60>,
	<stevescarts:modulecomponents:61>,
	<stevescarts:modulecomponents:65>,
	<stevescarts:modulecomponents:83>,
	<stevescarts:upgrade:10>,
	<stevescarts:upgrade:11>,
	<stevescarts:upgrade:12>,
	<stevescarts:upgrade:13>,
	<stevescarts:upgrade:16>,
	<stevescarts:upgrade:17>,
	<stevescarts:upgrade:1>,
	<stevescarts:upgrade:4>,
	<stevescarts:upgrade:5>,
	<stevescarts:upgrade:6>,
	<stevescarts:upgrade:7>,
	<stevescarts:upgrade:9>,
	<stevescarts:cartmodule:45>,
	<stevescarts:modulecomponents:58>,
	<stevescarts:upgrade:19>,
];

function init() {
	// Un-named recipes
	var shapedRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.stevescarts.shapedRecipes;
	var mirroredRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.stevescarts.mirroredRecipes;
	var shapelessRecipes as IIngredient[][][IItemStack] = scripts.crafttweaker.recipes.mods.stevescarts.shapelessRecipes;

	// Named recipes
	var namedShapedRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.stevescarts.namedShapedRecipes;
	var namedMirroredRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.stevescarts.namedMirroredRecipes;
	var namedShapelessRecipes as IIngredient[][][string][IItemStack] = scripts.crafttweaker.recipes.mods.stevescarts.namedShapelessRecipes;

	var removeRecipes as IItemStack[] = scripts.crafttweaker.recipes.mods.stevescarts.removeRecipes;

	// Un-named recipes
	recipeUtil.process(shapedRecipes, false);
    recipeUtil.process(mirroredRecipes, true);
    recipeUtil.process(shapelessRecipes);

	// Named recipes
	recipeUtil.processNamed(namedShapedRecipes, false);
    recipeUtil.processNamed(namedMirroredRecipes, true);
    recipeUtil.processNamed(namedShapelessRecipes);

	recipeUtil.removeRecipes(removeRecipes);
}
