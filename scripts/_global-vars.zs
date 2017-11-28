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
