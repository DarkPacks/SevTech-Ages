import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

var STAGE = STAGES.one;

//mods.recipestages.Recipes.addShaped("one", <>, [[, , ], [, , ], [, , ]]);

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
		[[null, <minecraft:stick>, null], [<betterwithmods:rope>, <actuallyadditions:item_misc:5>, <betterwithmods:rope>], [null, <minecraft:stick>, null]]
	],
	<betterwithmods:wooden_gearbox> : [
		[
			[<ore:thinWood>, <betterwithmods:material>, <ore:thinWood>],
			[metals.bronze.plate, <betterwithmods:wooden_axle>, metals.bronze.plate],
			[<ore:thinWood>, <betterwithmods:material>, <ore:thinWood>]
		]
	],

	//Embers recipes fixed for Stage1
	<embers:archaic_circuit> : [
		[
			[<embers:plate_caminite>, <embers:archaic_brick>, <embers:plate_caminite>],
			[<embers:archaic_brick>, <embers:ancient_motive_core>, <embers:archaic_brick>],
			[<embers:plate_caminite>, <embers:archaic_brick>, <embers:plate_caminite>]
		]
	],
	<embers:archaic_edge> : [
		[
			[<embers:archaic_brick>, <embers:archaic_brick>, <embers:archaic_brick>],
			[<embers:archaic_brick>, <embers:crystal_ember>, <embers:archaic_brick>],
			[<embers:archaic_brick>, <embers:archaic_brick>, <embers:archaic_brick>]
		]
	],
	<embers:archaic_light> : [
		[[null, <embers:archaic_brick>, null], [<embers:archaic_brick>, <embers:crystal_ember>, <embers:archaic_brick>], [null, <embers:archaic_brick>, null]]
	],
	<embers:axe_bronze> : [
		[[metals.bronze.plate, metals.bronze.plate, null], [metals.bronze.plate, stick, null], [null, stick, null]]
	],
	<embers:axe_copper> : [
		[[metals.copper.plate, metals.copper.plate, null], [metals.copper.plate, stick, null], [null, stick, null]]
	],
	<embers:axe_tin> : [
		[[metals.tin.plate, metals.tin.plate, null], [metals.tin.plate, stick, null], [null, stick, null]]
	],
	<embers:block_caminite_brick> : [
		[[<embers:brick_caminite>, <embers:brick_caminite>], [<embers:brick_caminite>, <embers:brick_caminite>]]
	],
	<embers:block_caminite_brick_slab> * 6 : [
		[[<embers:block_caminite_brick>, <embers:block_caminite_brick>, <embers:block_caminite_brick>]]
	],
	<embers:block_lantern> : [
		[[null, metals.copper.plate, null], [null, <embers:crystal_ember>, null], [null, metals.copper.plate, null]]
	],
	<embers:codex> : [
		[[null, <embers:archaic_brick>, null], [<embers:archaic_brick>, <embers:ancient_motive_core>, <embers:archaic_brick>], [null, <embers:archaic_brick>, null]]
	],
	<embers:copper_cell> : [
		[
			[<embers:stairs_caminite_brick>, <embers:plate_caminite>, <embers:stairs_caminite_brick>],
			[<embers:plate_caminite>, metals.copper.block, <embers:plate_caminite>],
			[<embers:stairs_caminite_brick>, <embers:plate_caminite>, <embers:stairs_caminite_brick>]
		]
	],
	<embers:ember_activator> : [
		[[null, null, null], [metals.tin.plate, metals.tin.plate, metals.tin.plate], [<embers:plate_caminite>, <minecraft:furnace>, <embers:plate_caminite>]]
	],
	<embers:ember_bore> : [
		[
			[<embers:stairs_caminite_brick>, metals.copper.plate, <embers:stairs_caminite_brick>],
			[<embers:stairs_caminite_brick>, <embers:mech_core>, <embers:stairs_caminite_brick>],
			[metals.tin.plate, metals.tin.plate, metals.tin.plate]
		]
	],
	<embers:ember_detector> : [
		[[null, metals.tin.plate, null], [metals.copper.plate, <primal:flint_point>, metals.copper.plate], [null, metals.tin.plate, null]]
	],
	<embers:ember_emitter> : [
		[[null, metals.copper.rod, null], [<embers:plate_caminite>, metals.copper.rod, <embers:plate_caminite>], [<embers:plate_caminite>, <embers:plate_caminite>, <embers:plate_caminite>]]
	],
	<embers:ember_gauge> : [
		[[null, metals.copper.plate, null], [metals.copper.plate, metals.copper.rod, metals.copper.plate], [null, metals.tin.ingot, null]]
	],
	<embers:ember_receiver> : [
		[[null, null, null], [<embers:plate_caminite>, null, <embers:plate_caminite>], [metals.copper.plate, <embers:plate_caminite>, metals.copper.plate]]
	],
	<embers:fluid_gauge> : [
		[[null, metals.tin.plate, null], [metals.tin.plate, metals.copper.red, metals.tin.plate], [null, metals.tin.ingot, null]]
	],
	<embers:hoe_bronze> : [
		[[metals.bronze.plate, metals.bronze.plate, null], [null, stick, null], [null, stick, null]]
	],
	<embers:hoe_copper> : [
		[[metals.copper.plate, metals.copper.plate, null], [null, stick, null], [null, stick, null]]
	],
	<embers:hoe_tin> : [
		[[metals.tin.plate, metals.tin.plate, null], [null, stick, null], [null, stick, null]]
	],
	<embers:mech_accessor> : [
		[[null, null, null], [<embers:stairs_caminite_brick>, <embers:plate_caminite>, metals.tin.plate], [null, null, null]]
	],
	<embers:mech_core> : [
		[[metals.tin.plate, metals.copper.plate, metals.tin.plate], [metals.copper.plate, <embers:archaic_circuit>, metals.copper.plate], [metals.tin.plate, metals.copper.plate, metals.tin.plate]]
	],
	<embers:mixer> : [
		[[metals.tin.plate, null, metals.tin.plate], [metals.tin.plate, <embers:mech_core>, metals.tin.plate], [<embers:plate_caminite>, <embers:plate_caminite>, <embers:plate_caminite>]]
	],
	<embers:pickaxe_bronze> : [
		[[metals.bronze.plate, metals.bronze.plate, metals.bronze.plate], [null, stick, null], [null, stick, null]]
	],
	<embers:pickaxe_copper> : [
		[[metals.copper.plate, metals.copper.plate, metals.copper.plate], [null, stick, null], [null, stick, null]]
	],
	<embers:pickaxe_tin> : [
		[[metals.tin.plate, metals.tin.plate, metals.tin.plate], [null, stick, null], [null, stick, null]]
	],
	<embers:shovel_bronze> : [
		[[null, metals.bronze.plate, null], [null, stick, null], [null, stick, null]]
	],
	<embers:shovel_copper> : [
		[[null, metals.copper.plate, null], [null, stick, null], [null, stick, null]]
	],
	<embers:shovel_tin> : [
		[[null, metals.tin.plate, null], [null, stick, null], [null, stick, null]]
	],
	<embers:stairs_caminite_brick> * 6 : [
		[
			[<embers:block_caminite_brick>, null, null],
			[<embers:block_caminite_brick>, <embers:block_caminite_brick>, null],
			[<embers:block_caminite_brick>, <embers:block_caminite_brick>, <embers:block_caminite_brick>]
		]
	],
	<embers:stamper> : [
		[
			[<embers:plate_caminite>, <embers:plate_caminite>, <embers:plate_caminite>],
			[<embers:plate_caminite>, metals.bronze.block, <embers:plate_caminite>],
			[<embers:plate_caminite>, null, <embers:plate_caminite>]
		]
	],
	<embers:stamper_base> : [
		[[<embers:plate_caminite>, <ceramics:clay_barrel:1>, <embers:plate_caminite>], [<embers:block_caminite_brick>, <ceramics:clay_barrel>, <embers:block_caminite_brick>]]
	],
	<embers:sword_bronze> : [
		[[null, metals.bronze.plate, null], [null, metals.bronze.plate, null], [null, stick, null]]
	],
	<embers:sword_copper> : [
		[[null, metals.copper.plate, null], [null, metals.copper.plate, null], [null, stick, null]]
	],
	<embers:sword_tin> : [
		[[null, metals.tin.plate, null], [null, metals.tin.plate, null], [null, stick, null]]
	],
	<embers:wall_caminite_brick> * 6 : [
		[
			[<embers:block_caminite_brick>, <embers:block_caminite_brick>, <embers:block_caminite_brick>],
			[<embers:block_caminite_brick>, <embers:block_caminite_brick>, <embers:block_caminite_brick>]
		]
	],

	//Abyssalcraft for Stage1
	<abyssalcraft:necronomicon> : [
		[
			[<minecraft:rotten_flesh>, <abyssalcraft:corflesh>, <minecraft:rotten_flesh>],
			[<abyssalcraft:corflesh>, <roots:book_base>, <abyssalcraft:corflesh>],
			[<minecraft:rotten_flesh>, <abyssalcraft:corflesh>, <minecraft:rotten_flesh>]
		]
	],

	//Beneath Porter Recipe
	<progressiontweaks:blank_teleporter> : [
		[
			[<embers:archaic_edge>, <abyssalcraft:cpearl>, <embers:archaic_edge>],
			[metals.copper.block, metals.bronze.block, metals.tin.block],
			[<minecraft:coal_block>, <roots:aubergine_item>, <minecraft:coal_block>]
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
	<embers:tinker_hammer> : [
		[[stone, null, null], [null, stick, null], [null, null, stick]]
	],
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
			[<astralsorcery:itemcraftingcomponent>, <roots:book_base>, <astralsorcery:itemcraftingcomponent>],
			[null, <astralsorcery:itemcraftingcomponent>, null]
		]
	],

	//Upgraded Recipes from previous stages
	/*
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
		[[null, <roots:petal_dust>.withTag({spell: "spell_orange_tulip"}), null], [null, <embers:ancient_motive_core>, null], [null, <primal_tech:wooden_hopper>, null]]
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

	//Simply Tea
	<simplytea:teabag> : [
		[
			[null, <betterwithmods:material:3>, str],
			[<ore:clothPlant>, <ore:clothPlant>, null],
			[<ore:clothPlant>, <ore:clothPlant>, null]
		]
	]

} as IIngredient[][][][IItemStack];

for item, recipesForItem in shapedRecipes {
	for recipe in recipesForItem {
		mods.recipestages.Recipes.addShaped(STAGE, item, recipe);
	}
}

//Tinkers'
mods.recipestages.Recipes.addShapedMirrored("one", <tconstruct:pattern> * 4, [[<ore:barkWood>, <ore:sidingWood>], [<ore:sidingWood>, <ore:barkWood>]]);
