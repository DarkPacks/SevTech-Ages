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
			[ip, <contenttweaker:material_part:55>, ip],
			[<contenttweaker:material_part:55>, <immersiveengineering:material:26>, <contenttweaker:material_part:55>],
			[ip, <contenttweaker:material_part:55>, ip]
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
		[[ap, ap, null], [ap, stick, null], [null, stick, null]]
	],
	<embers:axe_lead> : [
		[[lp, lp, null], [lp, stick, null], [null, stick, null]]
	],
	<embers:axe_nickel> : [
		[[np, np, null], [np, stick, null], [null, stick, null]]
	],
	<embers:axe_silver> : [
		[[sip, sip, null], [sip, stick, null], [null, stick, null]]
	],
	<embers:hoe_aluminum> : [
		[[ap, ap, null], [null, stick, null], [null, stick, null]]
	],
	<embers:hoe_lead> : [
		[[lp, lp, null], [null, stick, null], [null, stick, null]]
	],
	<embers:hoe_nickel> : [
		[[np, np, null], [null, stick, null], [null, stick, null]]
	],
	<embers:hoe_silver> : [
		[[sip, sip, null], [null, stick, null], [null, stick, null]]
	],
	<embers:pickaxe_aluminum> : [
		[[ap, ap, ap], [null, stick, null], [null, stick, null]]
	],
	<embers:pickaxe_lead> : [
		[[lp, lp, lp], [null, stick, null], [null, stick, null]]
	],
	<embers:pickaxe_nickel> : [
		[[np, np, np], [null, stick, null], [null, stick, null]]
	],
	<embers:pickaxe_silver> : [
		[[sip, sip, sip], [null, stick, null], [null, stick, null]]
	],
	<embers:shovel_aluminum> : [
		[[null, ap, null], [null, stick, null], [null, stick, null]]
	],
	<embers:shovel_lead> : [
		[[null, lp, null], [null, stick, null], [null, stick, null]]
	],
	<embers:shovel_nickel> : [
		[[null, np, null], [null, stick, null], [null, stick, null]]
	],
	<embers:shovel_silver> : [
		[[null, sip, null], [null, stick, null], [null, stick, null]]
	],
	<embers:sword_aluminum> : [
		[[null, ap, null], [null, ap, null], [null, stick, null]]
	],
	<embers:sword_lead> : [
		[[null, lp, null], [null, lp, null], [null, stick, null]]
	],
	<embers:sword_nickel> : [
		[[null, np, null], [null, np, null], [null, stick, null]]
	],
	<embers:sword_silver> : [
		[[null, sip, null], [null, sip, null], [null, stick, null]]
	],

	//Rails
	<minecraft:activator_rail>*2 : [
		[[ip, plank, ip], [ip, <minecraft:redstone_torch>, ip], [ip, plank, ip]]
	],
	<minecraft:detector_rail>*2 : [
		[[ip, <minecraft:redstone>, ip], [ip, <minecraft:light_weighted_pressure_plate>, ip], [ip, <minecraft:redstone>, ip]]
	],
	<minecraft:golden_rail>*4 : [
		[[gp, <minecraft:redstone>, gp], [gp, plank, gp], [gp, <minecraft:redstone>, gp]]
	],
	<minecraft:rail>*8 : [
		[[ip, plank, ip], [ip, plank, ip], [ip, plank, ip]]
	],
	<tconstruct:wood_rail>*8 : [
		[[<ore:thinWood>, plank, <ore:thinWood>], [<ore:thinWood>, plank, <ore:thinWood>], [<ore:thinWood>, plank, <ore:thinWood>]]
	],

	//Storage Drawers
	<storagedrawers:compdrawers> : [
		[[ip, <ore:platePlatinum>, ip], [<minecraft:piston>, <ore:drawerTrim>, <minecraft:piston>], [ip, <astralsorcery:itemcraftingcomponent:1>, ip]]
	],
	<storagedrawers:controller> : [
		[
			[<ore:platePlatinum>, <nex:block_amethyst>, <ore:platePlatinum>],
			[<immersiveengineering:metal_decoration0:3>, <ore:drawerTrim>, <immersiveengineering:metal_decoration0:3>],
			[<ore:platePlatinum>, <astralsorcery:itemcraftingcomponent:1>, <ore:platePlatinum>]
		]
	],
	<storagedrawers:controllerslave> : [
		[[<ore:platePlatinum>, <ore:plateRedstoneAlloy>, <ore:platePlatinum>], [ip, <ore:drawerTrim>, ip], [<ore:platePlatinum>, <immersiveengineering:metal_decoration0:3>, <ore:platePlatinum>]]
	],
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

//Steve's Carts
recipes.remove(<stevescarts:blockcartassembler>);
recipes.remove(<stevescarts:modulecomponents:9>);
//mods.recipestages.Recipes.addShaped("three", <stevescarts:blockcartassembler>, [<primal:nether_cordage>, <primal:nether_cordage>, <primal:nether_cordage>]);
//mods.recipestages.Recipes.addShaped("three", <stevescarts:modulecomponents:9>, [<primal:nether_cordage>, <primal:nether_cordage>, <primal:nether_cordage>]);
