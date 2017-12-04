import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

var STAGE = STAGES.two;

//Entire Mods into Stage two
var modIDs = [
	"farmingforblockheads",
	"uppers"
] as string[];
for id in modIDs {
    for item in loadedMods[id].items {
        mods.recipestages.Recipes.setRecipeStage(STAGE, item);
    }
}

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
	<betterbuilderswands:wandiron> : [
		[[null, null, ip], [null, <ore:logWood>, null], [<ore:logWood>, null, null]]
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
	<minecraft:bookshelf> : [
		[[plank, plank, plank], [<minecraft:book>, <minecraft:book>, <minecraft:book>], [plank, plank, plank]]
	],
	<minecraft:golden_axe> : [
		[[gp, gp, null], [gp, stick, null], [null, stick, null]]
	],
	<minecraft:golden_boots> : [
		[[gp, null, gp], [gp, null, gp]]
	],
	<minecraft:golden_chestplate> : [
		[[gp, null, gp], [gp, gp, gp], [gp, gp, gp]]
	],
	<minecraft:golden_helmet> : [
		[[gp, gp, gp], [gp, null, gp]]
	],
	<minecraft:golden_hoe> : [
		[[gp, gp, null], [null, stick, null], [null, stick, null]]
	],
	<minecraft:golden_leggings> : [
		[[gp, gp, gp], [gp, null, gp], [gp, null, gp]]
	],
	<minecraft:golden_pickaxe> : [
		[[gp, gp, gp], [null, stick, null], [null, stick, null]]
	],
	<minecraft:golden_shovel> : [
		[[null, gp, null], [null, stick, null], [null, stick, null]]
	],
	<minecraft:golden_sword> : [
		[[null, gp, null], [null, gp, null], [null, stick, null]]
	],
	<minecraft:hopper> : [
		[[ip, <minecraft:chest>,ip], [ip, bgear,ip], [null, ip, null]]
	],
	<minecraft:iron_axe> : [
		[[ip, ip, null], [ip, stick, null], [null, stick, null]]
	],
	<minecraft:iron_boots> : [
		[[ip, null, ip], [ip, null, ip]]
	],
	<minecraft:iron_chestplate> : [
		[[ip, null, ip], [ip, ip, ip], [ip, ip, ip]]
	],
	<minecraft:iron_helmet> : [
		[[ip, ip, ip], [ip, null, ip]]
	],
	<minecraft:iron_hoe> : [
		[[ip, ip, null], [null, stick, null], [null, stick, null]]
	],
	<minecraft:iron_leggings> : [
		[[ip, ip, ip], [ip, null, ip], [ip, null, ip]]
	],
	<minecraft:iron_pickaxe> : [
		[[ip, ip, ip], [null, stick, null], [null, stick, null]]
	],
	<minecraft:iron_shovel> : [
		[[null, ip, null], [null, stick, null], [null, stick, null]]
	],
	<minecraft:iron_sword> : [
		[[null, ip, null], [null, ip, null], [null, stick, null]]
	],
	<minecraft:piston> : [
		[[<ore:sidingWood>, <ore:sidingWood>, <ore:sidingWood>], [cobblestone, ip, cobblestone], [cobblestone, <minecraft:redstone>, cobblestone]]
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
		[[ip, <actuallyadditions:item_fertilizer>, null], [ip, <minecraft:bucket>, ip], [null, ip, null]]
	],
	<prospectors:prospector_low> : [
		[[null, <minecraft:coal:*>, <ore:blockGlass>], [null, <ore:logWood>, <minecraft:coal:*>], [<ore:logWood>, null, null]]
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
		[[null, <roots:petal_dust>.withTag({spell: "spell_orange_tulip"}), null], [null, <embers:ancient_motive_core>, null], [null, <minecraft:hopper>, null]]
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
		[[ip, stick, ip], [ip, stick, ip], [null, stick, null]]
	],

	//Iron Chests
	//Iron Chests use plates
	<ironchest:copper_iron_chest_upgrade> : [
		[[ip, ip, ip], [ip, cp, ip], [ip, ip, ip]]
	],
	<ironchest:copper_silver_chest_upgrade> : [
		[[sp, sp, sp], [sp, cp, sp], [sp, sp, sp]]
	],
	<ironchest:iron_chest:1> : [
		[[gp, gp, gp], [gp, <minecraft:chest>, gp], [gp, gp, gp]]
	],
	<ironchest:iron_chest:4> : [
		[[sp, sp, sp], [sp, <minecraft:chest>, sp], [sp, sp, sp]]
	],
	<ironchest:iron_chest> : [
		[[ip, ip, ip], [ip, <minecraft:chest>, ip], [ip, ip, ip]]
	],
	<ironchest:iron_gold_chest_upgrade> : [
		[[gp, gp, gp], [gp, ip, gp], [gp, gp, gp]]
	],
	<ironchest:silver_gold_chest_upgrade> : [
		[[gp, gp, gp], [gp, sp, gp], [gp, gp, gp]]
	],
	<ironchest:wood_iron_chest_upgrade> : [
		[[ip, ip, ip], [ip, log, ip], [ip, ip, ip]]
	],

	//Astral
	<astralsorcery:itemskyresonator> : [
		[
			[null, <astralsorcery:itemcraftingcomponent>, null],
			[<ore:stoneMarble>, <ceramics:clay_bucket>.withTag({fluids: {FluidName: "astralsorcery.liquidstarlight", Amount: 1000}}), <ore:stoneMarble>],
			[null, <ore:rodBronze>, null]
		]
	],
	<astralsorcery:itemskyresonator> : [
		[
			[null, <astralsorcery:itemcraftingcomponent>, null],
			[<ore:stoneMarble>, <forge:bucketfilled>.withTag({FluidName: "astralsorcery.liquidstarlight", Amount: 1000}), <ore:stoneMarble>],
			[null, <ore:rodBronze>, null]
		]
	],
	<astralsorcery:itemwand> : [
		[
			[null, <astralsorcery:itemcraftingcomponent>, <minecraft:ender_pearl>],
			[null, <ore:stoneMarble>, <astralsorcery:itemcraftingcomponent>],
			[<ore:stoneMarble>, null, null]
		]
	],

	//Weirding Gadget
	<weirdinggadget:weirding_gadget> : [
		[
			[<ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>],
			[<ore:blockGold>, <minecraft:ender_pearl>, <ore:blockGold>],
			[<ore:blockGold>, <ore:blockGold>, <ore:blockGold>]
		]
	],

	//InfoItems
	<infoaccessories:info_accessory:2> : [
		[[null, <twilightforest:ironwood_ingot>, null], [<twilightforest:ironwood_ingot>, <minecraft:compass>, <twilightforest:ironwood_ingot>], [null, tgear, null]]
	],
	<infoaccessories:info_accessory:6> : [
		[
			[null, <twilightforest:torchberries>, null],
			[<twilightforest:twilight_plant:8>, <twilightforest:magic_map_empty>, <twilightforest:twilight_sapling>],
			[null, <twilightforest:twilight_sapling:1>, null]
		]
	],
	<infoaccessories:info_accessory> : [
		[[null, <abyssalcraft:dsbutton>, null], [<twilightforest:firefly_jar>, <minecraft:clock>, <twilightforest:firefly_jar>], [null, tgear, null]]
	],
	<minecraft:clock> : [
		[[<minecraft:dye:4>, gp, <minecraft:dye:4>], [gp, <minecraft:dye:4>, gp], [<minecraft:dye:4>, gp, <minecraft:dye:4>]]
	],
	<minecraft:compass> : [
		[[null, ip, null], [ip, <tconstruct:arrow_head>.withTag({Material: "iron"}), ip], [null, ip, null]]
	],

	//Tinkers'
	<tconstruct:seared_furnace_controller> : [
		[
			[<tconstruct:materials>, <tconstruct:materials>, <tconstruct:materials>],
			[<tconstruct:materials>, <embers:ember_cluster>, <tconstruct:materials>],
			[<tconstruct:materials>, <minecraft:furnace>, <tconstruct:materials>]
		]
	],
	<tconstruct:smeltery_controller> : [
		[
			[<tconstruct:materials>, <tconstruct:materials>, <tconstruct:materials>],
			[<tconstruct:materials>, <embers:ember_cluster>, <tconstruct:materials>],
			[<tconstruct:materials>, <tconstruct:materials>, <tconstruct:materials>]
		]
	],
	<tconstruct:tinker_tank_controller> : [
		[
			[<tconstruct:materials>, <tconstruct:materials>, <tconstruct:materials>],
			[<tconstruct:materials>, <embers:ember_cluster>, <tconstruct:materials>],
			[<tconstruct:materials>, <minecraft:bucket>, <tconstruct:materials>]
		]
	],

	//Recipes to allow lift in Stage2
	<betterwithmods:anchor> : [
		[[null, ip, null], [<ore:stone>, <ore:stone>, <ore:stone>]]
	],
	<betterwithmods:material:34> : [
		[[<minecraft:lever>, null], [gp, null]]
	],
	<betterwithmods:single_machine:1> : [
		[[plank, ip, plank], [<ore:gearWood>, <betterwithmods:material:34>, <ore:gearWood>], [plank, ip, plank]]
	],

	//Stage 2 Easier Gearbox and Axle
	<betterwithmods:wooden_axle> : [
		[[null, <minecraft:stick>, null], [<betterwithmods:rope>, <actuallyadditions:item_misc:5>, <betterwithmods:rope>], [null, <minecraft:stick>, null]]
	],
	<betterwithmods:wooden_gearbox> : [
		[[<ore:mouldingWood>, <betterwithmods:material>, <ore:mouldingWood>], [bp, <betterwithmods:wooden_axle>, bp], [<ore:mouldingWood>, <betterwithmods:material>, <ore:mouldingWood>]]
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
	],

	//Embers Stage 2
	<embers:axe_dawnstone> : [
		[[dp, dp, null], [dp, stick, null], [null, stick, null]]
	],
	<embers:cinder_plinth> : [
		[[null, ip, null], [ip, <minecraft:furnace>, ip], [ip, <embers:block_caminite_brick>, ip]]
	],
	<embers:hoe_dawnstone> : [
		[[dp, dp, null], [null, stick, null], [null, stick, null]]
	],
	<embers:pickaxe_dawnstone> : [
		[[dp, dp, dp], [null, stick, null], [null, stick, null]]
	],
	<embers:shovel_dawnstone> : [
		[[null, dp, null], [null, stick, null], [null, stick, null]]
	],
	<embers:sword_dawnstone> : [
		[[null, dp, null], [null, dp, null], [null, stick, null]]
	]
} as IIngredient[][][][IItemStack];

for item, recipesForItem in shapedRecipes {
	for recipe in recipesForItem {
		mods.recipestages.Recipes.addShaped(STAGE, item, recipe);
	}
}


//TODO
mods.recipestages.Recipes.setRecipeStage("three", <minecraft:cauldron>);
mods.recipestages.Recipes.setRecipeStage("three", <minecraft:milk_bucket>);
mods.recipestages.Recipes.setRecipeStage("three", <minecraft:lava_bucket>);
mods.recipestages.Recipes.setRecipeStage("three", <minecraft:water_bucket>);
mods.recipestages.Recipes.setRecipeStage("three", <minecraft:name_tag>);
mods.recipestages.Recipes.setRecipeStage("three", <minecraft:tripwire_hook>);
mods.recipestages.Recipes.setRecipeStage("three", <minecraft:lapis_block>);
mods.recipestages.Recipes.setRecipeStage("three", <minecraft:dye:4>);

////
//
// TO DO
//
////

mods.recipestages.Recipes.setRecipeStage("two", <cyclicmagic:block_fragile_weak>);
mods.recipestages.Recipes.setRecipeStage("two", <cyclicmagic:ender_lightning>);
mods.recipestages.Recipes.setRecipeStage("two", <cyclicmagic:water_freezer>);
mods.recipestages.Recipes.setRecipeStage("two", <cyclicmagic:apple_lapis>);
mods.recipestages.Recipes.setRecipeStage("two", <cyclicmagic:spikes_iron>);
mods.recipestages.Recipes.setRecipeStage("two", <cyclicmagic:horse_upgrade_variant>);
mods.recipestages.Recipes.setRecipeStage("two", <cyclicmagic:tool_spawn_inspect>);
mods.recipestages.Recipes.setRecipeStage("two", <cyclicmagic:block_fragile>);
mods.recipestages.Recipes.setRecipeStage("two", <cyclicmagic:tool_torch_launcher>);
mods.recipestages.Recipes.setRecipeStage("two", <cyclicmagic:mattock>);
mods.recipestages.Recipes.setRecipeStage("two", <cyclicmagic:tool_rotate>);
mods.recipestages.Recipes.setRecipeStage("two", <cyclicmagic:tool_trade>);
mods.recipestages.Recipes.setRecipeStage("two", <cyclicmagic:block_soundproofing>);
mods.recipestages.Recipes.setRecipeStage("two", <cyclicmagic:block_fragile_auto>);
mods.recipestages.Recipes.setRecipeStage("two", <cyclicmagic:food_step>);
mods.recipestages.Recipes.setRecipeStage("two", <cyclicmagic:tool_spelunker>);
mods.recipestages.Recipes.setRecipeStage("two", <cyclicmagic:charm_water>);
mods.recipestages.Recipes.setRecipeStage("two", <cyclicmagic:charm_speed>);
mods.recipestages.Recipes.setRecipeStage("two", <cyclicmagic:charm_antidote>);
mods.recipestages.Recipes.setRecipeStage("two", <cyclicmagic:block_fishing>);
mods.recipestages.Recipes.setRecipeStage("two", <cyclicmagic:tool_harvest_crops>);
mods.recipestages.Recipes.setRecipeStage("two", <cyclicmagic:ender_dungeon>);
mods.recipestages.Recipes.setRecipeStage("two", <cyclicmagic:ender_dungeon>);
mods.recipestages.Recipes.setRecipeStage("two", <cyclicmagic:ender_dungeon>);
mods.recipestages.Recipes.setRecipeStage("two", <cyclicmagic:ender_dungeon>);
mods.recipestages.Recipes.setRecipeStage("two", <cyclicmagic:ender_dungeon>);

//Recipes needed for this stage - Create later
mods.recipestages.Recipes.setRecipeStage("two", <minecraft:spectral_arrow>);
mods.recipestages.Recipes.setRecipeStage("two", <minecraft:tipped_arrow:*>);
mods.recipestages.Recipes.setRecipeStage("two", <betterwithmods:broadhead_arrow>);
mods.recipestages.Recipes.setRecipeStage("two", <betterwithaddons:material>);
mods.recipestages.Recipes.setRecipeStage("two", <betterwithaddons:greatarrow>);
mods.recipestages.Recipes.setRecipeStage("two", <betterwithaddons:bundle:*>);
mods.recipestages.Recipes.setRecipeStage("two", <enderutilities:enderarrow>);
mods.recipestages.Recipes.setRecipeStage("two", <primal:arrow_quartz>);
mods.recipestages.Recipes.setRecipeStage("two", <primal:arrow_torch_nether>);
mods.recipestages.Recipes.setRecipeStage("two", <primal:arrow_torch_redstone>);
mods.recipestages.Recipes.setRecipeStage("two", <quark:arrow_ender>);
mods.recipestages.Recipes.setRecipeStage("two", <quark:arrow_explosive>);
mods.recipestages.Recipes.setRecipeStage("two", <betterwithmods:material:43>);
mods.recipestages.Recipes.setRecipeStage("two", <primal:ironwood_bow>);
mods.recipestages.Recipes.setRecipeStage("two", <primal:corypha_bow>);
mods.recipestages.Recipes.setRecipeStage("two", <abyssalcraft:corbow>);
mods.recipestages.Recipes.setRecipeStage("two", <betterwithmods:composite_bow>);
mods.recipestages.Recipes.setRecipeStage("two", <betterwithaddons:greatbow>);
mods.recipestages.Recipes.setRecipeStage("two", <enderutilities:enderbow>);
mods.recipestages.Recipes.setRecipeStage("two", <totemic:baykok_bow>);
mods.recipestages.Recipes.setRecipeStage("two", <natura:materials:5>);

//Steve's Carts Engine for End of Stage 2
recipes.remove(<stevescarts:cartmodule>);
//Recipe now exists in Astral Sorcery
//mods.recipestages.Recipes.addShaped("two", <stevescarts:cartmodule>, [[<ore:gearFiery>, <minecraft:sticky_piston>, <ore:gearFiery>], [<minecraft:ghast_tear>, <twilightforest:tower_device:12>, <minecraft:ghast_tear>], [<ore:rodSteeleaf>, <minecraft:sticky_piston>, <ore:rodSteeleaf>]]);
