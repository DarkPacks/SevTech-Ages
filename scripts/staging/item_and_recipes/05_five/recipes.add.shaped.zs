#priority -2

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

var STAGE = STAGES.five;

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
	<prospectors:prospector_best> : [
		[[null, <minecraft:diamond>, <ore:blockGlass>], [null, <minecraft:blaze_rod>, <minecraft:diamond>], [<minecraft:blaze_rod>, null, null]]
	],

	//Improved Backpacks
	<improvedbackpacks:upgrade:4> : [
		[
			[null, leather, null],
			[<minecraft:diamond>, <improvedbackpacks:upgrade:3>, <minecraft:diamond>],
			[null, <minecraft:diamond>, null]
		]
	],

	//Spartan Shields
	<spartanshields:shield_basic_diamond> : [
		[[null, <minecraft:diamond>, null], [<minecraft:diamond>, <spartanshields:shield_basic_iron>, <minecraft:diamond>], [null, <minecraft:diamond>, null]]
	],
	<spartanshields:shield_riot_rftools> : [
		[[null, <actuallyadditions:item_battery_quadruple>, null], [<tconstruct:materials:14>, <spartanshields:shield_basic_copper>, <tconstruct:materials:14>], [null, <rftools:shield_block3>, null]]
	],

	//Storage Drawers
	<storagedrawers:upgrade_storage:3> : [
		[
			[<immersiveengineering:material>, <immersiveengineering:material>, <immersiveengineering:material>],
			[<minecraft:diamond>, <storagedrawers:upgrade_template>, <minecraft:diamond>],
			[<immersiveengineering:material>, <immersiveengineering:material>, <immersiveengineering:material>]
		]
	],
	<storagedrawers:upgrade_storage:4> : [
		[
			[<immersiveengineering:material>, <immersiveengineering:material>, <immersiveengineering:material>],
			[<minecraft:emerald>, <storagedrawers:upgrade_template>, <minecraft:emerald>],
			[<immersiveengineering:material>, <immersiveengineering:material>, <immersiveengineering:material>]
		]
	],

	//Iron Jetpacks
	<ironjetpacks:electrum_capacitor>: [
		[
			[<galacticraftcore:basic_item:9>, <ironjetpacks:electrum_cell>, <galacticraftcore:basic_item:9>],
			[metals.electrum.plate, <ironjetpacks:electrum_cell>, metals.electrum.plate],
			[<mekanism:compressedobsidian>, metals.compressedIron.gear, <mekanism:compressedobsidian>]
		]
	],
	<ironjetpacks:basic_coil>: [
		[
			[null, <immersiveengineering:wirecoil:1>, metals.redstoneAlloy.rod],
			[<immersiveengineering:wirecoil:5>, metals.redstoneAlloy.rod, <immersiveengineering:wirecoil:5>],
			[metals.redstoneAlloy.rod, <immersiveengineering:wirecoil:1>, null]
		]
	],
	<ironjetpacks:advanced_coil>: [
		[
			[null, <immersiveengineering:wirecoil:4>, metals.galgadorian.rod],
			[<immersiveengineering:wirecoil:5>, metals.galgadorian.rod, <immersiveengineering:wirecoil:5>],
			[metals.galgadorian.rod, <immersiveengineering:wirecoil:4>, null]
		]
	],

	//Cyclic
	<cyclicmagic:harvester_block>: [
		[
			[<minecraft:emerald>, <mekanism:compressedobsidian>, <minecraft:emerald>],
			[metals.compressedIron.plate, <minecraft:diamond>, metals.compressedIron.plate],
			[<mekanism:compressedobsidian>, <mekanism:compressedobsidian>, <mekanism:compressedobsidian>]
		]
	],
	<cyclicmagic:block_forester>: [
		[
			[<mekanism:compressedobsidian>, <minecraft:daylight_detector>, <mekanism:compressedobsidian>],
			[metals.compressedIron.plate, <cyclicmagic:placer_block>, metals.compressedIron.plate],
			[<mekanism:compressedobsidian>, <mekanism:compressedobsidian>, <mekanism:compressedobsidian>]
		]
	],

	//Xnet
	<xnet:controller>: [
		[
			[metals.nickel.plate, <mekanism:transmitter>, metals.nickel.plate],
			[metals.redstoneAlloy.plate, <teslacorelib:machine_case>, metals.redstoneAlloy.plate],
			[metals.nickel.plate, <galacticraftplanets:item_basic_mars:5>, metals.nickel.plate]
		]
	],
	<xnet:router>: [
		[
			[metals.aluminum.plate, <xnet:netcable>, metals.aluminum.plate],
			[<xnet:netcable>, <rftools:machine_frame>, <xnet:netcable>],
			[metals.aluminum.plate, <xnet:netcable>, metals.aluminum.plate]
		]
	],

	//Rftools
	<rftools:matter_transmitter>: [
		[
			[<galacticraftplanets:item_basic_mars:5>, <mekanism:teleportationcore>, <galacticraftplanets:item_basic_mars:5>],
			[<galacticraftcore:cheese_curd>, <rftools:machine_frame>, <galacticraftcore:cheese_curd>],
			[metals.platinum.plate, metals.platinum.plate, metals.platinum.plate]
		]
	],
	<rftools:matter_receiver>: [
		[
			[metals.platinum.plate, metals.platinum.plate, metals.platinum.plate],
			[<galacticraftcore:cheese_curd>, <rftools:machine_frame>, <galacticraftcore:cheese_curd>],
			[<galacticraftplanets:item_basic_mars:5>, <mekanism:teleportationcore>, <galacticraftplanets:item_basic_mars:5>]
		]
	],
	<rftools:machine_frame>: [
		[
			[metals.invar.rod, <pneumaticcraft:plastic:8>, metals.invar.rod],
			[<pneumaticcraft:plastic:8>, null, <pneumaticcraft:plastic:8>],
			[metals.invar.rod, <pneumaticcraft:plastic:8>, metals.invar.rod]
		]
	],

	//Mekanism
	<mekanism:basicblock:7> * 4: [
		[
			[<galacticraftplanets:item_basic_mars:5>, <mekanism:ingot>, <galacticraftplanets:item_basic_mars:5>],
			[<galacticraftcore:cheese_curd>, null, <galacticraftcore:cheese_curd>],
			[metals.platinum.plate, <mekanism:ingot:3>, metals.platinum.plate]
		]
	],

	//Iron Chest
	<ironchest:iron_chest:2>: [
		[
			[<mekanism:compresseddiamond>, <mekanism:compresseddiamond>, <mekanism:compresseddiamond>],
			[<mekanism:compresseddiamond>, <minecraft:chest>, <mekanism:compresseddiamond>],
			[<mekanism:compresseddiamond>, <mekanism:compresseddiamond>, <mekanism:compresseddiamond>]
		]
	],
	<ironchest:iron_chest:5>: [
		[
			[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>],
			[<mekanism:compresseddiamond>, <ironchest:iron_chest:1>, <mekanism:compresseddiamond>],
			[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>]
		]
	],

	//Overloaded
	<overloaded:infinite_water_source>: [
		[
			[<actuallyadditions:block_crystal_empowered:1>, <bloodmagic:sigil_water>, <actuallyadditions:block_crystal_empowered:1>],
			[<mekanism:machineblock:12>, <mysticalagriculture:crafting:48>, <mekanism:machineblock:12>],
			[<actuallyadditions:block_crystal_empowered:1>, <immersiveengineering:metal_device0:5>, <actuallyadditions:block_crystal_empowered:1>]
		]
	],

	//Mystical Agriculture
	<twilightforest:steeleaf_ingot>: [
		//Re-add steeleaf ingot recipe
		[
			[<mysticalagriculture:steeleaf_essence>, <mysticalagriculture:steeleaf_essence>, <mysticalagriculture:steeleaf_essence>],
			[<mysticalagriculture:steeleaf_essence>, null, <mysticalagriculture:steeleaf_essence>],
			[<mysticalagriculture:steeleaf_essence>, <mysticalagriculture:steeleaf_essence>, <mysticalagriculture:steeleaf_essence>]
		]
	]
};

for item, recipesForItem in shapedRecipes {
	for recipe in recipesForItem {
		mods.recipestages.Recipes.addShaped(STAGE, item, recipe);
	}
}


////
//
// TO DO
//
////
mods.recipestages.Recipes.setRecipeStage("five", <cyclicmagic:horse_upgrade_type>);
mods.recipestages.Recipes.setRecipeStage("five", <cyclicmagic:tool_swap_match>);
mods.recipestages.Recipes.setRecipeStage("five", <cyclicmagic:book_ender>);
mods.recipestages.Recipes.setRecipeStage("five", <cyclicmagic:beacon_potion>);
mods.recipestages.Recipes.setRecipeStage("five", <cyclicmagic:password_remote>);
mods.recipestages.Recipes.setRecipeStage("five", <cyclicmagic:water_spreader>);
mods.recipestages.Recipes.setRecipeStage("five", <cyclicmagic:sword_slowness>);
mods.recipestages.Recipes.setRecipeStage("five", <cyclicmagic:sword_weakness>);
mods.recipestages.Recipes.setRecipeStage("five", <cyclicmagic:tool_warp_home>);
mods.recipestages.Recipes.setRecipeStage("five", <cyclicmagic:inventory_food>);
mods.recipestages.Recipes.setRecipeStage("five", <cyclicmagic:heart_food>);
mods.recipestages.Recipes.setRecipeStage("five", <cyclicmagic:apple_emerald>);
mods.recipestages.Recipes.setRecipeStage("five", <cyclicmagic:glowing_chorus>);
mods.recipestages.Recipes.setRecipeStage("five", <cyclicmagic:builder_pattern>);
mods.recipestages.Recipes.setRecipeStage("five", <cyclicmagic:charm_boat>);
mods.recipestages.Recipes.setRecipeStage("five", <cyclicmagic:tool_warp_spawn>);
mods.recipestages.Recipes.setRecipeStage("five", <cyclicmagic:magic_net>);
mods.recipestages.Recipes.setRecipeStage("five", <cyclicmagic:ender_wool>);
mods.recipestages.Recipes.setRecipeStage("five", <cyclicmagic:tool_elevate>);
mods.recipestages.Recipes.setRecipeStage("five", <cyclicmagic:sword_ender>);


//NEEDS RECIPES
mods.recipestages.Recipes.setRecipeStage("five", <extendedcrafting:material:128>);
