import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

var STAGE = STAGES.three;

//Entire Mods into Stage three
var modIDs = [
	"enderutilities",
	"immersivepetroleum",
	"openglider",
	"stevescarts"
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
	<minecraft:enchanting_table> : [
		[[<minecraft:dye:4>, <minecraft:obsidian>, <minecraft:dye:4>], [<minecraft:obsidian>, <ore:book>, <minecraft:obsidian>], [<minecraft:dye:4>, <minecraft:obsidian>, <minecraft:dye:4>]]
	],
	<prospectors:prospector_med> : [
		[[null, <minecraft:redstone>, <ore:blockGlass>], [null, <minecraft:dye:4>, <minecraft:redstone>], [<minecraft:dye:4>, null, null]]
	],

	//Immersive Engineering
	<immersiveengineering:metal_decoration0:3> : [
		[
			[metals.iron.plate, <contenttweaker:material_part:55>, metals.iron.plate],
			[<contenttweaker:material_part:55>, <immersiveengineering:material:26>, <contenttweaker:material_part:55>],
			[metals.iron.plate, <contenttweaker:material_part:55>, metals.iron.plate]
		]
	],
	<immersiveengineering:tool:1> : [
		[[<ore:stickTreatedWood>, <tconstruct:knife_blade>.withTag({Material: "iron"})], [null, <ore:stickTreatedWood>]]
	],
	<immersiveengineering:tool>.withTag({multiblockInterdiction: ["IE:Assembler"]}) : [
		[[null, iron, str], [null, stick, iron], [stick, null, null]]
	],

	//Embers Stage 3
	<embers:axe_aluminum> : [
		[[metals.aluminum.plate, metals.aluminum.plate, null], [metals.aluminum.plate, stick, null], [null, stick, null]]
	],
	<embers:axe_lead> : [
		[[metals.lead.plate, metals.lead.plate, null], [metals.lead.plate, stick, null], [null, stick, null]]
	],
	<embers:axe_nickel> : [
		[[metals.nickel.plate, metals.nickel.plate, null], [metals.nickel.plate, stick, null], [null, stick, null]]
	],
	<embers:axe_silver> : [
		[[metals.silver.plate, metals.silver.plate, null], [metals.silver.plate, stick, null], [null, stick, null]]
	],
	<embers:hoe_aluminum> : [
		[[metals.aluminum.plate, metals.aluminum.plate, null], [null, stick, null], [null, stick, null]]
	],
	<embers:hoe_lead> : [
		[[metals.lead.plate, metals.lead.plate, null], [null, stick, null], [null, stick, null]]
	],
	<embers:hoe_nickel> : [
		[[metals.nickel.plate, metals.nickel.plate, null], [null, stick, null], [null, stick, null]]
	],
	<embers:hoe_silver> : [
		[[metals.silver.plate, metals.silver.plate, null], [null, stick, null], [null, stick, null]]
	],
	<embers:pickaxe_aluminum> : [
		[[metals.aluminum.plate, metals.aluminum.plate, metals.aluminum.plate], [null, stick, null], [null, stick, null]]
	],
	<embers:pickaxe_lead> : [
		[[metals.lead.plate, metals.lead.plate, metals.lead.plate], [null, stick, null], [null, stick, null]]
	],
	<embers:pickaxe_nickel> : [
		[[metals.nickel.plate, metals.nickel.plate, metals.nickel.plate], [null, stick, null], [null, stick, null]]
	],
	<embers:pickaxe_silver> : [
		[[metals.silver.plate, metals.silver.plate, metals.silver.plate], [null, stick, null], [null, stick, null]]
	],
	<embers:shovel_aluminum> : [
		[[null, metals.aluminum.plate, null], [null, stick, null], [null, stick, null]]
	],
	<embers:shovel_lead> : [
		[[null, metals.lead.plate, null], [null, stick, null], [null, stick, null]]
	],
	<embers:shovel_nickel> : [
		[[null, metals.nickel.plate, null], [null, stick, null], [null, stick, null]]
	],
	<embers:shovel_silver> : [
		[[null, metals.silver.plate, null], [null, stick, null], [null, stick, null]]
	],
	<embers:sword_aluminum> : [
		[[null, metals.aluminum.plate, null], [null, metals.aluminum.plate, null], [null, stick, null]]
	],
	<embers:sword_lead> : [
		[[null, metals.lead.plate, null], [null, metals.lead.plate, null], [null, stick, null]]
	],
	<embers:sword_nickel> : [
		[[null, metals.nickel.plate, null], [null, metals.nickel.plate, null], [null, stick, null]]
	],
	<embers:sword_silver> : [
		[[null, metals.silver.plate, null], [null, metals.silver.plate, null], [null, stick, null]]
	],

	//Rails
	<minecraft:activator_rail> * 2 : [
		[
			[metals.iron.plate, plank, metals.iron.plate],
			[metals.iron.plate, <minecraft:redstone_torch>, metals.iron.plate],
			[metals.iron.plate, plank, metals.iron.plate]
		]
	],
	<minecraft:detector_rail> * 2 : [
		[
			[metals.iron.plate, <minecraft:redstone>, metals.iron.plate],
			[metals.iron.plate, <minecraft:light_weighted_pressure_plate>, metals.iron.plate],
			[metals.iron.plate, <minecraft:redstone>, metals.iron.plate]
		]
	],
	<minecraft:golden_rail> * 4 : [
		[[metals.gold.plate, <minecraft:redstone>, metals.gold.plate], [metals.gold.plate, plank, metals.gold.plate], [metals.gold.plate, <minecraft:redstone>, metals.gold.plate]]
	],
	<minecraft:rail> * 8 : [
		[[metals.iron.plate, plank, metals.iron.plate], [metals.iron.plate, plank, metals.iron.plate], [metals.iron.plate, plank, metals.iron.plate]]
	],
	<tconstruct:wood_rail> * 8 : [
		[[<ore:thinWood>, plank, <ore:thinWood>], [<ore:thinWood>, plank, <ore:thinWood>], [<ore:thinWood>, plank, <ore:thinWood>]]
	],

	//Storage Drawers
	<storagedrawers:compdrawers> : [
		[
			[metals.iron.plate, metals.platinum.plate, metals.iron.plate],
			[<minecraft:piston>, <ore:drawerTrim>, <minecraft:piston>],
			[metals.iron.plate, <astralsorcery:itemcraftingcomponent:1>, metals.iron.plate]
		]
	],
	<storagedrawers:controller> : [
		[
			[metals.platinum.plate, <nex:block_amethyst>, metals.platinum.plate],
			[<immersiveengineering:metal_decoration0:3>, <ore:drawerTrim>, <immersiveengineering:metal_decoration0:3>],
			[metals.platinum.plate, <astralsorcery:itemcraftingcomponent:1>, metals.platinum.plate]
		]
	],
	<storagedrawers:controllerslave> : [
		[
			[metals.platinum.plate, <ore:plateRedstoneAlloy>, metals.platinum.plate],
			[metals.iron.plate, <ore:drawerTrim>, metals.iron.plate],
			[metals.platinum.plate, <immersiveengineering:metal_decoration0:3>, metals.platinum.plate]
		]
	],

	//Natura
	<natura:netherrack_furnace> : [
		[[<minecraft:nether_brick>, <minecraft:nether_brick>, <minecraft:nether_brick>],
		[<minecraft:nether_brick>, <minecraft:furnace>, <minecraft:nether_brick>],
		[<minecraft:nether_brick>, <minecraft:blaze_powder>, <minecraft:nether_brick>]]
	],

	//Steve's Carts
	<stevescarts:blockcartassembler> : [
		[[<minecraft:clock>, <extendedcrafting:material:8>, <immersiveengineering:material:27>],
		[<minecraft:glass>, <natura:netherrack_furnace>, <minecraft:glass>],
		[metals.lead.plate, <ironchest:iron_chest:1>, metals.lead.plate]]
	],


	//Modular Machinery

	<modularmachinery:blockcontroller> : [
		[[<contenttweaker:material_part:71>, <immersiveengineering:wirecoil>, <contenttweaker:material_part:71>],
		[<contenttweaker:material_part:54>, <modularmachinery:blockcasing>, <contenttweaker:material_part:54>],
		[<contenttweaker:material_part:71>, <immersiveengineering:material:27>, <contenttweaker:material_part:71>]]
	],

	<modularmachinery:blockcasing> : [
		[[<contenttweaker:material_part:71>, <contenttweaker:material_part:71>, <contenttweaker:material_part:71>],
		[<contenttweaker:material_part:71>, null, <contenttweaker:material_part:71>],
		[<contenttweaker:material_part:71>, <contenttweaker:material_part:71>, <contenttweaker:material_part:71>]]
	],

	<modularmachinery:blockcasing:1> : [
		[[<contenttweaker:material_part:71>, <minecraft:iron_bars>, <contenttweaker:material_part:71>],
		[<minecraft:iron_bars>, null, <minecraft:iron_bars>],
		[<contenttweaker:material_part:71>, <minecraft:iron_bars>, <contenttweaker:material_part:71>]]
	],

	<modularmachinery:blockoutputbus:1> : [
		[[<contenttweaker:material_part:71>, <uppers:upper>, <contenttweaker:material_part:71>],
		[null, <modularmachinery:blockcasing>, null],
		[<contenttweaker:material_part:71>, null, <contenttweaker:material_part:71>]]
	],

	<modularmachinery:blockinputbus:1> : [
		[[<contenttweaker:material_part:71>, <minecraft:hopper>, <contenttweaker:material_part:71>],
		[null, <modularmachinery:blockcasing>, null],
		[<contenttweaker:material_part:71>, null, <contenttweaker:material_part:71>]]
	],


	<modularmachinery:blockfluidinputhatch> : [
		[[<contenttweaker:material_part:71>, <uppers:upper>, <contenttweaker:material_part:71>],
		[null, <immersiveengineering:metal_device0:4>, null],
		[<contenttweaker:material_part:71>, <immersiveengineering:metal_device0:4>, <contenttweaker:material_part:71>]]
	],


	<modularmachinery:blockenergyinputhatch> : [
		[[<contenttweaker:material_part:71>, <immersiveengineering:wirecoil>, <contenttweaker:material_part:71>],
		[<immersiveengineering:wirecoil>, <immersiveengineering:metal_decoration0:3>, <immersiveengineering:wirecoil>],
		[<contenttweaker:material_part:71>, <immersiveengineering:wirecoil>, <contenttweaker:material_part:71>]]
	]


} as IIngredient[][][][IItemStack];

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
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:tool_auto_torch>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:wand_missile>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:fire_killer>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:purple_boots>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:charm_wing>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:gold_furnace_minecart>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:turret_minecart>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:password_block>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:plate_push_fast>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:ender_blaze>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:chest_sack_empty>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:entity_detector>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:tool_swap>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:charm_fire>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:gold_minecart>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:stone_minecart>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:plate_push>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:magnet_anti_block>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:ender_water>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:chest_sack>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:carbon_paper>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:purple_chestplate>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:purple_helmet>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:sprinkler>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:block_hydrator>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:dropper_minecart>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:horse_upgrade_speed>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:plate_push_slowest>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:ender_snow>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:evoker_fang>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:tool_push>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:fire_dark>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:horse_upgrade_jump>);

//AbyssalCraft
mods.recipestages.Recipes.setRecipeStage("three", <abyssalcraft:crystal:*>);
mods.recipestages.Recipes.setRecipeStage("three", <abyssalcraft:crystalshard:*>);
mods.recipestages.Recipes.setRecipeStage("three", <abyssalcraft:crystalcluster:*>);
mods.recipestages.Recipes.setRecipeStage("three", <abyssalcraft:crystalcluster2:*>);
mods.recipestages.Recipes.setRecipeStage("three", <abyssalcraft:crystalfragment:*>);
mods.recipestages.Recipes.setRecipeStage("three", <abyssalcraft:transmutator>);
mods.recipestages.Recipes.setRecipeStage("three", <abyssalcraft:transmutationgem>);
