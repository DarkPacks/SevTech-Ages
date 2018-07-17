#priority -2

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

var STAGE = STAGES.one;

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
	<betterbuilderswands:wandstone> : [
		[[null, null, <ore:stone>], [null, log, null], [log, null, null]]
	],
	<bibliocraft:plumbline> : [
		[[<betterwithaddons:bolt:6>, null, null], [null, <betterwithaddons:bolt:6>, null], [null, null, <ore:rock>]]
	],
	<dungpipe:dung_pipe> : [
		[[null, <ore:slabWood>, plank], [<ore:slabWood>, null, <ore:slabWood>], [null, <ore:slabWood>, null]]
	],
	<dungpipe:sewer_pipe> : [
		[[null, null, null], [<dungpipe:dung_pipe>, metals.tin.plate, metals.tin.plate], [null, null, null]]
	],
	<primal_tech:leaf_bed> : [
		[[null, null, null], [<ore:treeLeaves>, <ore:treeLeaves>, <ore:treeLeaves>], [<minecraft:hay_block>, <minecraft:hay_block>, <minecraft:hay_block>]]
	],
	<primal_tech:flint_edged_disc> : [
		[[null, <primal:flint_knapp>, null], [<primal:flint_knapp>, <ore:gearTin>, <primal:flint_knapp>], [null, <primal:flint_knapp>, null]]
	],
	<progressiontweaks:unfired_clay_bowl> : [
		[[<minecraft:clay_ball>, null, <minecraft:clay_ball>], [<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>]]
	],
	<prospectors:prospector_lowest> : [
		[[null, stick, log], [null, log, stick], [log, null, null]]
	],

	//Hopper Update Recipes in Stage 1
	<wopper:wopper> : [
		[[plank, null, plank], [plank, <minecraft:chest>, plank], [null, plank, null]]
	],

	//Gear recipes for Stage1 only
	metals.bronze.gear.firstItem : [
		[[null, metals.bronze.plate, null], [metals.bronze.plate, <teslacorelib:gear_stone>, metals.bronze.plate], [null, metals.bronze.plate, null]]
	],
	metals.tin.gear.firstItem : [
		[[null, metals.tin.plate, null], [metals.tin.plate, <teslacorelib:gear_stone>, metals.tin.plate], [null, metals.tin.plate, null]]
	],
	metals.copper.gear.firstItem : [
		[[null, metals.copper.plate, null], [metals.copper.plate, <teslacorelib:gear_stone>, metals.copper.plate], [null, metals.copper.plate, null]]
	],


	//Antique Atlas
	<antiqueatlas:empty_antique_atlas> : [
		[
			[<minecraft:leather>, <primal:plant_cloth>, null],
			[<minecraft:leather>, <primal:plant_cloth>, null],
			[<minecraft:leather>, <primal:plant_cloth>, null]
		]
	],

	//Beneath Porter Recipe
	<progressiontweaks:blank_teleporter> : [
		[
			[<ore:dyeBlack>, <abyssalcraft:cpearl>, <ore:dyeBlack>],
			[metals.copper.block, metals.bronze.block, metals.tin.block],
			[<minecraft:coal_block>, <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:apprentice"}), <minecraft:coal_block>]
		]
	],

	//Iron Chests use plates
	<ironchest:iron_chest:3> : [
		[
			[metals.copper.plate, metals.copper.plate, metals.copper.plate],
			[metals.copper.plate, <minecraft:chest>, metals.copper.plate],
			[metals.copper.plate, metals.copper.plate, metals.copper.plate]
		]
	],
	<ironchest:wood_copper_chest_upgrade> : [
		[
			[metals.copper.plate, metals.copper.plate, metals.copper.plate],
			[metals.copper.plate, log, metals.copper.plate],
			[metals.copper.plate, metals.copper.plate, metals.copper.plate]
		]
	],

	//Hammer
	<primal_tech:stone_mallet> : [
		[[stone, null], [stick, null]]
	],

	//Astral Sorcery Start
	<astralsorcery:itemcraftingcomponent:5> : [
		[
			[null, <betterwithaddons:japanmat:11>, null],
			[<betterwithaddons:japanmat:11>, <astralsorcery:itemcraftingcomponent>, <betterwithaddons:japanmat:11>],
			[null, <betterwithaddons:japanmat:11>, null]
		]
	],
	<astralsorcery:itemjournal> : [
		[
			[null, <astralsorcery:itemcraftingcomponent:5>, null],
			[<astralsorcery:itemcraftingcomponent>, <primal:plant_cloth>, <astralsorcery:itemcraftingcomponent>],
			[null, <astralsorcery:itemcraftingcomponent>, null]
		]
	],

	<chiselsandbits:bit_bag> : [
		[
			[<betterwithaddons:wool:*>, <betterwithaddons:wool:*>, <betterwithaddons:wool:*>],
			[<betterwithaddons:wool:*>, <minecraft:stone_button>, <betterwithaddons:wool:*>],
			[<betterwithaddons:wool:*>, <betterwithaddons:wool:*>, <betterwithaddons:wool:*>]
		]
	],
	<chiselsandbits:bittank> : [
		[
			[stick, null, stick],
			[null, null, null],
			[stick, null, stick]
		]
	],
	<chiselsandbits:negativeprint> : [
		[
			[scripts.crafting_utils.getBucketIngredient(<liquid:water>), <ore:dyeRed>],
			[<primal:plant_cloth>, null]
		]
	],
	<chiselsandbits:mirrorprint> : [
		[
			[scripts.crafting_utils.getBucketIngredient(<liquid:water>), <ore:dyeGreen>],
			[<primal:plant_cloth>, null]
		]
	],
	<chiselsandbits:positiveprint> : [
		[
			[scripts.crafting_utils.getBucketIngredient(<liquid:water>), <ore:dyeBlue>],
			[<primal:plant_cloth>, null]
		]
	],
	<primal_tech:charcoal_hopper> : [
		[[null, null, null],
		[null, <tconstruct:firewood>, null],
		[null, <primal_tech:wooden_hopper>, null]]
	],

	//Primal_tech stuff
	<primal_tech:wooden_basin> : [
		[[log, stick, log], [log, log, log], [stick, null, stick]]
	],

	//Immersive Engineering Engineer's Hammer
	<immersiveengineering:tool> : [
		[
			[null, metals.copper.ingot, str],
			[null, stick, metals.copper.ingot],
			[stick, null, null]
		]
	],

	//Blood Magic
	<bloodmagic:altar> : [
		[
			[stone, null, stone],
			[stone, <minecraft:furnace>, stone],
			[metals.bronze.ingot, <bloodmagic:monster_soul>, metals.bronze.ingot]
		]
	],
	<bloodmagic:sacrificial_dagger> : [
		[
			[null, null, <primal:sharp_bone>],
			[null, metals.bronze.ingot, null],
			[metals.bronze.ingot, null, null]
		]
	],
	<bloodmagic:soul_snare> * 4: [
		[
			[str, metals.tin.ingot, str],
			[metals.tin.ingot, <betterwithaddons:tweakmat>, metals.tin.ingot],
			[str, metals.tin.ingot, str]
		]
	],
	<bloodmagic:soul_forge> : [
		[
			[metals.tin.ingot, null, metals.tin.ingot],
			[stone, metals.bronze.ingot, stone],
			[stone, metals.copper.block, stone]
		]
	],
	<bloodmagic:blood_rune:3> : [
		[
			[stone, <bloodmagic:slate:1>, stone],
			[metals.bronze.ingot, <bloodmagic:blood_rune>, metals.bronze.ingot],
			[stone, <bloodmagic:blood_orb:*>, stone]
		]
	],
	<bloodmagic:blood_rune:4> : [
		[
			[stone, <bloodmagic:slate:1>, stone],
			[<ore:dyeYellow>, <bloodmagic:blood_rune>, <ore:dyeYellow>],
			[stone, <bloodmagic:blood_orb:*>, stone]
		]
	],

	<huntingdim:frame> * 4 : [
		[
			[log, log, log],
			[log, <minecraft:stone_sword>, log],
			[log, log, log]
		]
	],

	<primal_tech:stone_anvil> : [
		[
			[stone, stone, stone],
			[null, stone, null],
			[<minecraft:stone_slab>, <minecraft:stone_slab>, <minecraft:stone_slab>]
		]
	],

	//Chisel and Bits
	<chiselsandbits:chisel_iron> : [
		[
			[metals.tin.ingot, stick],
		]
	],
	<quark:trowel> : [
		[
			[null, null, null],
			[<ore:stickWood>, null, null],
			[null, metals.copper.ingot, metals.copper.ingot]
		]
	],

	//Farming for Blockheads
	<farmingforblockheads:market> : [
		[
			[<ore:plankWood>, <totemic:flute:1>, <ore:plankWood>],
			[<ore:logWood>, null, <ore:logWood>],
			[<ore:logWood>, <ore:logWood>, <ore:logWood>]
		]
	]
};

for item, recipesForItem in shapedRecipes {
	for recipe in recipesForItem {
		mods.recipestages.Recipes.addShaped(STAGE, item, recipe);
	}
}
