#priority -2

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

var STAGE = STAGES.three;

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
	<minecraft:enchanting_table> : [
		[[<minecraft:dye:4>, <minecraft:obsidian>, <minecraft:dye:4>], [<minecraft:obsidian>, <ore:book>, <minecraft:obsidian>], [<minecraft:dye:4>, <minecraft:obsidian>, <minecraft:dye:4>]]
	],
	<minecraft:piston> : [
		[[sidingWood, sidingWood, sidingWood], [cobblestone, metals.iron.plate, cobblestone], [cobblestone, <minecraft:redstone>, cobblestone]]
	],
	<minecraft:cake> : [
		[[scripts.crafting_utils.getBucketIngredientFromName("milk"), scripts.crafting_utils.getBucketIngredientFromName("milk"), scripts.crafting_utils.getBucketIngredientFromName("milk")], [<minecraft:sugar>, <minecraft:egg>, <minecraft:sugar>], [null, <ore:foodFlour>, null]]
	],
	<prospectors:prospector_med> : [
		[[null, <minecraft:redstone>, <ore:blockGlass>], [null, <minecraft:dye:4>, <minecraft:redstone>], [<minecraft:dye:4>, null, null]]
	],

	//Ore Excavator Modifer Item
	<oeintegration:excavatemodifier> * 25: [
		[
			[<thebetweenlands:octine_ingot>, metals.modularium.plate, <thebetweenlands:items_misc:11>],
			[metals.steel.plate, <twilightforest:maze_stone:*>, metals.steel.plate],
			[<astralsorcery:itemrockcrystalsimple:*>, metals.platinum.plate, <astralsorcery:itemrockcrystalsimple:*>]
		]
	],

	//Diamond Wand converted to Platinum
	<betterbuilderswands:wanddiamond> : [
		[
			[null, null, metals.platinum.plate],
			[null, log, null],
			[log, null, null]
		]
	],

	//Immersive Engineering
	<immersiveengineering:metal_decoration0:3> : [
		[
			[metals.iron.plate, metals.redstoneAlloy.plate, metals.iron.plate],
			[metals.redstoneAlloy.plate, <immersiveengineering:material:26>, metals.redstoneAlloy.plate],
			[metals.iron.plate, metals.redstoneAlloy.plate, metals.iron.plate]
		]
	],
	<immersiveengineering:tool:1> : [
		[[<ore:stickTreatedWood>, <tconstruct:knife_blade>.withTag({Material: "iron"})], [null, <ore:stickTreatedWood>]]
	],

	<betterwithmods:rope> : [
		[
			[<immersiveengineering:material:4>, <immersiveengineering:material:4>],
			[<immersiveengineering:material:4>, <immersiveengineering:material:4>],
			[<immersiveengineering:material:4>, <immersiveengineering:material:4>]
		]
	],
	<immersiveengineering:blueprint>.withTag({blueprint: "electrode"}) : [
		[
			[null, <immersiveengineering:material:18>, null],
			[<ore:dyeBlue>, <ore:dyeBlue>, <ore:dyeBlue>],
			[<minecraft:paper>, <minecraft:paper>, <minecraft:paper>]
		]
	],
	<immersiveengineering:stone_decoration:1> * 3 : [
		[
			[<minecraft:netherbrick>, <minecraft:brick>, <minecraft:netherbrick>],
			[<minecraft:brick>, <minecraft:blaze_powder>, <minecraft:brick>],
			[<minecraft:netherbrick>, <minecraft:brick>, <minecraft:netherbrick>]
		]
	],
	<immersiveengineering:stone_decoration:1> : [
		[
			[null, <immersiveengineering:stone_decoration_slab:1>, null],
			[null, <immersiveengineering:stone_decoration_slab:1>, null],
			[null, null, null]
		]
	],

	//Rails
	<minecraft:activator_rail> * 2 : [
		[
			[metals.iron.plate, plank, metals.iron.plate],
			[metals.iron.plate, <minecraft:redstone_torch>, metals.iron.plate],
			[metals.iron.plate, plank, metals.iron.plate]
		]
	],
	<minecraft:detector_rail> * 2 : [
		[
			[metals.iron.plate, <minecraft:redstone>, metals.iron.plate],
			[metals.iron.plate, <minecraft:light_weighted_pressure_plate>, metals.iron.plate],
			[metals.iron.plate, <minecraft:redstone>, metals.iron.plate]
		]
	],
	<minecraft:golden_rail> * 4 : [
		[[metals.gold.plate, <minecraft:redstone>, metals.gold.plate], [metals.gold.plate, plank, metals.gold.plate], [metals.gold.plate, <minecraft:redstone>, metals.gold.plate]]
	],
	<minecraft:rail> * 8 : [
		[[metals.iron.plate, plank, metals.iron.plate], [metals.iron.plate, plank, metals.iron.plate], [metals.iron.plate, plank, metals.iron.plate]]
	],
	<tconstruct:wood_rail> * 8 : [
		[[<ore:thinWood>, plank, <ore:thinWood>], [<ore:thinWood>, plank, <ore:thinWood>], [<ore:thinWood>, plank, <ore:thinWood>]]
	],

	//Storage Drawers
	<storagedrawers:compdrawers> : [
		[
			[metals.iron.plate, metals.platinum.plate, metals.iron.plate],
			[<minecraft:piston>, <ore:drawerTrim>, <minecraft:piston>],
			[metals.iron.plate, <astralsorcery:itemcraftingcomponent:1>, metals.iron.plate]
		]
	],
	<storagedrawers:controller> : [
		[
			[metals.platinum.plate, <nex:block_amethyst>, metals.platinum.plate],
			[<immersiveengineering:metal_decoration0:3>, <ore:drawerTrim>, <immersiveengineering:metal_decoration0:3>],
			[metals.platinum.plate, <astralsorcery:itemcraftingcomponent:1>, metals.platinum.plate]
		]
	],
	<storagedrawers:controllerslave> : [
		[
			[metals.platinum.plate, <ore:plateRedstoneAlloy>, metals.platinum.plate],
			[metals.iron.plate, <ore:drawerTrim>, metals.iron.plate],
			[metals.platinum.plate, <immersiveengineering:metal_decoration0:3>, metals.platinum.plate]
		]
	],
	<storagedrawers:upgrade_storage:2> : [
		[
			[<immersiveengineering:material>, <immersiveengineering:material>, <immersiveengineering:material>],
			[metals.gold.ingot, <storagedrawers:upgrade_template>, metals.gold.ingot],
			[<immersiveengineering:material>, <immersiveengineering:material>, <immersiveengineering:material>]
		]
	],

	//Actually Additions
	//This is not a real pizze (And just because someone gave me a hard time on how I spell pizze (assumptions about my spelling were made)
	//I'm going to leave it in here and people are going to have to deal with it) just FYI. It does not have olives on it but chat bullied me
	//and now it has meatballs and chili peppers instead. Thanks Obama. I'm also not sorry
	<actuallyadditions:item_food:14> : [
		[[<actuallyadditions:item_food>, <betterwithaddons:food_meatballs>, <actuallyadditions:item_food>],
		[<actuallyadditions:item_food:20>, <rustic:tomato>, <rustic:chili_pepper>],
		[<horsepower:dough>, <horsepower:dough>, <horsepower:dough>]]
	],
	//Ant Anne's Best Chocolate cookies!
	<actuallyadditions:item_food:12> * 3 : [
		[[null, <minecraft:dye:3>, null],
		[null, <horsepower:dough>, null]]
	],
	//I didn't have red ants to put on top since the item has little red dots on.
	<actuallyadditions:item_food:8> : [
		[
			[
				scripts.crafting_utils.getBucketIngredientFromName("milk"),
				scripts.crafting_utils.getBucketIngredientFromName("milk"),
				scripts.crafting_utils.getBucketIngredientFromName("milk")
			],
			[<minecraft:dye:3>, <minecraft:dye:3>, <minecraft:dye:3>],
			[<minecraft:egg>, <horsepower:dough>, <minecraft:sugar>]
		]
	],

	//Natura
	<natura:netherrack_furnace> : [
		[
			[<minecraft:nether_brick>, <minecraft:nether_brick>, <minecraft:nether_brick>],
			[<minecraft:nether_brick>, <minecraft:furnace>, <minecraft:nether_brick>],
			[<minecraft:nether_brick>, <minecraft:blaze_powder>, <minecraft:nether_brick>]
		]
	],
	<natura:nether_bookshelves> : [
		[
			[<natura:nether_planks>, <natura:nether_planks>, <natura:nether_planks>],
			[<minecraft:book>, <minecraft:book>, <minecraft:book>],
			[<natura:nether_planks>, <natura:nether_planks>, <natura:nether_planks>]
		]
	],
	<natura:nether_bookshelves:1> : [
		[
			[<natura:nether_planks:1>, <natura:nether_planks:1>, <natura:nether_planks:1>],
			[<minecraft:book>, <minecraft:book>, <minecraft:book>],
			[<natura:nether_planks:1>, <natura:nether_planks:1>, <natura:nether_planks:1>]
		]
	],
	<natura:nether_bookshelves:2> : [
		[
			[<natura:nether_planks:2>, <natura:nether_planks:2>, <natura:nether_planks:2>],
			[<minecraft:book>, <minecraft:book>, <minecraft:book>],
			[<natura:nether_planks:2>, <natura:nether_planks:2>, <natura:nether_planks:2>]
		]
	],
	<natura:nether_bookshelves:3> : [
		[
			[<natura:nether_planks:3>, <natura:nether_planks:3>, <natura:nether_planks:3>],
			[<minecraft:book>, <minecraft:book>, <minecraft:book>],
			[<natura:nether_planks:3>, <natura:nether_planks:3>, <natura:nether_planks:3>]
		]
	],
	<natura:ghostwood_fence_gate> : [
		[
			[null, null, null],
			[stick, <natura:nether_planks>, stick],
			[stick, <natura:nether_planks>, stick]
		]
	],
	<natura:bloodwood_fence_gate> : [
		[
			[null, null, null],
			[stick, <natura:nether_planks:1>, stick],
			[stick, <natura:nether_planks:1>, stick]
		]
	],
	<natura:darkwood_fence_gate> : [
		[
			[null, null, null],
			[stick, <natura:nether_planks:2>, stick],
			[stick, <natura:nether_planks:2>, stick]
		]
	],
	<natura:fusewood_fence_gate> : [
		[
			[null, null, null],
			[stick, <natura:nether_planks:3>, stick],
			[stick, <natura:nether_planks:3>, stick]
		]
	],
	<natura:ghostwood_fence> * 3 : [
		[
			[null, null, null],
			[<natura:nether_planks>, stick, <natura:nether_planks>],
			[<natura:nether_planks>, stick, <natura:nether_planks>]
		]
	],
	<natura:bloodwood_fence> * 3 : [
		[
			[null, null, null],
			[<natura:nether_planks:1>, stick, <natura:nether_planks:1>],
			[<natura:nether_planks:1>, stick, <natura:nether_planks:1>]
		]
	],
	<natura:darkwood_fence> * 3 : [
		[
			[null, null, null],
			[<natura:nether_planks:2>, stick, <natura:nether_planks:2>],
			[<natura:nether_planks:2>, stick, <natura:nether_planks:2>]
		]
	],
	<natura:fusewood_fence> * 3 : [
		[
			[null, null, null],
			[<natura:nether_planks:3>, stick, <natura:nether_planks:3>],
			[<natura:nether_planks:3>, stick, <natura:nether_planks:3>]
		]
	],
	<natura:nether_doors> * 3 : [
		[
			[<natura:nether_planks>, <natura:nether_planks>],
			[<natura:nether_planks>, <natura:nether_planks>],
			[<natura:nether_planks>, <natura:nether_planks>]
		]
	],
	<natura:nether_doors:1> * 3 : [
		[
			[<natura:nether_planks:1>, <natura:nether_planks:1>],
			[<natura:nether_planks:1>, <natura:nether_planks:1>],
			[<natura:nether_planks:1>, <natura:nether_planks:1>]
		]
	],

	//Tinkers' Construct
	 <tconstruct:smeltery_controller> : [
		[
			[<tconstruct:materials>, <tconstruct:materials>, <tconstruct:materials>],
			[<tconstruct:materials>, <betterwithmods:material:27>, <tconstruct:materials>],
			[<tconstruct:materials>, <tconstruct:materials>, <tconstruct:materials>]
		]
	],
	 <tconstruct:seared_furnace_controller> : [
		[
			[<tconstruct:materials>, <tconstruct:materials>, <tconstruct:materials>],
			[<tconstruct:materials>, <betterwithmods:material:27>, <tconstruct:materials>],
			[<tconstruct:materials>, <minecraft:furnace>, <tconstruct:materials>]
		]
	],
	 <tconstruct:tinker_tank_controller> : [
		[
			[<tconstruct:materials>, <tconstruct:materials>, <tconstruct:materials>],
			[<tconstruct:materials>, <betterwithmods:material:27>, <tconstruct:materials>],
			[<tconstruct:materials>, <minecraft:bucket>, <tconstruct:materials>]
		]
	],
	 <tconstruct:materials:16> : [
		[
			[null, <tconstruct:materials:15>, null],
			[<tconstruct:materials:15>, <thebetweenlands:crimson_middle_gem>, <tconstruct:materials:15>],
			[null, <tconstruct:materials:15>, null]
		],
		[
			[null, <tconstruct:materials:15>, null],
			[<tconstruct:materials:15>, <thebetweenlands:aqua_middle_gem>, <tconstruct:materials:15>],
			[null, <tconstruct:materials:15>, null]
		],
		[
			[null, <tconstruct:materials:15>, null],
			[<tconstruct:materials:15>, <thebetweenlands:green_middle_gem>, <tconstruct:materials:15>],
			[null, <tconstruct:materials:15>, null]
		]
	],

	<tconstruct:edible:4> * 4 : [
		[
			[null, <minecraft:magma_cream>, null],
			[<minecraft:magma_cream>, scripts.crafting_utils.getBucketIngredient(<liquid:lava>), <minecraft:magma_cream>],
			[null, <minecraft:magma_cream>, null]
		]
	],

	//Steve's Carts
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
			[stone, <immersiveengineering:material:27>, stone],
			[<immersiveengineering:material:27>, <minecraft:redstone>, <immersiveengineering:material:27>],
			[stone, <immersiveengineering:material:27>, stone]
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
			[cobblestone, <minecraft:stone_pressure_plate>, cobblestone],
			[metals.aluminum.plate, <immersiveengineering:material:27>, metals.aluminum.plate],
			[cobblestone, <minecraft:redstone>, cobblestone]
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
			[plank, <immersiveengineering:material:27>, plank],
			[<minecraft:redstone>, plank, <minecraft:redstone>]
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
			[plank, plank, plank],
			[log, plank, log],
			[plank, plank, plank]
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

	//Modular Machinery
	<modularmachinery:blockcontroller> : [
		[
			[metals.modularium.plate, <immersiveengineering:wirecoil>, metals.modularium.plate],
			[metals.redstoneAlloy.gear, <modularmachinery:blockcasing>, metals.redstoneAlloy.gear],
			[metals.modularium.plate, <immersiveengineering:material:27>, metals.modularium.plate]
		]
	],
	<modularmachinery:blockcasing>*2 : [
		[
			[metals.modularium.plate, metals.modularium.plate, metals.modularium.plate],
			[metals.modularium.plate, null, metals.modularium.plate],
			[metals.modularium.plate, metals.modularium.plate, metals.modularium.plate]
		]
	],
	<modularmachinery:blockcasing:1>*2 : [
		[
			[metals.modularium.plate, <minecraft:iron_bars>, metals.modularium.plate],
			[<minecraft:iron_bars>, null, <minecraft:iron_bars>],
			[metals.modularium.plate, <minecraft:iron_bars>, metals.modularium.plate]
		]
	],
	<modularmachinery:blockoutputbus:1> : [
		[
			[metals.modularium.plate, <uppers:upper>, metals.modularium.plate],
			[null, <modularmachinery:blockcasing>, null],
			[metals.modularium.plate, null, metals.modularium.plate]
		]
	],
	<modularmachinery:blockinputbus:1> : [
		[
			[metals.modularium.plate, <minecraft:hopper>, metals.modularium.plate],
			[null, <modularmachinery:blockcasing>, null],
			[metals.modularium.plate, null, metals.modularium.plate]
		]
	],
	<modularmachinery:blockfluidinputhatch> : [
		[
			[metals.modularium.plate, <minecraft:hopper>, metals.modularium.plate],
			[null, <immersiveengineering:metal_device0:4>, null],
			[metals.modularium.plate, <immersiveengineering:metal_device0:4>, metals.modularium.plate]
		]
	],
	<modularmachinery:blockenergyinputhatch> : [
		[
			[metals.modularium.plate, <immersiveengineering:wirecoil>, metals.modularium.plate],
			[<immersiveengineering:wirecoil>, <immersiveengineering:metal_decoration0:3>, <immersiveengineering:wirecoil>],
			[metals.modularium.plate, <immersiveengineering:wirecoil>, metals.modularium.plate]
		]
	],
	<modularmachinery:blockcasing:3> * 1 : [
		[
			[null, metals.copper.gear, null],
			[metals.copper.gear, <modularmachinery:blockcasing>, metals.copper.gear],
			[null, metals.copper.gear, null]
		]
	],
	<modularmachinery:blockcasing:3> * 4 : [
		[
			[null, metals.steel.gear, null],
			[metals.steel.gear, <modularmachinery:blockcasing>, metals.steel.gear],
			[null, metals.steel.gear, null]
		]
	],
	<modularmachinery:blockcasing:5> * 2 : [
		[
			[null, <immersiveengineering:material:27>, null],
			[<immersiveengineering:wirecoil:5>, <modularmachinery:blockcasing>, <immersiveengineering:wirecoil:5>],
			[null, <immersiveengineering:wirecoil:5>, null]
		]
	],

	//Viescraft
	<vc:upgrades/upgrade_airship_core:1> : [
		[
			[<vc:item_logic_chip>, <vc:upgrades/upgrade_airship_core>, <vc:item_logic_chip>],
			[<vc:upgrades/upgrade_airship_core>, <stevescarts:cartmodule>, <vc:upgrades/upgrade_airship_core>],
			[<vc:item_logic_chip>, <vc:upgrades/upgrade_airship_core>, <vc:item_logic_chip>]
		]
	],
	<vc:upgrades/upgrade_airship_core:2> : [
		[
			[<vc:item_logic_chip>, <vc:upgrades/upgrade_airship_core>, <vc:item_logic_chip>],
			[<vc:upgrades/upgrade_airship_core>, <vc:upgrades/upgrade_airship_core:1>.reuse(), <vc:upgrades/upgrade_airship_core>],
			[<vc:item_logic_chip>, <vc:upgrades/upgrade_airship_core>, <vc:item_logic_chip>]
		]
	],
	<vc:upgrades/upgrade_airship_core:3> : [
		[
			[<vc:item_logic_chip>, <vc:upgrades/upgrade_airship_core>, <vc:item_logic_chip>],
			[<vc:upgrades/upgrade_airship_core>, <vc:upgrades/upgrade_airship_core:2>.reuse(), <vc:upgrades/upgrade_airship_core>],
			[<vc:item_logic_chip>, <vc:upgrades/upgrade_airship_core>, <vc:item_logic_chip>]
		]
	],
	<vc:upgrades/upgrade_airship_core:4> : [
		[
			[<vc:item_logic_chip>, <vc:upgrades/upgrade_airship_core>, <vc:item_logic_chip>],
			[<vc:upgrades/upgrade_airship_core>, <vc:upgrades/upgrade_airship_core:3>.reuse(), <vc:upgrades/upgrade_airship_core>],
			[<vc:item_logic_chip>, <vc:upgrades/upgrade_airship_core>, <vc:item_logic_chip>]
		]
	],
	<vc:upgrades/upgrade_airship_core:5> : [
		[
			[<vc:item_logic_chip>, <vc:upgrades/upgrade_airship_core>, <vc:item_logic_chip>],
			[<vc:upgrades/upgrade_airship_core>, <vc:upgrades/upgrade_airship_core:4>.reuse(), <vc:upgrades/upgrade_airship_core>],
			[<vc:item_logic_chip>, <vc:upgrades/upgrade_airship_core>, <vc:item_logic_chip>]
		]
	],
	<vc:upgrades/upgrade_airship_frame:1> : [
		[
			[<vc:item_logic_chip>, <vc:upgrades/upgrade_airship_core>, <vc:item_logic_chip>],
			[<vc:upgrades/upgrade_airship_core>, <vc:airship_frame>, <vc:upgrades/upgrade_airship_core>],
			[<vc:item_logic_chip>, <vc:upgrades/upgrade_airship_core>, <vc:item_logic_chip>]
		]
	],
	<vc:upgrades/upgrade_airship_frame:2> : [
		[
			[<vc:item_logic_chip>, <vc:upgrades/upgrade_airship_core>, <vc:item_logic_chip>],
			[<vc:upgrades/upgrade_airship_core>, <vc:upgrades/upgrade_airship_frame:1>.reuse(), <vc:upgrades/upgrade_airship_core>],
			[<vc:item_logic_chip>, <vc:upgrades/upgrade_airship_core>, <vc:item_logic_chip>]
		]
	],
	<vc:upgrades/upgrade_airship_frame:3> : [
		[
			[<vc:item_logic_chip>, <vc:upgrades/upgrade_airship_core>, <vc:item_logic_chip>],
			[<vc:upgrades/upgrade_airship_core>, <vc:upgrades/upgrade_airship_frame:2>.reuse(), <vc:upgrades/upgrade_airship_core>],
			[<vc:item_logic_chip>, <vc:upgrades/upgrade_airship_core>, <vc:item_logic_chip>]
		]
	],
	<vc:upgrades/upgrade_airship_frame:4> : [
		[
			[<vc:item_logic_chip>, <vc:upgrades/upgrade_airship_core>, <vc:item_logic_chip>],
			[<vc:upgrades/upgrade_airship_core>, <vc:upgrades/upgrade_airship_frame:3>.reuse(), <vc:upgrades/upgrade_airship_core>],
			[<vc:item_logic_chip>, <vc:upgrades/upgrade_airship_core>, <vc:item_logic_chip>]
		]
	],
	<vc:upgrades/upgrade_airship_frame:5> : [
		[
			[<vc:item_logic_chip>, <vc:upgrades/upgrade_airship_core>, <vc:item_logic_chip>],
			[<vc:upgrades/upgrade_airship_core>, <vc:upgrades/upgrade_airship_frame:4>.reuse(), <vc:upgrades/upgrade_airship_core>],
			[<vc:item_logic_chip>, <vc:upgrades/upgrade_airship_core>, <vc:item_logic_chip>]
		]
	],
	<vc:upgrades/upgrade_airship_engine:1> : [
		[
			[<vc:item_logic_chip>, <vc:upgrades/upgrade_airship_engine>, <vc:item_logic_chip>],
			[<vc:upgrades/upgrade_airship_engine>, <stevescarts:cartmodule>, <vc:upgrades/upgrade_airship_engine>],
			[<vc:item_logic_chip>, <vc:upgrades/upgrade_airship_engine>, <vc:item_logic_chip>]
		]
	],
	<vc:upgrades/upgrade_airship_engine:2> : [
		[
			[<vc:item_logic_chip>, <vc:upgrades/upgrade_airship_engine>, <vc:item_logic_chip>],
			[<vc:upgrades/upgrade_airship_engine>, <vc:upgrades/upgrade_airship_engine:1>.reuse(), <vc:upgrades/upgrade_airship_engine>],
			[<vc:item_logic_chip>, <vc:upgrades/upgrade_airship_engine>, <vc:item_logic_chip>]
		]
	],
	<vc:upgrades/upgrade_airship_engine:3> : [
		[
			[<vc:item_logic_chip>, <vc:upgrades/upgrade_airship_engine>, <vc:item_logic_chip>],
			[<vc:upgrades/upgrade_airship_engine>, <vc:upgrades/upgrade_airship_engine:2>.reuse(), <vc:upgrades/upgrade_airship_engine>],
			[<vc:item_logic_chip>, <vc:upgrades/upgrade_airship_engine>, <vc:item_logic_chip>]
		]
	],
	<vc:upgrades/upgrade_airship_engine:4> : [
		[
			[<vc:item_logic_chip>, <vc:upgrades/upgrade_airship_engine>, <vc:item_logic_chip>],
			[<vc:upgrades/upgrade_airship_engine>, <vc:upgrades/upgrade_airship_engine:3>.reuse(), <vc:upgrades/upgrade_airship_engine>],
			[<vc:item_logic_chip>, <vc:upgrades/upgrade_airship_engine>, <vc:item_logic_chip>]
		]
	],
	<vc:upgrades/upgrade_airship_engine:5> : [
		[
			[<vc:item_logic_chip>, <vc:upgrades/upgrade_airship_engine>, <vc:item_logic_chip>],
			[<vc:upgrades/upgrade_airship_engine>, <vc:upgrades/upgrade_airship_engine:4>.reuse(), <vc:upgrades/upgrade_airship_engine>],
			[<vc:item_logic_chip>, <vc:upgrades/upgrade_airship_engine>, <vc:item_logic_chip>]
		]
	],
	<vc:upgrades/upgrade_airship_balloon:1> : [
		[
			[<vc:item_logic_chip>, <vc:upgrades/upgrade_airship_balloon>, <vc:item_logic_chip>],
			[<vc:upgrades/upgrade_airship_balloon>, <vc:airship_balloon>, <vc:upgrades/upgrade_airship_balloon>],
			[<vc:item_logic_chip>, <vc:upgrades/upgrade_airship_balloon>, <vc:item_logic_chip>]
		]
	],
	<vc:upgrades/upgrade_airship_balloon:2> : [
		[
			[<vc:item_logic_chip>, <vc:upgrades/upgrade_airship_balloon>, <vc:item_logic_chip>],
			[<vc:upgrades/upgrade_airship_balloon>, <vc:upgrades/upgrade_airship_balloon:1>.reuse(), <vc:upgrades/upgrade_airship_balloon>],
			[<vc:item_logic_chip>, <vc:upgrades/upgrade_airship_balloon>, <vc:item_logic_chip>]
		]
	],
	<vc:upgrades/upgrade_airship_balloon:3> : [
		[
			[<vc:item_logic_chip>, <vc:upgrades/upgrade_airship_balloon>, <vc:item_logic_chip>],
			[<vc:upgrades/upgrade_airship_balloon>, <vc:upgrades/upgrade_airship_balloon:2>.reuse(), <vc:upgrades/upgrade_airship_balloon>],
			[<vc:item_logic_chip>, <vc:upgrades/upgrade_airship_balloon>, <vc:item_logic_chip>]
		]
	],
	<vc:upgrades/upgrade_airship_balloon:4> : [
		[
			[<vc:item_logic_chip>, <vc:upgrades/upgrade_airship_balloon>, <vc:item_logic_chip>],
			[<vc:upgrades/upgrade_airship_balloon>, <vc:upgrades/upgrade_airship_balloon:3>.reuse(), <vc:upgrades/upgrade_airship_balloon>],
			[<vc:item_logic_chip>, <vc:upgrades/upgrade_airship_balloon>, <vc:item_logic_chip>]
		]
	],
	<vc:upgrades/upgrade_airship_balloon:5> : [
		[
			[<vc:item_logic_chip>, <vc:upgrades/upgrade_airship_balloon>, <vc:item_logic_chip>],
			[<vc:upgrades/upgrade_airship_balloon>, <vc:upgrades/upgrade_airship_balloon:4>.reuse(), <vc:upgrades/upgrade_airship_balloon>],
			[<vc:item_logic_chip>, <vc:upgrades/upgrade_airship_balloon>, <vc:item_logic_chip>]
		]
	],
	<vc:item_logic_chip> : [
		[
			[null, null, null],
			[<ore:dyeGreen>, metals.redstoneAlloy.plate, <ore:dyeGreen>],
			[metals.gold.plate, metals.gold.plate, metals.gold.plate]
		]
	],
	<vc:modules/item_module_type> : [
		[
			[metals.platinum.plate, metals.platinum.plate, metals.platinum.plate],
			[metals.platinum.plate, <vc:item_logic_chip>, metals.platinum.plate],
			[metals.platinum.plate, metals.platinum.plate, metals.platinum.plate]
		]
	],
	<vc:modules/item_module_type:2> : [
		[
			[metals.modularium.plate, metals.modularium.plate, metals.modularium.plate],
			[<minecraft:quartz>, <vc:modules/item_module_type:1>, <minecraft:quartz>],
			[<vc:modules/item_module_type>, <minecraft:heavy_weighted_pressure_plate>, <vc:modules/item_module_type>]
		]
	],
	<vc:modules/item_module_type:14> : [
		[
			[metals.modularium.plate, metals.modularium.plate, metals.modularium.plate],
			[<minecraft:quartz>, <vc:modules/item_module_type:13>, <minecraft:quartz>],
			[<vc:modules/item_module_type>, <minecraft:heavy_weighted_pressure_plate>, <vc:modules/item_module_type>]
		]
	],
	<vc:modules/item_module_type:17> : [
		[
			[metals.modularium.plate, metals.modularium.plate, metals.modularium.plate],
			[<minecraft:quartz>, <vc:modules/item_module_type:16>, <minecraft:quartz>],
			[<vc:modules/item_module_type>, <minecraft:heavy_weighted_pressure_plate>, <vc:modules/item_module_type>]
		]
	],
	<vc:modules/item_module_type:20> : [
		[
			[metals.modularium.plate, metals.modularium.plate, metals.modularium.plate],
			[<minecraft:quartz>, <vc:modules/item_module_type:19>, <minecraft:quartz>],
			[<vc:modules/item_module_type>, <minecraft:heavy_weighted_pressure_plate>, <vc:modules/item_module_type>]
		]
	],
	<vc:modules/item_module_type:9> : [
		[
			[metals.platinum.plate, metals.platinum.plate, metals.platinum.plate],
			[<minecraft:quartz>, <vc:modules/item_module_type:8>, <minecraft:quartz>],
			[<vc:modules/item_module_type>, <minecraft:heavy_weighted_pressure_plate>, <vc:modules/item_module_type>]
		]
	],
	<vc:modules/item_module_type:11> : [
		[
			[metals.modularium.plate, metals.modularium.plate, metals.modularium.plate],
			[<minecraft:quartz>, <vc:modules/item_module_type:10>, <minecraft:quartz>],
			[<vc:modules/item_module_type>, <minecraft:heavy_weighted_pressure_plate>, <vc:modules/item_module_type>]
		]
	],
	<vc:modules/item_module_type:5> : [
		[
			[metals.modularium.plate, metals.modularium.plate, metals.modularium.plate],
			[<minecraft:quartz>, <vc:modules/item_module_type:4>, <minecraft:quartz>],
			[<vc:modules/item_module_type>, <minecraft:heavy_weighted_pressure_plate>, <vc:modules/item_module_type>]
		]
	],
	<vc:modules/item_module_type:21> : [
		[
			[metals.platinum.plate, metals.platinum.plate, metals.platinum.plate],
			[<minecraft:quartz>, <vc:modules/item_module_type:20>, <minecraft:quartz>],
			[<vc:modules/item_module_type>, <minecraft:heavy_weighted_pressure_plate>, <vc:modules/item_module_type>]
		]
	],
	<vc:modules/item_module_type:8> : [
		[
			[metals.modularium.plate, metals.modularium.plate, metals.modularium.plate],
			[<minecraft:quartz>, <vc:modules/item_module_type:7>, <minecraft:quartz>],
			[<vc:modules/item_module_type>, <minecraft:heavy_weighted_pressure_plate>, <vc:modules/item_module_type>]
		]
	],
	<vc:modules/item_module_type:24> : [
		[
			[metals.platinum.plate, metals.platinum.plate, metals.platinum.plate],
			[<minecraft:quartz>, <vc:modules/item_module_type:23>, <minecraft:quartz>],
			[<vc:modules/item_module_type>, <minecraft:heavy_weighted_pressure_plate>, <vc:modules/item_module_type>]
		]
	],
	<vc:modules/item_module_type:6> : [
		[
			[metals.platinum.plate, metals.platinum.plate, metals.platinum.plate],
			[<minecraft:quartz>, <vc:modules/item_module_type:5>, <minecraft:quartz>],
			[<vc:modules/item_module_type>, <minecraft:heavy_weighted_pressure_plate>, <vc:modules/item_module_type>]
		]
	],
	<vc:modules/item_module_type:18> : [
		[
			[metals.platinum.plate, metals.platinum.plate, metals.platinum.plate],
			[<minecraft:quartz>, <vc:modules/item_module_type:17>, <minecraft:quartz>],
			[<vc:modules/item_module_type>, <minecraft:heavy_weighted_pressure_plate>, <vc:modules/item_module_type>]
		]
	],
	<vc:modules/item_module_type:15> : [
		[
			[metals.platinum.plate, metals.platinum.plate, metals.platinum.plate],
			[<minecraft:quartz>, <vc:modules/item_module_type:14>, <minecraft:quartz>],
			[<vc:modules/item_module_type>, <minecraft:heavy_weighted_pressure_plate>, <vc:modules/item_module_type>]
		]
	],
	<vc:modules/item_module_type:12> : [
		[
			[metals.platinum.plate, metals.platinum.plate, metals.platinum.plate],
			[<minecraft:quartz>, <vc:modules/item_module_type:11>, <minecraft:quartz>],
			[<vc:modules/item_module_type>, <minecraft:heavy_weighted_pressure_plate>, <vc:modules/item_module_type>]
		]
	],

	//Buildcraft
	<buildcraftcore:engine> : [
		[
			[<minecraft:glass>, <minecraft:sticky_piston>, <minecraft:glass>],
			[metals.redstoneAlloy.gear, <immersiveengineering:material:27>, metals.redstoneAlloy.gear],
			[<immersiveengineering:treated_wood>, <immersiveengineering:metal_decoration0:3>, <immersiveengineering:treated_wood>]
		]
	],
	<buildcrafttransport:pipe_void_item> * 8 : [
		[
			[null, null, null],
			[<ore:dyeBlack>, <ore:blockGlass>, <minecraft:redstone>],
			[null, null, null]
		]
	],
	<buildcrafttransport:pipe_void_item> * 1 : [
		[
			[null, null, null],
			[null, <buildcrafttransport:pipe_void_fluid>, null],
			[null, null, null]
		]
	],

	//Iron Chests
	<ironchest:iron_chest:6> : [
		[
			[<minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>],
			[<minecraft:obsidian>, <minecraft:chest>, <minecraft:obsidian>],
			[<minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>]
		]
	],

	//Cyclic
	<cyclicmagic:placer_block> : [
		[
			[stone, <minecraft:dispenser>, stone],
			[metals.iron.plate, metals.redstoneAlloy.plate, metals.iron.plate],
			[stone, metals.platinum.plate, stone]
		]
	],
	<cyclicmagic:clock> : [
		[
			[metals.aluminum.plate, metals.redstoneAlloy.plate, metals.aluminum.plate],
			[metals.redstoneAlloy.plate, <minecraft:quartz_block>, metals.redstoneAlloy.plate],
			[metals.aluminum.plate, metals.redstoneAlloy.plate, metals.aluminum.plate]
		]
	],
	<cyclicmagic:sprinkler> : [
		[
			[<minecraft:splash_potion>.withTag({Potion: "minecraft:strong_swiftness"}), <darkutils:grate>, <minecraft:splash_potion>.withTag({Potion: "minecraft:strong_regeneration"})],
			[metals.aluminum.plate, <immersiveengineering:metal_device1:6>,metals.aluminum.plate],
			[metals.lead.plate, metals.aluminum.plate, metals.lead.plate]
		]
	],
	<cyclicmagic:charm_fire>: [
		[
			[<minecraft:nether_wart>, null, <minecraft:blaze_rod>],
			[metals.iron.ingot, <astralsorcery:itemcraftingcomponent>, null],
			[metals.iron.ingot, metals.iron.ingot, <minecraft:nether_wart>]
		]
	],
	<cyclicmagic:charm_wing>: [
		[
			[<minecraft:nether_wart>, null, <minecraft:rabbit_foot>],
			[metals.iron.ingot, <astralsorcery:itemcraftingcomponent:4>, null],
			[metals.iron.ingot, metals.iron.ingot, <minecraft:nether_wart>]
		]
	],
	<cyclicmagic:tool_auto_torch>: [
		[
			[<ore:blockCoal>, <minecraft:iron_bars>, <ore:blockCoal>],
			[null, <stevescarts:cartmodule:44>, null],
			[<ore:blockCoal>, <minecraft:iron_bars>, <ore:blockCoal>]
		]
	],
	<cyclicmagic:charm_antidote>: [
		[
			[<minecraft:nether_wart>, null, <minecraft:fermented_spider_eye>],
			[metals.iron.ingot, <astralsorcery:itemcraftingcomponent:4>, null],
			[metals.iron.ingot, metals.iron.ingot, <minecraft:nether_wart>]
		]
	],
	<cyclicmagic:charm_water>: [
		[
			[<minecraft:nether_wart>, null, <minecraft:fish:1>],
			[metals.iron.ingot, <astralsorcery:itemcraftingcomponent:4>, null],
			[metals.iron.ingot, metals.iron.ingot, <minecraft:nether_wart>]
		]
	],

	//Blood Magic
	<bloodmagic:ritual_diviner> : [
		[
			[metals.platinum.ingot, <bloodmagic:inscription_tool:2>, metals.platinum.ingot],
			[<bloodmagic:inscription_tool:4>, <ore:stickTreatedWood>, <bloodmagic:inscription_tool:3>],
			[metals.platinum.ingot, <bloodmagic:inscription_tool:1>, metals.platinum.ingot]
		]
	],
	<bloodmagic:ritual_diviner:1>.withTag({}) : [
		[
			[null, <bloodmagic:slate:3>, null],
			[<bloodmagic:inscription_tool:5>, <bloodmagic:ritual_diviner>, <bloodmagic:inscription_tool:5>],
			[null, <bloodmagic:slate:3>, null]
		]
	],
	<bloodmagic:decorative_brick:2> : [
		[
			[<bloodmagic:item_demon_crystal:1>, <bloodmagic:activation_crystal:1>, <bloodmagic:item_demon_crystal:2>],
			[<bloodmagic:slate:4>, <bloodmagic:decorative_brick:1>, <bloodmagic:slate:4>],
			[<bloodmagic:item_demon_crystal:3>, <bloodmagic:item_demon_crystal>, <bloodmagic:item_demon_crystal:4>]
		]
	],

	//Super Sound Muffler
	<supersoundmuffler:sound_muffler> : [
		[
			[null, <minecraft:wool:*>, null],
			[<minecraft:wool:*>, <minecraft:noteblock>, <minecraft:wool:*>],
			[null, <minecraft:wool:*>, null]
		]
	],

	//Leather Strap Fix
	<betterwithmods:material:8>  : [
		[
			[null, null, <primal:leather_strip>],
			[null, <primal:leather_strip>, null],
			[<primal:leather_strip>, null, null]
		]
	],

	//Light Blue Industrial Foregoing Conveyor
	<industrialforegoing:conveyor:3> : [
		[
			[<industrialforegoing:conveyor:*>, <industrialforegoing:conveyor:*>, <industrialforegoing:conveyor:*>],
			[<industrialforegoing:conveyor:*>, <ore:dyeLightBlue>, <industrialforegoing:conveyor:*>],
			[<industrialforegoing:conveyor:*>, <industrialforegoing:conveyor:*>, <industrialforegoing:conveyor:*>]
		]
	],

	//Light Grey Industrial Foregoing Conveyor
	<industrialforegoing:conveyor:8> : [
		[
			[<industrialforegoing:conveyor:*>, <industrialforegoing:conveyor:*>, <industrialforegoing:conveyor:*>],
			[<industrialforegoing:conveyor:*>, <ore:dyeLightGray>, <industrialforegoing:conveyor:*>],
			[<industrialforegoing:conveyor:*>, <industrialforegoing:conveyor:*>, <industrialforegoing:conveyor:*>]
		]
	],

	//Withering Souls to Skulls fix
	<minecraft:skull:1> * 3 : [
		[
			[<mysticalagradditions:stuff:1>, <mysticalagradditions:stuff:1>, null],
			[<mysticalagradditions:stuff:1>, null, null],
			[null, null, null]
		]
	]

};

for item, recipesForItem in shapedRecipes {
	for recipe in recipesForItem {
		mods.recipestages.Recipes.addShaped(STAGE, item, recipe);
	}
}

mods.recipestages.Recipes.addShapedMirrored(STAGE, <natura:nether_stairs_ghostwood> * 4, [
	[null, null, <natura:nether_planks>],
	[null, <natura:nether_planks>, <natura:nether_planks>],
	[<natura:nether_planks>, <natura:nether_planks>, <natura:nether_planks>]
]);
mods.recipestages.Recipes.addShapedMirrored(STAGE, <natura:nether_stairs_bloodwood> * 4, [
	[null, null, <natura:nether_planks:1>],
	[null, <natura:nether_planks:1>, <natura:nether_planks:1>],
	[<natura:nether_planks:1>, <natura:nether_planks:1>, <natura:nether_planks:1>]
]);
mods.recipestages.Recipes.addShapedMirrored(STAGE, <natura:nether_stairs_darkwood> * 4, [
	[null, null, <natura:nether_planks:2>],
	[null, <natura:nether_planks:2>, <natura:nether_planks:2>],
	[<natura:nether_planks:2>, <natura:nether_planks:2>, <natura:nether_planks:2>]
]);
mods.recipestages.Recipes.addShapedMirrored(STAGE, <natura:nether_stairs_fusewood> * 4, [
	[null, null, <natura:nether_planks:3>],
	[null, <natura:nether_planks:3>, <natura:nether_planks:3>],
	[<natura:nether_planks:3>, <natura:nether_planks:3>, <natura:nether_planks:3>]
]);
