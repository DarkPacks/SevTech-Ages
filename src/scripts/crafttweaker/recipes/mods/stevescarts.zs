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

import scripts.crafttweaker.utils;
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
	<stevescarts:blockcartassembler:0> : [
		[
			[<minecraft:clock:0>, <extendedcrafting:material:8>, <immersiveengineering:material:27>],
			[<minecraft:glass:0>, <natura:netherrack_furnace:0>, <minecraft:glass:0>],
			[metals.lead.plate, <ironchest:iron_chest:1>, metals.lead.plate]
		]
	],
	<stevescarts:blockliquidmanager:0> : [
		[
			[<stevescarts:cartmodule:66>, metals.aluminum.plate, <stevescarts:cartmodule:66>],
			[metals.aluminum.plate, null, metals.aluminum.plate],
			[<stevescarts:cartmodule:66>, metals.aluminum.plate, <stevescarts:cartmodule:66>]
		]
	],
	<stevescarts:blockdistributor:0> : [
		[
			[<minecraft:stone:0>, <immersiveengineering:material:27>, <minecraft:stone:0>],
			[<immersiveengineering:material:27>, <minecraft:redstone:0>, <immersiveengineering:material:27>],
			[<minecraft:stone:0>, <immersiveengineering:material:27>, <minecraft:stone:0>]
		]
	],
	<stevescarts:blockdetector:0> : [
		[
			[<immersiveengineering:material:27>],
			[<stevescarts:blockdetector:1>]
		]
	],
	<stevescarts:blockdetector:1> : [
		[
			[<minecraft:cobblestone:0>, <minecraft:stone_pressure_plate:0>, <minecraft:cobblestone:0>],
			[metals.aluminum.plate, <immersiveengineering:material:27>, metals.aluminum.plate],
			[<minecraft:cobblestone:0>, <minecraft:redstone:0>, <minecraft:cobblestone:0>]
		]
	],
	<stevescarts:blockdetector:2> : [
		[
			[metals.aluminum.plate, metals.iron.plate, metals.aluminum.plate],
			[null, <stevescarts:blockdetector:1>, null],
			[null, <immersiveengineering:material:27>, null]
		]
	],
	<stevescarts:blockdetector:3> : [
		[
			[<minecraft:redstone:0>, <minecraft:redstone:0>, <minecraft:redstone:0>],
			[<minecraft:redstone:0>, <stevescarts:blockdetector:0>, <minecraft:redstone:0>],
			[null, <immersiveengineering:material:27>, null]
		]
	],
	<stevescarts:upgrade:1> : [
		[
			[metals.platinum.gear, <minecraft:glowstone:0>, metals.platinum.gear],
			[<minecraft:glowstone:0>, metals.bronze.block, <minecraft:glowstone:0>],
			[metals.platinum.gear, <stevescarts:upgrade:0>, metals.platinum.gear]
		]
	],
	<stevescarts:upgrade:4> : [
		[
			[
				null,
				<minecraft:enchanted_book:0>
					.withTag({StoredEnchantments: utils.makeJeidTag(<enchantment:minecraft:efficiency>.makeEnchantment(5)).ench}),
				null
			],
			[null, <minecraft:redstone:0>, null],
			[metals.iron.ingot, <stevescarts:modulecomponents:59>, metals.iron.ingot]
		],
		[
			[
				null,
				<minecraft:enchanted_book:0>
					.withTag({StoredEnchantments: utils.makeJeidTag(<enchantment:minecraft:efficiency>.makeEnchantment(4)).ench}),
				null
			],
			[metals.iron.ingot, <immersiveengineering:material:27>, metals.iron.ingot],
			[metals.reinforcedMetal.ingot, <stevescarts:modulecomponents:59>, metals.reinforcedMetal.ingot]
		],
		[
			[
				<minecraft:redstone:0>,
				<minecraft:enchanted_book:0>
					.withTag({StoredEnchantments: utils.makeJeidTag(<enchantment:minecraft:efficiency>.makeEnchantment(3)).ench}),
				<minecraft:redstone:0>
			],
			[metals.iron.ingot, <stevescarts:modulecomponents:16>, metals.iron.ingot],
			[metals.reinforcedMetal.ingot, <stevescarts:modulecomponents:59>, metals.reinforcedMetal.ingot]
		],
		[
			[
				<minecraft:redstone:0>,
				<minecraft:enchanted_book:0>
					.withTag({StoredEnchantments: utils.makeJeidTag(<enchantment:minecraft:efficiency>.makeEnchantment(2)).ench}),
				<minecraft:redstone:0>
			],
			[metals.reinforcedMetal.ingot, <stevescarts:modulecomponents:16>, metals.reinforcedMetal.ingot],
			[metals.reinforcedMetal.ingot, <stevescarts:modulecomponents:59>, metals.reinforcedMetal.ingot]
		],
		[
			[
				<immersiveengineering:material:27>,
				<minecraft:enchanted_book:0>
					.withTag({StoredEnchantments: utils.makeJeidTag(<enchantment:minecraft:efficiency>.makeEnchantment(1)).ench}),
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
				<minecraft:enchanted_book:0>
					.withTag({StoredEnchantments: utils.makeJeidTag(<enchantment:minecraft:efficiency>.makeEnchantment(5)).ench}),
				metals.galgadorian.ingot
			],
			[metals.galgadorian.ingot, <stevescarts:modulecomponents:16>, metals.galgadorian.ingot],
			[metals.galgadorian.ingot, <stevescarts:upgrade:4>, metals.galgadorian.ingot]
		]
	],
	<stevescarts:upgrade:6> : [
		[
			[null, <minecraft:piston:0>, null],
			[<immersiveengineering:material:27>, <minecraft:fence:0>, <immersiveengineering:material:27>],
			[null, <stevescarts:modulecomponents:59>, null]
		]
	],
	<stevescarts:upgrade:7> : [
		[
			[null, <immersiveengineering:material:27>, null],
			[<minecraft:piston:0>, <natura:netherrack_furnace:0>, <minecraft:piston:0>],
			[metals.aluminum.plate, <stevescarts:modulecomponents:59>, metals.aluminum.plate]
		]
	],
	<stevescarts:upgrade:9> : [
		[
			[null, <immersiveengineering:material:27>, null],
			[<stevescarts:modulecomponents:16>, <minecraft:redstone:0>, <stevescarts:modulecomponents:16>],
			[metals.reinforcedMetal.ingot, <stevescarts:modulecomponents:59>, metals.reinforcedMetal.ingot]
		]
	],
	<stevescarts:upgrade:10> : [
		[
			[metals.aluminum.plate, <minecraft:rail:0>, metals.aluminum.plate],
			[<immersiveengineering:material:27>, metals.iron.plate, <immersiveengineering:material:27>],
			[metals.aluminum.plate, <stevescarts:modulecomponents:59>, metals.aluminum.plate]
		]
	],
	<stevescarts:upgrade:11> : [
		[
			[metals.aluminum.plate, null, metals.aluminum.plate],
			[<stevescarts:modulecomponents:16>, <minecraft:anvil:0>, <stevescarts:modulecomponents:16>],
			[metals.aluminum.plate, <stevescarts:modulecomponents:59>, metals.aluminum.plate]
		]
	],
	<stevescarts:upgrade:12> : [
		[
			[<minecraft:piston:0>, <minecraft:rail:0>, <minecraft:piston:0>],
			[<immersiveengineering:material:27>, metals.aluminum.plate, <immersiveengineering:material:27>],
			[metals.aluminum.plate, <stevescarts:modulecomponents:59>, metals.aluminum.plate]
		]
	],
	<stevescarts:upgrade:13> : [
		[
			[<immersiveengineering:material:27>, <minecraft:repeater:0>, <immersiveengineering:material:27>],
			[<minecraft:redstone:0>, <stevescarts:modulecomponents:16>, <minecraft:redstone:0>],
			[<minecraft:redstone:0>, <stevescarts:modulecomponents:59>, <minecraft:redstone:0>]
		]
	],
	<stevescarts:upgrade:16> : [
		[
			[<stevescarts:modulecomponents:45>, metals.reinforcedMetal.ingot, null],
			[metals.platinum.plates, <minecraft:lapis_block:0>, metals.platinum.plates],
			[null, <stevescarts:upgrade:15>, <stevescarts:modulecomponents:45>]
		]
	],
	<stevescarts:upgrade:17> : [
		[
			[metals.aluminum.plate, <minecraft:ender_pearl:0>, metals.aluminum.plate],
			[<immersiveengineering:material:27>, <stevescarts:blockdistributor:0>, <immersiveengineering:material:27>],
			[metals.aluminum.plate, <stevescarts:modulecomponents:59>, metals.aluminum.plate]
		]
	],
	<stevescarts:upgrade:19> : [
		[
			[<stevescarts:modulecomponents:44>, <stevescarts:modulecomponents:44>, <stevescarts:modulecomponents:44>],
			[metals.platinum.plate, <minecraft:redstone:0>, metals.platinum.plate],
			[<minecraft:redstone:0>, <stevescarts:modulecomponents:59>, <minecraft:redstone:0>]
		]
	],
	<stevescarts:blockadvdetector:0> * 2: [
		[
			[metals.iron.plate, <minecraft:stone_pressure_plate:0>, metals.iron.plate],
			[metals.iron.plate, <minecraft:redstone:0>, metals.iron.plate],
			[metals.iron.plate, <minecraft:stone_pressure_plate:0>, metals.iron.plate]
		]
	],
	<stevescarts:modulecomponents:10> : [
		[
			[metals.gold.plate, metals.platinum.plate, metals.gold.plate],
			[<minecraft:glass_pane:0>, <immersiveengineering:material:27>, <minecraft:glass_pane:0>],
			[<minecraft:redstone:0>, <minecraft:glass_pane:0>, <minecraft:redstone:0>]
		]
	],
	<stevescarts:modulecomponents:11> : [
		[
			[null, null, metals.blackIron.rod],
			[null, metals.blackIron.rod, null],
			[metals.blackIron.rod, null, null]
		]
	],
	<stevescarts:modulecomponents:15> : [
		[
			[metals.iron.rod, metals.iron.rod, <primal_tech:flint_edged_disc>]
		]
	],
	<stevescarts:modulecomponents:16> : [
		[
			[<minecraft:redstone:0>, metals.aluminum.plate, <minecraft:redstone:0>],
			[<immersiveengineering:material:27>, metals.aluminum.plate, <immersiveengineering:material:27>],
			[<minecraft:redstone:0>, metals.aluminum.plate, <minecraft:redstone:0>]
		]
	],
	<stevescarts:modulecomponents:17> : [
		[
			[<ore:treeSapling>, <ore:treeSapling>, <ore:treeSapling>],
			[<ore:treeSapling>, <stevescarts:modulecomponents:16>, <ore:treeSapling>],
			[<ore:treeSapling>, <ore:treeSapling>, <ore:treeSapling>]
		]
	],
	<stevescarts:modulecomponents:18> : [
		[
			[<minecraft:obsidian:0>, null, <minecraft:obsidian:0>],
			[null, metals.platinum.plate, null],
			[<minecraft:obsidian:0>, null, <minecraft:obsidian:0>]
		]
	],
	<stevescarts:modulecomponents:25> : [
		[
			[<minecraft:redstone:0>, <minecraft:redstone:0>, <minecraft:redstone:0>],
			[<minecraft:redstone:0>, metals.gold.plate, <minecraft:redstone:0>],
			[<minecraft:dispenser:0>, <immersiveengineering:material:27>, <minecraft:dispenser:0>]
		]
	],
	<stevescarts:modulecomponents:26> : [
		[
			[metals.gold.plate, <immersiveengineering:material:27>, metals.gold.plate],
			[<minecraft:redstone:0>, <stevescarts:modulecomponents:16>, <minecraft:redstone:0>],
			[<minecraft:redstone:0>, null, <minecraft:redstone:0>]
		]
	],
	<stevescarts:modulecomponents:27> : [
		[
			[metals.aluminum.plate, <minecraft:redstone:0>, metals.aluminum.plate],
			[metals.aluminum.plate, <immersiveengineering:material:27>, metals.aluminum.plate],
			[metals.aluminum.plate, metals.aluminum.plate, metals.aluminum.plate]
		]
	],
	<stevescarts:modulecomponents:28> : [
		[
			[<minecraft:redstone:0>],
			[<immersiveengineering:material:27>]
		]
	],
	<stevescarts:modulecomponents:30> * 32 : [
		[
			[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
			[<ore:logWood>, <ore:plankWood>, <ore:logWood>],
			[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
		]
	],
	<stevescarts:modulecomponents:33> * 8 : [
		[
			[metals.iron.plate],
			[<ore:stone>]
		]
	],
	<stevescarts:modulecomponents:34> * 8 : [
		[
			[<stevescarts:modulecomponents:30>, <stevescarts:modulecomponents:30>, <stevescarts:modulecomponents:30>],
			[<stevescarts:modulecomponents:30>, metals.iron.plate, <stevescarts:modulecomponents:30>],
			[<stevescarts:modulecomponents:30>, <stevescarts:modulecomponents:30>, <stevescarts:modulecomponents:30>]
		]
	],
	<stevescarts:modulecomponents:39> : [
		[
			[<stevescarts:modulecomponents:37>, <stevescarts:modulecomponents:37>, <stevescarts:modulecomponents:37>],
			[<stevescarts:modulecomponents:37>, <immersiveengineering:material:27>, <stevescarts:modulecomponents:37>],
			[<stevescarts:modulecomponents:37>, <stevescarts:modulecomponents:37>, <stevescarts:modulecomponents:37>]
		]
	],
	<stevescarts:modulecomponents:42> * 2: [
		[
			[<ore:dyeOrange>, metals.iron.plate, <ore:dyeOrange>],
			[<ore:dyeOrange>, metals.iron.plate, <ore:dyeOrange>],
			[<ore:dyeOrange>, metals.iron.plate, <ore:dyeOrange>]
		]
	],
	<stevescarts:modulecomponents:43> * 12 : [
		[
			[null, null, <minecraft:string:0>],
			[null, <minecraft:string:0>, null],
			[<minecraft:string:0>, null, null]
		]
	],
	<stevescarts:modulecomponents:58> : [
		[
			[<stevescarts:modulecomponents:44>, null, <stevescarts:modulecomponents:44>],
			[metals.aluminum.plate, <immersiveengineering:material:27>, metals.aluminum.plate],
			[<stevescarts:modulecomponents:44>, null, <stevescarts:modulecomponents:44>]
		]
	],
	<stevescarts:modulecomponents:59> : [
		[
			[metals.aluminum.plate, metals.aluminum.plate, metals.aluminum.plate],
			[metals.reinforcedMetal.ingot, <minecraft:redstone:0>, metals.reinforcedMetal.ingot],
			[metals.aluminum.plate, <stevescarts:modulecomponents:16>, metals.aluminum.plate]
		]
	],
	<stevescarts:modulecomponents:60> * 8 : [
		[
			[null, metals.iron.plate, null],
			[metals.iron.plate, <minecraft:iron_bars:0>, metals.iron.plate],
			[null, metals.iron.plate, null]
		]
	],
	<stevescarts:modulecomponents:61> * 32 : [
		[
			[<minecraft:glass_pane:0>, <minecraft:glass_pane:0>, <minecraft:glass_pane:0>],
			[<minecraft:glass:0>, <minecraft:glass_pane:0>, <minecraft:glass:0>],
			[<minecraft:glass_pane:0>, <minecraft:glass_pane:0>, <minecraft:glass_pane:0>]
		]
	],
	<stevescarts:modulecomponents:65> * 2: [
		[
			[<ore:dyeGreen>, metals.iron.plate, <ore:dyeGreen>],
			[<ore:dyeGreen>, metals.iron.plate, <ore:dyeGreen>],
			[<ore:dyeGreen>, metals.iron.plate, <ore:dyeGreen>]
		]
	],
	<stevescarts:modulecomponents:83> * 4 : [
		[
			[null, <tconstruct:knife_blade:0>.withTag({Material: "iron"}), null],
			[metals.iron.rod, metals.iron.plate, metals.iron.rod],
			[null, metals.iron.rod, null]
		]
	],
	<stevescarts:cartmodule:8> : [
		[
			[metals.steel.plate, metals.steel.plate, null],
			[metals.steel.plate, metals.steel.plate, <stevescarts:cartmodule:42>],
			[metals.steel.plate, metals.steel.plate, null]
		]
	],
	<stevescarts:cartmodule:9> : [
		[
			[metals.galgadorian.ingot, metals.enhancedGalgadorian.ingot, null],
			[metals.platinum.plate, metals.enhancedGalgadorian.ingot, <stevescarts:cartmodule:43>],
			[metals.galgadorian.ingot, metals.enhancedGalgadorian.ingot, null]
		]
	],
	<stevescarts:cartmodule:12> : [
		[
			[null, <minecraft:redstone:0>, null],
			[<minecraft:brick_block:0>, <immersiveengineering:material:27>, <minecraft:brick_block:0>],
			[null, <minecraft:piston:0>, null]
		]
	],
	<stevescarts:cartmodule:14> : [
		[
			[metals.platinum.plate, metals.platinum.plate, metals.platinum.plate],
			[null, metals.aluminum.plate, null],
			[<immersiveengineering:material:27>, metals.gold.plate, <immersiveengineering:material:27>]
		]
	],
	<stevescarts:cartmodule:15> : [
		[
			[<stevescarts:modulecomponents:15>, <stevescarts:modulecomponents:15>, <stevescarts:modulecomponents:15>],
			[<stevescarts:modulecomponents:15>, <immersiveengineering:material:27>, <stevescarts:modulecomponents:15>],
			[null, <stevescarts:modulecomponents:17>, null]
		]
	],
	<stevescarts:cartmodule:18> : [
		[
			[<actuallyadditions:item_fertilizer:0>, null, <actuallyadditions:item_fertilizer:0>],
			[<buildcraftfactory:tank:0>, <minecraft:leather:0>, <buildcraftfactory:tank:0>],
			[<minecraft:leather:0>,<immersiveengineering:material:27>, <minecraft:leather:0>]
		]
	],
	<stevescarts:cartmodule:19> : [
		[
			[null, <minecraft:compass:0>, null],
			[<minecraft:paper:0>, <immersiveengineering:material:27>, <minecraft:paper:0>],
			[<minecraft:paper:0>, <minecraft:paper:0>, <minecraft:paper:0>]
		]
	],
	<stevescarts:cartmodule:20> : [
		[
			[<minecraft:redstone>, null, <minecraft:redstone>],
			[<minecraft:lava_bucket>, <contenttweaker:material_part:33>, <minecraft:water_bucket>],
			[<minecraft:iron_ingot>, <stevescarts:modulecomponents:16>, <minecraft:iron_ingot>]
		]
	],
	<stevescarts:cartmodule:22> : [

			[[null, <nex:amethyst_crystal:0>, null],
			[<minecraft:glowstone:0>, <stevescarts:modulecomponents:28>, <minecraft:glowstone:0>]
		]
	],
	<stevescarts:cartmodule:23> : [
		[
			[metals.lead.plate],
			[<stevescarts:modulecomponents:28>]
		]
	],
	<stevescarts:cartmodule:42> : [
		[
			[metals.iron.plate, metals.iron.plate, null],
			[metals.iron.plate, metals.iron.plate, <immersiveengineering:drillhead:1>],
			[metals.iron.plate, metals.iron.plate, null]
		]
	],
	<stevescarts:cartmodule:43> : [
		[
			[metals.reinforcedMetal.ingot, metals.reinforcedMetal.ingot, null],
			[metals.platinum.plate, metals.reinforcedMetal.ingot, <stevescarts:cartmodule:8>],
			[metals.reinforcedMetal.ingot, metals.reinforcedMetal.ingot, null]
		]
	],
	<stevescarts:cartmodule:44> : [
		[
			[null, <minecraft:piston:0>, null],
			[metals.iron.plate, <minecraft:furnace:0>, metals.iron.plate],
			[null, metals.iron.plate, null]
		]
	],
	<stevescarts:cartmodule:45> : [
		[
			[<stevescarts:modulecomponents:44>, metals.iron.plate, <stevescarts:modulecomponents:44>],
			[metals.iron.plate, <immersiveengineering:material:27>, metals.iron.plate],
			[null, <minecraft:piston:0>, null]
		]
	],
	<stevescarts:cartmodule:49> : [
		[
			[null, <minecraft:ender_pearl:0>, null],
			[<immersiveengineering:material:27>, metals.iron.plate, <immersiveengineering:material:27>],
			[metals.reinforcedMetal.ingot, <stevescarts:modulecomponents:16>, metals.reinforcedMetal.ingot]
		]
	],
	<stevescarts:cartmodule:57> : [
		[
			[<minecraft:fence:0>, <minecraft:fence:0>, <minecraft:fence:0>],
			[<minecraft:fence:0>, <immersiveengineering:material:27>, <minecraft:fence:0>],
			[<minecraft:fence:0>, <minecraft:fence:0>, <minecraft:fence:0>]
		]
	],
	<stevescarts:cartmodule:59> : [
		[
			[<ore:fenceWood>, <minecraft:dispenser:0>, <ore:fenceWood>],
			[<minecraft:crafting_table:0>, <stevescarts:modulecomponents:43>, <minecraft:crafting_table:0>],
			[<immersiveengineering:material:27>, <minecraft:flint_and_steel:0>, <immersiveengineering:material:27>]
		]
	],
	<stevescarts:cartmodule:78> : [
		[
			[null, <minecraft:glass_pane:0>, null],
			[<ore:plankWood>, <immersiveengineering:material:27>, <ore:plankWood>],
			[<minecraft:redstone:0>, <ore:plankWood>, <minecraft:redstone:0>]
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
	<stevescarts:cartmodule:85> : [
		[
			[<stevescarts:modulecomponents:84>, null, <stevescarts:modulecomponents:84>],
			[null, <immersiveengineering:material:27>, null],
			[<stevescarts:modulecomponents:84>, null, <stevescarts:modulecomponents:84>]
		]
	],
	<stevescarts:cartmodule:86> : [
		[
			[<minecraft:wheat:0>, <minecraft:wheat:0>, <minecraft:wheat:0>],
			[<immersiveengineering:material:27>, <minecraft:bucket:0>, <immersiveengineering:material:27>],
			[null, <immersiveengineering:material:27>, null]
		]
	],
	<stevescarts:cartmodule:89> : [
		[
			[<minecraft:redstone:0>, <stevescarts:modulecomponents:16>, <minecraft:redstone:0>],
			[null, <ore:treeSapling>, null],
			[<immersiveengineering:material:27>, <ore:treeSapling>, <immersiveengineering:material:27>]
		]
	],
	<stevescarts:cartmodule:91> : [
		[
			[metals.aluminum.plate, <minecraft:furnace:0>, metals.aluminum.plate],
			[metals.aluminum.plate, <natura:netherrack_furnace:0>, metals.aluminum.plate],
			[metals.aluminum.plate, <immersiveengineering:material:27>, metals.aluminum.plate]
		]
	],
	<stevescarts:cartmodule:93> : [
		[
			[null, metals.platinum.plate, null],
			[null, <stevescarts:modulecomponents:16>, null],
			[<immersiveengineering:material:27>, <stevescarts:cartmodule:91>, <immersiveengineering:material:27>]
		]
	],
	<stevescarts:cartmodule:94> : [
		[
			[<minecraft:glass_pane:0>, <minecraft:glass_pane:0>, <minecraft:glass_pane:0>],
			[metals.iron.plate, <minecraft:glowstone_dust:0>, metals.iron.plate],
			[<immersiveengineering:material:27>, <minecraft:sign:0>, <immersiveengineering:material:27>]
		]
	],
	<stevescarts:cartmodule:95> : [
		[
			[null, <minecraft:redstone:0>, null],
			[<minecraft:glowstone_dust:0>, metals.platinum.plate, <minecraft:glowstone_dust:0>],
			[<immersiveengineering:material:27>, <minecraft:cauldron:0>, <immersiveengineering:material:27>]
		]
	],
	<stevescarts:cartmodule:99> : [
		[
			[null, <minecraft:cake:0>, null],
			[<ore:slabWood>, <ore:slabWood>, <ore:slabWood>],
			[null, <immersiveengineering:material:27>, null]
		]
	],
	<stevescarts:cartmodule:101> : [
		[
			[<stevescarts:cartmodule:41>],
			[<immersiveengineering:material:27>]
		]
	]
};

static namedShapedRecipes as IIngredient[][][][string][IItemStack] = {
	<stevescarts:cartmodule:0>: {
		Utils.genRecipeName(stageThree, <stevescarts:cartmodule:0>): [
			[
				[<minecraft:piston:0>, <minecraft:piston:0>, <minecraft:piston:0>],
				[metals.iron.plate, <natura:netherrack_furnace:0>, metals.iron.plate],
				[metals.iron.plate, metals.iron.plate, metals.iron.plate]
			]
		]
	}
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
static removeRecipes as IItemStack[] = [
	<stevescarts:blockcartassembler:0>,
	<stevescarts:blockliquidmanager:0>,
	<stevescarts:blockdistributor:0>,
	<stevescarts:blockdetector:0>,
	<stevescarts:blockdetector:1>,
	<stevescarts:blockdetector:2>,
	<stevescarts:blockdetector:3>,
	<stevescarts:upgrade:1>,
	<stevescarts:upgrade:4>,
	<stevescarts:upgrade:5>,
	<stevescarts:upgrade:6>,
	<stevescarts:upgrade:7>,
	<stevescarts:upgrade:9>,
	<stevescarts:upgrade:10>,
	<stevescarts:upgrade:11>,
	<stevescarts:upgrade:12>,
	<stevescarts:upgrade:13>,
	<stevescarts:upgrade:16>,
	<stevescarts:upgrade:17>,
	<stevescarts:upgrade:19>,
	<stevescarts:blockadvdetector:0>,
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
	<stevescarts:modulecomponents:58>,
	<stevescarts:modulecomponents:60>,
	<stevescarts:modulecomponents:61>,
	<stevescarts:modulecomponents:65>,
	<stevescarts:modulecomponents:83>,
	<stevescarts:cartmodule:0>,
	<stevescarts:cartmodule:8>,
	<stevescarts:cartmodule:9>,
	<stevescarts:cartmodule:12>,
	<stevescarts:cartmodule:14>,
	<stevescarts:cartmodule:15>,
	<stevescarts:cartmodule:18>,
	<stevescarts:cartmodule:19>,
	<stevescarts:cartmodule:20>,
	<stevescarts:cartmodule:22>,
	<stevescarts:cartmodule:23>,
	<stevescarts:cartmodule:42>,
	<stevescarts:cartmodule:43>,
	<stevescarts:cartmodule:44>,
	<stevescarts:cartmodule:45>,
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
	<stevescarts:cartmodule:91>,
	<stevescarts:cartmodule:92>,
	<stevescarts:cartmodule:93>,
	<stevescarts:cartmodule:94>,
	<stevescarts:cartmodule:95>,
	<stevescarts:cartmodule:99>,
	<stevescarts:cartmodule:101>,
];

function init() {
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
