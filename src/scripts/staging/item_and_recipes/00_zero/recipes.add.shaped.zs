#priority -2

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

var STAGE = STAGES.zero;

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
	<betterwithmods:material> : [
		[
			[<totemic:buffalo_items:1>, <totemic:cedar_plank>, <totemic:buffalo_items:1>],
			[<totemic:cedar_plank>, null, <totemic:cedar_plank>],
			[<totemic:buffalo_items:1>, <totemic:cedar_plank>, <totemic:buffalo_items:1>]
		]
	],
	<betterwithmods:wicker> : [
		[
			[<minecraft:reeds>, <minecraft:reeds>],
			[<minecraft:reeds>, <minecraft:reeds>]
		]
	],
	<betterwithmods:shaft> : [
		[
			[stick, <primal:plant_cordage>],
			[stick, <primal:plant_cordage>],
			[stick, <primal:plant_cordage>]
		]
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
	<traverse:blue_rock_cobblestone_slab> * 3 : [
		[[<traverse:blue_rock_cobblestone>, <traverse:blue_rock_cobblestone>, <traverse:blue_rock_cobblestone>]]
	],

	<traverse:blue_rock_slab> * 3 : [
	  	[[<traverse:blue_rock>, <traverse:blue_rock>, <traverse:blue_rock>]]
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
	<primal:slat_acacia> * 3 : [
		[
			[<minecraft:wooden_slab:4>, <minecraft:wooden_slab:4>, <minecraft:wooden_slab:4>],
			[stick, stick, stick],
			[<minecraft:wooden_slab:4>, <minecraft:wooden_slab:4>, <minecraft:wooden_slab:4>]
		]
	],
	<primal:slat_bigoak> * 3 : [
		[
			[<minecraft:wooden_slab:5>, <minecraft:wooden_slab:5>, <minecraft:wooden_slab:5>],
			[stick, stick, stick],
			[<minecraft:wooden_slab:5>, <minecraft:wooden_slab:5>, <minecraft:wooden_slab:5>]
		]
	],
	<primal:slat_birch> * 3 : [
		[
			[<minecraft:wooden_slab:2>, <minecraft:wooden_slab:2>, <minecraft:wooden_slab:2>],
			[stick, stick, stick],
			[<minecraft:wooden_slab:2>, <minecraft:wooden_slab:2>, <minecraft:wooden_slab:2>]
		]
	],
	<primal:slat_corypha> * 3 : [
		[
			[<primal:slab_corypha>, <primal:slab_corypha>, <primal:slab_corypha>],
			[stick, stick, stick],
			[<primal:slab_corypha>, <primal:slab_corypha>, <primal:slab_corypha>]
		]
	],
	<primal:slat_ironwood> * 3 : [
		[
			[<primal:slab_ironwood>, <primal:slab_ironwood>, <primal:slab_ironwood>],
			[stick, stick, stick],
			[<primal:slab_ironwood>, <primal:slab_ironwood>, <primal:slab_ironwood>]
		]
	],
	<primal:slat_jungle> * 3 : [
		[
			[<minecraft:wooden_slab:3>, <minecraft:wooden_slab:3>, <minecraft:wooden_slab:3>],
			[stick, stick, stick],
			[<minecraft:wooden_slab:3>, <minecraft:wooden_slab:3>, <minecraft:wooden_slab:3>]
		]
	],
	<primal:slat_lacquer> * 3 : [
		[
			[<primal:slab_lacquer>, <primal:slab_lacquer>, <primal:slab_lacquer>],
			[stick, stick, stick],
			[<primal:slab_lacquer>, <primal:slab_lacquer>, <primal:slab_lacquer>]
		]
	],
	<primal:slat_oak> * 3 : [
		[
			[<minecraft:wooden_slab>, <minecraft:wooden_slab>, <minecraft:wooden_slab>],
			[stick, stick, stick],
			[<minecraft:wooden_slab>, <minecraft:wooden_slab>, <minecraft:wooden_slab>]
		]
	],
	<primal:slat_spruce> * 3 : [
		[
			[<minecraft:wooden_slab:1>, <minecraft:wooden_slab:1>, <minecraft:wooden_slab:1>],
			[stick, stick, stick],
			[<minecraft:wooden_slab:1>, <minecraft:wooden_slab:1>, <minecraft:wooden_slab:1>]
		]
	],
	<primal:barrel> : [
		[
			[<ore:barrelPlank>, null, <ore:barrelPlank>],
			[<ore:barrelPlank>, null, <ore:barrelPlank>],
			[<ore:barrelPlank>, <ore:barrelSlab>, <ore:barrelPlank>]
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

	<primal:barrel_oak_lid> : [
		[
			[null, <ore:slabOak>, null],
			[<ore:slabOak>, null, <ore:slabOak>],
			[null, <ore:slabOak>, null]
		]
	],
	<primal:barrel_spruce_lid> : [
		[
			[null, <ore:slabSpruce>, null],
			[<ore:slabSpruce>, null, <ore:slabSpruce>],
			[null, <ore:slabSpruce>, null]
		]
	],
	<primal:barrel_birch_lid> : [
		[
			[null, <ore:slabBirch>, null],
			[<ore:slabBirch>, null, <ore:slabBirch>],
			[null, <ore:slabBirch>, null]
		]
	],
	<primal:barrel_jungle_lid> : [
		[
			[null, <ore:slabJungle>, null],
			[<ore:slabJungle>, null, <ore:slabJungle>],
			[null, <ore:slabJungle>, null]
		]
	],
	<primal:barrel_acacia_lid> : [
		[
			[null, <ore:slabAcacia>, null],
			[<ore:slabAcacia>, null, <ore:slabAcacia>],
			[null, <ore:slabAcacia>, null]
		]
	],
	<primal:barrel_dark_oak_lid> : [
		[
			[null, <ore:slabDarkOak>, null],
			[<ore:slabDarkOak>, null, <ore:slabDarkOak>],
			[null, <ore:slabDarkOak>, null]
		]
	],
	<primal:barrel_ironwood_lid> : [
		[
			[null, <primal:slab_ironwood>, null],
			[<primal:slab_ironwood>, null, <primal:slab_ironwood>],
			[null, <primal:slab_ironwood>, null]
		]
	],
	<primal:barrel_yew_lid> : [
		[
			[null, <primal:slab_yew>, null],
			[<primal:slab_yew>, null, <primal:slab_yew>],
			[null, <primal:slab_yew>, null]
		]
	],
	<primal:barrel_corypha_lid> : [
		[
			[null, <primal:slab_corypha>, null],
			[<primal:slab_corypha>, null, <primal:slab_corypha>],
			[null, <primal:slab_corypha>, null]
		]
	],
	<primal:barrel_lacquer_lid> : [
		[
			[null, <primal:slab_lacquer>, null],
			[<primal:slab_lacquer>, null, <primal:slab_lacquer>],
			[null, <primal:slab_lacquer>, null]
		]
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
			[<tconstruct:seared:3>, <primalchests:primal_chest_advanced>, <tconstruct:seared:3>]
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
			[<ceramics:unfired_clay:5>, <primalchests:primal_chest_advanced>, <ceramics:unfired_clay:5>]
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
	],

	//Water Strainer
	<waterstrainer:strainer_base> : [
		[
			[stick, null, stick],
			[plank, <primal_tech:wooden_hopper>, plank],
			[plank, <immcraft:chest>, plank]
		]
	],
	<waterstrainer:garden_trowel> : [
		[
			[null, null, <minecraft:dirt>],
			[null, <minecraft:flint>, null],
			[stick, null, null]
		]
	],

	//Improved Backpacks
	<improvedbackpacks:blank_upgrade> : [
		[
			[null, leather, null],
			[stick, plank, stick],
			[null, leather, null]
		]
	],
	<improvedbackpacks:upgrade> : [
		[
			[null, leather, null],
			[log, <improvedbackpacks:blank_upgrade>, log],
			[null, log, null]
		]
	],
	<improvedbackpacks:upgrade:1> : [
		[
			[null, leather, null],
			[<minecraft:stone>, <improvedbackpacks:upgrade>, <minecraft:stone>],
			[null, <minecraft:stone>, null]
		]
	],

	//Totemic
	<totemic:eagle_bone_whistle> : [
		[
			[null, <totemic:eagle_drops>],
			[<totemic:eagle_drops:1>, null]
		]
	],

	//Animalium
	<animalium:dog_boots>: [
		[
			[<betterwithaddons:bundle>, <animalium:wild_dog_pelt>, <betterwithaddons:bundle>],
			[<animalium:wild_dog_pelt>, <minecraft:leather_boots>, <animalium:wild_dog_pelt>],
			[<ore:slimeball>, <animalium:wild_dog_pelt>, <ore:slimeball>]
		]
	],

	//Nature's Compass
	<naturescompass:naturescompass>: [
		[
			[<ore:treeSapling>, <ore:logWood>, <ore:treeSapling>],
			[<ore:logWood>, <primal:bone_knapp>, <ore:logWood>],
			[<ore:treeSapling>, <ore:logWood>, <ore:treeSapling>]
		]
	]

};

for item, recipesForItem in shapedRecipes {
	for recipe in recipesForItem {
		mods.recipestages.Recipes.addShaped(STAGE, item, recipe);
	}
}
