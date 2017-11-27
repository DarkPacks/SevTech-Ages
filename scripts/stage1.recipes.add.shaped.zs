import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

var STAGE = "one";

//Shorthand
var ip = <ore:plateIron>;
var cp = <ore:plateCopper>;
var lp = <ore:plateLead>;
var np = <ore:plateNickel>;
var tp = <ore:plateTin>;
var sp = <ore:plateSteel>;
var gp = <ore:plateGold>;
var bp = <ore:plateBronze>;
var cgear = <ore:gearCopper>;
var tgear = <ore:gearTin>;
var bgear = <ore:gearBronze>;
var iron = <minecraft:iron_ingot>;
var gold = <minecraft:gold_ingot>;
var diamond = <minecraft:diamond>;
var emerald = <minecraft:emerald>;
var redstone = <minecraft:redstone>;
var coal = <minecraft:coal>;
var charcoal = <minecraft:coal:1>;
var shears = <ore:shears>;
var clayball = <minecraft:clay_ball>;
var log = <ore:logWood>;
var flint = <minecraft:flint>;
var plank = <ore:plankWood>;
var stick = <minecraft:stick>;
var stone = <minecraft:stone:*>;
var bone = <minecraft:bone>;
var leather = <minecraft:leather>;
var cobblestone = <minecraft:cobblestone>;
var cordage = <ore:cordageGeneral>;
var cane = <minecraft:reeds>;
var wool = <ore:wool>;
var str = <minecraft:string>;

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
		[[null, null, <ore:stone>], [null, <ore:logWood>, null], [<ore:logWood>, null, null]]
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
		[[null, null, null], [<dungpipe:dung_pipe>, tp, tp], [null, null, null]]
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
	<progressiontweaks:unfired_clay_bowl> : [
		[[<minecraft:clay_ball>, null, <minecraft:clay_ball>], [<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>]]
	],
	<prospectors:prospector_lowest> : [
		[[null, stick, <ore:logWood>], [null, <ore:logWood>, stick], [<ore:logWood>, null, null]]
	],

	//Hopper Update Recipes in Stage 1
	<wopper:wopper> : [
		[[<ore:plankWood>, null, <ore:plankWood>], [<ore:plankWood>, <minecraft:chest>, <ore:plankWood>], [null, <ore:plankWood>, null]]
	],

	//Gear recipes for Stage1 only
	<contenttweaker:material_part:25> : [
		[[null, bp, null], [bp, <teslacorelib:gear_stone>, bp], [null, bp, null]]
	],
	<contenttweaker:material_part:5> : [
		[[null, tp, null], [tp, <teslacorelib:gear_stone>, tp], [null, tp, null]]
	],
	<contenttweaker:material_part> : [
		[[null, cp, null], [cp, <teslacorelib:gear_stone>, cp], [null, cp, null]]
	],

	//Slabs
	<abyssalcraft:dltslab1> * 6 : [
		[[<abyssalcraft:dltplank>, <abyssalcraft:dltplank>, <abyssalcraft:dltplank>]]
	],
	<minecraft:stone_slab2> * 6 : [
		[[<minecraft:red_sandstone>, <minecraft:red_sandstone>, <minecraft:red_sandstone>]]
	],
	<minecraft:stone_slab:1> * 6 : [
		[[<minecraft:sandstone>, <minecraft:sandstone>, <minecraft:sandstone>]]
	],
	<minecraft:stone_slab:3> * 6 : [
		[[<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>]]
	],
	<minecraft:stone_slab:4> * 6 : [
		[[<minecraft:brick_block>, <minecraft:brick_block>, <minecraft:brick_block>]]
	],
	<minecraft:stone_slab:5> * 6 : [
		[[<minecraft:stonebrick>, <minecraft:stonebrick>, <minecraft:stonebrick>]]
	],
	<minecraft:stone_slab:7> * 6 : [
		[[<minecraft:quartz_block>, <minecraft:quartz_block>, <minecraft:quartz_block>]]
	],
	<minecraft:stone_slab> * 6 : [
		[[<minecraft:stone>, <minecraft:stone>, <minecraft:stone>]]
	],
	<minecraft:wooden_slab:1> * 6 : [
		[[<minecraft:planks:1>, <minecraft:planks:1>, <minecraft:planks:1>]]
	],
	<minecraft:wooden_slab:2> * 6 : [
		[[<minecraft:planks:2>, <minecraft:planks:2>, <minecraft:planks:2>]]
	],
	<minecraft:wooden_slab:3> * 6 : [
		[[<minecraft:planks:3>, <minecraft:planks:3>, <minecraft:planks:3>]]
	],
	<minecraft:wooden_slab:4> * 6 : [
		[[<minecraft:planks:4>, <minecraft:planks:4>, <minecraft:planks:4>]]
	],
	<minecraft:wooden_slab:5> * 6 : [
		[[<minecraft:planks:5>, <minecraft:planks:5>, <minecraft:planks:5>]]
	],
	<minecraft:wooden_slab> * 6 : [
		[[<minecraft:planks>, <minecraft:planks>, <minecraft:planks>]]
	],
	<natura:nether_slab:1> * 6 : [
		[[<natura:nether_planks>, <natura:nether_planks>, <natura:nether_planks>]]
	],
	<natura:nether_slab:2> * 6 : [
		[[<natura:nether_planks:2>, <natura:nether_planks:2>, <natura:nether_planks:2>]]
	],
	<natura:nether_slab:3> * 6 : [
		[[<natura:nether_planks:3>, <natura:nether_planks:3>, <natura:nether_planks:3>]]
	],
	<natura:nether_slab> * 6 : [
		[[<natura:nether_planks:1>, <natura:nether_planks:1>, <natura:nether_planks:1>]]
	],
	<natura:overworld_slab2:1> * 6 : [
		[[<natura:overworld_planks:6>, <natura:overworld_planks:6>, <natura:overworld_planks:6>]]
	],
	<natura:overworld_slab2:2> * 6 : [
		[[<natura:overworld_planks:7>, <natura:overworld_planks:7>, <natura:overworld_planks:7>]]
	],
	<natura:overworld_slab2:3> * 6 : [
		[[<natura:overworld_planks:8>, <natura:overworld_planks:8>, <natura:overworld_planks:8>]]
	],
	<natura:overworld_slab2> * 6 : [
		[[<natura:overworld_planks:5>, <natura:overworld_planks:5>, <natura:overworld_planks:5>]]
	],
	<natura:overworld_slab:1> * 6 : [
		[[<natura:overworld_planks:1>, <natura:overworld_planks:1>, <natura:overworld_planks:1>]]
	],
	<natura:overworld_slab:2> * 6 : [
		[[<natura:overworld_planks:2>, <natura:overworld_planks:2>, <natura:overworld_planks:2>]]
	],
	<natura:overworld_slab:3> * 6 : [
		[[<natura:overworld_planks:3>, <natura:overworld_planks:3>, <natura:overworld_planks:3>]]
	],
	<natura:overworld_slab:4> * 6 : [
		[[<natura:overworld_planks:4>, <natura:overworld_planks:4>, <natura:overworld_planks:4>]]
	],
	<natura:overworld_slab> * 6 : [
		[[<natura:overworld_planks>, <natura:overworld_planks>, <natura:overworld_planks>]]
	],
	<primal:slab_ironwood> * 6 : [
		[[<primal:planks:6>, <primal:planks:6>, <primal:planks:6>]]
	],
	<rustic:ironwood_slab_item> * 6 : [
		[[<rustic:planks:1>, <rustic:planks:1>, <rustic:planks:1>]]
	],
	<rustic:olive_slab_item> * 6 : [
		[[<rustic:planks>, <rustic:planks>, <rustic:planks>]]
	],
	<tconstruct:firewood_slab:1> * 6 : [
		[[<tconstruct:firewood:1>, <tconstruct:firewood:1>, <tconstruct:firewood:1>]]
	],
	<tconstruct:firewood_slab> * 6 : [
		[[<tconstruct:firewood>, <tconstruct:firewood>, <tconstruct:firewood>]]
	],
	<traverse:fir_slab> * 6 : [
		[[<traverse:fir_planks>, <traverse:fir_planks>, <traverse:fir_planks>]]
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
	<betterwithaddons:aqueduct> * 3 : [
		[[null, null, null], [<minecraft:clay>, <minecraft:clay>, <minecraft:clay>], [<minecraft:stonebrick:*>, <minecraft:stonebrick:*>, <minecraft:stonebrick:*>]]
	],
	<betterwithmods:axle_generator:1> : [
		[
			[<betterwithmods:material:10>, <betterwithmods:material:10>, <betterwithmods:material:10>],
			[<betterwithmods:material:10>, cgear, <betterwithmods:material:10>],
			[<betterwithmods:material:10>, <betterwithmods:material:10>, <betterwithmods:material:10>]
		]
	],
	<betterwithmods:material:10> : [
		[[<ore:slabWood>, null, null], [<ore:slabWood>, <ore:slimeball>, <ore:slabWood>], [<ore:slabWood>, null, null]]
	],
	<betterwithmods:material:24> : [
		[[<ore:rodBronze>, <ore:rodBronze>, null], [null, <ore:rodBronze>, <ore:rodBronze>], [<ore:rodBronze>, <ore:rodBronze>, null]]
	],
	<betterwithmods:material:24> : [
		[[<ore:rodCopper>, <ore:rodCopper>, null], [null, <ore:rodCopper>, <ore:rodCopper>], [<ore:rodCopper>, <ore:rodCopper>, null]]
	],
	<betterwithmods:material:24> : [
		[[<ore:rodTin>, <ore:rodTin>, null], [null, <ore:rodTin>, <ore:rodTin>], [<ore:rodTin>, <ore:rodTin>, null]]
	],
	<betterwithmods:rope> * 3 : [
		[
			[<immersiveengineering:material:4>, <immersiveengineering:material:4>],
			[<immersiveengineering:material:4>, <immersiveengineering:material:4>],
			[<immersiveengineering:material:4>, <immersiveengineering:material:4>]
		]
	],
	<betterwithmods:rope> : [
		[[<betterwithmods:material:3>, <betterwithmods:material:3>], [<betterwithmods:material:3>, <betterwithmods:material:3>], [<betterwithmods:material:3>, <betterwithmods:material:3>]]
	],
	<betterwithmods:saw> : [
		[[null, <primal_tech:flint_edged_disc>, null], [cgear, <betterwithmods:material:9>, cgear], [<ore:plankWood>, bgear, <ore:plankWood>]]
	],
	<betterwithmods:single_machine:3> : [
		[[<betterwithmods:wood_siding:*>, <betterwithmods:wood_siding:*>, <betterwithmods:wood_siding:*>], [stone, <ore:gearCopper>, stone], [stone, <betterwithmods:wooden_axle>, stone]]
	],
	<betterwithmods:wooden_axle> : [
		[[null, <minecraft:stick>, null], [<betterwithmods:rope>, <actuallyadditions:item_misc:5>, <betterwithmods:rope>], [null, <minecraft:stick>, null]]
	],
	<betterwithmods:wooden_gearbox> : [
		[[<ore:thinWood>, <betterwithmods:material>, <ore:thinWood>], [bp, <betterwithmods:wooden_axle>, bp], [<ore:thinWood>, <betterwithmods:material>, <ore:thinWood>]]
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
		[[bp, bp, null], [bp, stick, null], [null, stick, null]]
	],
	<embers:axe_copper> : [
		[[cp, cp, null], [cp, stick, null], [null, stick, null]]
	],
	<embers:axe_tin> : [
		[[tp, tp, null], [tp, stick, null], [null, stick, null]]
	],
	<embers:block_caminite_brick> : [
		[[<embers:brick_caminite>, <embers:brick_caminite>], [<embers:brick_caminite>, <embers:brick_caminite>]]
	],
	<embers:block_caminite_brick_slab> * 6 : [
		[[<embers:block_caminite_brick>, <embers:block_caminite_brick>, <embers:block_caminite_brick>]]
	],
	<embers:block_lantern> : [
		[[null, <ore:plateCopper>, null], [null, <embers:crystal_ember>, null], [null, <ore:plateCopper>, null]]
	],
	<embers:codex> : [
		[[null, <embers:archaic_brick>, null], [<embers:archaic_brick>, <embers:ancient_motive_core>, <embers:archaic_brick>], [null, <embers:archaic_brick>, null]]
	],
	<embers:copper_cell> : [
		[
			[<embers:stairs_caminite_brick>, <embers:plate_caminite>, <embers:stairs_caminite_brick>],
			[<embers:plate_caminite>, <ore:blockCopper>, <embers:plate_caminite>],
			[<embers:stairs_caminite_brick>, <embers:plate_caminite>, <embers:stairs_caminite_brick>]
		]
	],
	<embers:ember_activator> : [
		[[null, null, null], [<ore:plateTin>, <ore:plateTin>, <ore:plateTin>], [<embers:plate_caminite>, <minecraft:furnace>, <embers:plate_caminite>]]
	],
	<embers:ember_bore> : [
		[
			[<embers:stairs_caminite_brick>, <ore:plateCopper>, <embers:stairs_caminite_brick>],
			[<embers:stairs_caminite_brick>, <embers:mech_core>, <embers:stairs_caminite_brick>],
			[<ore:plateTin>, <ore:plateTin>, <ore:plateTin>]
		]
	],
	<embers:ember_detector> : [
		[[null, <ore:plateTin>, null], [<ore:plateCopper>, <primal:flint_point>, <ore:plateCopper>], [null, <ore:plateTin>, null]]
	],
	<embers:ember_emitter> : [
		[[null, <ore:rodCopper>, null], [<embers:plate_caminite>, <ore:rodCopper>, <embers:plate_caminite>], [<embers:plate_caminite>, <embers:plate_caminite>, <embers:plate_caminite>]]
	],
	<embers:ember_gauge> : [
		[[null, cp, null], [cp, <contenttweaker:material_part:4>, cp], [null, <ore:ingotTin>, null]]
	],
	<embers:ember_receiver> : [
		[[null, null, null], [<embers:plate_caminite>, null, <embers:plate_caminite>], [<ore:plateCopper>, <embers:plate_caminite>, <ore:plateCopper>]]
	],
	<embers:fluid_gauge> : [
		[[null, tp, null], [tp, <contenttweaker:material_part:4>, tp], [null, <ore:ingotTin>, null]]
	],
	<embers:hoe_bronze> : [
		[[bp, bp, null], [null, stick, null], [null, stick, null]]
	],
	<embers:hoe_copper> : [
		[[cp, cp, null], [null, stick, null], [null, stick, null]]
	],
	<embers:hoe_tin> : [
		[[tp, tp, null], [null, stick, null], [null, stick, null]]
	],
	<embers:mech_accessor> : [
		[[null, null, null], [<embers:stairs_caminite_brick>, <embers:plate_caminite>, tp], [null, null, null]]
	],
	<embers:mech_core> : [
		[[<ore:plateTin>, <ore:plateCopper>, <ore:plateTin>], [<ore:plateCopper>, <embers:archaic_circuit>, <ore:plateCopper>], [<ore:plateTin>, <ore:plateCopper>, <ore:plateTin>]]
	],
	<embers:mixer> : [
		[[<ore:plateTin>, null, <ore:plateTin>], [<ore:plateTin>, <embers:mech_core>, <ore:plateTin>], [<embers:plate_caminite>, <embers:plate_caminite>, <embers:plate_caminite>]]
	],
	<embers:pickaxe_bronze> : [
		[[bp, bp, bp], [null, stick, null], [null, stick, null]]
	],
	<embers:pickaxe_copper> : [
		[[cp, cp, cp], [null, stick, null], [null, stick, null]]
	],
	<embers:pickaxe_tin> : [
		[[tp, tp, tp], [null, stick, null], [null, stick, null]]
	],
	<embers:shovel_bronze> : [
		[[null, bp, null], [null, stick, null], [null, stick, null]]
	],
	<embers:shovel_copper> : [
		[[null, cp, null], [null, stick, null], [null, stick, null]]
	],
	<embers:shovel_tin> : [
		[[null, tp, null], [null, stick, null], [null, stick, null]]
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
			[<embers:plate_caminite>, <ore:blockBronze>, <embers:plate_caminite>],
			[<embers:plate_caminite>, null, <embers:plate_caminite>]
		]
	],
	<embers:stamper_base> : [
		[[<embers:plate_caminite>, <ceramics:clay_barrel:1>, <embers:plate_caminite>], [<embers:block_caminite_brick>, <ceramics:clay_barrel>, <embers:block_caminite_brick>]]
	],
	<embers:sword_bronze> : [
		[[null, bp, null], [null, bp, null], [null, stick, null]]
	],
	<embers:sword_copper> : [
		[[null, cp, null], [null, cp, null], [null, stick, null]]
	],
	<embers:sword_tin> : [
		[[null, tp, null], [null, tp, null], [null, stick, null]]
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
			[<ore:blockCopper>, <ore:blockBronze>, <ore:blockTin>],
			[<minecraft:coal_block>, <roots:aubergine_item>, <minecraft:coal_block>]
		]
	],

	//Iron Chests use plates
	<ironchest:iron_chest:3> : [
		[[<ore:plateCopper>, <ore:plateCopper>, <ore:plateCopper>], [<ore:plateCopper>, <minecraft:chest>, <ore:plateCopper>], [<ore:plateCopper>, <ore:plateCopper>, <ore:plateCopper>]]
	],
	<ironchest:wood_copper_chest_upgrade> : [
		[[<ore:plateCopper>, <ore:plateCopper>, <ore:plateCopper>], [<ore:plateCopper>, log, <ore:plateCopper>], [<ore:plateCopper>, <ore:plateCopper>, <ore:plateCopper>]]
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
			[<primal:planks:7>, <primal:planks:7>, <primal:planks:7>],
			[<primal:planks:7>, <minecraft:chest>, <primal:planks:7>],
			[<primal:planks:7>, <primal:planks:7>, <primal:planks:7>]
		]
	],
	<primal:storage_crate:8> : [
		[
			[<primal:planks:8>, <primal:planks:8>, <primal:planks:8>],
			[<primal:planks:8>, <minecraft:chest>, <primal:planks:8>],
			[<primal:planks:8>, <primal:planks:8>, <primal:planks:8>]
		]
	],
	<primal:storage_crate:9> : [
		[
			[<primal:planks:9>, <primal:planks:9>, <primal:planks:9>],
			[<primal:planks:9>, <minecraft:chest>, <primal:planks:9>],
			[<primal:planks:9>, <primal:planks:9>, <primal:planks:9>]
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
	]
} as IIngredient[][][][IItemStack];

for item in shapedRecipes {
	var recipesForItem = shapedRecipes[item];

	for recipe in recipesForItem {
		mods.recipestages.Recipes.addShaped(STAGE, item, recipe);
	}
}

//Tinkers'
mods.recipestages.Recipes.addShapedMirrored("one", <tconstruct:pattern> * 4, [[<ore:barkWood>, <ore:sidingWood>], [<ore:sidingWood>, <ore:barkWood>]]);
