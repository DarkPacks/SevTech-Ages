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
	<cyclicmagic:ender_torch> * 8 : [
		[
			[<ore:knightTorch>, <ore:knightTorch>, <ore:knightTorch>],
			[<ore:knightTorch>, <betterwithmods:material:12>, <ore:knightTorch>],
			[<ore:knightTorch>, <ore:knightTorch>, <ore:knightTorch>]
		]
	],
	<dungpipe:dung_pipe> : [
		[[null, <ore:slabWood>, plank], [<ore:slabWood>, null, <ore:slabWood>], [null, <ore:slabWood>, null]]
	],
	<dungpipe:sewer_pipe> : [
		[[null, null, null], [<dungpipe:dung_pipe>, metals.tin.plate, metals.tin.plate], [null, null, null]]
	],
	<minecraft:crafting_table> : [
		[[plank, plank], [plank, plank]]
	],
	<minecraft:ladder> : [
		[[stick, null, stick], [stick, stick, stick], [stick, null, stick]]
	],
	<minecraft:cake> : [
		[[<minecraft:milk_bucket>, <minecraft:milk_bucket>, <minecraft:milk_bucket>], [<minecraft:sugar>, <minecraft:egg>, <minecraft:sugar>], [null, <ore:foodFlour>, null]]
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

	//Better With Mods
	<betterwithaddons:aqueduct:10> * 3 : [
		[[null, null, null], [<minecraft:clay>, <minecraft:clay>, <minecraft:clay>], [<minecraft:prismarine:2>, <minecraft:prismarine:2>, <minecraft:prismarine:2>]]
	],
	<betterwithaddons:aqueduct:1> * 3 : [
		[[null, null, null], [<minecraft:clay>, <minecraft:clay>, <minecraft:clay>], [<minecraft:brick_block>, <minecraft:brick_block>, <minecraft:brick_block>]]
	],
	<betterwithaddons:aqueduct:2> * 3 : [
		[[null, null, null], [<minecraft:clay>, <minecraft:clay>, <minecraft:clay>], [<minecraft:quartz_block:*>, <minecraft:quartz_block:*>, <minecraft:quartz_block:*>]]
	],
	<betterwithaddons:aqueduct:3> * 3 : [
		[[null, null, null], [<minecraft:clay>, <minecraft:clay>, <minecraft:clay>], [<betterwithaddons:whitebrick>, <betterwithaddons:whitebrick>, <betterwithaddons:whitebrick>]]
	],
	<betterwithaddons:aqueduct:4> * 3 : [
		[[null, null, null], [<minecraft:clay>, <minecraft:clay>, <minecraft:clay>], [<minecraft:sandstone:*>, <minecraft:sandstone:*>, <minecraft:sandstone:*>]]
	],
	<betterwithaddons:aqueduct:5> * 3 : [
		[[null, null, null], [<minecraft:clay>, <minecraft:clay>, <minecraft:clay>], [<minecraft:red_sandstone:*>, <minecraft:red_sandstone:*>, <minecraft:red_sandstone:*>]]
	],
	<betterwithaddons:aqueduct:6> * 3 : [
		[[null, null, null], [<minecraft:clay>, <minecraft:clay>, <minecraft:clay>], [stone, stone, stone]]
	],
	<betterwithaddons:aqueduct:7> * 3 : [
		[[null, null, null], [<minecraft:clay>, <minecraft:clay>, <minecraft:clay>], [<minecraft:stone:2>, <minecraft:stone:2>, <minecraft:stone:2>]]
	],
	<betterwithaddons:aqueduct:8> * 3 : [
		[[null, null, null], [<minecraft:clay>, <minecraft:clay>, <minecraft:clay>], [<minecraft:stone:4>, <minecraft:stone:4>, <minecraft:stone:4>]]
	],
	<betterwithaddons:aqueduct:9> * 3 : [
		[[null, null, null], [<minecraft:clay>, <minecraft:clay>, <minecraft:clay>], [<minecraft:prismarine>, <minecraft:prismarine>, <minecraft:prismarine>]]
	],
	<betterwithmods:axle_generator:1> : [
		[
			[<betterwithmods:material:10>, <betterwithmods:material:10>, <betterwithmods:material:10>],
			[<betterwithmods:material:10>, metals.copper.gear, <betterwithmods:material:10>],
			[<betterwithmods:material:10>, <betterwithmods:material:10>, <betterwithmods:material:10>]
		]
	],
	<betterwithmods:material:10> : [
		[[<ore:slabWood>, null, null], [<ore:slabWood>, <ore:slimeball>, <ore:slabWood>], [<ore:slabWood>, null, null]]
	],
	<betterwithmods:material:24> : [
        [[metals.bronze.rod, metals.bronze.rod, null], [null, metals.bronze.rod, metals.bronze.rod], [metals.bronze.rod, metals.bronze.rod, null]],
        [[metals.copper.rod, metals.copper.rod, null], [null, metals.copper.rod, metals.copper.rod], [metals.copper.rod, metals.copper.rod, null]],
        [[metals.tin.rod, metals.tin.rod, null], [null, metals.tin.rod, metals.tin.rod], [metals.tin.rod, metals.tin.rod, null]]
    ],
	<betterwithmods:rope> : [
		[
			[<betterwithmods:material:3>, <betterwithmods:material:3>],
			[<betterwithmods:material:3>, <betterwithmods:material:3>],
			[<betterwithmods:material:3>, <betterwithmods:material:3>]
		]
	],
	<betterwithmods:saw> : [
		[[null, <primal_tech:flint_edged_disc>, null], [metals.copper.gear, <betterwithmods:material:9>, metals.copper.gear], [plank, metals.bronze.gear, plank]]
	],
	<betterwithmods:single_machine:3> : [
		[[<betterwithmods:wood_siding:*>, <betterwithmods:wood_siding:*>, <betterwithmods:wood_siding:*>], [stone, metals.copper.gear, stone], [stone, <betterwithmods:wooden_axle>, stone]]
	],
	<betterwithmods:wooden_axle> : [
		[[null, stick, null], [<betterwithmods:rope>, <actuallyadditions:item_misc:5>, <betterwithmods:rope>], [null, stick, null]]
	],
	<betterwithmods:wooden_gearbox> : [
		[
			[<ore:thinWood>, <betterwithmods:material>, <ore:thinWood>],
			[metals.bronze.plate, <betterwithmods:wooden_axle>, metals.bronze.plate],
			[<ore:thinWood>, <betterwithmods:material>, <ore:thinWood>]
		]
	],
	<betterwithaddons:spindle> : [
		[
			[stick],
			[stick],
			[stick]
		]
	],

	//Abyssalcraft for Stage1
	<abyssalcraft:necronomicon> : [
		[
			[<minecraft:rotten_flesh>, <abyssalcraft:corflesh>, <minecraft:rotten_flesh>],
			[<abyssalcraft:corflesh>, <primal:plant_cloth>, <abyssalcraft:corflesh>],
			[<minecraft:rotten_flesh>, <abyssalcraft:corflesh>, <minecraft:rotten_flesh>]
		]
	],
	<abyssalcraft:charm> : [
		[
			[<ore:dyeYellow>, <ore:dyeYellow>, <ore:dyeYellow>],
			[<ore:dyeYellow>, metals.bronze.ingot, <ore:dyeYellow>],
			[<ore:dyeYellow>, <ore:dyeYellow>, <ore:dyeYellow>]
		]
	],


	//Beneath Porter Recipe
	<progressiontweaks:blank_teleporter> : [
		[
			[null, <abyssalcraft:cpearl>, null],
			[metals.copper.block, metals.bronze.block, metals.tin.block],
			[<minecraft:coal_block>, null, <minecraft:coal_block>]
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

	//Tinkers'
	<tcomplement:porcelain_melter:8> : [
		[
			[null, <ceramics:unfired_clay:5>, null],
			[<ceramics:unfired_clay:5>, <ceramics:unfired_clay:5>, <ceramics:unfired_clay:5>],
			[<ceramics:unfired_clay:5>, <minecraft:furnace>, <ceramics:unfired_clay:5>]
		]
	],
	<tcomplement:porcelain_melter> : [
		[
			[null, <ceramics:unfired_clay:5>, null],
			[<ceramics:unfired_clay:5>, <minecraft:furnace>, <ceramics:unfired_clay:5>],
			[<ceramics:unfired_clay:5>, <ceramics:unfired_clay:5>, <ceramics:unfired_clay:5>]
		]
	],
	<tcomplement:melter:8> : [
		[
			[null, <tconstruct:materials:0>, null],
			[<tconstruct:materials:0>, <tconstruct:materials:0>, <tconstruct:materials:0>],
			[<tconstruct:materials:0>, <minecraft:furnace>, <tconstruct:materials:0>]
		]
	],
	<tcomplement:melter> : [
		[
			[null, <tconstruct:materials:0>, null],
			[<tconstruct:materials:0>, <minecraft:furnace>, <tconstruct:materials:0>],
			[<tconstruct:materials:0>, <tconstruct:materials:0>, <tconstruct:materials:0>]
		]
	],

	//Primal
	<primal:storage_crate:1> : [
		[
			[<minecraft:planks:1>, <minecraft:planks:1>, <minecraft:planks:1>],
			[<minecraft:planks:1>, <minecraft:chest>, <minecraft:planks:1>],
			[<minecraft:planks:1>, <minecraft:planks:1>, <minecraft:planks:1>]
		]
	],
	<primal:storage_crate:2> : [
		[
			[<minecraft:planks:2>, <minecraft:planks:2>, <minecraft:planks:2>],
			[<minecraft:planks:2>, <minecraft:chest>, <minecraft:planks:2>],
			[<minecraft:planks:2>, <minecraft:planks:2>, <minecraft:planks:2>]
		]
	],
	<primal:storage_crate:3> : [
		[
			[<minecraft:planks:3>, <minecraft:planks:3>, <minecraft:planks:3>],
			[<minecraft:planks:3>, <minecraft:chest>, <minecraft:planks:3>],
			[<minecraft:planks:3>, <minecraft:planks:3>, <minecraft:planks:3>]
		]
	],
	<primal:storage_crate:4> : [
		[
			[<minecraft:planks:4>, <minecraft:planks:4>, <minecraft:planks:4>],
			[<minecraft:planks:4>, <minecraft:chest>, <minecraft:planks:4>],
			[<minecraft:planks:4>, <minecraft:planks:4>, <minecraft:planks:4>]
		]
	],
	<primal:storage_crate:5> : [
		[
			[<minecraft:planks:5>, <minecraft:planks:5>, <minecraft:planks:5>],
			[<minecraft:planks:5>, <minecraft:chest>, <minecraft:planks:5>],
			[<minecraft:planks:5>, <minecraft:planks:5>, <minecraft:planks:5>]
		]
	],
	<primal:storage_crate:6> : [
		[
			[<rustic:planks:1>, <rustic:planks:1>, <rustic:planks:1>],
			[<rustic:planks:1>, <minecraft:chest>, <rustic:planks:1>],
			[<rustic:planks:1>, <rustic:planks:1>, <rustic:planks:1>]
		]
	],
	<primal:storage_crate:7> : [
		[
			[<primal:planks:1>, <primal:planks:1>, <primal:planks:1>],
			[<primal:planks:1>, <minecraft:chest>, <primal:planks:1>],
			[<primal:planks:1>, <primal:planks:1>, <primal:planks:1>]
		]
	],
	<primal:storage_crate:8> : [
		[
			[<primal:planks:2>, <primal:planks:2>, <primal:planks:2>],
			[<primal:planks:2>, <minecraft:chest>, <primal:planks:2>],
			[<primal:planks:2>, <primal:planks:2>, <primal:planks:2>]
		]
	],
	<primal:storage_crate:9> : [
		[
			[<primal:planks:3>, <primal:planks:3>, <primal:planks:3>],
			[<primal:planks:3>, <minecraft:chest>, <primal:planks:3>],
			[<primal:planks:3>, <primal:planks:3>, <primal:planks:3>]
		]
	],
	<primal:storage_crate> : [
		[
			[<minecraft:planks>, <minecraft:planks>, <minecraft:planks>],
			[<minecraft:planks>, <minecraft:chest>, <minecraft:planks>],
			[<minecraft:planks>, <minecraft:planks>, <minecraft:planks>]
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
			[<ceramics:clay_bucket>.withTag({fluids: {FluidName: "water", Amount: 1000}}), <ore:dyeRed>],
			[<primal:plant_cloth>, null]
		]
	],
	<chiselsandbits:mirrorprint> : [
		[
			[<ceramics:clay_bucket>.withTag({fluids: {FluidName: "water", Amount: 1000}}), <ore:dyeGreen>],
			[<primal:plant_cloth>, null]
		]
	],
	<chiselsandbits:positiveprint> : [
		[
			[<ceramics:clay_bucket>.withTag({fluids: {FluidName: "water", Amount: 1000}}), <ore:dyeBlue>],
			[<primal:plant_cloth>, null]
		]
	],

	//Upgraded Recipes from previous stages
	/* TODO: Can this be deleted?
	<primal:hide_salted> : [
		[
			[<primal:hide_raw>, <ore:foodSalt>, <primal:hide_raw>],
			[<primal:hide_raw>, <ceramics:clay_bucket>.withTag({fluids: {FluidName: "water", Amount: 1000}}), <primal:hide_raw>],
			[<primal:hide_raw>, <primal:hide_raw>, <primal:hide_raw>]
		]
	],
	<primal:hide_tanned> : [
		[
			[<primal:hide_dried>, <primal:tannin_ground>, <primal:hide_dried>],
			[<primal:hide_dried>, <minecraft:water_bucket>, <primal:hide_dried>],
			[<primal:hide_dried>, <primal:hide_dried>, <primal:hide_dried>]
		]
	],
	*/
	<primal_tech:charcoal_hopper> : [
		[[null, null, null],
		[null, <tconstruct:firewood>, null],
		[null, <primal_tech:wooden_hopper>, null]]
	],

	//BWM changes
	<betterwithmods:bellows> : [
		[[<ore:sidingWood>, <ore:sidingWood>, <ore:sidingWood>], [<ore:hideTanned>, <ore:hideTanned>, <ore:hideTanned>], [<ore:hideBelt>, <ore:gearWood>, <ore:hideBelt>]]
	],
	<betterwithmods:breeding_harness> : [
		[[<ore:cordageLeather>, leather, <ore:cordageLeather>], [leather, leather, leather], [<ore:cordageLeather>, leather, <ore:cordageLeather>]]
	],
	<betterwithmods:material:36> : [
		[[null, <ore:cordageLeather>, null], [null, <ore:slimeball>, null], [null, <ore:mouldingWood>, null]]
	],
	<betterwithmods:material> : [
		[[stick, plank, stick], [plank, <betterwithmods:material:12>, plank], [stick, plank, stick]]
	],

	//Primal_tech stuff
	<primal_tech:wooden_basin> : [
		[[log, stick, log], [log, log, log], [stick, null, stick]]
	],

	//Pickle Tweaks Mesh
	<pickletweaks:reinforced_mesh> : [
		[
			[plank, <betterwithmods:material:3>, plank],
			[<betterwithmods:material:3>, <betterwithmods:material:3>, <betterwithmods:material:3>],
			[plank, <betterwithmods:material:3>, plank]
		]
	],

	//Immersive Engineering Engineer's Hammer
	<immersiveengineering:tool> : [
		[
			[null, metals.copper.ingot, str],
			[null, stick, metals.copper.ingot],
			[stick, null, null]
		]
	]
};

for item, recipesForItem in shapedRecipes {
	for recipe in recipesForItem {
		mods.recipestages.Recipes.addShaped(STAGE, item, recipe);
	}
}

//Tinkers'
mods.recipestages.Recipes.addShapedMirrored(STAGE, <tconstruct:pattern> * 4, [[<ore:barkWood>, <ore:sidingWood>], [<ore:sidingWood>, <ore:barkWood>]]);
