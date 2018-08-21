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
	<pneumaticcraft:flux_compressor:0> : [
		[
			[<minecraft:redstone:0>, metals.compressedIron.gear, <pneumaticcraft:printed_circuit_board:0>],
			[<minecraft:redstone_block:0>, <pneumaticcraft:turbine_rotor:0>, <pneumaticcraft:advanced_pressure_tube:0>],
			[<minecraft:redstone:0>, <minecraft:furnace:0>, <pneumaticcraft:printed_circuit_board:0>]
		]
	],
	<pneumaticcraft:assembly_laser:0> : [
		[
			[<pickletweaks:dye_powder:14>, <pneumaticcraft:pneumatic_cylinder:0>, <pneumaticcraft:pneumatic_cylinder:0>],
			[null, null, <pneumaticcraft:pneumatic_cylinder:0>],
			[metals.compressedIron.ingot, <pneumaticcraft:printed_circuit_board:0>, metals.compressedIron.ingot]
		]
	],
	<pneumaticcraft:pneumatic_dynamo:0> : [
		[
			[null, <pneumaticcraft:advanced_pressure_tube:0>, null],
			[metals.compressedIron.gear, metals.compressedIron.ingot, metals.compressedIron.gear],
			[metals.compressedIron.ingot, <pneumaticcraft:printed_circuit_board:0>, metals.compressedIron.ingot]
		]
	],
	<pneumaticcraft:programming_puzzle:1> * 8 : [
		[
			[<pneumaticcraft:plastic:1>, <pneumaticcraft:plastic:1>, <pneumaticcraft:plastic:1>],
			[<pneumaticcraft:plastic:1>, <pneumaticcraft:printed_circuit_board:0>, <pneumaticcraft:plastic:1>],
			[<pneumaticcraft:plastic:1>, <pneumaticcraft:plastic:1>, <pneumaticcraft:plastic:1>]
		]
	],
	<pneumaticcraft:programming_puzzle:2> * 8 : [
		[
			[<pneumaticcraft:plastic:2>, <pneumaticcraft:plastic:2>, <pneumaticcraft:plastic:2>],
			[<pneumaticcraft:plastic:2>, <pneumaticcraft:printed_circuit_board:0>, <pneumaticcraft:plastic:2>],
			[<pneumaticcraft:plastic:2>, <pneumaticcraft:plastic:2>, <pneumaticcraft:plastic:2>]
		]
	],
	<pneumaticcraft:programming_puzzle:3> * 8 : [
		[
			[<pneumaticcraft:plastic:3>, <pneumaticcraft:plastic:3>, <pneumaticcraft:plastic:3>],
			[<pneumaticcraft:plastic:3>, <pneumaticcraft:printed_circuit_board:0>, <pneumaticcraft:plastic:3>],
			[<pneumaticcraft:plastic:3>, <pneumaticcraft:plastic:3>, <pneumaticcraft:plastic:3>]
		]
	],
	<pneumaticcraft:programming_puzzle:4> * 8 : [
		[
			[<pneumaticcraft:plastic:4>, <pneumaticcraft:plastic:4>, <pneumaticcraft:plastic:4>],
			[<pneumaticcraft:plastic:4>, <pneumaticcraft:printed_circuit_board:0>, <pneumaticcraft:plastic:4>],
			[<pneumaticcraft:plastic:4>, <pneumaticcraft:plastic:4>, <pneumaticcraft:plastic:4>]
		]
	],
	<pneumaticcraft:programming_puzzle:5> * 8 : [
		[
			[<pneumaticcraft:plastic:5>, <pneumaticcraft:plastic:5>, <pneumaticcraft:plastic:5>],
			[<pneumaticcraft:plastic:5>, <pneumaticcraft:printed_circuit_board:0>, <pneumaticcraft:plastic:5>],
			[<pneumaticcraft:plastic:5>, <pneumaticcraft:plastic:5>, <pneumaticcraft:plastic:5>]
		]
	],
	<pneumaticcraft:programming_puzzle:6> * 8 : [
		[
			[<pneumaticcraft:plastic:6>, <pneumaticcraft:plastic:6>, <pneumaticcraft:plastic:6>],
			[<pneumaticcraft:plastic:6>, <pneumaticcraft:printed_circuit_board:0>, <pneumaticcraft:plastic:6>],
			[<pneumaticcraft:plastic:6>, <pneumaticcraft:plastic:6>, <pneumaticcraft:plastic:6>]
		]
	],
	<pneumaticcraft:programming_puzzle:8> * 8 : [
		[
			[<pneumaticcraft:plastic:8>, <pneumaticcraft:plastic:8>, <pneumaticcraft:plastic:8>],
			[<pneumaticcraft:plastic:8>, <pneumaticcraft:printed_circuit_board:0>, <pneumaticcraft:plastic:8>],
			[<pneumaticcraft:plastic:8>, <pneumaticcraft:plastic:8>, <pneumaticcraft:plastic:8>]
		]
	],
	<pneumaticcraft:programming_puzzle:9> * 8 : [
		[
			[<pneumaticcraft:plastic:9>, <pneumaticcraft:plastic:9>, <pneumaticcraft:plastic:9>],
			[<pneumaticcraft:plastic:9>, <pneumaticcraft:printed_circuit_board:0>, <pneumaticcraft:plastic:9>],
			[<pneumaticcraft:plastic:9>, <pneumaticcraft:plastic:9>, <pneumaticcraft:plastic:9>]
		]
	],
	<pneumaticcraft:programming_puzzle:10> * 8 : [
		[
			[<pneumaticcraft:plastic:10>, <pneumaticcraft:plastic:10>, <pneumaticcraft:plastic:10>],
			[<pneumaticcraft:plastic:10>, <pneumaticcraft:printed_circuit_board:0>, <pneumaticcraft:plastic:10>],
			[<pneumaticcraft:plastic:10>, <pneumaticcraft:plastic:10>, <pneumaticcraft:plastic:10>]
		]
	],
	<pneumaticcraft:programming_puzzle:11> * 8 : [
		[
			[<pneumaticcraft:plastic:11>, <pneumaticcraft:plastic:11>, <pneumaticcraft:plastic:11>],
			[<pneumaticcraft:plastic:11>, <pneumaticcraft:printed_circuit_board:0>, <pneumaticcraft:plastic:11>],
			[<pneumaticcraft:plastic:11>, <pneumaticcraft:plastic:11>, <pneumaticcraft:plastic:11>]
		]
	],
	<pneumaticcraft:programming_puzzle:12> * 8 : [
		[
			[<pneumaticcraft:plastic:12>, <pneumaticcraft:plastic:12>, <pneumaticcraft:plastic:12>],
			[<pneumaticcraft:plastic:12>, <pneumaticcraft:printed_circuit_board:0>, <pneumaticcraft:plastic:12>],
			[<pneumaticcraft:plastic:12>, <pneumaticcraft:plastic:12>, <pneumaticcraft:plastic:12>]
		]
	],
	<pneumaticcraft:programming_puzzle:14> * 8 : [
		[
			[<pneumaticcraft:plastic:14>, <pneumaticcraft:plastic:14>, <pneumaticcraft:plastic:14>],
			[<pneumaticcraft:plastic:14>, <pneumaticcraft:printed_circuit_board:0>, <pneumaticcraft:plastic:14>],
			[<pneumaticcraft:plastic:14>, <pneumaticcraft:plastic:14>, <pneumaticcraft:plastic:14>]
		]
	],
	<pneumaticcraft:programming_puzzle:15> * 8 : [
		[
			[<pneumaticcraft:plastic:15>, <pneumaticcraft:plastic:15>, <pneumaticcraft:plastic:15>],
			[<pneumaticcraft:plastic:15>, <pneumaticcraft:printed_circuit_board:0>, <pneumaticcraft:plastic:15>],
			[<pneumaticcraft:plastic:15>, <pneumaticcraft:plastic:15>, <pneumaticcraft:plastic:15>]
		]
	],
	<pneumaticcraft:pcb_blueprint:0> : [
		[
			[<industrialforegoing:plastic:0>, <industrialforegoing:plastic:0>, <industrialforegoing:plastic:0>],
			[<immersiveengineering:material:27>, <buildcraftbuilders:snapshot:2>, <immersiveengineering:material:27>],
			[<industrialforegoing:plastic:0>, <industrialforegoing:plastic:0>, <industrialforegoing:plastic:0>]
		]
	],
	<pneumaticcraft:pressure_chamber_wall:0> * 8 : [
		[
			[<pneumaticcraft:ingot_iron_compressed:0>, <pneumaticcraft:ingot_iron_compressed:0>, <pneumaticcraft:ingot_iron_compressed:0>],
			[<pneumaticcraft:ingot_iron_compressed:0>, null, <pneumaticcraft:ingot_iron_compressed:0>],
			[<pneumaticcraft:ingot_iron_compressed:0>, <pneumaticcraft:ingot_iron_compressed:0>, <pneumaticcraft:ingot_iron_compressed:0>]
		]
	],
	<pneumaticcraft:pressure_chamber_glass:0> * 8 : [
		[
			[<pneumaticcraft:ingot_iron_compressed:0>, <pneumaticcraft:ingot_iron_compressed:0>, <pneumaticcraft:ingot_iron_compressed:0>],
			[<pneumaticcraft:ingot_iron_compressed:0>, <ore:blockGlass>, <pneumaticcraft:ingot_iron_compressed:0>],
			[<pneumaticcraft:ingot_iron_compressed:0>, <pneumaticcraft:ingot_iron_compressed:0>, <pneumaticcraft:ingot_iron_compressed:0>]
		]
	],
	<pneumaticcraft:gps_tool:0> : [
		[
			[null, <minecraft:redstone_torch:0>, null],
			[<pneumaticcraft:plastic:1>, <ore:paneGlass>, <pneumaticcraft:plastic:1>],
			[<pneumaticcraft:plastic:1>, metals.platinum.plate, <pneumaticcraft:plastic:1>]
		]
	],
	<pneumaticcraft:crop_support:0> * 2: [
		[
			[metals.compressedIron.rod, null, metals.compressedIron.rod],
			[metals.compressedIron.rod, null, metals.compressedIron.rod],
			[metals.compressedIron.rod, null, metals.compressedIron.rod]
		]
	],
	<pneumaticcraft:armor_upgrade:0> : [
		[
			[<minecraft:dye:4>, metals.reinforcedMetal.ingot, <minecraft:dye:4>],
			[metals.reinforcedMetal.ingot, metals.compressedIron.ingot, metals.reinforcedMetal.ingot],
			[<minecraft:dye:4>, metals.reinforcedMetal.ingot, <minecraft:dye:4>]
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
	<pneumaticcraft:printed_circuit_board:0> : [
		[
			<pneumaticcraft:unassembled_pcb:0>, <pneumaticcraft:transistor:0>, <pneumaticcraft:transistor:0>,
			<pneumaticcraft:transistor:0>, <pneumaticcraft:capacitor:0>, <pneumaticcraft:capacitor:0>,
			<pneumaticcraft:capacitor:0>, <appliedenergistics2:material:0>, <appliedenergistics2:material:0>
		]
	],
};

static namedShapelessRecipes as IIngredient[][][string][IItemStack] = {};

/*
    Recipe Removals
*/
static removeRecipes as IItemStack[] = [
	<pneumaticcraft:armor_upgrade:0>,
	<pneumaticcraft:assembly_drill:0>,
	<pneumaticcraft:flux_compressor:0>,
	<pneumaticcraft:gps_tool:0>,
	<pneumaticcraft:gps_tool:30000>,
	<pneumaticcraft:pneumatic_dynamo:0>,
	<pneumaticcraft:pressure_chamber_glass:0>,
	<pneumaticcraft:pressure_chamber_wall:0>,
	<pneumaticcraft:printed_circuit_board:0>,
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
	<pneumaticcraft:programming_puzzle:9>,
	<pneumaticcraft:assembly_laser:0>
];

static removeRegex as string[] = [
	"pneumaticcraft:color_drone",
	"pneumaticcraft:logistic_to_drone"
];

function init() {
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
