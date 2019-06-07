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

import scripts.crafttweaker.utils;
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
	<actuallyadditions:block_compost:0>: [
		[
			[<betterwithmods:wicker:0>, null, <betterwithmods:wicker:0>],
			[<betterwithmods:wicker:0>, null, <betterwithmods:wicker:0>],
			[<betterwithmods:wicker:0>, <immcraft:chest:0>, <betterwithmods:wicker:0>]
		]
	],
	<actuallyadditions:block_smiley_cloud:0> : [
		[
			[null, <minecraft:wool:*>, null],
			[<minecraft:wool:*>, craftingUtils.getBucketAndTankIngredientFromName("xpjuice"), <minecraft:wool:*>],
			[null, <minecraft:wool:*>, null]
		]
	],
	<actuallyadditions:block_compost:0> : [
		[
			[<betterwithmods:slats:*>, null, <betterwithmods:slats:*>],
			[<betterwithmods:slats:*>, null, <betterwithmods:slats:*>],
			[<betterwithmods:slats:*>, <minecraft:chest:0>, <betterwithmods:slats:*>]
		]
	],
	// This is not a real pizze (And just because someone gave me a hard time on how I spell pizze (assumptions about my spelling were made)
	// I'm going to leave it in here and people are going to have to deal with it) just FYI. It does not have olives on it but chat bullied me
	// and now it has meatballs and chili peppers instead. Thanks Obama. I'm also not sorry.
	<actuallyadditions:item_food:14> : [
		[[<actuallyadditions:item_food:0>, <betterwithaddons:food_meatballs:0>, <actuallyadditions:item_food:0>],
		[<actuallyadditions:item_food:20>, <rustic:tomato:0>, <rustic:chili_pepper:0>],
		[<horsepower:dough:0>, <horsepower:dough:0>, <horsepower:dough:0>]]
	],
	// Ant Anne's Best Chocolate cookies!
	<actuallyadditions:item_food:12> * 3 : [
		[
			[<minecraft:dye:3>],
			[<horsepower:dough:0>]
		]
	],
	// I didn't have red ants to put on top since the item has little red dots on.
	<actuallyadditions:item_food:8> : [
		[
			[craftingUtils.getBucketAndTankIngredientFromName("milk"), craftingUtils.getBucketAndTankIngredientFromName("milk"), craftingUtils.getBucketAndTankIngredientFromName("milk")],
			[<minecraft:dye:3>, <minecraft:dye:3>, <minecraft:dye:3>],
			[<minecraft:egg:0>, <horsepower:dough:0>, <minecraft:sugar:0>]
		]
	],
	<actuallyadditions:block_coal_generator:0> : [
		[
			[<minecraft:cobblestone:0>, <stevescarts:cartmodule:0>, <minecraft:cobblestone:0>],
			[<minecraft:cobblestone:0>, <teslacorelib:machine_case:0>, <minecraft:cobblestone:0>],
			[<minecraft:cobblestone:0>, <stevescarts:cartmodule:0>, <minecraft:cobblestone:0>]
		]
	],
	<actuallyadditions:block_oil_generator:0> : [
		[
			[<minecraft:cobblestone:0>, <actuallyadditions:block_canola_press:0>, <minecraft:cobblestone:0>],
			[<minecraft:cobblestone:0>, <teslacorelib:machine_case:0>, <minecraft:cobblestone:0>],
			[<minecraft:cobblestone:0>, <actuallyadditions:block_canola_press:0>, <minecraft:cobblestone:0>]
		]
	],
	<actuallyadditions:block_feeder:0> : [
		[
			[metals.compressedIron.plate, <darkutils:grate:0>, metals.compressedIron.plate],
			[<immersiveengineering:metal_decoration0:1>, <teslacorelib:machine_case:0>, <immersiveengineering:metal_decoration0:1>],
			[metals.compressedIron.ingot, metals.compressedIron.plate, metals.compressedIron.ingot]
		]
	],
	<actuallyadditions:block_grinder:0> : [
		[
			[metals.compressedIron.plate, <minecraft:piston:0>, metals.compressedIron.plate],
			[<minecraft:piston:0>, <teslacorelib:machine_case:0>, <minecraft:piston:0>],
			[metals.compressedIron.plate, <minecraft:piston:0>, metals.compressedIron.plate]
		]
	],
	<actuallyadditions:block_grinder_double:0> : [
		[
			[metals.compressedIron.plate, metals.compressedIron.plate, metals.compressedIron.plate],
			[<actuallyadditions:block_grinder:0>, <teslacorelib:machine_case:0>, <actuallyadditions:block_grinder:0>],
			[metals.compressedIron.plate, metals.compressedIron.plate, metals.compressedIron.plate]
		]
	],
	<actuallyadditions:block_furnace_double:0> : [
		[
			[metals.compressedIron.plate, <natura:netherrack_furnace:0>, metals.compressedIron.plate],
			[<tconstruct:seared_furnace_controller:0>, <actuallyadditions:block_coal_generator:0>, <tconstruct:seared_furnace_controller:0>],
			[metals.compressedIron.ingot, <natura:netherrack_furnace:0>, metals.compressedIron.ingot]
		]
	],
	<actuallyadditions:block_farmer:0> : [
		[
			[metals.compressedIron.ingot, <stevescarts:cartmodule:14>, metals.compressedIron.ingot],
			[metals.compressedIron.gear, <teslacorelib:machine_case:0>, metals.compressedIron.gear],
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
	<actuallyadditions:item_battery:0>: [
		[
			[null, <immersiveengineering:wirecoil:5>, null],
			[metals.nickel.plate, <actuallyadditions:item_misc:8>, metals.nickel.plate],
			[metals.nickel.plate, metals.nickel.plate, metals.nickel.plate]
		]
	],
	<actuallyadditions:item_battery_double:0>: [
		[
			[null, <actuallyadditions:item_battery:0>, null],
			[metals.nickel.plate, <actuallyadditions:item_misc:8>, metals.nickel.plate],
			[metals.nickel.plate, metals.nickel.plate, metals.nickel.plate]
		]
	],
	<actuallyadditions:item_battery_triple:0>: [
		[
			[null, <actuallyadditions:item_battery_double:0>, null],
			[metals.invar.plate, <actuallyadditions:item_misc:8>, metals.invar.plate],
			[metals.invar.plate, metals.invar.plate, metals.invar.plate]
		]
	],
	<actuallyadditions:item_battery_quadruple:0>: [
		[
			[null, <actuallyadditions:item_battery_triple:0>, null],
			[metals.invar.plate, <actuallyadditions:item_misc:8>, metals.invar.plate],
			[metals.invar.plate, metals.invar.plate, metals.invar.plate]
		]
	],
	<actuallyadditions:item_battery_quintuple:0>: [
		[
			[null, <actuallyadditions:item_battery_quadruple:0>, null],
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
	<actuallyadditions:block_bio_reactor:0>: [
		[
			[metals.modularium.plate, <actuallyadditions:block_misc:9>, metals.modularium.plate],
			[metals.modularium.plate, <ore:treeSapling>, metals.modularium.plate],
			[metals.modularium.plate, <actuallyadditions:block_misc:9>, metals.modularium.plate]
		]
	],
	<actuallyadditions:block_canola_press:0>: [
		[
			[<minecraft:cobblestone:0>, metals.iron.plate, <minecraft:cobblestone:0>],
			[<minecraft:cobblestone:0>, <actuallyadditions:item_misc:13>, <minecraft:cobblestone:0>],
			[<minecraft:cobblestone:0>, <actuallyadditions:item_misc:8>, <minecraft:cobblestone:0>]
		]
	],
	<actuallyadditions:block_fermenting_barrel:0>: [
		[
			[<ore:logWood>, metals.iron.plate, <ore:logWood>],
			[<ore:logWood>, <actuallyadditions:item_misc:13>, <ore:logWood>],
			[<ore:logWood>, <actuallyadditions:block_misc:4>, <ore:logWood>]
		]
	],
	<actuallyadditions:block_misc:8>: [
		[
			[<minecraft:ender_eye:0>, metals.modularium.plate, <minecraft:ender_eye:0>],
			[metals.modularium.plate, <actuallyadditions:block_misc:2>, metals.modularium.plate],
			[<minecraft:ender_eye:0>, metals.modularium.plate, <minecraft:ender_eye:0>]
		]
	],
	<actuallyadditions:block_giant_chest_medium:0>: [
		[
			[<ore:plankTreatedWood>, <actuallyadditions:block_giant_chest:0>, <ore:plankTreatedWood>],
			[metals.nickel.plate, null, metals.nickel.plate],
			[<ore:plankTreatedWood>, <actuallyadditions:block_giant_chest:0>, <ore:plankTreatedWood>]
		]
	],
	<actuallyadditions:block_giant_chest_large:0>: [
		[
			[<ore:plankTreatedWood>, <actuallyadditions:block_giant_chest:0>, <ore:plankTreatedWood>],
			[metals.modularium.plate, null, metals.modularium.plate],
			[<ore:plankTreatedWood>, <actuallyadditions:block_giant_chest_medium:0>, <ore:plankTreatedWood>]
		]
	],
	<actuallyadditions:block_breaker:0>: [
		[
			[<minecraft:cobblestone:0>, <minecraft:cobblestone:0>, <minecraft:cobblestone:0>],
			[<minecraft:cobblestone:0>, <actuallyadditions:item_misc:7>, <immersiveengineering:drillhead:1>],
			[<minecraft:cobblestone:0>, <minecraft:cobblestone:0>, <minecraft:cobblestone:0>]
		]
	],
	<actuallyadditions:block_directional_breaker:0>: [
		[
			[<actuallyadditions:block_breaker:0>, <actuallyadditions:block_breaker:0>, <actuallyadditions:block_breaker:0>],
			[null, <stevescarts:cartmodule:42>, null]
		]
	],
	<actuallyadditions:item_drill_upgrade_speed:0>: [
		[
			[metals.nickel.plate, <minecraft:sugar:0>, metals.nickel.plate],
			[<minecraft:sugar:0>, metals.redstoneAlloy.plate, <minecraft:sugar:0>],
			[metals.nickel.plate, <minecraft:sugar:0>, metals.nickel.plate]
		]
	],
	<actuallyadditions:item_drill_upgrade_speed_ii:0>: [
		[
			[metals.nickel.plate, <minecraft:sugar:0>, metals.nickel.plate],
			[<minecraft:sugar:0>, <minecraft:cake:0>, <minecraft:sugar:0>],
			[metals.nickel.plate, <minecraft:sugar:0>, metals.nickel.plate]
		]
	],
	<actuallyadditions:item_drill_upgrade_speed_iii:0>: [
		[
			[metals.modularium.plate, <minecraft:sugar:0>, metals.modularium.plate],
			[<minecraft:sugar:0>, <stevescarts:modulecomponents:21>, <minecraft:sugar:0>],
			[metals.modularium.plate, <minecraft:sugar:0>, metals.modularium.plate]
		]
	],
	<actuallyadditions:item_drill_upgrade_silk_touch:0>: [
		[
			[<tconstruct:materials:16>, metals.platinum.plate, <tconstruct:materials:16>],
			[metals.platinum.plate, <actuallyadditions:item_misc:8>, metals.platinum.plate],
			[<tconstruct:materials:16>, metals.platinum.plate, <tconstruct:materials:16>]
		]
	],
	<actuallyadditions:item_drill_upgrade_fortune:0>: [
		[
			[<minecraft:glowstone:0>, <minecraft:redstone:0>, <minecraft:glowstone:0>],
			[<minecraft:redstone:0>, <minecraft:enchanted_book:0>.withTag({StoredEnchantments: utils.makeJeidTag(<enchantment:minecraft:fortune>.makeEnchantment(1)).ench}), <minecraft:redstone:0>],
			[<minecraft:glowstone:0>, <minecraft:redstone:0>, <minecraft:glowstone:0>]
		]
	],
	<actuallyadditions:item_drill_upgrade_fortune_ii:0>: [
		[
			[<minecraft:glowstone:0>, metals.redstoneAlloy.plate, <minecraft:glowstone:0>],
			[metals.redstoneAlloy.plate, <minecraft:enchanted_book:0>.withTag({StoredEnchantments: utils.makeJeidTag(<enchantment:minecraft:fortune>.makeEnchantment(3)).ench}), metals.redstoneAlloy.plate],
			[<minecraft:glowstone:0>, metals.redstoneAlloy.plate, <minecraft:glowstone:0>]
		]
	],
	<actuallyadditions:item_drill_upgrade_three_by_three:0>: [
		[
			[metals.platinum.plate, <tconstruct:materials:12>, metals.platinum.plate],
			[metals.nickel.plate, <actuallyadditions:item_misc:7>, metals.nickel.plate],
			[metals.platinum.plate, <tconstruct:materials:13>, metals.platinum.plate]
		]
	],
	<actuallyadditions:item_drill_upgrade_five_by_five:0>: [
		[
			[metals.platinum.plate, <tconstruct:materials:12>, metals.platinum.plate],
			[<tconstruct:materials:13>, <actuallyadditions:item_misc:8>, <tconstruct:materials:13>],
			[metals.platinum.plate, <tconstruct:materials:12>, metals.platinum.plate]
		]
	],
	<actuallyadditions:item_drill_upgrade_block_placing:0>: [
		[
			[<minecraft:cobblestone:0>, <minecraft:paper:0>, <minecraft:cobblestone:0>],
			[metals.nickel.plate, <actuallyadditions:item_misc:7>, metals.nickel.plate],
			[<minecraft:cobblestone:0>, <minecraft:paper:0>, <minecraft:cobblestone:0>]
		]
	],
	<actuallyadditions:item_laser_wrench:0>: [
		[
			[<actuallyadditions:item_misc:8>, null, null],
			[null, metals.nickel.rod, null],
			[null, null, metals.nickel.rod]
		]
	],
	<actuallyadditions:block_furnace_solar:0>: [
		[
			[<galacticraftcore:basic_item:12>, <actuallyadditions:block_misc:9>, <galacticraftcore:basic_item:12>],
			[<actuallyadditions:item_misc:8>, <minecraft:glowstone_dust:0>, <actuallyadditions:item_misc:8>],
			[<galacticraftcore:basic_item:12>, <minecraft:iron_bars:0>, <galacticraftcore:basic_item:12>]
		]
	],
	<actuallyadditions:block_greenhouse_glass:0> * 2: [
		[
			[<appliedenergistics2:quartz_vibrant_glass:0>, <ore:treeSapling>, <appliedenergistics2:quartz_vibrant_glass:0>],
			[<ore:treeSapling>, <minecraft:lapis_block:0>, <ore:treeSapling>],
			[<appliedenergistics2:quartz_vibrant_glass:0>, <ore:treeSapling>, <appliedenergistics2:quartz_vibrant_glass:0>]
		]
	],
	<actuallyadditions:block_coffee_machine:0>: [
		[
			[null, <actuallyadditions:item_misc:13>, null],
			[null, <actuallyadditions:block_misc:9>, null],
			[<actuallyadditions:item_misc:7>, metals.nickel.plate, <actuallyadditions:item_misc:7>]
		]
	],
	<actuallyadditions:block_fishing_net:0>: [
		[
			[<minecraft:string:0>, <minecraft:string:0>, <minecraft:string:0>],
			[<minecraft:string:0>, <minecraft:enchanted_book:0>.withTag({StoredEnchantments: utils.makeJeidTag(<enchantment:minecraft:luck_of_the_sea>.makeEnchantment(1)).ench}), <minecraft:string:0>],
			[<minecraft:string:0>, <minecraft:string:0>, <minecraft:string:0>]
		]
	],
	<actuallyadditions:block_heat_collector:0>: [
		[
			[<minecraft:iron_bars:0>, <minecraft:repeater:0>, <minecraft:iron_bars:0>],
			[<actuallyadditions:item_misc:8>, metals.nickel.plate, <actuallyadditions:item_misc:8>],
			[<minecraft:iron_bars:0>, <actuallyadditions:block_misc:9>, <minecraft:iron_bars:0>]
		]
	],
	<actuallyadditions:item_misc:16>: [
		[
			[null, <immersiveengineering:material:20>, <immersiveengineering:drillhead:0>],
			[<immersiveengineering:material:20>, <immersiveengineering:metal_device0:0>, <immersiveengineering:material:20>],
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
	<pneumaticcraft:assembly_drill:0>: [
		[
			[<actuallyadditions:item_misc:16>, <pneumaticcraft:pneumatic_cylinder:0>, <pneumaticcraft:pneumatic_cylinder:0>],
			[null, null, <pneumaticcraft:pneumatic_cylinder:0>],
			[metals.compressedIron.ingot, <pneumaticcraft:printed_circuit_board:0>, metals.compressedIron.ingot]
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
			[<actuallyadditions:item_misc:9>, craftingUtils.getBucketAndTankIngredient(<liquid:water>), <actuallyadditions:item_misc:9>],
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
	<actuallyadditions:item_booklet:0>: [
		[<actuallyadditions:item_coffee_seed:0>, <primal:plant_cloth:0>]
	],
	<actuallyadditions:item_coffee_seed:0> : [
		[<actuallyadditions:item_coffee_beans:0>]
	],
	<actuallyadditions:item_misc:9>: [
		[<betterwithaddons:japanmat:4>, <ore:foodSalt>, <ore:bottleWater>.transformReplace(<minecraft:glass_bottle:0>)],
		[<betterwithaddons:japanmat:4>, <ore:foodSalt>, craftingUtils.getBucketAndTankIngredient(<liquid:water>)],
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
static removeRecipes as IItemStack[] = [
	<actuallyadditions:block_atomic_reconstructor:0>,
	<actuallyadditions:block_bio_reactor:0>,
	<actuallyadditions:block_breaker:0>,
	<actuallyadditions:block_canola_press:0>,
	<actuallyadditions:block_coal_generator:0>,
	<actuallyadditions:block_coffee_machine:0>,
	<actuallyadditions:block_compost:0>,
	<actuallyadditions:block_directional_breaker:0>,
	<actuallyadditions:block_farmer:0>,
	<actuallyadditions:block_feeder:0>,
	<actuallyadditions:block_fermenting_barrel:0>,
	<actuallyadditions:block_furnace_double:0>,
	<actuallyadditions:block_furnace_solar:0>,
	<actuallyadditions:block_giant_chest_large:0>,
	<actuallyadditions:block_giant_chest_medium:0>,
	<actuallyadditions:block_greenhouse_glass:0>,
	<actuallyadditions:block_grinder:0>,
	<actuallyadditions:block_grinder_double:0>,
	<actuallyadditions:block_heat_collector:0>,
	<actuallyadditions:block_misc:8>,
	<actuallyadditions:block_misc:9>,
	<actuallyadditions:block_oil_generator:0>,
	<actuallyadditions:block_smiley_cloud:0>,
	<actuallyadditions:item_battery:0>,
	<actuallyadditions:item_battery_double:0>,
	<actuallyadditions:item_battery_quadruple:0>,
	<actuallyadditions:item_battery_quintuple:0>,
	<actuallyadditions:item_battery_triple:0>,
	<actuallyadditions:item_drill:*>,
	<actuallyadditions:item_drill_upgrade_block_placing:0>,
	<actuallyadditions:item_drill_upgrade_five_by_five:0>,
	<actuallyadditions:item_drill_upgrade_fortune:0>,
	<actuallyadditions:item_drill_upgrade_fortune_ii:0>,
	<actuallyadditions:item_drill_upgrade_silk_touch:0>,
	<actuallyadditions:item_drill_upgrade_speed:0>,
	<actuallyadditions:item_drill_upgrade_speed_ii:0>,
	<actuallyadditions:item_drill_upgrade_speed_iii:0>,
	<actuallyadditions:item_drill_upgrade_three_by_three:0>,
	<actuallyadditions:item_food:12>,
	<actuallyadditions:item_food:14>,
	<actuallyadditions:item_food:8>,
	<actuallyadditions:item_laser_wrench:0>,
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

function initDrillRecipe() {
	recipes.addShapeless("colored_drill",
		<actuallyadditions:item_drill:*>,
		[<ore:toolDrill>.marked("drill"), <ore:plasticColored>.marked("plastic")],
		function(out, ins, cInfo) {
			var drillMeta = 15 - ins.plastic.metadata;
			return out.definition.makeStack(drillMeta).withTag(ins.drill.tag);
		},
		null
	);
}

function init() {
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

	// Init the drill recipe
	scripts.crafttweaker.recipes.mods.actuallyadditions.initDrillRecipe();
}
