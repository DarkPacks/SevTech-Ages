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

global ap as IOreDictEntry = <ore:plateAluminum>;
global bgear as IOreDictEntry = <ore:gearBronze>;
global bone as IItemStack = <minecraft:bone>;
global bp as IOreDictEntry = <ore:plateBronze>;
global cane as IItemStack = <minecraft:reeds>;
global cgear as IOreDictEntry = <ore:gearCopper>;
global charcoal as IItemStack = <minecraft:coal:1>;
global clayball as IItemStack = <minecraft:clay_ball>;
global coal as IItemStack = <minecraft:coal>;
global cobblestone as IItemStack = <minecraft:cobblestone>;
global cordage as IOreDictEntry = <ore:cordageGeneral>;
global cp as IOreDictEntry = <ore:plateCopper>;
global diamond as IItemStack = <minecraft:diamond>;
global dp as IOreDictEntry = <ore:plateDawnstone>;
global emerald as IItemStack = <minecraft:emerald>;
global flint as IItemStack = <minecraft:flint>;
global gold as IItemStack = <minecraft:gold_ingot>;
global gp as IOreDictEntry = <ore:plateGold>;
global ip as IOreDictEntry = <ore:plateIron>;
global iron as IItemStack = <minecraft:iron_ingot>;
global leather as IItemStack = <minecraft:leather>;
global log as IOreDictEntry = <ore:logWood>;
global lp as IOreDictEntry = <ore:plateLead>;
global np as IOreDictEntry = <ore:plateNickel>;
global plank as IOreDictEntry = <ore:plankWood>;
global redstone as IItemStack = <minecraft:redstone>;
global shears as IOreDictEntry = <ore:shears>;
global sip as IOreDictEntry = <ore:plateSilver>;
global sp as IOreDictEntry = <ore:plateSteel>;
global stick as IItemStack = <minecraft:stick>;
global stone as IItemStack = <minecraft:stone>;
global str as IItemStack = <minecraft:string>;
global tgear as IOreDictEntry = <ore:gearTin>;
global tp as IOreDictEntry = <ore:plateTin>;
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
global metals as IIngredient[string][string][string] = {
	abyssalnite: {
		block: {
			item: <abyssalcraft:ingotblock>,
			ore: <ore:blockAbyssalnite>
		},
		dust: {
			item: <acintegration:dust>,
			ore: <ore:dustAbyssalnite>
		},
		gear: null,
		ingot: {
			item: <abyssalcraft:abyingot>,
			ore: <ore:ingotAbyssalnite>
		},
		liquid: {
			liquid: <liquid:moltenabyssalnite>
		},
		nugget: {
			item: <abyssalcraft:ingotnugget>,
			ore: <ore:nuggetAbyssalnite>
		},
		plate: null,
		rod: null
	},
	aluminum: {
		block: {
			item: <immersiveengineering:storage:1>,
			ore: <ore:blockAluminum>
		},
		dust: {
			item: <immersiveengineering:metal:10>,
			ore: <ore:dustAluminum>
		},
		gear: null,
		ingot: {
			item: <immersiveengineering:metal:1>,
			ore: <ore:ingotAluminum>
		},
		liquid: {
			liquid: <liquid:aluminum>
		},
		nugget: null,
		plate: {
			item: <immersiveengineering:metal:31>,
			ore: <ore:plateAluminum>
		},
		rod: {
			item: <immersiveengineering:material:3>,
			ore: <ore:stickAluminum>
		}
	},
	aluminumBrass: {
		block: {
			item: <tconstruct:metal:5>,
			ore: <ore:blockAlubrass>
		},
		dust: null,
		gear: null,
		ingot: {
			item: <tconstruct:ingots:5>,
			ore: <ore:ingotAlubrass>
		},
		liquid: {
			liquid: <liquid:alubrass>
		},
		nugget: {
			item: <tconstruct:nuggets:5>,
			ore: <ore:nuggetAlubrass>
		},
		plate: null,
		rod: null
	},
	ardite: {
		block: {
			item: <tconstruct:metal:1>,
			ore: <ore:blockArdite>
		},
		dust: null,
		gear: null,
		ingot: {
			item: <tconstruct:ingots:1>,
			ore: <ore:ingotArdite>
		},
		liquid: {
			liquid: <liquid:ardite>
		},
		nugget: {
			item: <tconstruct:nuggets:1>,
			ore: <ore:nuggetArdite>
		},
		plate: null,
		rod: null
	},
	bronze: {
		block: {
			item: <embers:block_bronze>,
			ore: <ore:blockBronze>
		},
		dust: null,
		gear: {
			item: <contenttweaker:material_part:25>,
			ore: <ore:gearBronze>
		},
		ingot: {
			item: <embers:ingot_bronze>,
			ore: <ore:ingotBronze>
		},
		liquid: {
			liquid: <liquid:bronze>
		},
		nugget: {
			item: <embers:nugget_bronze>,
			ore: <ore:nuggetBronze>
		},
		plate: {
			item: <contenttweaker:material_part:26>,
			ore: <ore:plateBronze>
		},
		rod: {
			item: <contenttweaker:material_part:29>,
			ore: <ore:rodBronze>
		}
	},
	cobalt: {
		block: {
			item: <tconstruct:metal>,
			ore: <ore:blockCobalt>
		},
		dust: null,
		gear: {
			item: <contenttweaker:material_part:20>,
			ore: <ore:gearCobalt>
		},
		ingot: {
			item: <tconstruct:ingots>,
			ore: <ore:ingotCobalt>
		},
		liquid: {
			liquid: <liquid:cobalt>
		},
		nugget: {
			item: <tconstruct:nuggets>,
			ore: <ore:nuggetCobalt>
		},
		plate: {
			item: <contenttweaker:material_part:21>,
			ore: <ore:plateCobalt>
		},
		rod: {
			item: <contenttweaker:material_part:24>,
			ore: <ore:rodCobalt>
		}
	},
	constantan: {
		block: {
			item: <immersiveengineering:storage:6>,
			ore: <ore:blockConstantan>
		},
		dust: {
			item: <immersiveengineering:metal:15>,
			ore: <ore:dustConstantan>
		},
		gear: null,
		ingot: {
			item: <immersiveengineering:metal:6>,
			ore: <ore:ingotConstantan>
		},
		liquid: {
			liquid: <liquid:constantan>
		},
		nugget: {
			item: <immersiveengineering:metal:26>,
			ore: <ore:nuggetConstantan>
		},
		plate: {
			item: <immersiveengineering:metal:36>,
			ore: <ore:plateConstantan>
		},
		rod: null
	},
	copper: {
		block: {
			item: <immersiveengineering:storage>,
			ore: <ore:blockCopper>
		},
		dust: {
			item: <immersiveengineering:metal:9>,
			ore: <ore:dustCopper>
		},
		gear: {
			item: <contenttweaker:material_part>,
			ore: <ore:gearCopper>
		},
		ingot: {
			item: <immersiveengineering:metal>,
			ore: <ore:ingotCopper>
		},
		liquid: {
			liquid: <liquid:copper>
		},
		nugget: {
			item: null,
			ore: <ore:nuggetCopper>
		},
		plate: {
			item: <immersiveengineering:metal:30>,
			ore: <ore:plateCopper>
		},
		rod: {
			item: <contenttweaker:material_part:4>,
			ore: <ore:rodCopper>
		}
	},
	dawnstone: {
		block: {
			item: <embers:block_dawnstone>,
			ore: <ore:blockDawnstone>
		},
		dust: null,
		gear: null,
		ingot: {
			item: <embers:ingot_dawnstone>,
			ore: <ore:ingotDawnstone>
		},
		liquid: {
			liquid: <liquid:dawnstone>
		},
		nugget: {
			item: <embers:nugget_dawnstone>,
			ore: <ore:nuggetDawnstone>
		},
		plate: {
			item: <embers:plate_dawnstone>,
			ore: <ore:plateDawnstone>
		},
		rod: null
	},
	dreadium: {
		block: {
			item: <abyssalcraft:ingotblock:2>,
			ore: <ore:blockDreadium>
		},
		dust: {
			item: <acintegration:dust:2>,
			ore: <ore:dustDreadium>
		},
		gear: null,
		ingot: {
			item: <abyssalcraft:dreadiumingot>,
			ore: <ore:ingotDreadium>
		},
		liquid: {
			liquid: <liquid:moltendreadium>
		},
		nugget: {
			item: <abyssalcraft:ingotnugget:2>,
			ore: <ore:nuggetDreadium>
		},
		plate: null,
		rod: null
	},
	electrum: {
		block: {
			item: <immersiveengineering:storage:7>,
			ore: <ore:blockElectrum>
		},
		dust: {
			item: <immersiveengineering:metal:16>,
			ore: <ore:dustElectrum>
		},
		gear: null,
		ingot: {
			item: <immersiveengineering:metal:7>,
			ore: <ore:ingotElectrum>
		},
		liquid: {
			liquid: <liquid:electrum>
		},
		nugget: {
			item: <immersiveengineering:metal:27>,
			ore: <ore:nuggetElectrum>
		},
		plate: {
			item: <immersiveengineering:metal:37>,
			ore: <ore:plateElectrum>
		},
		rod: null
	},
	ethaxium: {
		block: {
			item: <abyssalcraft:ingotblock:3>,
			ore: <ore:blockEthaxium>
		},
		dust: null,
		gear: null,
		ingot: {
			item: <abyssalcraft:ethaxiumingot>,
			ore: <ore:ingotEthaxium>
		},
		liquid: null,
		nugget: {
			item: <abyssalcraft:ingotnugget:3>,
			ore: <ore:nuggetEthaxium>
		},
		plate: null,
		rod: null
	},
	gold: {
		block: {
			item: <minecraft:gold_block>,
			ore: <ore:blockGold>
		},
		dust: {
			item: <immersiveengineering:metal:19>,
			ore: <ore:dustGold>
		},
		gear: null,
		ingot: {
			item: <minecraft:gold_ingot>,
			ore: <ore:ingotGold>
		},
		liquid: {
			liquid: <liquid:gold>
		},
		nugget: {
			item: <minecraft:gold_nugget>,
			ore: <ore:nuggetGold>
		},
		plate: {
			item: <immersiveengineering:metal:40>,
			ore: <ore:plateGold>
		},
		rod: {
			item: <primal:golden_stick>,
			ore: <ore:firesource>
		}
	},
	iron: {
		block: {
			item: <minecraft:iron_block>,
			ore: <ore:blockIron>
		},
		dust: {
			item: <immersiveengineering:metal:18>,
			ore: <ore:dustIron>
		},
		gear: null,
		ingot: {
			item: <minecraft:iron_ingot>,
			ore: <ore:ingotIron>
		},
		liquid: {
			liquid: <liquid:iron>
		},
		nugget: {
			item: <minecraft:iron_nugget>,
			ore: <ore:nuggetIron>
		},
		plate: {
			item: <immersiveengineering:metal:39>,
			ore: <ore:plateIron>
		},
		rod: {
			item: <immersiveengineering:material:1>,
			ore: <ore:stickIron>
		}
	},
	knightslime: {
		block: {
			item: <tconstruct:metal:3>,
			ore: <ore:blockKnightslime>
		},
		dust: null,
		gear: null,
		ingot: {
			item: <tconstruct:ingots:3>,
			ore: <ore:ingotKnightslime>
		},
		liquid: {
			liquid: <liquid:knightslime>
		},
		nugget: null,
		plate: null,
		rod: null
	},
	lead: {
		block: {
			item: <immersiveengineering:storage:2>,
			ore: <ore:blockLead>
		},
		dust: {
			item: <immersiveengineering:metal:11>,
			ore: <ore:dustLead>
		},
		gear: {
			item: <contenttweaker:material_part:15>,
			ore: <ore:gearLead>
		},
		ingot: {
			item: <immersiveengineering:metal:2>,
			ore: <ore:ingotLead>
		},
		liquid: {
			liquid: <liquid:lead>
		},
		nugget: {
			item: <immersiveengineering:metal:22>,
			ore: <ore:nuggetLead>
		},
		plate: {
			item: <immersiveengineering:metal:32>,
			ore: <ore:plateLead>
		},
		rod: {
			item: <contenttweaker:material_part:19>,
			ore: <ore:rodLead>
		}
	},
	manyullyn: {
		block: {
			item: <tconstruct:metal:2>,
			ore: <ore:blockManyullyn>
		},
		dust: null,
		gear: null,
		ingot: {
			item: <tconstruct:ingots:2>,
			ore: <ore:ingotManyullyn>
		},
		liquid: {
			liquid: <liquid:manyullyn>
		},
		nugget: {
			item: <tconstruct:nuggets:2>,
			ore: <ore:nuggetManyullyn>
		},
		plate: null,
		rod: null
	},
	nickel: {
		block: {
			item: <immersiveengineering:storage:4>,
			ore: <ore:blockNickel>
		},
		dust: {
			item: <immersiveengineering:metal:13>,
			ore: <ore:dustNickel>
		},
		gear: null,
		ingot: {
			item: <immersiveengineering:metal:4>,
			ore: <ore:ingotNickel>
		},
		liquid: {
			liquid: <liquid:nickel>
		},
		nugget: {
			item: <immersiveengineering:metal:24>,
			ore: <ore:nuggetNickel>
		},
		plate: {
			item: <immersiveengineering:metal:34>,
			ore: <ore:plateNickel>
		},
		rod: null
	},
	pigiron: {
		block: {
			item: <tconstruct:metal:4>,
			ore: <ore:blockPigiron>
		},
		dust: null,
		gear: null,
		ingot: {
			item: <tconstruct:ingots:4>,
			ore: <ore:ingotPigiron>
		},
		liquid: {
			liquid: <liquid:pigiron>
		},
		nugget: null,
		plate: null,
		rod: null
	},
	platinum: {
		block: {
			item: <contenttweaker:sub_block_holder_0:1>,
			ore: <ore:blockPlatinum>
		},
		dust: null,
		gear: {
			item: <contenttweaker:material_part:32>,
			ore: <ore:gearPlatinum>
		},
		ingot: {
			item: <contenttweaker:material_part:37>,
			ore: <ore:ingotPlatinum>
		},
		liquid: {
			liquid: <liquid:platinum>
		},
		nugget: null,
		plate: {
			item: <contenttweaker:material_part:33>,
			ore: <ore:platePlatinum>
		},
		rod: {
			item: <contenttweaker:material_part:36>,
			ore: <ore:rodPlatinum>
		}
	},
	refinedCoralium: {
		block: {
			item: <abyssalcraft:ingotblock:1>,
			ore: <ore:blockLiquifiedCoralium>
		},
		dust: {
			item: <acintegration:dust:1>,
			ore: <ore:dustLiquifiedCoralium>
		},
		gear: null,
		ingot: {
			item: <abyssalcraft:cingot>,
			ore: <ore:ingotLiquifiedCoralium>
		},
		liquid: {
			liquid: <liquid:moltenrefinedcoralium>
		},
		nugget: {
			item: <abyssalcraft:ingotnugget:1>,
			ore: <ore:nuggetLiquifiedCoralium>
		},
		plate: null,
		rod: null
	},
	silver: {
		block: {
			item: <immersiveengineering:storage:3>,
			ore: <ore:blockSilver>
		},
		dust: {
			item: <immersiveengineering:metal:12>,
			ore: <ore:dustSilver>
		},
		gear: {
			item: <contenttweaker:material_part:10>,
			ore: <ore:gearSilver>
		},
		ingot: {
			item: <immersiveengineering:metal:3>,
			ore: <ore:ingotSilver>
		},
		liquid: {
			liquid: <liquid:silver>
		},
		nugget: {
			item: <immersiveengineering:metal:23>,
			ore: <ore:nuggetSilver>
		},
		plate: {
			item: <immersiveengineering:metal:33>,
			ore: <ore:plateSilver>
		},
		rod: {
			item: <contenttweaker:material_part:14>,
			ore: <ore:rodSilver>
		}
	},
	steel: {
		block: {
			item: <immersiveengineering:storage:8>,
			ore: <ore:blockSteel>
		},
		dust: {
			item: <immersiveengineering:metal:17>,
			ore: <ore:dustSteel>
		},
		gear: null,
		ingot: {
			item: <immersiveengineering:metal:8>,
			ore: <ore:ingotSteel>
		},
		liquid: {
			liquid: <liquid:steel>
		},
		nugget: {
			item: <immersiveengineering:metal:28>,
			ore: <ore:nuggetSteel>
		},
		plate: {
			item: <immersiveengineering:metal:38>,
			ore: <ore:plateSteel>
		},
		rod: {
			item: <immersiveengineering:material:2>,
			ore: <ore:stickSteel>
		}
	},
	tin: {
		block: {
			item: <embers:block_tin>,
			ore: <ore:blockTin>
		},
		dust: null,
		gear: {
			item: <contenttweaker:material_part:5>,
			ore: <ore:gearTin>
		},
		ingot: {
			item: <embers:ingot_tin>,
			ore: <ore:ingotTin>
		},
		liquid: {
			liquid: <liquid:tin>
		},
		nugget: {
			item: <embers:nugget_tin>,
			ore: <ore:nuggetTin>
		},
		plate: {
			item: <contenttweaker:material_part:6>,
			ore: <ore:plateTin>
		},
		rod: {
			item: <contenttweaker:material_part:9>,
			ore: <ore:rodTin>
		}
	},
	uranium: {
		block: {
			item: <immersiveengineering:storage:5>,
			ore: <ore:blockUranium>
		},
		dust: {
			item: <immersiveengineering:metal:14>,
			ore: <ore:dustUranium>
		},
		gear: null,
		ingot: {
			item: <immersiveengineering:metal:5>,
			ore: <ore:ingotUranium>
		},
		liquid: {
			liquid: <liquid:uranium>
		},
		nugget: null,
		plate: {
			item: <immersiveengineering:metal:35>,
			ore: <ore:plateUranium>
		},
		rod: null
	}
};
