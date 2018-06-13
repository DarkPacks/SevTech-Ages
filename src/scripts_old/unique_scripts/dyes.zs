#priority 1

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

import mods.immersiveengineering.Crusher as IECrusher;
import mods.betterwithmods.Mill;
import mods.actuallyadditions.Crusher as AACrusher;
import mods.horsepower.Grindstone;
import mods.mekanism.crusher as MekanismCrusher;

var IE_CRUSHER_ENERGY as int = 3200;
var HP_GRINDSTONE_TIME as int = 12;

static minecraftDyeIDTable as string[int] = {
	0: "black",
	1: "red",
	2: "green",
	3: "brown",
	4: "blue",
	5: "purple",
	6: "cyan",
	7: "lightGray",
	8: "gray",
	9: "pink",
	10: "lime",
	11: "yellow",
	12: "lightBlue",
	13: "magenta",
	14: "orange",
	15: "white"
};

/*
	Dye Unification
*/
recipes.remove(<pickletweaks:dye_powder:*>);
recipes.addShapeless(<pickletweaks:dye_powder:1> * 2, [<pickletweaks:dye_powder:14>, <pickletweaks:dye_powder:4>]);
recipes.addShapeless(<pickletweaks:dye_powder:2> * 2, [<pickletweaks:dye_powder:6>, <pickletweaks:dye_powder:10>]);
recipes.addShapeless(<pickletweaks:dye_powder:2> * 3, [<pickletweaks:dye_powder:6>, <pickletweaks:dye_powder:14>, <pickletweaks:dye_powder:11>]);
recipes.addShapeless(<pickletweaks:dye_powder:2> * 4, [<pickletweaks:dye_powder:0>, <pickletweaks:dye_powder:14>, <pickletweaks:dye_powder:14>, <pickletweaks:dye_powder:11>]);
recipes.addShapeless(<pickletweaks:dye_powder:3> * 2, [<pickletweaks:dye_powder:11>, <pickletweaks:dye_powder:0>]);
recipes.addShapeless(<pickletweaks:dye_powder:5> * 2, [<pickletweaks:dye_powder:13>, <pickletweaks:dye_powder:0>]);
recipes.addShapeless(<pickletweaks:dye_powder:6> * 2, [<pickletweaks:dye_powder:14>, <pickletweaks:dye_powder:0>]);
recipes.addShapeless(<pickletweaks:dye_powder:7> * 2, [<pickletweaks:dye_powder:0>, <pickletweaks:dye_powder:15>]);
recipes.addShapeless(<pickletweaks:dye_powder:8> * 3, [<pickletweaks:dye_powder:0>, <pickletweaks:dye_powder:0>, <pickletweaks:dye_powder:15>]);
recipes.addShapeless(<pickletweaks:dye_powder:9> * 2, [<pickletweaks:dye_powder:13>, <pickletweaks:dye_powder:11>]);
recipes.addShapeless(<pickletweaks:dye_powder:10> * 2, [<pickletweaks:dye_powder:14>, <pickletweaks:dye_powder:11>]);
recipes.addShapeless(<pickletweaks:dye_powder:12> * 2, [<pickletweaks:dye_powder:15>, <pickletweaks:dye_powder:1>]);
recipes.addShapeless(<pickletweaks:dye_powder:12> * 3, [<pickletweaks:dye_powder:15>, <pickletweaks:dye_powder:14>, <pickletweaks:dye_powder:4>]);

//Remove all dye recipes
var minecraftDyes as IItemStack[] = [
	<minecraft:dye:1>,
	<minecraft:dye:2>,
	<minecraft:dye:3>,
	<minecraft:dye:5>,
	<minecraft:dye:6>,
	<minecraft:dye:7>,
	<minecraft:dye:8>,
	<minecraft:dye:9>,
	<minecraft:dye:10>,
	<minecraft:dye:11>,
	<minecraft:dye:12>,
	<minecraft:dye:13>,
	<minecraft:dye:14>,
	<minecraft:dye:15>,
	<minecraft:dye>
];

for minecraftDye in minecraftDyes {
	recipes.remove(minecraftDye);

	//Remove AA Crusher recipes
	mods.actuallyadditions.Crusher.removeRecipe(minecraftDye);
}

/*
	Add crushing recipes for dyes

	Thanks to Neosghost for pairing ferdinands flowers!
*/
static dyeCrushingRecipes as IItemStack[][IItemStack] = {
	//White
	<ore:dyeWhite>.firstItem : [
		<ferdinandsflowers:block_cff_desert:11>,
		<ferdinandsflowers:block_cff_doublesb:1>,
		<ferdinandsflowers:block_cff_doublesb>,
		<ferdinandsflowers:block_cff_flowers:13>,
		<ferdinandsflowers:block_cff_flowersb:8>,
		<ferdinandsflowers:block_cff_flowersd:6>,
		<ferdinandsflowers:block_cff_flowersd:8>,
		<minecraft:dye:15>
	],

	//Orange
	<ore:dyeOrange>.firstItem : [
		<ferdinandsflowers:block_cff_desert:5>,
		<ferdinandsflowers:block_cff_desert:12>,
		<ferdinandsflowers:block_cff_doublesc:1>,
		<ferdinandsflowers:block_cff_doublesc:2>,
		<ferdinandsflowers:block_cff_doublesc:3>,
		<ferdinandsflowers:block_cff_doublesd:5>,
		<ferdinandsflowers:block_cff_flowers:1>,
		<ferdinandsflowers:block_cff_flowers:6>,
		<ferdinandsflowers:block_cff_flowersb:1>,
		<ferdinandsflowers:block_cff_flowersb:2>,
		<ferdinandsflowers:block_cff_flowersb:4>,
		<ferdinandsflowers:block_cff_flowersb:9>,
		<ferdinandsflowers:block_cff_flowersc:1>,
		<ferdinandsflowers:block_cff_flowersd:4>,
		<minecraft:red_flower:5>
	],

	//Magenta
	<ore:dyeMagenta>.firstItem : [
		<ferdinandsflowers:block_cff_flowers:8>,
		<ferdinandsflowers:block_cff_flowers>,
		<ferdinandsflowers:block_cff_flowersc:10>,
		<ferdinandsflowers:block_cff_flowersc:11>,
		<ferdinandsflowers:block_cff_flowersd:15>,
		<ferdinandsflowers:block_cff_flowersd>,
		<minecraft:double_plant:1>,
		<minecraft:red_flower:2>
	],

	//Light Blue
	<ore:dyeLightBlue>.firstItem : [
		<ferdinandsflowers:block_cff_desert:8>,
		<ferdinandsflowers:block_cff_doublesc:5>,
		<ferdinandsflowers:block_cff_flowers:15>,
		<ferdinandsflowers:block_cff_flowersc:14>,
		<ferdinandsflowers:block_cff_flowersc:15>,
		<ferdinandsflowers:block_cff_flowersd:11>,
		<ferdinandsflowers:block_cff_flowersd:12>,
		<minecraft:red_flower:1>
	],

	//Yellow
	<ore:dyeYellow>.firstItem : [
		<ferdinandsflowers:block_cff_desert:3>,
		<ferdinandsflowers:block_cff_desert:4>,
		<ferdinandsflowers:block_cff_flowers:11>,
		<ferdinandsflowers:block_cff_flowers:12>,
		<ferdinandsflowers:block_cff_flowersb:6>,
		<ferdinandsflowers:block_cff_flowersb:11>,
		<ferdinandsflowers:block_cff_flowersb:12>,
		<ferdinandsflowers:block_cff_flowersb:13>,
		<ferdinandsflowers:block_cff_flowersc:7>,
		<ferdinandsflowers:block_cff_flowersd:5>,
		<minecraft:double_plant>,
		<minecraft:dye:11>,
		<minecraft:yellow_flower>
	],

	//Lime
	<ore:dyeLime>.firstItem : [
		<ferdinandsflowers:block_cff_flowersd:7>
	],

	//Pink
	<ore:dyePink>.firstItem : [
		<ferdinandsflowers:block_cff_desert:7>,
		<ferdinandsflowers:block_cff_doubles>,
		<ferdinandsflowers:block_cff_doublesb:2>,
		<ferdinandsflowers:block_cff_doublesb:3>,
		<ferdinandsflowers:block_cff_doublesb:4>,
		<ferdinandsflowers:block_cff_doublesc>,
		<ferdinandsflowers:block_cff_flowers:3>,
		<ferdinandsflowers:block_cff_flowers:5>,
		<ferdinandsflowers:block_cff_flowersb:3>,
		<ferdinandsflowers:block_cff_flowersc:3>,
		<ferdinandsflowers:block_cff_flowersc:9>,
		<ferdinandsflowers:block_cff_flowersc:12>,
		<ferdinandsflowers:block_cff_flowersc>,
		<ferdinandsflowers:block_cff_flowersd:3>,
		<minecraft:double_plant:5>,
		<minecraft:red_flower:7>
	],

	//Gray
	<ore:dyeGray>.firstItem : [
	],

	//Light Gray
	<ore:dyeLightGray>.firstItem : [
		<ferdinandsflowers:block_cff_doublesd:4>,
		<minecraft:red_flower:3>,
		<minecraft:red_flower:6>,
		<minecraft:red_flower:8>
	],

	//Cyan
	<ore:dyeCyan>.firstItem : [
		<ferdinandsflowers:block_cff_flowersd:10>
	],

	//Purple
	<ore:dyePurple>.firstItem : [
		<ferdinandsflowers:block_cff_desert:6>,
		<ferdinandsflowers:block_cff_desert:9>,
		<ferdinandsflowers:block_cff_desert:13>,
		<ferdinandsflowers:block_cff_desert:15>,
		<ferdinandsflowers:block_cff_doubles:1>,
		<ferdinandsflowers:block_cff_doubles:2>,
		<ferdinandsflowers:block_cff_doubles:5>,
		<ferdinandsflowers:block_cff_flowers:2>,
		<ferdinandsflowers:block_cff_flowers:7>,
		<ferdinandsflowers:block_cff_flowers:9>,
		<ferdinandsflowers:block_cff_flowers:10>,
		<ferdinandsflowers:block_cff_flowers:14>,
		<ferdinandsflowers:block_cff_flowersb:10>,
		<ferdinandsflowers:block_cff_flowersb:14>,
		<ferdinandsflowers:block_cff_flowersb:15>,
		<ferdinandsflowers:block_cff_flowersb>,
		<ferdinandsflowers:block_cff_flowersc:4>,
		<ferdinandsflowers:block_cff_flowersd:1>,
		<ferdinandsflowers:block_cff_flowersd:9>
	],

	//Blue
	<ore:dyeBlue>.firstItem : [
		<ferdinandsflowers:block_cff_desert:10>,
		<ferdinandsflowers:block_cff_doublesd:3>,
		<ferdinandsflowers:block_cff_flowers:4>,
		<ferdinandsflowers:block_cff_flowersb:7>,
		<ferdinandsflowers:block_cff_flowersc:5>,
		<ferdinandsflowers:block_cff_flowersc:6>,
		<ferdinandsflowers:block_cff_flowersd:13>,
		<ferdinandsflowers:block_cff_flowersd:14>,
		<minecraft:dye:4>
	],

	//Brown
	<ore:dyeBrown>.firstItem : [
		<betterwithmods:material:44>,
		<ferdinandsflowers:block_cff_desert:2>,
		<ferdinandsflowers:block_cff_doubles:3>
	],

	//Green
	<ore:dyeGreen>.firstItem : [
		<ferdinandsflowers:block_cff_desert:14>,
		<ferdinandsflowers:block_cff_desert>,
		<ferdinandsflowers:block_cff_doublesc:4>,
		<ferdinandsflowers:block_cff_doublesd:1>,
		<ferdinandsflowers:block_cff_doublesd>,
		<ferdinandsflowers:block_cff_flowersc:2>,
		<ferdinandsflowers:block_cff_ouch:1>,
		<ferdinandsflowers:block_cff_ouch:2>,
		<ferdinandsflowers:block_cff_ouch>,
		<minecraft:dye:2>
	],

	//Red
	<ore:dyeRed>.firstItem : [
		<ferdinandsflowers:block_cff_desert:1>,
		<ferdinandsflowers:block_cff_doubles:4>,
		<ferdinandsflowers:block_cff_doublesb:5>,
		<ferdinandsflowers:block_cff_doublesd:2>,
		<ferdinandsflowers:block_cff_flowersb:5>,
		<ferdinandsflowers:block_cff_flowersc:8>,
		<ferdinandsflowers:block_cff_flowersc:13>,
		<ferdinandsflowers:block_cff_flowersd:2>,
		<minecraft:double_plant:4>,
		<minecraft:dye:1>,
		<minecraft:red_flower:4>,
		<minecraft:red_flower>,
		<rustic:wildberries>
	],

	<ore:dyeBlack>.firstItem : [
		<actuallyadditions:block_black_lotus>,
		<minecraft:dye>,
		<nex:item_dust_wither>
	]
};

//Remove wool -> minecraft dye and string. Re-create in dye loop
IECrusher.removeRecipe(<minecraft:string>);

// Remove dye crushing recipes
Mill.remove([<minecraft:dye:1>]);
Mill.remove([<minecraft:dye:3>]);
Mill.remove([<minecraft:dye:7>]);
Mill.remove([<minecraft:dye:9>]);
Mill.remove([<minecraft:dye:11>]);
Mill.remove([<minecraft:dye:12>]);
Mill.remove([<minecraft:dye:13>]);

for dye, items in dyeCrushingRecipes {
	//Re-create wool -> string/dye recipe
	if (dye.metadata == 0) {
		//White wool doesn't output dye
		IECrusher.addRecipe(<minecraft:string> * 4, <minecraft:wool>.definition.makeStack(dye.metadata), IE_CRUSHER_ENERGY);
	} else {
		IECrusher.addRecipe(<minecraft:string> * 4, <minecraft:wool>.definition.makeStack(dye.metadata), IE_CRUSHER_ENERGY, dye, 0.05);
	}

	for item in items {
		AACrusher.addRecipe(dye * 2, item);
		Mill.addRecipe([item], [dye * 2]);
		IECrusher.addRecipe(dye * 2, item, IE_CRUSHER_ENERGY);
		Grindstone.add(item, dye, HP_GRINDSTONE_TIME);
		MekanismCrusher.addRecipe(item, dye * 2);
	}
}

/*
	Misc
*/
// Re-create Minecraft Wool Dying Recipes
for dye, items in dyeCrushingRecipes {
	var dyeName as string = scripts.unique_scripts.dyes.minecraftDyeIDTable[15 - dye.metadata];
	var dyeOredict as IOreDictEntry = oreDict.get("dye" ~
		scripts.utils.capitalize(dyeName));

	recipes.addShaped("dye_wool_" ~ dyeName,
		<minecraft:wool>.definition.makeStack(dye.metadata) * 8, [
			[<ore:blockWool>, <ore:blockWool>, <ore:blockWool>],
			[<ore:blockWool>, dyeOredict, <ore:blockWool>],
			[<ore:blockWool>, <ore:blockWool>, <ore:blockWool>]
		]
	);
}

// Dyed Slime Blocks
recipes.removeByRegex("darkutils:dyed_slime_block_.*");
function oredictSlimeBlockRecipes(i as int) {
	var slimeBlock as IItemStack = <darkutils:slime_dyed>.definition.makeStack(i);
	var dye as IItemStack = <minecraft:dye>.definition.makeStack(15 - i);
	var dyeOredict as IOreDictEntry = oreDict.get("dye" ~
		scripts.utils.capitalize(scripts.unique_scripts.dyes.minecraftDyeIDTable[15 - i]));

	recipes.addShaped(slimeBlock, [
		[<ore:blockSlime>, <ore:blockSlime>, <ore:blockSlime>],
		[<ore:blockSlime>, dyeOredict, <ore:blockSlime>],
		[<ore:blockSlime>, <ore:blockSlime>, <ore:blockSlime>]
	]);
}

function oredictParachuteRecipes(i as int) {
	var parachuteDyeIDTable as string[int] = {
		0: "white",
		1: "black",
		2: "lightBlue",
		3: "lime",
		4: "brown",
		5: "blue",
		6: "gray",
		7: "green",
		8: "lightGray",
		9: "magenta",
		10: "orange",
		11: "pink",
		12: "purple",
		13: "red",
		14: "cyan",
		15: "yellow"
	};

	var parachute as IItemStack = <galacticraftcore:parachute>.definition.makeStack(i);

	if (i == 0) {
		recipes.removeByRecipeName("galacticraftcore:parachute_" ~ i ~ "_alt");
	} else {
		recipes.removeByRecipeName("galacticraftcore:parachute_" ~ i);
	}

	recipes.addShapeless(parachute, [
		<galacticraftcore:parachute:*>,
		oreDict.get("dye" ~ scripts.utils.capitalize(parachuteDyeIDTable[i]))
	]);
}

for i in 0 to 16 {
	oredictSlimeBlockRecipes(i);
	oredictParachuteRecipes(i);
}

recipes.remove(<buildcraftcore:list>);
recipes.addShaped(<buildcraftcore:list>, [
	[<minecraft:paper>, <minecraft:redstone>, <minecraft:paper>],
	[<minecraft:paper>, <ore:dyeGreen>, <minecraft:paper>],
	[<minecraft:paper>, <minecraft:paper>, <minecraft:paper>]
]);

recipes.remove(<bibliocraft:stockroomcatalog>);
recipes.addShaped(<bibliocraft:stockroomcatalog>, [
	[<minecraft:paper>, <ore:dyeGreen>, <minecraft:paper>],
	[<minecraft:paper>, <minecraft:writable_book>, <minecraft:paper>],
	[<minecraft:paper>, <minecraft:paper>, <minecraft:paper>]
]);

recipes.remove(<bibliocraft:biblioglasses:1>);
recipes.addShaped(<bibliocraft:biblioglasses:1>, [
	[<bibliocraft:biblioglasses>, <ore:dyeGray>]
]);

recipes.remove(<buildcraftcore:marker_volume>);
recipes.addShaped(<buildcraftcore:marker_volume>, [
	[<ore:dyeBlue>],
	[<minecraft:redstone_torch>]
]);

recipes.remove(<buildcraftcore:marker_path>);
recipes.addShaped(<buildcraftcore:marker_path>, [
	[<ore:dyeGreen>],
	[<minecraft:redstone_torch>]
]);

recipes.remove(<chisel:temple>);
recipes.addShaped(<chisel:temple>, [
	[stone, stone, stone],
	[stone, <ore:dyeCyan>, stone],
	[stone, stone, stone]
]);

recipes.remove(<mysticalagriculture:crafting:7>);
recipes.addShaped(<mysticalagriculture:crafting:7>, [
	[<ore:dyeBlack>, <ore:dyeOrange>],
	[<ore:dyeCyan>, <ore:dyeMagenta>]
]);

recipes.remove(<bibliocraft:tape>);
recipes.addShaped(<bibliocraft:tape>, [
	[str, str, str],
	[str, <ore:dyeYellow>, str],
	[str, str, str]
]);
