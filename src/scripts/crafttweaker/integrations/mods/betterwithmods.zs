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
static kilnRemovals as IItemStack[] = [
	<betterwithmods:raw_pastry:3>
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
	[<minecraft:dye:14>],
	[<minecraft:dye:1>],
	[<minecraft:dye:3>],
	[<minecraft:dye:7>],
	[<minecraft:dye:9>],
	[<minecraft:string>, <minecraft:dye:1>]
];

/*
	Recipes to be removed from the Soaking Box.
*/
static soakingRemovals as IItemStack[] = [
	<betterwithaddons:log_mulberry:0>,
	<betterwithaddons:japanmat:36>
];

/*
	Recipes to be removed from the Cauldron.

	Note: Removing by output also requires the amount of the output item that is given.
*/
static cauldronRemovals as IItemStack[][] = [
	[<betterwithmods:fertilizer:0> * 8],
	[<betterwithmods:material:1> * 4],
	[<betterwithmods:material:12>],
	[<betterwithmods:material:12> * 2],
	[<betterwithmods:material:12> * 3],
	[<betterwithmods:material:12> * 4],
	[<betterwithmods:material:6>],
	[<rustic:tallow:0>],
	// Remove Cut Leather (Tanned) from Cauldron and oredict
	[<betterwithmods:material:32> * 2],
	// Remove Pot As recipes because a single recipe with all wooden items is confusing.
	[<betterwithmods:material:21>],
	[<betterwithmods:material:21> * 2],
	[<betterwithmods:aesthetic:11>],
	[<betterwithaddons:sapling_luretree:0>]
];

/*
	Recipes to be removed from the Crucible.
*/
static crucibleRemovals as IItemStack[][] = [
	[<betterwithaddons:decomat:3>],
	[<betterwithaddons:decomat:3> * 2],
	[<minecraft:glass:0>],
	[<minecraft:iron_ingot:0> * 3]
];

/*
	Recipes to be removed from the Saw.
*/
static sawRemovals as IItemStack[][] = [
	//Sawing Corners only give 1 gear instead of 2
	[<betterwithmods:material:0> * 2],

	[<betterwithmods:siding_wood:0>.withTag({texture: {Properties: {variant: "oak"}, Name: "minecraft:planks"}}), <betterwithmods:material:9>, <betterwithmods:material:0>, <minecraft:iron_ingot:0> * 2],
	[<betterwithmods:material:32> * 3, <betterwithmods:material:9>, <betterwithmods:material:0>, <betterwithmods:siding_wood:0>.withTag({texture: {Properties: {variant: "oak"}, Name: "minecraft:planks"}}) * 2],
	[<betterwithmods:siding_wood:0>.withTag({texture: {Properties: {variant: "oak"}, Name: "minecraft:planks"}}) * 3, <betterwithmods:material:0> * 3, <betterwithmods:material:34>],
	[<betterwithmods:siding_wood:0>.withTag({texture: {Properties: {variant: "oak"}, Name: "minecraft:planks"}}) * 3, <minecraft:iron_ingot:0>, <betterwithmods:material:0>, <betterwithmods:material:34>],
	[<betterwithmods:moulding_wood:0>.withTag({texture: {Properties: {variant: "oak"}, Name: "minecraft:planks"}}) * 3, <betterwithmods:material:0>, <minecraft:wooden_pressure_plate:0>],
	[<betterwithmods:moulding_wood:0>.withTag({texture: {Properties: {variant: "oak"}, Name: "minecraft:planks"}}) * 6, <minecraft:diamond:0>],
	[<betterwithmods:siding_wood:0>.withTag({texture: {Properties: {variant: "oak"}, Name: "minecraft:planks"}}) * 6, <minecraft:diamond:0>]
];

/*
	Pelt Mapping for both Large and Standard.
*/
static pelts as IIngredient[] = [
	<minecraft:rabbit_hide:0>,
	<primal:pelt_animal:0>,
	<primal:pelt_dog:0>,
	<primal:pelt_gator:0>,
	<primal:pelt_ovis:0>,
	<primal:pelt_pig:0>,
	<primal:pelt_shark:0>,
	<primal:pelt_sheep:0>,
	<primal:pelt_wolf:0>
];
static largePelts as IIngredient[] = [
	<primal:pelt_animal_large:0>,
	<primal:pelt_bear_black:0>,
	<primal:pelt_bear_brown:0>,
	<primal:pelt_bear_polar:0>,
	<primal:pelt_cow:0>,
	<primal:pelt_donkey:0>,
	<primal:pelt_horse:0>,
	<primal:pelt_llama:0>,
	<primal:pelt_mooshroom:0>,
	<primal:pelt_mule:0>
];

// TODO: USE THIS FOR THE REST OF RECIPE ADDITIONS!

// [Outputs] : [Inputs]
static sawRecipes as IIngredient[][IItemStack[]]  = {
	[<minecraft:stick:0> * 2]: [
		<minecraft:leaves:*>,
		<minecraft:leaves2:*>,
		<abyssalcraft:dltleaves:0>,
		<abyssalcraft:dreadleaves:0>,
		<betterwithmods:blood_leaves:0>,
		<betterwithaddons:leaves_luretree:0>,
		<betterwithaddons:leaves_mulberry:0>,
		<betterwithaddons:leaves_sakura:0>,
		<natura:overworld_leaves:*>,
		<natura:overworld_leaves2:*>,
		<natura:redwood_leaves:0>,
		<natura:nether_leaves:*>,
		<natura:nether_leaves2:*>,
		<rustic:leaves:*>,
		<rustic:leaves_apple:0>,
		<twilightforest:dark_leaves:0>,
		<twilightforest:giant_leaves:*>,
		<twilightforest:twilight_leaves:*>,
		<twilightforest:twilight_leaves_3:*>,
		<twilightforest:magic_leaves:*>,
		<totemic:cedar_leaves:0>,
		<thebetweenlands:leaves_sap_tree:0>,
		<thebetweenlands:leaves_rubber_tree:0>,
		<thebetweenlands:leaves_hearthgrove_tree:0>,
		<thebetweenlands:leaves_spirit_tree_top:0>,
		<thebetweenlands:leaves_spirit_tree_middle:0>,
		<thebetweenlands:leaves_spirit_tree_bottom:0>,
		<traverse:brown_autumnal_leaves>,
		<traverse:orange_autumnal_leaves>,
		<traverse:red_autumnal_leaves>,
		<traverse:yellow_autumnal_leaves>,
		<traverse:fir_leaves:0>
	],
	[<thebetweenlands:items_misc:20> * 2]: [<thebetweenlands:leaves_weedwood_tree:0>],
	[<thebetweenlands:nibblestick:0> * 2]: [<thebetweenlands:leaves_nibbletwig_tree:0>],
	[<betterwithmods:material:0>]: [ MiniBlocks.getMiniBlock("corner", <ore:plankWood>) ],
	[<minecraft:melon:0> * 9]: [ <minecraft:melon_block:0> ],
	[<betterwithmods:siding_wood:0>.withTag({texture: {Properties: {variant: "oak"}, Name: "minecraft:planks"}}) * 6, <minecraft:quartz:0>]: [<minecraft:jukebox:0>]
};

function init() {
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
		.buildRecipe(<ceramics:clay_barrel_unfired:0>, [])
		.setProductState(<ceramics:clay_barrel_unfired:1>)
		.build();
	Turntable.builder()
		.buildRecipe(<ceramics:clay_barrel_unfired:1>, [])
		.setProductState(<ceramics:clay_bucket_block:0>)
		.build();

	// Mill

	// Rice Flour
	betterWithMods.addMilling([<actuallyadditions:item_food:16>], [<betterwithaddons:japanmat:4>]);

	// THERE CAN BE ONLY 1 FLOUR!
	betterWithMods.addMilling([<minecraft:wheat:0>], [<horsepower:flour:0>]);
	betterWithMods.addMilling([<natura:materials:0>], [<horsepower:flour:0>]);

	// Other
	betterWithMods.addMilling([<minecraft:flint:0>, <minecraft:clay_ball:0>, <pickletweaks:dye_powder:0>], [<ceramics:unfired_clay:4>]);
	betterWithMods.addMilling([<minecraft:sand:0>, <minecraft:clay_ball:0>, <minecraft:gravel:0>], [<tconstruct:soil:0> * 2]);
	betterWithMods.addMilling([<actuallyadditions:block_misc:3>], [<actuallyadditions:item_dust:7>]);
	betterWithMods.addMilling([<materialpart:aquamarine:ore_minecraft_stone>], [<astralsorcery:itemcraftingcomponent:0> * 1]);
	betterWithMods.addMilling([<primal_tech:flint_block>], [<minecraft:flint:0> * 2]);
	betterWithMods.addMilling([<charcoalblock:charcoal_block:0>], [<minecraft:coal:1> * 9]);
	betterWithMods.addMilling([<primal_tech:charcoal_block>], [<minecraft:coal:1> * 4]);
	betterWithMods.addMilling([<minecraft:coal_block:0>], [<minecraft:coal:0> * 9]);
	betterWithMods.addMilling([<minecraft:cobblestone:0>], [<tconstruct:stone_stick:0> * 1]);
	betterWithMods.addMilling([<astralsorcery:itemcraftingcomponent:1>], [<astralsorcery:itemcraftingcomponent:2>]);
	betterWithMods.addMilling([<minecraft:quartz:0>], [<appliedenergistics2:material:3>]);
	betterWithMods.addMilling([<primal:sharp_bone:0>], [<primal:bone_knapp:0>]);
	betterWithMods.addMilling([<primal:shark_tooth:0>], [<minecraft:dye:15> * 2]);
	betterWithMods.addMilling([<betterwithmods:companion_cube>], [<minecraft:string> * 10, <pickletweaks:dye_powder:14> * 2]);

	// Bark
	for bark in <ore:barkWood>.items {
		betterWithMods.addMilling([bark], [<primal:tannin_ground:0> * 2]);
	}

	// Spindle
	betterWithMods.addSpindle([<primal:leather_cordage:0>], <primal:leather_strip:0> * 4, false);

	// Condensed
	Condensed.setContainer(<betterwithaddons:bolt:0>, <betterwithaddons:spindle:0>);

	// Cauldron
	betterWithMods.addCauldron([<ore:dustCarbon>, <betterwithmods:material:16>], [<betterwithmods:material:1>]);
	betterWithMods.addCauldron([<minecraft:rotten_flesh:0>, <minecraft:rotten_flesh:0>, <minecraft:rotten_flesh:0>], [<betterwithmods:material:12>]);
	betterWithMods.addCauldron([<primal:pigman_hide_raw:0>], [<betterwithmods:material:12> * 2]);
	betterWithMods.addCauldron([<animalium:wild_dog_pelt:0>], [<betterwithmods:material:12>]);
	betterWithMods.addCauldron([<totemic:buffalo_items:0>], [<betterwithmods:material:12> * 2]);
	betterWithMods.addCauldron([<primal:wolf_head_item:0>], [<betterwithmods:material:12>, <primal:bone_knapp:0>]);
	betterWithMods.addCauldron([<minecraft:sapling:2>, <minecraft:wheat:0> * 16, <pickletweaks:dye_powder:14> * 8, <minecraft:rotten_flesh:0> * 4], [<betterwithaddons:sapling_luretree:0>]);
	// Remake laxative recipe using foodFlour instead of BWM flour only.
	betterWithMods.addCauldron([<betterwithaddons:food_mulberry:0> * 3, <minecraft:sugar:0>, <ore:foodFlour>], [<betterwithaddons:laxative:0>]);

	//==============================
	// Stoked
	// betterWithMods.addCauldron(IIngredient[] inputs, IItemStack[] outputs, true);
	//==============================
	betterWithMods.addCauldron([<ore:logWood>], [<betterwithmods:material:21> * 2], true);
	betterWithMods.addCauldron([<ore:plankWood> * 4], [<betterwithmods:material:21>], true);
	betterWithMods.addCauldron([<ore:dustWood> * 16], [<betterwithmods:material:21>], true);

	// Pelt Recipes
	for pelt in pelts {
		betterWithMods.addCauldron([pelt], [<betterwithmods:material:12>]);
	}
	for largePelt in largePelts {
		betterWithMods.addCauldron([largePelt], [<betterwithmods:material:12> * 2]);
	}

	// Drying Box
	betterWithMods.removeDrying(<betterwithaddons:japanmat:2>);
}
