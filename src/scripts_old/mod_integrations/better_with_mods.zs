import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

import mods.betterwithaddons.Condensed;
import mods.betterwithaddons.SoakingBox;
import mods.betterwithaddons.Spindle;
import mods.betterwithmods.Cauldron;
import mods.betterwithmods.Crucible;
import mods.betterwithmods.Kiln;
import mods.betterwithmods.Mill;
import mods.betterwithmods.MiniBlocks;
import mods.betterwithmods.Saw;
import mods.betterwithmods.Turntable;

/*
	Kiln

	http://crafttweaker.readthedocs.io/en/latest/#Mods/Modtweaker/BetterWithMods/Kiln/
*/
Kiln.remove([<minecraft:bread>]);

/*
	Turntable

	http://crafttweaker.readthedocs.io/en/latest/#Mods/Modtweaker/BetterWithMods/Turntable/
*/
Turntable.builder()
	.buildRecipe(<ceramics:clay_barrel_unfired>, [])
	.setProductState(<ceramics:clay_barrel_unfired:1>)
	.build();
Turntable.builder()
	.buildRecipe(<ceramics:clay_barrel_unfired:1>, [])
	.setProductState(<ceramics:clay_bucket_block>)
	.build();

/*
	Mill

	http://crafttweaker.readthedocs.io/en/latest/#Mods/Modtweaker/BetterWithMods/Mill/
*/
//Rice Flour
Mill.addRecipe([<actuallyadditions:item_food:16>], [<betterwithaddons:japanmat:4>]);

Mill.addRecipe([<minecraft:flint>, <minecraft:clay_ball>, <pickletweaks:dye_powder>], [<ceramics:unfired_clay:4>]);
Mill.addRecipe([<minecraft:sand>, <minecraft:clay_ball>, <minecraft:gravel>], [<tconstruct:soil> * 2]);

//THERE CAN BE ONLY 1 FLOUR!
Mill.remove([<betterwithmods:raw_pastry:3>]);
Mill.addRecipe([<minecraft:wheat>], [<horsepower:flour>]);
Mill.addRecipe([<natura:materials>], [<natura:materials:1>]);

Mill.addRecipe([<actuallyadditions:block_misc:3>], [<actuallyadditions:item_dust:7>]);
Mill.addRecipe([<materialpart:aquamarine:ore_minecraft_stone>], [<astralsorcery:itemcraftingcomponent> * 1]);

Mill.addRecipe([<primal_tech:flint_block>], [<minecraft:flint> * 2]);

Mill.addRecipe([<charcoalblock:charcoal_block>], [<minecraft:coal:1> * 9]);
Mill.addRecipe([<primal_tech:charcoal_block>], [<minecraft:coal:1> * 4]);
Mill.addRecipe([<minecraft:coal_block>], [<minecraft:coal> * 9]);

Mill.addRecipe([<minecraft:cobblestone>], [<tconstruct:stone_stick> * 1]);

Mill.addRecipe([<astralsorcery:itemcraftingcomponent:1>], [<astralsorcery:itemcraftingcomponent:2>]);

Mill.addRecipe([<minecraft:quartz>], [<actuallyadditions:item_dust:5>]);

Mill.addRecipe([<primal:sharp_bone>], [<primal:bone_knapp>]);

Mill.addRecipe([<primal:shark_tooth>], [<minecraft:dye:15> * 2]);

for bark in <ore:barkWood>.items {
	Mill.addRecipe([bark], [<primal:tannin_ground> * 2]);
}

//Remove Cut Leather
Mill.remove([<betterwithmods:material:33>]);

/*
	Soaking Box

	https://github.com/DaedalusGame/BetterWithAddons/wiki/CraftTweaker-Support#soaking-unit
*/
SoakingBox.remove(<betterwithaddons:log_mulberry>);
SoakingBox.remove(<betterwithaddons:japanmat:36>);

/*
	Spindle

	https://github.com/DaedalusGame/BetterWithAddons/wiki/CraftTweaker-Support#spindle
*/
Spindle.add([<primal:leather_cordage>], <primal:leather_strip> * 4, false);

/*
	Condensed
*/
//Using Spindle Drops Spindle when crafted
Condensed.setContainer(<betterwithaddons:bolt>, <betterwithaddons:spindle>);

/*
	Cauldron

	http://crafttweaker.readthedocs.io/en/latest/#Mods/Modtweaker/BetterWithMods/Cauldron/
*/
//==============================
//Remove
//Removing by output also requires the ammount of the output item that is given
Cauldron.remove([<betterwithmods:material:12>]);
Cauldron.remove([<betterwithmods:material:12> * 2]);
Cauldron.remove([<betterwithmods:material:12> * 3]);
Cauldron.remove([<betterwithmods:material:12> * 4]);
Cauldron.remove([<betterwithmods:material:6>]);

Cauldron.remove([<rustic:tallow>]);

//Remove Cut Leather (Tanned) from Cauldron and oredict
Cauldron.remove([<betterwithmods:material:32> * 2]);

//Remove Pot As recipes because a single recipe with all wooden items is confusing
Cauldron.remove([<betterwithmods:material:21>]);
Cauldron.remove([<betterwithmods:material:21> * 2]);

//==============================
//Unstoked
//Cauldron.addUnstoked(IIngredient[] inputs, IItemStack[] outputs);
//==============================
Cauldron.addUnstoked([<minecraft:rotten_flesh>, <minecraft:rotten_flesh>, <minecraft:rotten_flesh>], [<betterwithmods:material:12>]);

var pelts as IIngredient[] = [
	<minecraft:rabbit_hide>,
	<primal:pelt_animal>,
	<primal:pelt_dog>,
	<primal:pelt_gator>,
	<primal:pelt_ovis>,
	<primal:pelt_pig>,
	<primal:pelt_shark>,
	<primal:pelt_sheep>,
	<primal:pelt_wolf>
];

var largePelts as IIngredient[] = [
	<primal:pelt_animal_large>,
	<primal:pelt_bear_black>,
	<primal:pelt_bear_brown>,
	<primal:pelt_bear_polar>,
	<primal:pelt_cow>,
	<primal:pelt_donkey>,
	<primal:pelt_horse>,
	<primal:pelt_llama>,
	<primal:pelt_mooshroom>,
	<primal:pelt_mule>
];

for pelt in pelts {
	Cauldron.addUnstoked([pelt], [<betterwithmods:material:12>]);
}
for largePelt in largePelts {
	Cauldron.addUnstoked([largePelt], [<betterwithmods:material:12> * 2]);
}

Cauldron.addUnstoked([<primal:pigman_hide_raw>], [<betterwithmods:material:12> * 2]);
Cauldron.addUnstoked([<animalium:wild_dog_pelt>], [<betterwithmods:material:12>]);
Cauldron.addUnstoked([<totemic:buffalo_items>], [<betterwithmods:material:12> * 2]);
Cauldron.addUnstoked([<primal:wolf_head_item>], [<betterwithmods:material:12>, <primal:bone_knapp>]);

//Remake laxative recipe using foodFlour instead of BWM flour only
//Cauldron.remove([<betterwithaddons:laxative> * 2]);
Cauldron.addUnstoked([<betterwithaddons:food_mulberry> * 3, <minecraft:sugar>, <ore:foodFlour>], [<betterwithaddons:laxative>]);

//==============================
//Stoked
//Cauldron.addStoked(IIngredient[] inputs, IItemStack[] outputs);
//==============================
Cauldron.addStoked([<ore:logWood>], [<betterwithmods:material:21> * 2]);
Cauldron.addStoked([<ore:plankWood> * 4], [<betterwithmods:material:21>]);
Cauldron.addStoked([<ore:dustWood> * 16], [<betterwithmods:material:21>]);


/*
	Crucible

	http://crafttweaker.readthedocs.io/en/latest/#Mods/Modtweaker/BetterWithMods/Crucible/
*/
Crucible.remove([<betterwithaddons:decomat:3>]);
Crucible.remove([<betterwithaddons:decomat:3> * 2]);
Crucible.remove([<minecraft:glass>]);
Crucible.remove([<minecraft:iron_ingot> * 3]);

/*
	Saw

	http://crafttweaker.readthedocs.io/en/latest/#Mods/Modtweaker/BetterWithMods/Saw/
*/
var sawRemovals as IItemStack[][] = [
	//Sawing Corners only give 1 gear instead of 2
	[<betterwithmods:material> * 2],

	[<betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "oak"}, Name: "minecraft:planks"}}), <betterwithmods:material:9>, <betterwithmods:material>, <minecraft:iron_ingot> * 2],
	[<betterwithmods:material:32> * 3, <betterwithmods:material:9>, <betterwithmods:material>, <betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "oak"}, Name: "minecraft:planks"}}) * 2],
	[<betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "oak"}, Name: "minecraft:planks"}}) * 3, <betterwithmods:material> * 3, <betterwithmods:material:34>],
	[<betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "oak"}, Name: "minecraft:planks"}}) * 3, <minecraft:iron_ingot>, <betterwithmods:material>, <betterwithmods:material:34>],
	[<betterwithmods:moulding_wood>.withTag({texture: {Properties: {variant: "oak"}, Name: "minecraft:planks"}}) * 3, <betterwithmods:material>, <minecraft:wooden_pressure_plate>],
	[<betterwithmods:moulding_wood>.withTag({texture: {Properties: {variant: "oak"}, Name: "minecraft:planks"}}) * 6, <minecraft:diamond>]
];

for outputs in sawRemovals {
	Saw.remove(outputs);
}

// [Outputs] : [Inputs]
var miscSawRecipes as IIngredient[][IItemStack[]]  = {
	[<minecraft:stick> * 2]: [
		<minecraft:leaves:*>,
		<minecraft:leaves2:*>,
		<abyssalcraft:dltleaves>,
		<abyssalcraft:dreadleaves>,
		<betterwithmods:blood_leaves>,
		<betterwithaddons:leaves_luretree>,
		<betterwithaddons:leaves_mulberry>,
		<betterwithaddons:leaves_sakura>,
		<natura:overworld_leaves:*>,
		<natura:overworld_leaves2:*>,
		<natura:redwood_leaves>,
		<natura:nether_leaves:*>,
		<natura:nether_leaves2:*>,
		<rustic:leaves_apple>,
		<twilightforest:twilight_leaves:*>,
		<twilightforest:magic_leaves>,
		<totemic:cedar_leaves>,
		<traverse:fir_leaves>
		],
	[<betterwithmods:material>]: [
		MiniBlocks.getMiniBlock("corner", <ore:plankWood>)
	],
	[<minecraft:melon> * 9]: [
		<minecraft:melon_block>
	]
};

for sawOutputs, sawInputs in miscSawRecipes {
	for sawInput in sawInputs {
		for sawInputItem in sawInput.items {
			Saw.builder()
				.buildRecipe(sawInput, sawOutputs)
				.setInputBlockDrop(sawInputItem as IItemStack)
				.build();
		}
	}
}

/*
	Utils
*/
function createAllMiniBlockIngredient(item as IIngredient) as IIngredient {
	var allMiniBlocks as IIngredient = null;
	var miniBlockTypes as string[] = [
		"corner",
		"moulding",
		"siding"
	];

	for miniBlockType in miniBlockTypes {
		var miniBlock as IIngredient = MiniBlocks.getMiniBlock(miniBlockType, item);

		if (!isNull(miniBlock)) {
			if (isNull(allMiniBlocks)) {
				allMiniBlocks = miniBlock;
			} else {
				allMiniBlocks |= miniBlock;
			}
		}
	}

	return allMiniBlocks;
}
