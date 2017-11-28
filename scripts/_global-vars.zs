//Make this script top execution priority
#priority 999

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

global STAGES as string[string] = {
	one : "one",
	two : "two",
	three : "three",
	four : "four",
	five : "five"
};

global bone as IItemStack = <minecraft:bone>;
global cane as IItemStack = <minecraft:reeds>;
global charcoal as IItemStack = <minecraft:coal:1>;
global clayball as IItemStack = <minecraft:clay_ball>;
global coal as IItemStack = <minecraft:coal>;
global cobblestone as IItemStack = <minecraft:cobblestone>;
global cordage as IOreDictEntry = <ore:cordageGeneral>;
global diamond as IItemStack = <minecraft:diamond>;
global emerald as IItemStack = <minecraft:emerald>;
global flint as IItemStack = <minecraft:flint>;
global gold as IItemStack = <minecraft:gold_ingot>;
global iron as IItemStack = <minecraft:iron_ingot>;
global leather as IItemStack = <minecraft:leather>;
global log as IOreDictEntry = <ore:logWood>;
global plank as IOreDictEntry = <ore:plankWood>;
global redstone as IItemStack = <minecraft:redstone>;
global shears as IOreDictEntry = <ore:shears>;
global stick as IItemStack = <minecraft:stick>;
global stone as IItemStack = <minecraft:stone>;
global str as IItemStack = <minecraft:string>;
global wool as IOreDictEntry = <ore:wool>;

//Metal unification
/*
	METAL_TYPE: {
		block: {
			item: ITEM_STACK,
			ore: ORE_DICT_ENTRY
		},
		dust: {
			item: ITEM_STACK,
			ore: ORE_DICT_ENTRY
		},
		gear: {
			item: ITEM_STACK,
			ore: ORE_DICT_ENTRY
		},
		ingot: {
			item: ITEM_STACK,
			ore: ORE_DICT_ENTRY
		},
		liquid: {
			liquid: LIQUID_STACK
		},
		nugget: {
			item: ITEM_STACK,
			ore: ORE_DICT_ENTRY
		},
		plate: {
			item: ITEM_STACK,
			ore: ORE_DICT_ENTRY
		},
		rod: {
			item: ITEM_STACK,
			ore: ORE_DICT_ENTRY
		}
	}
*/
global metals as IOreDictEntry[string][string] = {
	abyssalnite: {
		block: <ore:blockAbyssalnite>,
		dust: <ore:dustAbyssalnite>,
		gear: null,
		ingot: <ore:ingotAbyssalnite>,
		nugget: <ore:nuggetAbyssalnite>,
		plate: null,
		rod: null
	},
	aluminum: {
		block: <ore:blockAluminum>,
		dust: <ore:dustAluminum>,
		gear: null,
		ingot: <ore:ingotAluminum>,
		nugget: null,
		plate: <ore:plateAluminum>,
		rod: <ore:stickAluminum>
	},
	aluminumBrass: {
		block: <ore:blockAlubrass>,
		dust: null,
		gear: null,
		ingot: <ore:ingotAlubrass>,
		nugget: <ore:nuggetAlubrass>,
		plate: null,
		rod: null
	},
	ardite: {
		block: <ore:blockArdite>,
		dust: null,
		gear: null,
		ingot: <ore:ingotArdite>,
		nugget: <ore:nuggetArdite>,
		plate: null,
		rod: null
	},
	bronze: {
		block: <ore:blockBronze>,
		dust: null,
		gear: <ore:gearBronze>,
		ingot: <ore:ingotBronze>,
		nugget: <ore:nuggetBronze>,
		plate: <ore:plateBronze>,
		rod: <ore:rodBronze>
	},
	cobalt: {
		block: <ore:blockCobalt>,
		dust: null,
		gear: <ore:gearCobalt>,
		ingot: <ore:ingotCobalt>,
		nugget: <ore:nuggetCobalt>,
		plate: <ore:plateCobalt>,
		rod: <ore:rodCobalt>
	},
	constantan: {
		block: <ore:blockConstantan>,
		dust: <ore:dustConstantan>,
		gear: null,
		ingot: <ore:ingotConstantan>,
		nugget: <ore:nuggetConstantan>,
		plate: <ore:plateConstantan>,
		rod: null
	},
	copper: {
		block: <ore:blockCopper>,
		dust: <ore:dustCopper>,
		gear: <ore:gearCopper>,
		ingot: <ore:ingotCopper>,
		nugget: <ore:nuggetCopper>,
		plate: <ore:plateCopper>,
		rod: <ore:rodCopper>
	},
	dawnstone: {
		block: <ore:blockDawnstone>,
		dust: null,
		gear: null,
		ingot: <ore:ingotDawnstone>,
		nugget: <ore:nuggetDawnstone>,
		plate: <ore:plateDawnstone>,
		rod: null
	},
	dreadium: {
		block: <ore:blockDreadium>,
		dust: <ore:dustDreadium>,
		gear: null,
		ingot: <ore:ingotDreadium>,
		nugget: <ore:nuggetDreadium>,
		plate: null,
		rod: null
	},
	electrum: {
		block: <ore:blockElectrum>,
		dust: <ore:dustElectrum>,
		gear: null,
		ingot: <ore:ingotElectrum>,
		nugget: <ore:nuggetElectrum>,
		plate: <ore:plateElectrum>,
		rod: null
	},
	ethaxium: {
		block: <ore:blockEthaxium>,
		dust: null,
		gear: null,
		ingot: <ore:ingotEthaxium>,
		liquid: null,
		nugget: <ore:nuggetEthaxium>,
		plate: null,
		rod: null
	},
	gold: {
		block: <ore:blockGold>,
		dust: <ore:dustGold>,
		gear: null,
		ingot: <ore:ingotGold>,
		nugget: <ore:nuggetGold>,
		plate: <ore:plateGold>,
		rod: <ore:firesource>
	},
	iron: {
		block: <ore:blockIron>,
		dust: <ore:dustIron>,
		gear: null,
		ingot: <ore:ingotIron>,
		nugget: <ore:nuggetIron>,
		plate: <ore:plateIron>,
		rod: <ore:stickIron>
	},
	knightslime: {
		block: <ore:blockKnightslime>,
		dust: null,
		gear: null,
		ingot: <ore:ingotKnightslime>,
		nugget: null,
		plate: null,
		rod: null
	},
	lead: {
		block: <ore:blockLead>,
		dust: <ore:dustLead>,
		gear: <ore:gearLead>,
		ingot: <ore:ingotLead>,
		nugget: <ore:nuggetLead>,
		plate: <ore:plateLead>,
		rod: <ore:rodLead>
	},
	manyullyn: {
		block: <ore:blockManyullyn>,
		dust: null,
		gear: null,
		ingot: <ore:ingotManyullyn>,
		nugget: <ore:nuggetManyullyn>,
		plate: null,
		rod: null
	},
	nickel: {
		block: <ore:blockNickel>,
		dust: <ore:dustNickel>,
		gear: null,
		ingot: <ore:ingotNickel>,
		nugget: <ore:nuggetNickel>,
		plate: <ore:plateNickel>,
		rod: null
	},
	pigiron: {
		block: <ore:blockPigiron>,
		dust: null,
		gear: null,
		ingot: <ore:ingotPigiron>,
		nugget: null,
		plate: null,
		rod: null
	},
	platinum: {
		block: <ore:blockPlatinum>,
		dust: null,
		gear: <ore:gearPlatinum>,
		ingot: <ore:ingotPlatinum>,
		nugget: null,
		plate: <ore:platePlatinum>,
		rod: <ore:rodPlatinum>
	},
	refinedCoralium: {
		block: <ore:blockLiquifiedCoralium>,
		dust: <ore:dustLiquifiedCoralium>,
		gear: null,
		ingot: <ore:ingotLiquifiedCoralium>,
		nugget: <ore:nuggetLiquifiedCoralium>,
		plate: null,
		rod: null
	},
	silver: {
		block: <ore:blockSilver>,
		dust: <ore:dustSilver>,
		gear: <ore:gearSilver>,
		ingot: <ore:ingotSilver>,
		nugget: <ore:nuggetSilver>,
		plate: <ore:plateSilver>,
		rod: <ore:rodSilver>
	},
	steel: {
		block: <ore:blockSteel>,
		dust: <ore:dustSteel>,
		gear: null,
		ingot: <ore:ingotSteel>,
		nugget: <ore:nuggetSteel>,
		plate: <ore:plateSteel>,
		rod: <ore:stickSteel>
	},
	tin: {
		block: <ore:blockTin>,
		dust: null,
		gear: <ore:gearTin>,
		ingot: <ore:ingotTin>,
		nugget: <ore:nuggetTin>,
		plate: <ore:plateTin>,
		rod: <ore:rodTin>
	},
	uranium: {
		block: <ore:blockUranium>,
		dust: <ore:dustUranium>,
		gear: null,
		ingot: <ore:ingotUranium>,
		nugget: null,
		plate: <ore:plateUranium>,
		rod: null
	}
};

global metalItems as IIngredient[string][string] = {
	abyssalnite: {
		block: <abyssalcraft:ingotblock>,
		dust: <acintegration:dust>,
		gear: null,
		ingot: <abyssalcraft:abyingot>,
		liquid: <liquid:moltenabyssalnite>,
		nugget: <abyssalcraft:ingotnugget>,
		plate: null,
		rod: null
	},
	aluminum: {
		block: <immersiveengineering:storage:1>,
		dust: <immersiveengineering:metal:10>,
		gear: null,
		ingot: <immersiveengineering:metal:1>,
		liquid: <liquid:aluminum>,
		nugget: null,
		plate: <immersiveengineering:metal:31>,
		rod: <immersiveengineering:material:3>
	},
	aluminumBrass: {
		block: <tconstruct:metal:5>,
		dust: null,
		gear: null,
		ingot: <tconstruct:ingots:5>,
		liquid: <liquid:alubrass>,
		nugget: <tconstruct:nuggets:5>,
		plate: null,
		rod: null
	},
	ardite: {
		block: <tconstruct:metal:1>,
		dust: null,
		gear: null,
		ingot: <tconstruct:ingots:1>,
		liquid: <liquid:ardite>,
		nugget: <tconstruct:nuggets:1>,
		plate: null,
		rod: null
	},
	bronze: {
		block: <embers:block_bronze>,
		dust: null,
		gear: <contenttweaker:material_part:25>,
		ingot: <embers:ingot_bronze>,
		liquid: <liquid:bronze>,
		nugget: <embers:nugget_bronze>,
		plate: <contenttweaker:material_part:26>,
		rod: <contenttweaker:material_part:29>
	},
	cobalt: {
		block: <tconstruct:metal>,
		dust: null,
		gear: <contenttweaker:material_part:20>,
		ingot: <tconstruct:ingots>,
		liquid: <liquid:cobalt>,
		nugget: <tconstruct:nuggets>,
		plate: <contenttweaker:material_part:21>,
		rod: <contenttweaker:material_part:24>
	},
	constantan: {
		block: <immersiveengineering:storage:6>,
		dust: <immersiveengineering:metal:15>,
		gear: null,
		ingot: <immersiveengineering:metal:6>,
		liquid: <liquid:constantan>,
		nugget: <immersiveengineering:metal:26>,
		plate: <immersiveengineering:metal:36>,
		rod: null
	},
	copper: {
		block: <immersiveengineering:storage>,
		dust: <immersiveengineering:metal:9>,
		gear: <contenttweaker:material_part>,
		ingot: <immersiveengineering:metal>,
		liquid: <liquid:copper>,
		nugget: null,
		plate: <immersiveengineering:metal:30>,
		rod: <contenttweaker:material_part:4>
	},
	dawnstone: {
		block: <embers:block_dawnstone>,
		dust: null,
		gear: null,
		ingot: <embers:ingot_dawnstone>,
		liquid: <liquid:dawnstone>,
		nugget: <embers:nugget_dawnstone>,
		plate: <embers:plate_dawnstone>,
		rod: null
	},
	dreadium: {
		block: <abyssalcraft:ingotblock:2>,
		dust: <acintegration:dust:2>,
		gear: null,
		ingot: <abyssalcraft:dreadiumingot>,
		liquid: <liquid:moltendreadium>,
		nugget: <abyssalcraft:ingotnugget:2>,
		plate: null,
		rod: null
	},
	electrum: {
		block: <immersiveengineering:storage:7>,
		dust: <immersiveengineering:metal:16>,
		gear: null,
		ingot: <immersiveengineering:metal:7>,
		liquid: <liquid:electrum>,
		nugget: <immersiveengineering:metal:27>,
		plate: <immersiveengineering:metal:37>,
		rod: null
	},
	ethaxium: {
		block: <abyssalcraft:ingotblock:3>,
		dust: null,
		gear: null,
		ingot: <abyssalcraft:ethaxiumingot>,
		liquid: null,
		nugget: <abyssalcraft:ingotnugget:3>,
		plate: null,
		rod: null
	},
	gold: {
		block: <minecraft:gold_block>,
		dust: <immersiveengineering:metal:19>,
		gear: null,
		ingot: <minecraft:gold_ingot>,
		liquid: <liquid:gold>,
		nugget: <minecraft:gold_nugget>,
		plate: <immersiveengineering:metal:40>,
		rod: <primal:golden_stick>
	},
	iron: {
		block: <minecraft:iron_block>,
		dust: <immersiveengineering:metal:18>,
		gear: null,
		ingot: <minecraft:iron_ingot>,
		liquid: <liquid:iron>,
		nugget: <minecraft:iron_nugget>,
		plate: <immersiveengineering:metal:39>,
		rod: <immersiveengineering:material:1>
	},
	knightslime: {
		block: <tconstruct:metal:3>,
		dust: null,
		gear: null,
		ingot: <tconstruct:ingots:3>,
		liquid: <liquid:knightslime>,
		nugget: null,
		plate: null,
		rod: null
	},
	lead: {
		block: <immersiveengineering:storage:2>,
		dust: <immersiveengineering:metal:11>,
		gear: <contenttweaker:material_part:15>,
		ingot: <immersiveengineering:metal:2>,
		liquid: <liquid:lead>,
		nugget: <immersiveengineering:metal:22>,
		plate: <immersiveengineering:metal:32>,
		rod: <contenttweaker:material_part:19>
	},
	manyullyn: {
		block: <tconstruct:metal:2>,
		dust: null,
		gear: null,
		ingot: <tconstruct:ingots:2>,
		liquid: <liquid:manyullyn>,
		nugget: <tconstruct:nuggets:2>,
		plate: null,
		rod: null
	},
	nickel: {
		block: <immersiveengineering:storage:4>,
		dust: <immersiveengineering:metal:13>,
		gear: null,
		ingot: <immersiveengineering:metal:4>,
		liquid: <liquid:nickel>,
		nugget: <immersiveengineering:metal:24>,
		plate: <immersiveengineering:metal:34>,
		rod: null
	},
	pigiron: {
		block: <tconstruct:metal:4>,
		dust: null,
		gear: null,
		ingot: <tconstruct:ingots:4>,
		liquid: <liquid:pigiron>,
		nugget: null,
		plate: null,
		rod: null
	},
	platinum: {
		block: <contenttweaker:sub_block_holder_0:1>,
		dust: null,
		gear: <contenttweaker:material_part:32>,
		ingot: <contenttweaker:material_part:37>,
		liquid: <liquid:platinum>,
		nugget: null,
		plate: <contenttweaker:material_part:33>,
		rod: <contenttweaker:material_part:36>
	},
	refinedCoralium: {
		block: <abyssalcraft:ingotblock:1>,
		dust: <acintegration:dust:1>,
		gear: null,
		ingot: <abyssalcraft:cingot>,
		liquid: <liquid:moltenrefinedcoralium>,
		nugget: <abyssalcraft:ingotnugget:1>,
		plate: null,
		rod: null
	},
	silver: {
		block: <immersiveengineering:storage:3>,
		dust: <immersiveengineering:metal:12>,
		gear: <contenttweaker:material_part:10>,
		ingot: <immersiveengineering:metal:3>,
		liquid: <liquid:silver>,
		nugget: <immersiveengineering:metal:23>,
		plate: <immersiveengineering:metal:33>,
		rod: <contenttweaker:material_part:14>
	},
	steel: {
		block: <immersiveengineering:storage:8>,
		dust: <immersiveengineering:metal:17>,
		gear: null,
		ingot: <immersiveengineering:metal:8>,
		liquid: <liquid:steel>,
		nugget: <immersiveengineering:metal:28>,
		plate: <immersiveengineering:metal:38>,
		rod: <immersiveengineering:material:2>
	},
	tin: {
		block: <embers:block_tin>,
		dust: null,
		gear: <contenttweaker:material_part:5>,
		ingot: <embers:ingot_tin>,
		liquid: <liquid:tin>,
		nugget: <embers:nugget_tin>,
		plate: <contenttweaker:material_part:6>,
		rod: <contenttweaker:material_part:9>
	},
	uranium: {
		block: <immersiveengineering:storage:5>,
		dust: <immersiveengineering:metal:14>,
		gear: null,
		ingot: <immersiveengineering:metal:5>,
		liquid: <liquid:uranium>,
		nugget: null,
		plate: <immersiveengineering:metal:35>,
		rod: null
	}
};
