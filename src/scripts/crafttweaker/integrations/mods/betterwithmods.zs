/*
	SevTech: Ages Better With Mods/Addons Script

	This script handles custom integration control to a mod.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

import mods.betterwithaddons.Condensed;
import mods.betterwithmods.MiniBlocks;
import mods.betterwithmods.Turntable;
import mods.betterwithmods.Saw;

/*
	Recipes to be removed from the Kiln.
*/
static kilnRemovals as IItemStack[][] = [
	[<minecraft:bread>]
];

/*
	Recipes to be removed from the Mill.
*/
static millRemovals as IItemStack[][] = [
	[<betterwithmods:material:33>],
	[<betterwithmods:raw_pastry:3>],
	[<minecraft:dye:11>],
	[<minecraft:dye:12>],
	[<minecraft:dye:13>],
	[<minecraft:dye:1>],
	[<minecraft:dye:3>],
	[<minecraft:dye:7>],
	[<minecraft:dye:9>]
];

/*
	Recipes to be removed from the Soaking Box.
*/
static soakingRemovals as IItemStack[] = [
	<betterwithaddons:log_mulberry>,
	<betterwithaddons:japanmat:36>
];

/*
	Recipes to be removed from the Cauldron.

	Note: Removing by output also requires the amount of the output item that is given.
*/
static cauldronRemovals as IItemStack[][] = [
	[<betterwithmods:material:12>],
	[<betterwithmods:material:12> * 2],
	[<betterwithmods:material:12> * 3],
	[<betterwithmods:material:12> * 4],
	[<betterwithmods:material:6>],
	[<rustic:tallow>],
	// Remove Cut Leather (Tanned) from Cauldron and oredict
	[<betterwithmods:material:32> * 2],
	// Remove Pot As recipes because a single recipe with all wooden items is confusing.
	[<betterwithmods:material:21>],
	[<betterwithmods:material:21> * 2]
];

/*
	Recipes to be removed from the Crucible.
*/
static crucibleRemovals as IItemStack[][] = [
	[<betterwithaddons:decomat:3>],
	[<betterwithaddons:decomat:3> * 2],
	[<minecraft:glass>],
	[<minecraft:iron_ingot> * 3]
];

/*
	Recipes to be removed from the Saw.
*/
static sawRemovals as IItemStack[][] = [
	//Sawing Corners only give 1 gear instead of 2
	[<betterwithmods:material> * 2],

	[<betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "oak"}, Name: "minecraft:planks"}}), <betterwithmods:material:9>, <betterwithmods:material>, <minecraft:iron_ingot> * 2],
	[<betterwithmods:material:32> * 3, <betterwithmods:material:9>, <betterwithmods:material>, <betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "oak"}, Name: "minecraft:planks"}}) * 2],
	[<betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "oak"}, Name: "minecraft:planks"}}) * 3, <betterwithmods:material> * 3, <betterwithmods:material:34>],
	[<betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "oak"}, Name: "minecraft:planks"}}) * 3, <minecraft:iron_ingot>, <betterwithmods:material>, <betterwithmods:material:34>],
	[<betterwithmods:moulding_wood>.withTag({texture: {Properties: {variant: "oak"}, Name: "minecraft:planks"}}) * 3, <betterwithmods:material>, <minecraft:wooden_pressure_plate>],
	[<betterwithmods:moulding_wood>.withTag({texture: {Properties: {variant: "oak"}, Name: "minecraft:planks"}}) * 6, <minecraft:diamond>]
];

/*
	Pelt Mapping for both Large and Standard.
*/
static pelts as IIngredient[] = [
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
static largePelts as IIngredient[] = [
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

// TODO: USE THIS FOR THE REST OF RECIPE ADDITIONS!

// [Outputs] : [Inputs]
static sawRecipes as IIngredient[][IItemStack[]]  = {
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
	[<betterwithmods:material>]: [ MiniBlocks.getMiniBlock("corner", <ore:plankWood>) ],
	[<minecraft:melon> * 9]: [ <minecraft:melon_block> ]
};

function init() {
	// Recipe Map Imports
	var kilnRemovals as IItemStack[][] = scripts.crafttweaker.integrations.mods.betterwithmods.kilnRemovals;
	var millRemovals as IItemStack[][] = scripts.crafttweaker.integrations.mods.betterwithmods.millRemovals;
	var soakingRemovals as IItemStack[] = scripts.crafttweaker.integrations.mods.betterwithmods.soakingRemovals;
	var cauldronRemovals as IItemStack[][] = scripts.crafttweaker.integrations.mods.betterwithmods.cauldronRemovals;
	var crucibleRemovals as IItemStack[][] = scripts.crafttweaker.integrations.mods.betterwithmods.crucibleRemovals;
	var sawRemovals as IItemStack[][] = scripts.crafttweaker.integrations.mods.betterwithmods.sawRemovals;

	var sawRecipes as IIngredient[][IItemStack[]] = scripts.crafttweaker.integrations.mods.betterwithmods.sawRecipes;

	/*
		Removals
	*/
	for removal in kilnRemovals {
		betterWithMods.removeKiln(removal);
	}
	for removal in millRemovals {
		betterWithMods.removeMilling(removal);
	}
	for removal in soakingRemovals {
		betterWithMods.removeSoaking(removal);
	}
	for removal in cauldronRemovals {
		betterWithMods.removeCauldron(removal);
	}
	for removal in crucibleRemovals {
		betterWithMods.removeCrucible(removal);
	}
	for removal in sawRemovals {
		betterWithMods.removeSaw(removal);
	}

	/*
		Additions
	*/

	for sawOutputs, sawInputs in sawRecipes {
		for sawInput in sawInputs {
			for sawInputItem in sawInput.items {
				Saw.builder()
					.buildRecipe(sawInput, sawOutputs)
					.setInputBlockDrop(sawInputItem as IItemStack)
					.build();
			}
		}
	}

	// Turntable
	Turntable.builder()
		.buildRecipe(<ceramics:clay_barrel_unfired>, [])
		.setProductState(<ceramics:clay_barrel_unfired:1>)
		.build();
	Turntable.builder()
		.buildRecipe(<ceramics:clay_barrel_unfired:1>, [])
		.setProductState(<ceramics:clay_bucket_block>)
		.build();

	// Mill

	// Rice Flour
	betterWithMods.addMilling([<actuallyadditions:item_food:16>], [<betterwithaddons:japanmat:4>]);

	// THERE CAN BE ONLY 1 FLOUR!
	betterWithMods.addMilling([<minecraft:wheat>], [<horsepower:flour>]);
	betterWithMods.addMilling([<natura:materials>], [<natura:materials:1>]);

	// Other
	betterWithMods.addMilling([<minecraft:flint>, <minecraft:clay_ball>, <pickletweaks:dye_powder>], [<ceramics:unfired_clay:4>]);
	betterWithMods.addMilling([<minecraft:sand>, <minecraft:clay_ball>, <minecraft:gravel>], [<tconstruct:soil> * 2]);
	betterWithMods.addMilling([<actuallyadditions:block_misc:3>], [<actuallyadditions:item_dust:7>]);
	betterWithMods.addMilling([<materialpart:aquamarine:ore_minecraft_stone>], [<astralsorcery:itemcraftingcomponent> * 1]);
	betterWithMods.addMilling([<primal_tech:flint_block>], [<minecraft:flint> * 2]);
	betterWithMods.addMilling([<charcoalblock:charcoal_block>], [<minecraft:coal:1> * 9]);
	betterWithMods.addMilling([<primal_tech:charcoal_block>], [<minecraft:coal:1> * 4]);
	betterWithMods.addMilling([<minecraft:coal_block>], [<minecraft:coal> * 9]);
	betterWithMods.addMilling([<minecraft:cobblestone>], [<tconstruct:stone_stick> * 1]);
	betterWithMods.addMilling([<astralsorcery:itemcraftingcomponent:1>], [<astralsorcery:itemcraftingcomponent:2>]);
	betterWithMods.addMilling([<minecraft:quartz>], [<actuallyadditions:item_dust:5>]);
	betterWithMods.addMilling([<primal:sharp_bone>], [<primal:bone_knapp>]);
	betterWithMods.addMilling([<primal:shark_tooth>], [<minecraft:dye:15> * 2]);

	// Bark
	for bark in <ore:barkWood>.items {
		betterWithMods.addMilling([bark], [<primal:tannin_ground> * 2]);
	}

	// Spindle
	betterWithMods.addSpindle([<primal:leather_cordage>], <primal:leather_strip> * 4, false);

	// Condensed
	Condensed.setContainer(<betterwithaddons:bolt>, <betterwithaddons:spindle>);

	// Cauldron
	betterWithMods.addCauldron([<minecraft:rotten_flesh>, <minecraft:rotten_flesh>, <minecraft:rotten_flesh>], [<betterwithmods:material:12>]);
	betterWithMods.addCauldron([<primal:pigman_hide_raw>], [<betterwithmods:material:12> * 2]);
	betterWithMods.addCauldron([<animalium:wild_dog_pelt>], [<betterwithmods:material:12>]);
	betterWithMods.addCauldron([<totemic:buffalo_items>], [<betterwithmods:material:12> * 2]);
	betterWithMods.addCauldron([<primal:wolf_head_item>], [<betterwithmods:material:12>, <primal:bone_knapp>]);
	// Remake laxative recipe using foodFlour instead of BWM flour only.
	betterWithMods.addCauldron([<betterwithaddons:food_mulberry> * 3, <minecraft:sugar>, <ore:foodFlour>], [<betterwithaddons:laxative>]);

	//==============================
	// Stoked
	// betterWithMods.addCauldron(IIngredient[] inputs, IItemStack[] outputs, true);
	//==============================
	betterWithMods.addCauldron([<ore:logWood>], [<betterwithmods:material:21> * 2], true);
	betterWithMods.addCauldron([<ore:plankWood> * 4], [<betterwithmods:material:21>], true);
	betterWithMods.addCauldron([<ore:dustWood> * 16], [<betterwithmods:material:21>], true);

	// Pelt Recipes
	var pelts as IIngredient[] = scripts.crafttweaker.integrations.mods.betterwithmods.pelts;
	var largePelts as IIngredient[] = scripts.crafttweaker.integrations.mods.betterwithmods.largePelts;

	for pelt in pelts {
		betterWithMods.addCauldron([pelt], [<betterwithmods:material:12>]);
	}
	for largePelt in largePelts {
		betterWithMods.addCauldron([largePelt], [<betterwithmods:material:12> * 2]);
	}
}
