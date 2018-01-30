import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

var STAGE = STAGES.two;

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
	<minecraft:arrow> * 4: [
		[[flint, null, null], [null, stick, null], [null, null, <minecraft:feather>]],
		[[flint, null, null], [null, stick, null], [null, null, <twilightforest:raven_feather>]]
	],
	<minecraft:glass_bottle> * 3: [
		[[<ore:blockGlass>, null, <ore:blockGlass>], [null, <ore:blockGlass>, null]]
	],
	<betterbuilderswands:wandiron> : [
		[[null, null, metals.iron.plate], [null, log, null], [log, null, null]]
	],
	<ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:basic", spec: "NONE"}}) : [
		[[<minecraft:wool:*>, leather, <minecraft:wool:*>], [leather, <primal:storage_crate:*>, leather], [<minecraft:wool:*>, leather, <minecraft:wool:*>]]
	],
	<minecraft:bed:10> : [
		[[<minecraft:wool:10>, <minecraft:wool:10>, <minecraft:wool:10>], [plank, plank, plank]]
	],
	<minecraft:bed:11> : [
		[[<minecraft:wool:11>, <minecraft:wool:11>, <minecraft:wool:11>], [plank, plank, plank]]
	],
	<minecraft:bed:12> : [
		[[<minecraft:wool:12>, <minecraft:wool:12>, <minecraft:wool:12>], [plank, plank, plank]]
	],
	<minecraft:bed:13> : [
		[[<minecraft:wool:13>, <minecraft:wool:13>, <minecraft:wool:13>], [plank, plank, plank]]
	],
	<minecraft:bed:14> : [
		[[<minecraft:wool:14>, <minecraft:wool:14>, <minecraft:wool:14>], [plank, plank, plank]]
	],
	<minecraft:bed:15> : [
		[[<minecraft:wool:15>, <minecraft:wool:15>, <minecraft:wool:15>], [plank, plank, plank]]
	],
	<minecraft:bed:1> : [
		[[<minecraft:wool:1>, <minecraft:wool:1>, <minecraft:wool:1>], [plank, plank, plank]]
	],
	<minecraft:bed:2> : [
		[[<minecraft:wool:2>, <minecraft:wool:2>, <minecraft:wool:2>], [plank, plank, plank]]
	],
	<minecraft:bed:3> : [
		[[<minecraft:wool:3>, <minecraft:wool:3>, <minecraft:wool:3>], [plank, plank, plank]]
	],
	<minecraft:bed:4> : [
		[[<minecraft:wool:4>, <minecraft:wool:4>, <minecraft:wool:4>], [plank, plank, plank]]
	],
	<minecraft:bed:5> : [
		[[<minecraft:wool:5>, <minecraft:wool:5>, <minecraft:wool:5>], [plank, plank, plank]]
	],
	<minecraft:bed:6> : [
		[[<minecraft:wool:6>, <minecraft:wool:6>, <minecraft:wool:6>], [plank, plank, plank]]
	],
	<minecraft:bed:7> : [
		[[<minecraft:wool:7>, <minecraft:wool:7>, <minecraft:wool:7>], [plank, plank, plank]]
	],
	<minecraft:bed:8> : [
		[[<minecraft:wool:8>, <minecraft:wool:8>, <minecraft:wool:8>], [plank, plank, plank]]
	],
	<minecraft:bed:9> : [
		[[<minecraft:wool:9>, <minecraft:wool:9>, <minecraft:wool:9>], [plank, plank, plank]]
	],
	<minecraft:bed> : [
		[[<minecraft:wool:0>, <minecraft:wool:0>, <minecraft:wool:0>], [plank, plank, plank]]
	],
	<minecraft:light_weighted_pressure_plate> : [
		[[metals.gold.plate, metals.gold.plate]]
	],
	<minecraft:heavy_weighted_pressure_plate> : [
		[[metals.iron.plate, metals.iron.plate]]
	],
	<minecraft:bookshelf> : [
		[[plank, plank, plank], [<minecraft:book>, <minecraft:book>, <minecraft:book>], [plank, plank, plank]]
	],
	<minecraft:golden_axe> : [
		[[metals.gold.plate, metals.gold.plate, null], [metals.gold.plate, stick, null], [null, stick, null]]
	],
	<minecraft:golden_boots> : [
		[[metals.gold.plate, null, metals.gold.plate], [metals.gold.plate, null, metals.gold.plate]]
	],
	<minecraft:golden_chestplate> : [
		[
			[metals.gold.plate, null, metals.gold.plate],
			[metals.gold.plate, metals.gold.plate, metals.gold.plate],
			[metals.gold.plate, metals.gold.plate, metals.gold.plate]
		]
	],
	<minecraft:golden_helmet> : [
		[[metals.gold.plate, metals.gold.plate, metals.gold.plate], [metals.gold.plate, null, metals.gold.plate]]
	],
	<minecraft:golden_hoe> : [
		[[metals.gold.plate, metals.gold.plate, null], [null, stick, null], [null, stick, null]]
	],
	<minecraft:golden_leggings> : [
		[
			[metals.gold.plate, metals.gold.plate, metals.gold.plate],
			[metals.gold.plate, null, metals.gold.plate],
			[metals.gold.plate, null, metals.gold.plate]
		]
	],
	<minecraft:golden_pickaxe> : [
		[[metals.gold.plate, metals.gold.plate, metals.gold.plate], [null, stick, null], [null, stick, null]]
	],
	<minecraft:golden_shovel> : [
		[[null, metals.gold.plate, null], [null, stick, null], [null, stick, null]]
	],
	<minecraft:golden_sword> : [
		[[null, metals.gold.plate, null], [null, metals.gold.plate, null], [null, stick, null]]
	],
	<minecraft:hopper> : [
		[
			[metals.iron.plate, <minecraft:chest>, metals.iron.plate],
			[metals.iron.plate, metals.bronze.gear, metals.iron.plate],
			[null, metals.iron.plate, null]
		]
	],
	<uppers:upper> : [
		[
			[null, metals.iron.plate, null],
			[metals.iron.plate, metals.bronze.gear, metals.iron.plate],
			[metals.iron.plate, <minecraft:chest>, metals.iron.plate]
		]
	],
	<minecraft:iron_bars>*16 : [
		[
			[metals.iron.rod, metals.iron.rod, metals.iron.rod],
			[metals.iron.rod, metals.iron.rod, metals.iron.rod],
			[null, null, null]
		]
	],
	<minecraft:iron_axe> : [
		[[metals.iron.plate, metals.iron.plate, null], [metals.iron.plate, stick, null], [null, stick, null]]
	],
	<minecraft:iron_boots> : [
		[[metals.iron.plate, null, metals.iron.plate], [metals.iron.plate, null, metals.iron.plate]]
	],
	<minecraft:iron_chestplate> : [
		[
			[metals.iron.plate, null, metals.iron.plate],
			[metals.iron.plate, metals.iron.plate, metals.iron.plate],
			[metals.iron.plate, metals.iron.plate, metals.iron.plate]
		]
	],
	<minecraft:iron_helmet> : [
		[[metals.iron.plate, metals.iron.plate, metals.iron.plate], [metals.iron.plate, null, metals.iron.plate]]
	],
	<minecraft:iron_hoe> : [
		[[metals.iron.plate, metals.iron.plate, null], [null, stick, null], [null, stick, null]]
	],
	<minecraft:iron_leggings> : [
		[
			[metals.iron.plate, metals.iron.plate, metals.iron.plate],
			[metals.iron.plate, null, metals.iron.plate],
			[metals.iron.plate, null, metals.iron.plate]
		]
	],
	<minecraft:iron_pickaxe> : [
		[[metals.iron.plate, metals.iron.plate, metals.iron.plate], [null, stick, null], [null, stick, null]]
	],
	<minecraft:iron_shovel> : [
		[[null, metals.iron.plate, null], [null, stick, null], [null, stick, null]]
	],
	<minecraft:iron_sword> : [
		[[null, metals.iron.plate, null], [null, metals.iron.plate, null], [null, stick, null]]
	],
	<minecraft:name_tag> : [
		[[null, null, <minecraft:string>],
		[null, <minecraft:paper>, null],
		[null, <ore:dyeBlack>, null]]
	],
	<minecraft:piston> : [
		[[<ore:sidingWood>, <ore:sidingWood>, <ore:sidingWood>], [cobblestone, metals.iron.plate, cobblestone], [cobblestone, <thebetweenlands:octine_ingot>, cobblestone]]
	],
	<minecraft:stone_slab:5> * 3 : [
		[[<minecraft:stonebrick>, <minecraft:stonebrick>, <minecraft:stonebrick>]]
	],
	<minecraft:wool:10> : [
		[[null, <betterwithaddons:wool:10>, null], [<betterwithaddons:wool:10>, <betterwithmods:aesthetic:12>, <betterwithaddons:wool:10>], [null, <betterwithaddons:wool:10>, null]]
	],
	<minecraft:wool:11> : [
		[[null, <betterwithaddons:wool:11>, null], [<betterwithaddons:wool:11>, <betterwithmods:aesthetic:12>, <betterwithaddons:wool:11>], [null, <betterwithaddons:wool:11>, null]]
	],
	<minecraft:wool:12> : [
		[[null, <betterwithaddons:wool:12>, null], [<betterwithaddons:wool:12>, <betterwithmods:aesthetic:12>, <betterwithaddons:wool:12>], [null, <betterwithaddons:wool:12>, null]]
	],
	<minecraft:wool:13> : [
		[[null, <betterwithaddons:wool:13>, null], [<betterwithaddons:wool:13>, <betterwithmods:aesthetic:12>, <betterwithaddons:wool:13>], [null, <betterwithaddons:wool:13>, null]]
	],
	<minecraft:wool:14> : [
		[[null, <betterwithaddons:wool:14>, null], [<betterwithaddons:wool:14>, <betterwithmods:aesthetic:12>, <betterwithaddons:wool:14>], [null, <betterwithaddons:wool:14>, null]]
	],
	<minecraft:wool:15> : [
		[[null, <betterwithaddons:wool:15>, null], [<betterwithaddons:wool:15>, <betterwithmods:aesthetic:12>, <betterwithaddons:wool:15>], [null, <betterwithaddons:wool:15>, null]]
	],
	<minecraft:wool:1> : [
		[[null, <betterwithaddons:wool:1>, null], [<betterwithaddons:wool:1>, <betterwithmods:aesthetic:12>, <betterwithaddons:wool:1>], [null, <betterwithaddons:wool:1>, null]]
	],
	<minecraft:wool:2> : [
		[[null, <betterwithaddons:wool:2>, null], [<betterwithaddons:wool:2>, <betterwithmods:aesthetic:12>, <betterwithaddons:wool:2>], [null, <betterwithaddons:wool:2>, null]]
	],
	<minecraft:wool:3> : [
		[[null, <betterwithaddons:wool:3>, null], [<betterwithaddons:wool:3>, <betterwithmods:aesthetic:12>, <betterwithaddons:wool:3>], [null, <betterwithaddons:wool:3>, null]]
	],
	<minecraft:wool:4> : [
		[[null, <betterwithaddons:wool:4>, null], [<betterwithaddons:wool:4>, <betterwithmods:aesthetic:12>, <betterwithaddons:wool:4>], [null, <betterwithaddons:wool:4>, null]]
	],
	<minecraft:wool:5> : [
		[[null, <betterwithaddons:wool:5>, null], [<betterwithaddons:wool:5>, <betterwithmods:aesthetic:12>, <betterwithaddons:wool:5>], [null, <betterwithaddons:wool:5>, null]]
	],
	<minecraft:wool:6> : [
		[[null, <betterwithaddons:wool:6>, null], [<betterwithaddons:wool:6>, <betterwithmods:aesthetic:12>, <betterwithaddons:wool:6>], [null, <betterwithaddons:wool:6>, null]]
	],
	<minecraft:wool:7> : [
		[[null, <betterwithaddons:wool:7>, null], [<betterwithaddons:wool:7>, <betterwithmods:aesthetic:12>, <betterwithaddons:wool:7>], [null, <betterwithaddons:wool:7>, null]]
	],
	<minecraft:wool:8> : [
		[[null, <betterwithaddons:wool:8>, null], [<betterwithaddons:wool:8>, <betterwithmods:aesthetic:12>, <betterwithaddons:wool:8>], [null, <betterwithaddons:wool:8>, null]]
	],
	<minecraft:wool:9> : [
		[[null, <betterwithaddons:wool:9>, null], [<betterwithaddons:wool:9>, <betterwithmods:aesthetic:12>, <betterwithaddons:wool:9>], [null, <betterwithaddons:wool:9>, null]]
	],
	<minecraft:wool> : [
		[[null, <betterwithaddons:wool>, null], [<betterwithaddons:wool>, <betterwithmods:aesthetic:12>, <betterwithaddons:wool>], [null, <betterwithaddons:wool>, null]]
	],
	<pickletweaks:watering_can> : [
		[[metals.iron.plate, <actuallyadditions:item_fertilizer>, null], [metals.iron.plate, <minecraft:bucket>, metals.iron.plate], [null, metals.iron.plate, null]]
	],
	<prospectors:prospector_low> : [
		[[null, <minecraft:coal:*>, <ore:blockGlass>], [null, log, <minecraft:coal:*>], [log, null, null]]
	],
	<tcomplement:porcelain_tank> : [
		[
			[<ceramics:unfired_clay:5>, <ceramics:unfired_clay:5>, <ceramics:unfired_clay:5>],
			[<ceramics:unfired_clay:5>, <ceramics:clay_barrel>, <ceramics:unfired_clay:5>],
			[<ceramics:unfired_clay:5>, <ceramics:unfired_clay:5>, <ceramics:unfired_clay:5>]
		]
	],
	<tconstruct:seared_tank> : [
		[
			[<tconstruct:materials>, <tconstruct:materials>, <tconstruct:materials>],
			[<tconstruct:materials>, <ceramics:clay_barrel>, <tconstruct:materials>],
			[<tconstruct:materials>, <tconstruct:materials>, <tconstruct:materials>]
		]
	],

	//Hopper Update Recipes in Stage 2
	<primal_tech:charcoal_hopper> : [
		[[null, null, null], [null, <tconstruct:firewood>, null], [null, <minecraft:hopper>, null]]
	],

	//Better With Mods
	<betterwithmods:aesthetic:12> : [
		[[<betterwithmods:wicker>, <betterwithmods:wicker>], [<betterwithmods:wicker>, <betterwithmods:wicker>]]
	],
	<betterwithmods:ender_spectacles> : [
		[[null, null, null], [<betterwithmods:material:40>, <ore:cordageLeather>, <betterwithmods:material:40>], [null, null, null]]
	],
	<betterwithaddons:redstone_emitter> : [
		[
			[<ore:sidingWood>, <ore:sidingWood>, <ore:sidingWood>],
			[<betterwithmods:wicker>, <betterwithmods:wooden_gearbox>, <minecraft:lever>],
			[<ore:sidingWood>, <ore:sidingWood>, <ore:sidingWood>]
		]
	],
	<betterwithaddons:aqueduct> * 3 : [
		[[null, null, null], [<minecraft:clay>, <minecraft:clay>, <minecraft:clay>], [<minecraft:stonebrick:*>, <minecraft:stonebrick:*>, <minecraft:stonebrick:*>]]
	],

	//Smiley Cloud is craftable. You're welcome.
	<actuallyadditions:block_smiley_cloud> : [
		[
			[null, <minecraft:wool:*>, null],
			[<minecraft:wool:*>, <forge:bucketfilled>.withTag({FluidName: "xpjuice", Amount: 1000}), <minecraft:wool:*>],
			[null, <minecraft:wool:*>, null]
		]
	],

	//Boats in Stage2
	<minecraft:acacia_boat> : [
		[[<betterwithmods:wood_siding:4>, null, <betterwithmods:wood_siding:4>], [<betterwithmods:wood_siding:4>, <betterwithmods:wood_siding:4>, <betterwithmods:wood_siding:4>]]
	],
	<minecraft:birch_boat> : [
		[[<betterwithmods:wood_siding:2>, null, <betterwithmods:wood_siding:2>], [<betterwithmods:wood_siding:2>, <betterwithmods:wood_siding:2>, <betterwithmods:wood_siding:2>]]
	],
	<minecraft:boat> : [
		[[<betterwithmods:wood_siding>, null, <betterwithmods:wood_siding>], [<betterwithmods:wood_siding>, <betterwithmods:wood_siding>, <betterwithmods:wood_siding>]]
	],
	<minecraft:dark_oak_boat> : [
		[[<betterwithmods:wood_siding:5>, null, <betterwithmods:wood_siding:5>], [<betterwithmods:wood_siding:5>, <betterwithmods:wood_siding:5>, <betterwithmods:wood_siding:5>]]
	],
	<minecraft:jungle_boat> : [
		[[<betterwithmods:wood_siding:3>, null, <betterwithmods:wood_siding:3>], [<betterwithmods:wood_siding:3>, <betterwithmods:wood_siding:3>, <betterwithmods:wood_siding:3>]]
	],
	<minecraft:spruce_boat> : [
		[[<betterwithmods:wood_siding:1>, null, <betterwithmods:wood_siding:1>], [<betterwithmods:wood_siding:1>, <betterwithmods:wood_siding:1>, <betterwithmods:wood_siding:1>]]
	],

	//Applied Energistics
	<appliedenergistics2:crank> : [
		[[stick, stick, stick], [null, null, stick], [null, null, stick]]
	],
	<appliedenergistics2:grindstone> : [
		[[stone, <betterwithmods:material>, stone], [flint, stone, flint], [cobblestone, flint, cobblestone]]
	],

	//Storage Drawers
	<storagedrawers:upgrade_storage> : [
		[[stick, stick, stick], [<minecraft:coal_block>, <storagedrawers:upgrade_template>, <minecraft:coal_block>], [stick, stick, stick]]
	],
	<storagedrawers:upgrade_template> : [
		[[stick, stick, stick], [stick, <ore:drawerTrim>, stick], [stick, stick, stick]]
	],

	//Workblade
	<primal:iron_workblade> : [
		[[metals.iron.plate, stick, metals.iron.plate], [metals.iron.plate, stick, metals.iron.plate], [null, stick, null]]
	],

	//Iron Chests
	//Iron Chests use plates
	<ironchest:copper_iron_chest_upgrade> : [
		[
			[metals.iron.plate, metals.iron.plate, metals.iron.plate],
			[metals.iron.plate, metals.copper.plate, metals.iron.plate],
			[metals.iron.plate, metals.iron.plate, metals.iron.plate]
		]
	],
	<ironchest:copper_silver_chest_upgrade> : [
		[
			[metals.silver.plate, metals.silver.plate, metals.silver.plate],
			[metals.silver.plate, metals.copper.plate, metals.silver.plate],
			[metals.silver.plate, metals.silver.plate, metals.silver.plate]
		]
	],
	<ironchest:iron_chest:1> : [
		[
			[metals.gold.plate, metals.gold.plate, metals.gold.plate],
			[metals.gold.plate, <minecraft:chest>, metals.gold.plate],
			[metals.gold.plate, metals.gold.plate, metals.gold.plate]
		]
	],
	<ironchest:iron_chest:4> : [
		[
			[metals.silver.plate, metals.silver.plate, metals.silver.plate],
			[metals.silver.plate, <minecraft:chest>, metals.silver.plate],
			[metals.silver.plate, metals.silver.plate, metals.silver.plate]
		]
	],
	<ironchest:iron_chest> : [
		[
			[metals.iron.plate, metals.iron.plate, metals.iron.plate],
			[metals.iron.plate, <minecraft:chest>, metals.iron.plate],
			[metals.iron.plate, metals.iron.plate, metals.iron.plate]
		]
	],
	<ironchest:iron_gold_chest_upgrade> : [
		[
			[metals.gold.plate, metals.gold.plate, metals.gold.plate],
			[metals.gold.plate, metals.iron.plate, metals.gold.plate],
			[metals.gold.plate, metals.gold.plate, metals.gold.plate]
		]
	],
	<ironchest:silver_gold_chest_upgrade> : [
		[
			[metals.gold.plate, metals.gold.plate, metals.gold.plate],
			[metals.gold.plate, metals.silver.plate, metals.gold.plate],
			[metals.gold.plate, metals.gold.plate, metals.gold.plate]
		]
	],
	<ironchest:wood_iron_chest_upgrade> : [
		[
			[metals.iron.plate, metals.iron.plate, metals.iron.plate],
			[metals.iron.plate, log, metals.iron.plate],
			[metals.iron.plate, metals.iron.plate, metals.iron.plate]
		]
	],

	//Astral
	<astralsorcery:itemskyresonator> : [
		[
			[null, <astralsorcery:itemcraftingcomponent>, null],
			[<ore:stoneMarble>, <ceramics:clay_bucket>.withTag({fluids: {FluidName: "astralsorcery.liquidstarlight", Amount: 1000}}), <ore:stoneMarble>],
			[null, metals.bronze.rod, null]
		],
		[
			[null, <astralsorcery:itemcraftingcomponent>, null],
			[<ore:stoneMarble>, <forge:bucketfilled>.withTag({FluidName: "astralsorcery.liquidstarlight", Amount: 1000}), <ore:stoneMarble>],
			[null, metals.bronze.rod, null]
		]
	],
	<astralsorcery:itemwand> : [
		[
			[null, <astralsorcery:itemcraftingcomponent>, <minecraft:ender_pearl>],
			[null, <ore:stoneMarble>, <astralsorcery:itemcraftingcomponent>],
			[<ore:stoneMarble>, null, null]
		]
	],
	<astralsorcery:itemjournal> : [
		[
			[null, <astralsorcery:itemcraftingcomponent:5>, null],
			[<astralsorcery:itemcraftingcomponent>, <minecraft:book>, <astralsorcery:itemcraftingcomponent>],
			[null, <astralsorcery:itemcraftingcomponent>, null]
		]
	],
	//Weirding Gadget
	<weirdinggadget:weirding_gadget> : [
		[
			[metals.gold.ingot, metals.gold.ingot, metals.gold.ingot],
			[metals.gold.block, <minecraft:ender_pearl>, metals.gold.block],
			[metals.gold.block, metals.gold.block, metals.gold.block]
		]
	],

	//InfoItems
	<infoaccessories:info_accessory:2> : [
		[[null, <twilightforest:ironwood_ingot>, null], [<twilightforest:ironwood_ingot>, <minecraft:compass>, <twilightforest:ironwood_ingot>], [null, metals.tin.gear, null]]
	],
	<infoaccessories:info_accessory:6> : [
		[
			[null, <twilightforest:torchberries>, null],
			[<twilightforest:twilight_plant:8>, <twilightforest:magic_map_empty>, <twilightforest:twilight_sapling>],
			[null, <twilightforest:twilight_sapling:1>, null]
		]
	],
	<infoaccessories:info_accessory> : [
		[[null, <abyssalcraft:dsbutton>, null], [<twilightforest:firefly_jar>, <minecraft:clock>, <twilightforest:firefly_jar>], [null, metals.tin.gear, null]]
	],
	<minecraft:clock> : [
		[[<minecraft:dye:4>, metals.gold.plate, <minecraft:dye:4>], [metals.gold.plate, <minecraft:dye:4>, metals.gold.plate], [<minecraft:dye:4>, metals.gold.plate, <minecraft:dye:4>]]
	],
	<minecraft:compass> : [
		[[null, metals.iron.plate, null], [metals.iron.plate, <tconstruct:arrow_head>.withTag({Material: "iron"}), metals.iron.plate], [null, metals.iron.plate, null]]
	],

	//Tinkers'
	<tconstruct:piggybackpack> : [
		[
			[null, stick, null],
			[leather, null, leather],
			[null, stick, null]
		]
	],
	<tconstruct:seared_furnace_controller> : [
		[
			[<tconstruct:materials>, <tconstruct:materials>, <tconstruct:materials>],
			[<tconstruct:materials>, <thebetweenlands:crimson_middle_gem>, <tconstruct:materials>],
			[<tconstruct:materials>, <minecraft:furnace>, <tconstruct:materials>]
		]
	],
	<tconstruct:smeltery_controller> : [
		[
			[<tconstruct:materials>, <tconstruct:materials>, <tconstruct:materials>],
			[<tconstruct:materials>, <thebetweenlands:aqua_middle_gem>, <tconstruct:materials>],
			[<tconstruct:materials>, <tconstruct:materials>, <tconstruct:materials>]
		]
	],
	<tconstruct:tinker_tank_controller> : [
		[
			[<tconstruct:materials>, <tconstruct:materials>, <tconstruct:materials>],
			[<tconstruct:materials>, <thebetweenlands:green_middle_gem>, <tconstruct:materials>],
			[<tconstruct:materials>, <minecraft:bucket>, <tconstruct:materials>]
		]
	],


	//Recipes to allow lift in Stage2
	<betterwithmods:anchor> : [
		[[null, metals.iron.plate, null], [<ore:stone>, <ore:stone>, <ore:stone>]]
	],
	<betterwithmods:material:34> : [
		[[<minecraft:lever>, null], [metals.gold.plate, null]]
	],
	<betterwithmods:single_machine:1> : [
		[[plank, metals.iron.plate, plank], [<ore:gearWood>, <betterwithmods:material:34>, <ore:gearWood>], [plank, metals.iron.plate, plank]]
	],

	//Stage 2 Easier Gearbox and Axle
	<betterwithmods:wooden_axle> : [
		[
			[null, <ore:mouldingWood>, null],
			[null, <betterwithmods:rope>, null],
			[null, <ore:mouldingWood>, null]
		]
	],
	<betterwithmods:wooden_gearbox> : [
		[
			[<ore:mouldingWood>, <betterwithmods:material>, <ore:mouldingWood>],
			[metals.bronze.plate, <betterwithmods:wooden_axle>, metals.bronze.plate],
			[<ore:mouldingWood>, <betterwithmods:material>, <ore:mouldingWood>]
		]
	],

	//Composting
	<actuallyadditions:block_compost> : [
		[
			[<betterwithmods:slats:*>, null, <betterwithmods:slats:*>],
			[<betterwithmods:slats:*>, null, <betterwithmods:slats:*>],
			[<betterwithmods:slats:*>, <minecraft:chest>, <betterwithmods:slats:*>]
		]
	],

	//Antique Atlas
	<antiqueatlas:empty_antique_atlas> : [
		[[<minecraft:leather>, <minecraft:paper>, null], [<minecraft:leather>, <minecraft:map>, null], [<minecraft:leather>, <minecraft:paper>, null]]
	]

};

for item, recipesForItem in shapedRecipes {
	for recipe in recipesForItem {
		mods.recipestages.Recipes.addShaped(STAGE, item, recipe);
	}
}
