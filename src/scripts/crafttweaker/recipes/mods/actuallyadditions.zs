/*
    SevTech: Ages Actually Additions Recipe Script

    This script handles the recipes for Actually Additions.

    Note: These scripts are created and for the usage in SevTech: Ages and other
    modpacks curated by DarkPacks. You can use these scripts for reference and for
    learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.zenstages.Utils;

import scripts.crafttweaker.craftingUtils;
import scripts.crafttweaker.stages.stageZero;
import scripts.crafttweaker.stages.stageOne;
import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageThree;
import scripts.crafttweaker.stages.stageFour;
import scripts.crafttweaker.stages.stageFive;

/*
    Shaped Recipes
*/
static shapedRecipes as IIngredient[][][][IItemStack] = {
	<actuallyadditions:block_compost>: [
		[
			[<betterwithmods:wicker>, null, <betterwithmods:wicker>],
			[<betterwithmods:wicker>, null, <betterwithmods:wicker>],
			[<betterwithmods:wicker>, <immcraft:chest>, <betterwithmods:wicker>]
		]
	],
	<actuallyadditions:block_smiley_cloud> : [
		[
			[null, <minecraft:wool:*>, null],
			[<minecraft:wool:*>, craftingUtils.getBucketIngredientFromName("xpjuice"), <minecraft:wool:*>],
			[null, <minecraft:wool:*>, null]
		]
	],
	<actuallyadditions:block_compost> : [
		[
			[<betterwithmods:slats:*>, null, <betterwithmods:slats:*>],
			[<betterwithmods:slats:*>, null, <betterwithmods:slats:*>],
			[<betterwithmods:slats:*>, <minecraft:chest>, <betterwithmods:slats:*>]
		]
	],
	// This is not a real pizze (And just because someone gave me a hard time on how I spell pizze (assumptions about my spelling were made)
	// I'm going to leave it in here and people are going to have to deal with it) just FYI. It does not have olives on it but chat bullied me
	// and now it has meatballs and chili peppers instead. Thanks Obama. I'm also not sorry.
	<actuallyadditions:item_food:14> : [
		[[<actuallyadditions:item_food>, <betterwithaddons:food_meatballs>, <actuallyadditions:item_food>],
		[<actuallyadditions:item_food:20>, <rustic:tomato>, <rustic:chili_pepper>],
		[<horsepower:dough>, <horsepower:dough>, <horsepower:dough>]]
	],
	// Ant Anne's Best Chocolate cookies!
	<actuallyadditions:item_food:12> * 3 : [
		[
			[null, <minecraft:dye:3>, null],
			[null, <horsepower:dough>, null]
		]
	],
	// I didn't have red ants to put on top since the item has little red dots on.
	<actuallyadditions:item_food:8> : [
		[
			[craftingUtils.getBucketIngredientFromName("milk"), craftingUtils.getBucketIngredientFromName("milk"), craftingUtils.getBucketIngredientFromName("milk")],
			[<minecraft:dye:3>, <minecraft:dye:3>, <minecraft:dye:3>],
			[<minecraft:egg>, <horsepower:dough>, <minecraft:sugar>]
		]
	],
	<actuallyadditions:block_coal_generator> : [
		[
			[<minecraft:cobblestone>, <stevescarts:cartmodule>, <minecraft:cobblestone>],
			[<minecraft:cobblestone>, <teslacorelib:machine_case>, <minecraft:cobblestone>],
			[<minecraft:cobblestone>, <stevescarts:cartmodule>, <minecraft:cobblestone>]
		]
	],
	<actuallyadditions:block_oil_generator> : [
		[
			[<minecraft:cobblestone>, <actuallyadditions:block_canola_press>, <minecraft:cobblestone>],
			[<minecraft:cobblestone>, <teslacorelib:machine_case>, <minecraft:cobblestone>],
			[<minecraft:cobblestone>, <actuallyadditions:block_canola_press>, <minecraft:cobblestone>]
		]
	],
	<actuallyadditions:block_feeder> : [
		[
			[metals.compressedIron.plate, <darkutils:grate>, metals.compressedIron.plate],
			[<immersiveengineering:metal_decoration0:1>, <teslacorelib:machine_case>, <immersiveengineering:metal_decoration0:1>],
			[metals.compressedIron.ingot, metals.compressedIron.plate, metals.compressedIron.ingot]
		]
	],
	<actuallyadditions:block_grinder> : [
		[
			[metals.compressedIron.plate, <minecraft:piston>, metals.compressedIron.plate],
			[<minecraft:piston>, <teslacorelib:machine_case>, <minecraft:piston>],
			[metals.compressedIron.plate, <minecraft:piston>, metals.compressedIron.plate]
		]
	],
	<actuallyadditions:block_grinder_double> : [
		[
			[metals.compressedIron.plate, metals.compressedIron.plate, metals.compressedIron.plate],
			[<actuallyadditions:block_grinder>, <teslacorelib:machine_case>, <actuallyadditions:block_grinder>],
			[metals.compressedIron.plate, metals.compressedIron.plate, metals.compressedIron.plate]
		]
	],
	<actuallyadditions:block_furnace_double> : [
		[
			[metals.compressedIron.plate, <natura:netherrack_furnace>, metals.compressedIron.plate],
			[<tconstruct:seared_furnace_controller>, <actuallyadditions:block_coal_generator>, <tconstruct:seared_furnace_controller>],
			[metals.compressedIron.ingot, <natura:netherrack_furnace>, metals.compressedIron.ingot]
		]
	],
	<actuallyadditions:block_farmer> : [
		[
			[metals.compressedIron.ingot, <stevescarts:cartmodule:14>, metals.compressedIron.ingot],
			[metals.compressedIron.gear, <teslacorelib:machine_case>, metals.compressedIron.gear],
			[metals.compressedIron.ingot, <stevescarts:cartmodule:14>, metals.compressedIron.ingot]
		]
	],
	<actuallyadditions:item_misc:7>: [
		[
			[null, <immersiveengineering:wirecoil:5>, <actuallyadditions:item_misc:5>],
			[<immersiveengineering:wirecoil:5>, metals.iron.rod, <immersiveengineering:wirecoil:5>],
			[<actuallyadditions:item_misc:5>, <immersiveengineering:wirecoil:5>, null]
		]
	],
	<actuallyadditions:item_misc:8>: [
		[
			[null, <immersiveengineering:wirecoil:1>, <actuallyadditions:item_misc:5>],
			[<immersiveengineering:wirecoil:1>, metals.compressedIron.rod, <immersiveengineering:wirecoil:1>],
			[<actuallyadditions:item_misc:5>, <immersiveengineering:wirecoil:1>, null]
		]
	],
	<actuallyadditions:item_battery>: [
		[
			[null, <immersiveengineering:wirecoil:5>, null],
			[metals.nickel.plate, <actuallyadditions:item_misc:8>, metals.nickel.plate],
			[metals.nickel.plate, metals.nickel.plate, metals.nickel.plate]
		]
	],
	<actuallyadditions:item_battery_double>: [
		[
			[null, <actuallyadditions:item_battery>, null],
			[metals.nickel.plate, <actuallyadditions:item_misc:8>, metals.nickel.plate],
			[metals.nickel.plate, metals.nickel.plate, metals.nickel.plate]
		]
	],
	<actuallyadditions:item_battery_triple>: [
		[
			[null, <actuallyadditions:item_battery_double>, null],
			[metals.invar.plate, <actuallyadditions:item_misc:8>, metals.invar.plate],
			[metals.invar.plate, metals.invar.plate, metals.invar.plate]
		]
	],
	<actuallyadditions:item_battery_quadruple>: [
		[
			[null, <actuallyadditions:item_battery_triple>, null],
			[metals.invar.plate, <actuallyadditions:item_misc:8>, metals.invar.plate],
			[metals.invar.plate, metals.invar.plate, metals.invar.plate]
		]
	],
	<actuallyadditions:item_battery_quintuple>: [
		[
			[null, <actuallyadditions:item_battery_quadruple>, null],
			[metals.silver.plate, <actuallyadditions:item_misc:8>, metals.silver.plate],
			[metals.silver.plate, metals.silver.plate, metals.silver.plate]
		]
	],
	<actuallyadditions:block_misc:9>: [
		[
			[metals.iron.plate, <ore:stickWood>.firstItem, metals.iron.plate],
			[<ore:stickWood>.firstItem, <actuallyadditions:item_misc:5>, <ore:stickWood>.firstItem],
			[metals.iron.plate, <ore:stickWood>.firstItem, metals.iron.plate]
		]
	],
	<actuallyadditions:block_bio_reactor>: [
		[
			[metals.modularium.plate, <actuallyadditions:block_misc:9>, metals.modularium.plate],
			[metals.modularium.plate, <ore:treeSapling>, metals.modularium.plate],
			[metals.modularium.plate, <actuallyadditions:block_misc:9>, metals.modularium.plate]
		]
	],
	<actuallyadditions:block_canola_press>: [
		[
			[<minecraft:cobblestone>, metals.iron.plate, <minecraft:cobblestone>],
			[<minecraft:cobblestone>, <actuallyadditions:item_misc:13>, <minecraft:cobblestone>],
			[<minecraft:cobblestone>, <actuallyadditions:item_misc:8>, <minecraft:cobblestone>]
		]
	],
	<actuallyadditions:block_fermenting_barrel>: [
		[
			[<ore:logWood>, metals.iron.plate, <ore:logWood>],
			[<ore:logWood>, <actuallyadditions:item_misc:13>, <ore:logWood>],
			[<ore:logWood>, <actuallyadditions:block_misc:4>, <ore:logWood>]
		]
	],
	<actuallyadditions:block_misc:8>: [
		[
			[<minecraft:ender_eye>, metals.modularium.plate, <minecraft:ender_eye>],
			[metals.modularium.plate, <actuallyadditions:block_misc:2>, metals.modularium.plate],
			[<minecraft:ender_eye>, metals.modularium.plate, <minecraft:ender_eye>]
		]
	],
	<actuallyadditions:block_giant_chest_medium>: [
		[
			[<ore:plankTreatedWood>, <actuallyadditions:block_giant_chest>, <ore:plankTreatedWood>],
			[metals.nickel.plate, null, metals.nickel.plate],
			[<ore:plankTreatedWood>, <actuallyadditions:block_giant_chest>, <ore:plankTreatedWood>]
		]
	],
	<actuallyadditions:block_giant_chest_large>: [
		[
			[<ore:plankTreatedWood>, <actuallyadditions:block_giant_chest>, <ore:plankTreatedWood>],
			[metals.modularium.plate, null, metals.modularium.plate],
			[<ore:plankTreatedWood>, <actuallyadditions:block_giant_chest_medium>, <ore:plankTreatedWood>]
		]
	],
	<actuallyadditions:block_breaker>: [
		[
			[<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>],
			[<minecraft:cobblestone>, <actuallyadditions:item_misc:7>, <immersiveengineering:drillhead:1>],
			[<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>]
		]
	],
	<actuallyadditions:block_directional_breaker>: [
		[
			[null, null, null],
			[<actuallyadditions:block_breaker>, <actuallyadditions:block_breaker>, <actuallyadditions:block_breaker>],
			[null, <stevescarts:cartmodule:42>, null]
		]
	],
	<actuallyadditions:item_drill_upgrade_speed>: [
		[
			[metals.nickel.plate, <minecraft:sugar>, metals.nickel.plate],
			[<minecraft:sugar>, metals.redstoneAlloy.plate, <minecraft:sugar>],
			[metals.nickel.plate, <minecraft:sugar>, metals.nickel.plate]
		]
	],
	<actuallyadditions:item_drill_upgrade_speed_ii>: [
		[
			[metals.nickel.plate, <minecraft:sugar>, metals.nickel.plate],
			[<minecraft:sugar>, <minecraft:cake>, <minecraft:sugar>],
			[metals.nickel.plate, <minecraft:sugar>, metals.nickel.plate]
		]
	],
	<actuallyadditions:item_drill_upgrade_speed_iii>: [
		[
			[metals.modularium.plate, <minecraft:sugar>, metals.modularium.plate],
			[<minecraft:sugar>, <stevescarts:modulecomponents:21>, <minecraft:sugar>],
			[metals.modularium.plate, <minecraft:sugar>, metals.modularium.plate]
		]
	],
	<actuallyadditions:item_drill_upgrade_silk_touch>: [
		[
			[<tconstruct:materials:16>, metals.platinum.plate, <tconstruct:materials:16>],
			[metals.platinum.plate, <actuallyadditions:item_misc:8>, metals.platinum.plate],
			[<tconstruct:materials:16>, metals.platinum.plate, <tconstruct:materials:16>]
		]
	],
	<actuallyadditions:item_drill_upgrade_fortune>: [
		[
			[<minecraft:glowstone>, <minecraft:redstone>, <minecraft:glowstone>],
			[<minecraft:redstone>, <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 35 as short}]}), <minecraft:redstone>],
			[<minecraft:glowstone>, <minecraft:redstone>, <minecraft:glowstone>]
		]
	],
	<actuallyadditions:item_drill_upgrade_fortune_ii>: [
		[
			[<minecraft:glowstone>, metals.redstoneAlloy.plate, <minecraft:glowstone>],
			[metals.redstoneAlloy.plate, <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 35 as short}]}), metals.redstoneAlloy.plate],
			[<minecraft:glowstone>, metals.redstoneAlloy.plate, <minecraft:glowstone>]
		]
	],
	<actuallyadditions:item_drill_upgrade_three_by_three>: [
		[
			[metals.platinum.plate, <tconstruct:materials:12>, metals.platinum.plate],
			[metals.nickel.plate, <actuallyadditions:item_misc:7>, metals.nickel.plate],
			[metals.platinum.plate, <tconstruct:materials:13>, metals.platinum.plate]
		]
	],
	<actuallyadditions:item_drill_upgrade_five_by_five>: [
		[
			[metals.platinum.plate, <tconstruct:materials:12>, metals.platinum.plate],
			[<tconstruct:materials:13>, <actuallyadditions:item_misc:8>, <tconstruct:materials:13>],
			[metals.platinum.plate, <tconstruct:materials:12>, metals.platinum.plate]
		]
	],
	<actuallyadditions:item_drill_upgrade_block_placing>: [
		[
			[<minecraft:cobblestone>, <minecraft:paper>, <minecraft:cobblestone>],
			[metals.nickel.plate, <actuallyadditions:item_misc:7>, metals.nickel.plate],
			[<minecraft:cobblestone>, <minecraft:paper>, <minecraft:cobblestone>]
		]
	],
	<actuallyadditions:item_laser_wrench>: [
		[
			[<actuallyadditions:item_misc:8>, null, null],
			[null, metals.nickel.rod, null],
			[null, null, metals.nickel.rod]
		]
	],
	<actuallyadditions:block_furnace_solar>: [
		[
			[<galacticraftcore:basic_item:12>, <actuallyadditions:block_misc:9>, <galacticraftcore:basic_item:12>],
			[<actuallyadditions:item_misc:8>, <minecraft:glowstone_dust>, <actuallyadditions:item_misc:8>],
			[<galacticraftcore:basic_item:12>, <minecraft:iron_bars>, <galacticraftcore:basic_item:12>]
		]
	],
	<actuallyadditions:block_greenhouse_glass> * 2: [
		[
			[<appliedenergistics2:quartz_vibrant_glass>, <ore:treeSapling>, <appliedenergistics2:quartz_vibrant_glass>],
			[<ore:treeSapling>, <minecraft:lapis_block>, <ore:treeSapling>],
			[<appliedenergistics2:quartz_vibrant_glass>, <ore:treeSapling>, <appliedenergistics2:quartz_vibrant_glass>]
		]
	],
	<actuallyadditions:block_coffee_machine>: [
		[
			[null, <actuallyadditions:item_misc:13>, null],
			[null, <actuallyadditions:block_misc:9>, null],
			[<actuallyadditions:item_misc:7>, metals.nickel.plate, <actuallyadditions:item_misc:7>]
		]
	],
	<actuallyadditions:block_fishing_net>: [
		[
			[<minecraft:string>, <minecraft:string>, <minecraft:string>],
			[<minecraft:string>, <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 61 as short}]}), <minecraft:string>],
			[<minecraft:string>, <minecraft:string>, <minecraft:string>]
		]
	],
	<actuallyadditions:block_heat_collector>: [
		[
			[<minecraft:iron_bars>, <minecraft:repeater>, <minecraft:iron_bars>],
			[<actuallyadditions:item_misc:8>, metals.nickel.plate, <actuallyadditions:item_misc:8>],
			[<minecraft:iron_bars>, <actuallyadditions:block_misc:9>, <minecraft:iron_bars>]
		]
	],
	<actuallyadditions:item_misc:16>: [
		[
			[null, <immersiveengineering:material:20>, <immersiveengineering:drillhead>],
			[<immersiveengineering:material:20>, <immersiveengineering:metal_device0>, <immersiveengineering:material:20>],
			[<immersiveengineering:metal_decoration1:1>, <immersiveengineering:material:20>, null]
		]
	],
	<actuallyadditions:item_drill:3>: [
		[
			[null, <immersiveengineering:metal_decoration1:5>, <actuallyadditions:item_misc:16>],
			[<stevescarts:modulecomponents:12>, <pneumaticcraft:plastic:14>, <immersiveengineering:metal_decoration1:5>],
			[<stevescarts:modulecomponents:12>, <stevescarts:modulecomponents:12>, null]
		]
	],
	<pneumaticcraft:assembly_drill>: [
		[
			[<actuallyadditions:item_misc:16>, <pneumaticcraft:pneumatic_cylinder>, <pneumaticcraft:pneumatic_cylinder>],
			[null, null, <pneumaticcraft:pneumatic_cylinder>],
			[metals.compressedIron.ingot, <pneumaticcraft:printed_circuit_board>, metals.compressedIron.ingot]
		]
	],
	<actuallyadditions:item_misc:12>: [
		[
			[null, <actuallyadditions:item_misc:9>, null],
			[<actuallyadditions:item_misc:9>, <primal_tech:fluid_bladder:1>.withTag({Fluid: {FluidName: "water", Amount: 1000}}), <actuallyadditions:item_misc:9>],
			[null, <actuallyadditions:item_misc:9>, null]
		],
		[
			[null, <actuallyadditions:item_misc:9>, null],
			[<actuallyadditions:item_misc:9>, craftingUtils.getBucketIngredient(<liquid:water>), <actuallyadditions:item_misc:9>],
			[null, <actuallyadditions:item_misc:9>, null]
		]
	],
	<actuallyadditions:item_misc:1>: [
		[
			[<ore:thisIsWhatHappensWhenYouDontFollowOreDictionariesForSeeds>, <ore:thisIsWhatHappensWhenYouDontFollowOreDictionariesForSeeds>],
			[<ore:thisIsWhatHappensWhenYouDontFollowOreDictionariesForSeeds>, <ore:thisIsWhatHappensWhenYouDontFollowOreDictionariesForSeeds>]
		]
	]
};

static namedShapedRecipes as IIngredient[][][][string][IItemStack] = {
};

/*
    Mirrored Recipes
*/
static mirroredRecipes as IIngredient[][][][IItemStack] = {
};

static namedMirroredRecipes as IIngredient[][][][string][IItemStack] = {
};

/*
    Shapeless Recipes
*/
static shapelessRecipes as IIngredient[][][IItemStack] = {
	<actuallyadditions:item_booklet>: [
		[<actuallyadditions:item_coffee_seed>, <primal:plant_cloth>]
	],
	<actuallyadditions:item_coffee_seed> : [
		[<actuallyadditions:item_coffee_beans>]
	],
	<actuallyadditions:item_misc:9>: [
		[<betterwithaddons:japanmat:4>, <ore:foodSalt>, <ore:bottleWater>.transformReplace(<minecraft:glass_bottle>)],
		[<betterwithaddons:japanmat:4>, <ore:foodSalt>, craftingUtils.getBucketIngredient(<liquid:water>)],
		[<betterwithaddons:japanmat:4>, <ore:foodSalt>, <primal_tech:fluid_bladder:1>.withTag({Fluid: {FluidName: "water", Amount: 1000}})]
	]
};

static namedShapelessRecipes as IIngredient[][][string][IItemStack] = {
};

/*
	Furnace Recipes
*/
static furnaceRecipes as IIngredient[][IItemStack] = {
	<actuallyadditions:item_misc:5>: [<actuallyadditions:item_dust:7>]
};

/*
    Recipe Removals
*/
static removeRecipes as IIngredient[] = [
	<actuallyadditions:block_atomic_reconstructor>,
	<actuallyadditions:block_bio_reactor>,
	<actuallyadditions:block_breaker>,
	<actuallyadditions:block_canola_press>,
	<actuallyadditions:block_coal_generator>,
	<actuallyadditions:block_coffee_machine>,
	<actuallyadditions:block_compost>,
	<actuallyadditions:block_directional_breaker>,
	<actuallyadditions:block_farmer>,
	<actuallyadditions:block_feeder>,
	<actuallyadditions:block_fermenting_barrel>,
	<actuallyadditions:block_furnace_double>,
	<actuallyadditions:block_furnace_solar>,
	<actuallyadditions:block_giant_chest_large>,
	<actuallyadditions:block_giant_chest_medium>,
	<actuallyadditions:block_greenhouse_glass>,
	<actuallyadditions:block_grinder>,
	<actuallyadditions:block_grinder_double>,
	<actuallyadditions:block_heat_collector>,
	<actuallyadditions:block_misc:8>,
	<actuallyadditions:block_misc:9>,
	<actuallyadditions:block_oil_generator>,
	<actuallyadditions:block_smiley_cloud>,
	<actuallyadditions:item_battery>,
	<actuallyadditions:item_battery_double>,
	<actuallyadditions:item_battery_quadruple>,
	<actuallyadditions:item_battery_quintuple>,
	<actuallyadditions:item_battery_triple>,
	<actuallyadditions:item_drill:*>,
	<actuallyadditions:item_drill_upgrade_block_placing>,
	<actuallyadditions:item_drill_upgrade_five_by_five>,
	<actuallyadditions:item_drill_upgrade_fortune>,
	<actuallyadditions:item_drill_upgrade_fortune_ii>,
	<actuallyadditions:item_drill_upgrade_silk_touch>,
	<actuallyadditions:item_drill_upgrade_speed>,
	<actuallyadditions:item_drill_upgrade_speed_ii>,
	<actuallyadditions:item_drill_upgrade_speed_iii>,
	<actuallyadditions:item_drill_upgrade_three_by_three>,
	<actuallyadditions:item_food:12>,
	<actuallyadditions:item_food:14>,
	<actuallyadditions:item_food:8>,
	<actuallyadditions:item_laser_wrench>,
	<actuallyadditions:item_misc:12>,
	<actuallyadditions:item_misc:16>,
	<actuallyadditions:item_misc:7>,
	<actuallyadditions:item_misc:8>,
	<actuallyadditions:item_misc:9>
];

static removeFurnace as IIngredient[] = [
	<actuallyadditions:item_food:15>,
	<actuallyadditions:item_misc:5>
];

function init() {
	// Un-named recipes
	var shapedRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.actuallyadditions.shapedRecipes;
	var mirroredRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.actuallyadditions.mirroredRecipes;
	var shapelessRecipes as IIngredient[][][IItemStack] = scripts.crafttweaker.recipes.mods.actuallyadditions.shapelessRecipes;

	// Named recipes
	var namedShapedRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.actuallyadditions.namedShapedRecipes;
	var namedMirroredRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.actuallyadditions.namedMirroredRecipes;
	var namedShapelessRecipes as IIngredient[][][string][IItemStack] = scripts.crafttweaker.recipes.mods.actuallyadditions.namedShapelessRecipes;

	// Furnace recipes
	var furnaceRecipes as IIngredient[][IItemStack] = scripts.crafttweaker.recipes.mods.actuallyadditions.furnaceRecipes;

	var removeRecipes as IItemStack[] = scripts.crafttweaker.recipes.mods.actuallyadditions.removeRecipes;
	var removeFurnace as IIngredient[] = scripts.crafttweaker.recipes.mods.actuallyadditions.removeFurnace;

	// Un-named recipes
	recipeUtil.process(shapedRecipes, false);
    recipeUtil.process(mirroredRecipes, true);
    recipeUtil.process(shapelessRecipes);

	// Named recipes
	recipeUtil.processNamed(namedShapedRecipes, false);
    recipeUtil.processNamed(namedMirroredRecipes, true);
    recipeUtil.processNamed(namedShapelessRecipes);

	// Furnace recipes
	recipeUtil.processFurnace(furnaceRecipes);

	recipeUtil.removeRecipes(removeRecipes);
	recipeUtil.removeFurnace(removeFurnace);
}
