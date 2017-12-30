import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

//recipes.addShapeless(, []);

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
	<abyssalcraft:dltslab1> * 3 : [
		[[<abyssalcraft:dltplank>, <abyssalcraft:dltplank>, <abyssalcraft:dltplank>]]
	],
	<primal:slab_yew> * 3 : [
		[[<primal:planks:1>, <primal:planks:1>, <primal:planks:1>]]
	],
	<actuallyadditions:block_compost> : [
		[
			[<betterwithmods:wicker>, null, <betterwithmods:wicker>],
			[<betterwithmods:wicker>, null, <betterwithmods:wicker>],
			[<betterwithmods:wicker>, <immcraft:chest>, <betterwithmods:wicker>]
		]
	],
	<betterwithaddons:bolt:1> : [
		//Bolts use spindle instead of moulding
		[
			[<minecraft:vine>, <minecraft:vine>, <minecraft:vine>],
			[<minecraft:vine>, <betterwithaddons:spindle>, <minecraft:vine>],
			[<minecraft:vine>, <minecraft:vine>, <minecraft:vine>]
		]
	],
	<betterwithaddons:bolt:3> : [
		//Bolts use spindle instead of moulding
		[
			[<minecraft:leather>, <minecraft:leather>, <minecraft:leather>],
			[<minecraft:leather>, <betterwithaddons:spindle>, <minecraft:leather>],
			[<minecraft:leather>, <minecraft:leather>, <minecraft:leather>]
		]
	],
	<betterwithaddons:bolt:6> : [
		//Bolts use spindle instead of moulding
		[
			[<minecraft:string>, <minecraft:string>, <minecraft:string>],
			[<minecraft:string>, <betterwithaddons:spindle>, <minecraft:string>],
			[<minecraft:string>, <minecraft:string>, <minecraft:string>]
		]
	],
	<betterwithaddons:spindle> : [
		[[<minecraft:stick>], [<minecraft:stick>], [<minecraft:stick>]]
	],
	<betterwithmods:material> : [
		[
			[<totemic:buffalo_items:1>, <totemic:cedar_plank>, <totemic:buffalo_items:1>],
			[<totemic:cedar_plank>, null, <totemic:cedar_plank>],
			[<totemic:buffalo_items:1>, <totemic:cedar_plank>, <totemic:buffalo_items:1>]
		]
	],
	<betterwithmods:wicker> : [
		[[<minecraft:reeds>, <minecraft:reeds>, null], [<minecraft:reeds>, <minecraft:reeds>, null]]
	],
	<cyclicmagic:block_fragile> : [
		[[stick, null, stick], [null, stick, null], [stick, null, stick]]
	],
	<cyclicmagic:block_fragile_auto> : [
		[[<minecraft:dirt:*>, <cyclicmagic:block_fragile>]]
	],
	<cyclicmagic:tool_harvest_leaves> : [
		[[null, str, <minecraft:stone_axe>], [null, stick, str], [stick, null, null]]
	],
	<minecraft:stone_slab2> * 3 : [
		[[<minecraft:red_sandstone>, <minecraft:red_sandstone>, <minecraft:red_sandstone>]]
	],
	<minecraft:stone_slab:1> * 3 : [
		[[<minecraft:sandstone>, <minecraft:sandstone>, <minecraft:sandstone>]]
	],
	<minecraft:stone_slab:3> * 3 : [
		[[<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>]]
	],
	<minecraft:stone_slab:4> * 3 : [
		[[<minecraft:brick_block>, <minecraft:brick_block>, <minecraft:brick_block>]]
	],
	<minecraft:stone_slab:5> * 3 : [
		[[<minecraft:stonebrick>, <minecraft:stonebrick>, <minecraft:stonebrick>]]
	],
	<minecraft:stone_slab:7> * 3 : [
		[[<minecraft:quartz_block>, <minecraft:quartz_block>, <minecraft:quartz_block>]]
	],
	<minecraft:stone_slab> * 3 : [
		[[<minecraft:stone>, <minecraft:stone>, <minecraft:stone>]]
	],
	<minecraft:stone_sword> : [
		[[cobblestone], [cobblestone], [stick]]
	],
	<minecraft:wooden_slab:1> * 3 : [
		[[<minecraft:planks:1>, <minecraft:planks:1>, <minecraft:planks:1>]]
	],
	<minecraft:wooden_slab:2> * 3 : [
		[[<minecraft:planks:2>, <minecraft:planks:2>, <minecraft:planks:2>]]
	],
	<minecraft:wooden_slab:3> * 3 : [
		[[<minecraft:planks:3>, <minecraft:planks:3>, <minecraft:planks:3>]]
	],
	<minecraft:wooden_slab:4> * 3 : [
		[[<minecraft:planks:4>, <minecraft:planks:4>, <minecraft:planks:4>]]
	],
	<minecraft:wooden_slab:5> * 3 : [
		[[<minecraft:planks:5>, <minecraft:planks:5>, <minecraft:planks:5>]]
	],
	<minecraft:wooden_slab> * 3 : [
		[[<minecraft:planks>, <minecraft:planks>, <minecraft:planks>]]
	],
	<natura:nether_slab:1> * 3 : [
		[[<natura:nether_planks>, <natura:nether_planks>, <natura:nether_planks>]]
	],
	<natura:nether_slab:2> * 3 : [
		[[<natura:nether_planks:2>, <natura:nether_planks:2>, <natura:nether_planks:2>]]
	],
	<natura:nether_slab:3> * 3 : [
		[[<natura:nether_planks:3>, <natura:nether_planks:3>, <natura:nether_planks:3>]]
	],
	<natura:nether_slab> * 3 : [
		[[<natura:nether_planks:1>, <natura:nether_planks:1>, <natura:nether_planks:1>]]
	],
	<natura:overworld_slab2:1> * 3 : [
		[[<natura:overworld_planks:6>, <natura:overworld_planks:6>, <natura:overworld_planks:6>]]
	],
	<natura:overworld_slab2:2> * 3 : [
		[[<natura:overworld_planks:7>, <natura:overworld_planks:7>, <natura:overworld_planks:7>]]
	],
	<natura:overworld_slab2:3> * 3 : [
		[[<natura:overworld_planks:8>, <natura:overworld_planks:8>, <natura:overworld_planks:8>]]
	],
	<natura:overworld_slab2> * 3 : [
		[[<natura:overworld_planks:5>, <natura:overworld_planks:5>, <natura:overworld_planks:5>]]
	],
	<natura:overworld_slab:1> * 3 : [
		[[<natura:overworld_planks:1>, <natura:overworld_planks:1>, <natura:overworld_planks:1>]]
	],
	<natura:overworld_slab:2> * 3 : [
		[[<natura:overworld_planks:2>, <natura:overworld_planks:2>, <natura:overworld_planks:2>]]
	],
	<natura:overworld_slab:3> * 3 : [
		[[<natura:overworld_planks:3>, <natura:overworld_planks:3>, <natura:overworld_planks:3>]]
	],
	<natura:overworld_slab:4> * 3 : [
		[[<natura:overworld_planks:4>, <natura:overworld_planks:4>, <natura:overworld_planks:4>]]
	],
	<natura:overworld_slab> * 3 : [
		[[<natura:overworld_planks>, <natura:overworld_planks>, <natura:overworld_planks>]]
	],
	<primal:armor_wolf_body> : [
		[
			[<primal:pelt_wolf>, null, <primal:pelt_wolf>],
			[<primal:pelt_wolf>, <primal:pelt_wolf>, <primal:pelt_wolf>],
			[<primal:pelt_wolf>, <primal:pelt_wolf>, <primal:pelt_wolf>]
		]
	],
	<primal:armor_wolf_feet> : [
		[[<primal:pelt_wolf>, null, <primal:pelt_wolf>], [<primal:pelt_wolf>, null, <primal:pelt_wolf>]]
	],
	<primal:armor_wolf_head> : [
		[[<primal:pelt_wolf>, <primal:wolf_head_item>, <primal:pelt_wolf>], [<primal:pelt_wolf>, null, <primal:pelt_wolf>]]
	],
	<primal:armor_wolf_legs> : [
		[[<primal:pelt_wolf>, <primal:pelt_wolf>, <primal:pelt_wolf>], [<primal:pelt_wolf>, null, <primal:pelt_wolf>], [<primal:pelt_wolf>, null, <primal:pelt_wolf>]]
	],
	<primal:slab_ironwood> * 3 : [
		[[<primal:planks:0>, <primal:planks:0>, <primal:planks:0>]]
	],
	<primal:slat_acacia> : [
		[
			[<minecraft:wooden_slab:4>, <minecraft:wooden_slab:4>, <minecraft:wooden_slab:4>],
			[stick, stick, stick],
			[<minecraft:wooden_slab:4>, <minecraft:wooden_slab:4>, <minecraft:wooden_slab:4>]
		]
	],
	<primal:slat_bigoak> : [
		[
			[<minecraft:wooden_slab:5>, <minecraft:wooden_slab:5>, <minecraft:wooden_slab:5>],
			[stick, stick, stick],
			[<minecraft:wooden_slab:5>, <minecraft:wooden_slab:5>, <minecraft:wooden_slab:5>]
		]
	],
	<primal:slat_birch> : [
		[
			[<minecraft:wooden_slab:2>, <minecraft:wooden_slab:2>, <minecraft:wooden_slab:2>],
			[stick, stick, stick],
			[<minecraft:wooden_slab:2>, <minecraft:wooden_slab:2>, <minecraft:wooden_slab:2>]
		]
	],
	<primal:slat_corypha> : [
		[
			[<primal:slab_corypha>, <primal:slab_corypha>, <primal:slab_corypha>],
			[stick, stick, stick],
			[<primal:slab_corypha>, <primal:slab_corypha>, <primal:slab_corypha>]
		]
	],
	<primal:slat_ironwood> : [
		[
			[<primal:slab_ironwood>, <primal:slab_ironwood>, <primal:slab_ironwood>],
			[stick, stick, stick],
			[<primal:slab_ironwood>, <primal:slab_ironwood>, <primal:slab_ironwood>]
		]
	],
	<primal:slat_jungle> : [
		[
			[<minecraft:wooden_slab:3>, <minecraft:wooden_slab:3>, <minecraft:wooden_slab:3>],
			[stick, stick, stick],
			[<minecraft:wooden_slab:3>, <minecraft:wooden_slab:3>, <minecraft:wooden_slab:3>]
		]
	],
	<primal:slat_lacquer> : [
		[
			[<primal:slab_lacquer>, <primal:slab_lacquer>, <primal:slab_lacquer>],
			[stick, stick, stick],
			[<primal:slab_lacquer>, <primal:slab_lacquer>, <primal:slab_lacquer>]
		]
	],
	<primal:slat_oak> : [
		[
			[<minecraft:wooden_slab>, <minecraft:wooden_slab>, <minecraft:wooden_slab>],
			[stick, stick, stick],
			[<minecraft:wooden_slab>, <minecraft:wooden_slab>, <minecraft:wooden_slab>]
		]
	],
	<primal:slat_spruce> : [
		[
			[<minecraft:wooden_slab:1>, <minecraft:wooden_slab:1>, <minecraft:wooden_slab:1>],
			[stick, stick, stick],
			[<minecraft:wooden_slab:1>, <minecraft:wooden_slab:1>, <minecraft:wooden_slab:1>]
		]
	],
	<primal:barrel> : [
		[
			[<minecraft:planks>, null, <minecraft:planks>],
			[<minecraft:planks>, null, <minecraft:planks>],
			[<minecraft:planks>, <minecraft:wooden_slab>, <minecraft:planks>]
		]
	],
	<primal:barrel:1> : [
		[
			[<minecraft:planks:1>, null, <minecraft:planks:1>],
			[<minecraft:planks:1>, null, <minecraft:planks:1>],
			[<minecraft:planks:1>, <minecraft:wooden_slab:1>, <minecraft:planks:1>]
		]
	],
	<primal:barrel:2> : [
		[
			[<minecraft:planks:2>, null, <minecraft:planks:2>],
			[<minecraft:planks:2>, null, <minecraft:planks:2>],
			[<minecraft:planks:2>, <minecraft:wooden_slab:2>, <minecraft:planks:2>]
		]
	],
	<primal:barrel:3> : [
		[
			[<minecraft:planks:3>, null, <minecraft:planks:3>],
			[<minecraft:planks:3>, null, <minecraft:planks:3>],
			[<minecraft:planks:3>, <minecraft:wooden_slab:3>, <minecraft:planks:3>]
		]
	],
	<primal:barrel:4> : [
		[
			[<minecraft:planks:4>, null, <minecraft:planks:4>],
			[<minecraft:planks:4>, null, <minecraft:planks:4>],
			[<minecraft:planks:4>, <minecraft:wooden_slab:4>, <minecraft:planks:4>]
		]
	],
	<primal:barrel:5> : [
		[
			[<minecraft:planks:5>, null, <minecraft:planks:5>],
			[<minecraft:planks:5>, null, <minecraft:planks:5>],
			[<minecraft:planks:5>, <minecraft:wooden_slab:5>, <minecraft:planks:5>]
		]
	],
	<primal:barrel:6> : [
		[
			[<primal:planks>, null, <primal:planks>],
			[<primal:planks>, null, <primal:planks>],
			[<primal:planks>, <primal:slab_ironwood>, <primal:planks>]
		]
	],
	<primal:barrel:7> : [
		[
			[<primal:planks:1>, null, <primal:planks:1>],
			[<primal:planks:1>, null, <primal:planks:1>],
			[<primal:planks:1>, <primal:slab_yew>, <primal:planks:1>]
		]
	],
	<primal:barrel:8> : [
		[
			[<primal:planks:2>, null, <primal:planks:2>],
			[<primal:planks:2>, null, <primal:planks:2>],
			[<primal:planks:2>, <primal:slab_lacquer>, <primal:planks:2>]
		]
	],
	<primal:barrel:9> : [
		[
			[<primal:planks:3>, null, <primal:planks:3>],
			[<primal:planks:3>, null, <primal:planks:3>],
			[<primal:planks:3>, <primal:slab_corypha>, <primal:planks:3>]
		]
	],

	<roots:firestarter> : [
		[[<minecraft:coal:1>, null], [<primal_tech:fire_sticks>, <primal_tech:fire_sticks>]]
	],
	<rustic:ironwood_slab_item> * 3 : [
		[[<rustic:planks:1>, <rustic:planks:1>, <rustic:planks:1>]]
	],
	<rustic:olive_slab_item> * 3 : [
		[[<rustic:planks>, <rustic:planks>, <rustic:planks>]]
	],
	<spartanshields:shield_basic_stone> : [
		[[null, stone, null], [stone, <spartanshields:shield_basic_wood>, stone], [null, stone, null]]
	],
	<spartanshields:shield_basic_wood> : [
		[[null, plank, plank], [plank, plank, plank], [plank, plank, null]]
	],
	<tcomplement:melter:8> : [
		[
			[<tconstruct:seared:3>, <ceramics:clay_barrel:1>, <tconstruct:seared:3>],
			[<tconstruct:seared:3>, <ceramics:clay_barrel:1>, <tconstruct:seared:3>],
			[<tconstruct:seared:3>, <primal_tech:stone_grill>, <tconstruct:seared:3>]
		]
	],
	<tcomplement:melter> : [
		[
			[<tconstruct:seared:3>, <primal_tech:charcoal_hopper>, <tconstruct:seared:3>],
			[<tconstruct:seared:3>, <primal_tech:stone_grill>, <tconstruct:seared:3>],
			[<tconstruct:seared:3>, <roots:chiseled_runestone>, <tconstruct:seared:3>]
		]
	],
	<tcomplement:porcelain_melter:8> : [
		[
			[<ceramics:unfired_clay:5>, <ceramics:clay_barrel:1>, <ceramics:unfired_clay:5>],
			[<ceramics:unfired_clay:5>, <ceramics:clay_barrel:1>, <ceramics:unfired_clay:5>],
			[<ceramics:unfired_clay:5>, <primal_tech:stone_grill>, <ceramics:unfired_clay:5>]
		]
	],
	<tcomplement:porcelain_melter> : [
		[
			[<ceramics:unfired_clay:5>, <primal_tech:charcoal_hopper>, <ceramics:unfired_clay:5>],
			[<ceramics:unfired_clay:5>, <primal_tech:stone_grill>, <ceramics:unfired_clay:5>],
			[<ceramics:unfired_clay:5>, <roots:chiseled_runestone>, <ceramics:unfired_clay:5>]
		]
	],
	<tconstruct:firewood_slab:1> * 3 : [
		[[<tconstruct:firewood:1>, <tconstruct:firewood:1>, <tconstruct:firewood:1>]]
	],
	<tconstruct:firewood_slab> * 3 : [
		[[<tconstruct:firewood>, <tconstruct:firewood>, <tconstruct:firewood>]]
	],
	<traverse:fir_slab> * 3 : [
		[[<traverse:fir_planks>, <traverse:fir_planks>, <traverse:fir_planks>]]
	]
} as IIngredient[][][][IItemStack];

for item, recipesForItem in shapedRecipes {
	for recipe in recipesForItem {
		recipes.addShaped(item, recipe);
	}
}

//Actually Additions
/*
actuallyadditions:item_misc:12
actuallyadditions:item_misc:9
actuallyadditions:item_food:17
actuallyadditions:block_compost
actuallyadditions:item_misc:1
actuallyadditions:item_fertilizer
actuallyadditions:item_coffee_seed
actuallyadditions:item_flax_seed
actuallyadditions:item_canola_seed
actuallyadditions:item_rice_seed
actuallyadditions:item_coffee_beans
actuallyadditions:item_misc:21
actuallyadditions:item_misc:22
actuallyadditions:item_misc:20
actuallyadditions:item_misc:17
actuallyadditions:item_misc:13
*/
