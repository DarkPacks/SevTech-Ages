/*
    SevTech: Ages Pneumatic Craft Recipe Script

    This script handles the recipes for Pneumatic Craft.

    Note: These scripts are created and for the usage in SevTech: Ages and other
    modpacks curated by DarkPacks. You can use these scripts for reference and for
    learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

/*
    Shaped Recipes
*/
static shapedRecipes as IIngredient[][][][IItemStack] = {
	<pneumaticcraft:flux_compressor> : [
		[
			[<minecraft:redstone>, metals.compressedIron.gear, <pneumaticcraft:printed_circuit_board>],
			[<minecraft:redstone_block>, <pneumaticcraft:turbine_rotor>, <pneumaticcraft:advanced_pressure_tube>],
			[<minecraft:redstone>, <minecraft:furnace>, <pneumaticcraft:printed_circuit_board>]
		]
	],
	<pneumaticcraft:pneumatic_dynamo> : [
		[
			[null, <pneumaticcraft:advanced_pressure_tube>, null],
			[metals.compressedIron.gear, metals.compressedIron.ingot, metals.compressedIron.gear],
			[metals.compressedIron.ingot, <pneumaticcraft:printed_circuit_board>, metals.compressedIron.ingot]
		]
	],
	<pneumaticcraft:programming_puzzle:1> * 8 : [
		[
			[<pneumaticcraft:plastic:1>, <pneumaticcraft:plastic:1>, <pneumaticcraft:plastic:1>],
			[<pneumaticcraft:plastic:1>, <pneumaticcraft:printed_circuit_board>, <pneumaticcraft:plastic:1>],
			[<pneumaticcraft:plastic:1>, <pneumaticcraft:plastic:1>, <pneumaticcraft:plastic:1>]
		]
	],
	<pneumaticcraft:programming_puzzle:2> * 8 : [
		[
			[<pneumaticcraft:plastic:2>, <pneumaticcraft:plastic:2>, <pneumaticcraft:plastic:2>],
			[<pneumaticcraft:plastic:2>, <pneumaticcraft:printed_circuit_board>, <pneumaticcraft:plastic:2>],
			[<pneumaticcraft:plastic:2>, <pneumaticcraft:plastic:2>, <pneumaticcraft:plastic:2>]
		]
	],
	<pneumaticcraft:programming_puzzle:3> * 8 : [
		[
			[<pneumaticcraft:plastic:3>, <pneumaticcraft:plastic:3>, <pneumaticcraft:plastic:3>],
			[<pneumaticcraft:plastic:3>, <pneumaticcraft:printed_circuit_board>, <pneumaticcraft:plastic:3>],
			[<pneumaticcraft:plastic:3>, <pneumaticcraft:plastic:3>, <pneumaticcraft:plastic:3>]
		]
	],
	<pneumaticcraft:programming_puzzle:4> * 8 : [
		[
			[<pneumaticcraft:plastic:4>, <pneumaticcraft:plastic:4>, <pneumaticcraft:plastic:4>],
			[<pneumaticcraft:plastic:4>, <pneumaticcraft:printed_circuit_board>, <pneumaticcraft:plastic:4>],
			[<pneumaticcraft:plastic:4>, <pneumaticcraft:plastic:4>, <pneumaticcraft:plastic:4>]
		]
	],
	<pneumaticcraft:programming_puzzle:5> * 8 : [
		[
			[<pneumaticcraft:plastic:5>, <pneumaticcraft:plastic:5>, <pneumaticcraft:plastic:5>],
			[<pneumaticcraft:plastic:5>, <pneumaticcraft:printed_circuit_board>, <pneumaticcraft:plastic:5>],
			[<pneumaticcraft:plastic:5>, <pneumaticcraft:plastic:5>, <pneumaticcraft:plastic:5>]
		]
	],
	<pneumaticcraft:programming_puzzle:6> * 8 : [
		[
			[<pneumaticcraft:plastic:6>, <pneumaticcraft:plastic:6>, <pneumaticcraft:plastic:6>],
			[<pneumaticcraft:plastic:6>, <pneumaticcraft:printed_circuit_board>, <pneumaticcraft:plastic:6>],
			[<pneumaticcraft:plastic:6>, <pneumaticcraft:plastic:6>, <pneumaticcraft:plastic:6>]
		]
	],
	<pneumaticcraft:programming_puzzle:8> * 8 : [
		[
			[<pneumaticcraft:plastic:8>, <pneumaticcraft:plastic:8>, <pneumaticcraft:plastic:8>],
			[<pneumaticcraft:plastic:8>, <pneumaticcraft:printed_circuit_board>, <pneumaticcraft:plastic:8>],
			[<pneumaticcraft:plastic:8>, <pneumaticcraft:plastic:8>, <pneumaticcraft:plastic:8>]
		]
	],
	<pneumaticcraft:programming_puzzle:9> * 8 : [
		[
			[<pneumaticcraft:plastic:9>, <pneumaticcraft:plastic:9>, <pneumaticcraft:plastic:9>],
			[<pneumaticcraft:plastic:9>, <pneumaticcraft:printed_circuit_board>, <pneumaticcraft:plastic:9>],
			[<pneumaticcraft:plastic:9>, <pneumaticcraft:plastic:9>, <pneumaticcraft:plastic:9>]
		]
	],
	<pneumaticcraft:programming_puzzle:10> * 8 : [
		[
			[<pneumaticcraft:plastic:10>, <pneumaticcraft:plastic:10>, <pneumaticcraft:plastic:10>],
			[<pneumaticcraft:plastic:10>, <pneumaticcraft:printed_circuit_board>, <pneumaticcraft:plastic:10>],
			[<pneumaticcraft:plastic:10>, <pneumaticcraft:plastic:10>, <pneumaticcraft:plastic:10>]
		]
	],
	<pneumaticcraft:programming_puzzle:11> * 8 : [
		[
			[<pneumaticcraft:plastic:11>, <pneumaticcraft:plastic:11>, <pneumaticcraft:plastic:11>],
			[<pneumaticcraft:plastic:11>, <pneumaticcraft:printed_circuit_board>, <pneumaticcraft:plastic:11>],
			[<pneumaticcraft:plastic:11>, <pneumaticcraft:plastic:11>, <pneumaticcraft:plastic:11>]
		]
	],
	<pneumaticcraft:programming_puzzle:12> * 8 : [
		[
			[<pneumaticcraft:plastic:12>, <pneumaticcraft:plastic:12>, <pneumaticcraft:plastic:12>],
			[<pneumaticcraft:plastic:12>, <pneumaticcraft:printed_circuit_board>, <pneumaticcraft:plastic:12>],
			[<pneumaticcraft:plastic:12>, <pneumaticcraft:plastic:12>, <pneumaticcraft:plastic:12>]
		]
	],
	<pneumaticcraft:programming_puzzle:14> * 8 : [
		[
			[<pneumaticcraft:plastic:14>, <pneumaticcraft:plastic:14>, <pneumaticcraft:plastic:14>],
			[<pneumaticcraft:plastic:14>, <pneumaticcraft:printed_circuit_board>, <pneumaticcraft:plastic:14>],
			[<pneumaticcraft:plastic:14>, <pneumaticcraft:plastic:14>, <pneumaticcraft:plastic:14>]
		]
	],
	<pneumaticcraft:programming_puzzle:15> * 8 : [
		[
			[<pneumaticcraft:plastic:15>, <pneumaticcraft:plastic:15>, <pneumaticcraft:plastic:15>],
			[<pneumaticcraft:plastic:15>, <pneumaticcraft:printed_circuit_board>, <pneumaticcraft:plastic:15>],
			[<pneumaticcraft:plastic:15>, <pneumaticcraft:plastic:15>, <pneumaticcraft:plastic:15>]
		]
	],
	<pneumaticcraft:pcb_blueprint> : [
		[
			[<industrialforegoing:plastic>, <industrialforegoing:plastic>, <industrialforegoing:plastic>],
			[<immersiveengineering:material:27>, <buildcraftbuilders:snapshot:2>, <immersiveengineering:material:27>],
			[<industrialforegoing:plastic>, <industrialforegoing:plastic>, <industrialforegoing:plastic>]
		]
	],
	<pneumaticcraft:pressure_chamber_wall> * 8 : [
		[
			[<pneumaticcraft:ingot_iron_compressed>, <pneumaticcraft:ingot_iron_compressed>, <pneumaticcraft:ingot_iron_compressed>],
			[<pneumaticcraft:ingot_iron_compressed>, null, <pneumaticcraft:ingot_iron_compressed>],
			[<pneumaticcraft:ingot_iron_compressed>, <pneumaticcraft:ingot_iron_compressed>, <pneumaticcraft:ingot_iron_compressed>]
		]
	],
	<pneumaticcraft:pressure_chamber_glass> * 8 : [
		[
			[<pneumaticcraft:ingot_iron_compressed>, <pneumaticcraft:ingot_iron_compressed>, <pneumaticcraft:ingot_iron_compressed>],
			[<pneumaticcraft:ingot_iron_compressed>, <ore:blockGlass>, <pneumaticcraft:ingot_iron_compressed>],
			[<pneumaticcraft:ingot_iron_compressed>, <pneumaticcraft:ingot_iron_compressed>, <pneumaticcraft:ingot_iron_compressed>]
		]
	],
	<pneumaticcraft:gps_tool:0> : [
		[
			[null, <minecraft:redstone_torch>, null],
			[<pneumaticcraft:plastic:1>, <ore:paneGlass>, <pneumaticcraft:plastic:1>],
			[<pneumaticcraft:plastic:1>, metals.platinum.plate, <pneumaticcraft:plastic:1>]
		]
	],
	<pneumaticcraft:crop_support> * 2: [
		[
			[metals.compressedIron.rod, null, metals.compressedIron.rod],
			[metals.compressedIron.rod, null, metals.compressedIron.rod],
			[metals.compressedIron.rod, null, metals.compressedIron.rod]
		]
	]
};

static namedShapedRecipes as IIngredient[][][][string][IItemStack] = {};

/*
    Mirrored Recipes
*/
static mirroredRecipes as IIngredient[][][][IItemStack] = {};

static namedMirroredRecipes as IIngredient[][][][string][IItemStack] = {};

/*
    Shapeless Recipes
*/
static shapelessRecipes as IIngredient[][][IItemStack] = {
	<pneumaticcraft:printed_circuit_board> : [
		[
			<pneumaticcraft:unassembled_pcb>, <pneumaticcraft:transistor>, <pneumaticcraft:transistor>,
			<pneumaticcraft:transistor>, <pneumaticcraft:capacitor>, <pneumaticcraft:capacitor>,
			<pneumaticcraft:capacitor>, <appliedenergistics2:material>, <appliedenergistics2:material>
		]
	],
};

static namedShapelessRecipes as IIngredient[][][string][IItemStack] = {};

/*
    Recipe Removals
*/
static removeRecipes as IIngredient[] = [
	<pneumaticcraft:assembly_drill>,
	<pneumaticcraft:flux_compressor>,
	<pneumaticcraft:gps_tool:0>,
	<pneumaticcraft:gps_tool:30000>,
	<pneumaticcraft:pneumatic_dynamo>,
	<pneumaticcraft:pressure_chamber_glass>,
	<pneumaticcraft:pressure_chamber_wall>,
	<pneumaticcraft:printed_circuit_board>,
	<pneumaticcraft:programming_puzzle:10>,
	<pneumaticcraft:programming_puzzle:11>,
	<pneumaticcraft:programming_puzzle:12>,
	<pneumaticcraft:programming_puzzle:14>,
	<pneumaticcraft:programming_puzzle:15>,
	<pneumaticcraft:programming_puzzle:1>,
	<pneumaticcraft:programming_puzzle:2>,
	<pneumaticcraft:programming_puzzle:3>,
	<pneumaticcraft:programming_puzzle:4>,
	<pneumaticcraft:programming_puzzle:5>,
	<pneumaticcraft:programming_puzzle:6>,
	<pneumaticcraft:programming_puzzle:8>,
	<pneumaticcraft:programming_puzzle:9>
];

static removeRegex as string[] = [
	"pneumaticcraft:color_drone",
	"pneumaticcraft:logistic_to_drone"
];

function init() {
	// Un-named recipes
	var shapedRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.pneumaticcraft.shapedRecipes;
	var mirroredRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.pneumaticcraft.mirroredRecipes;
	var shapelessRecipes as IIngredient[][][IItemStack] = scripts.crafttweaker.recipes.mods.pneumaticcraft.shapelessRecipes;

	// Named recipes
	var namedShapedRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.pneumaticcraft.namedShapedRecipes;
	var namedMirroredRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.pneumaticcraft.namedMirroredRecipes;
	var namedShapelessRecipes as IIngredient[][][string][IItemStack] = scripts.crafttweaker.recipes.mods.pneumaticcraft.namedShapelessRecipes;

	var removeRegex as string[] = scripts.crafttweaker.recipes.mods.pneumaticcraft.removeRegex;
	var removeRecipes as IItemStack[] = scripts.crafttweaker.recipes.mods.pneumaticcraft.removeRecipes;

	// Un-named recipes
	recipeUtil.process(shapedRecipes, false);
    recipeUtil.process(mirroredRecipes, true);
    recipeUtil.process(shapelessRecipes);

	// Named recipes
	recipeUtil.processNamed(namedShapedRecipes, false);
    recipeUtil.processNamed(namedMirroredRecipes, true);
    recipeUtil.processNamed(namedShapelessRecipes);

	recipeUtil.removeRecipes(removeRecipes);
	recipeUtil.removeRecipes(removeRegex);
}
