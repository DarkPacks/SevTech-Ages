//Make this script top execution priority
#priority 998

import crafttweaker.oredict.IOreDictEntry;

//Metal unification
/*
	METAL_TYPE: {
		block: ORE_DICT_ENTRY,
		dust: ORE_DICT_ENTRY,
		gear: ORE_DICT_ENTRY,
		ingot: ORE_DICT_ENTRY,
		nugget: ORE_DICT_ENTRY,
		plate: ORE_DICT_ENTRY,
		rod: ORE_DICT_ENTRY
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
		nugget: <ore:nuggetAluminum>,
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
		dust: <ore:dustBronze>,
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
	compressedIron: {
		block: <ore:blockIronCompressed>,
		dust: null,
		gear: <ore:gearIronCompressed>,
		ingot: <ore:ingotIronCompressed>,
		nugget: null,
		plate: <ore:plateCompressedIron>,
		rod: <ore:rodCompressedIron>
	}
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
	fiery: {
		block: <ore:blockFiery>,
		dust: null,
		gear: <ore:gearFiery>,
		ingot: <ore:ingotFiery>,
		nugget: null,
		plate: <ore:plateFiery>,
		rod: <ore:rodFiery>
	},
	gold: {
		block: <ore:blockGold>,
		dust: <ore:dustGold>,
		gear: <ore:gearGold>,
		ingot: <ore:ingotGold>,
		nugget: <ore:nuggetGold>,
		plate: <ore:plateGold>,
		rod: <ore:rodGold>
	},
	iron: {
		block: <ore:blockIron>,
		dust: <ore:dustIron>,
		gear: <ore:gearIron>,
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
		nugget: <ore:nuggetKnightslime>,
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
	modularium: {
		block: null,
		dust: null,
		gear: <ore:gearModularium>,
		ingot: <ore:ingotModularium>,
		nugget: null,
		plate: <ore:plateModularium>,
		rod: <ore:rodModularium>
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
		dust: <ore:dustPigiron>,
		gear: null,
		ingot: <ore:ingotPigiron>,
		nugget: <ore:nuggetPigiron>,
		plate: <ore:platePigiron>,
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
	redstoneAlloy: {
		block: <ore:blockRedstoneAlloy>,
		dust: null,
		gear: <ore:gearRedstoneAlloy>,
		ingot: <ore:ingotRedstoneAlloy>,
		nugget: null,
		plate: <ore:plateRedstoneAlloy>,
		rod: <ore:rodRedstoneAlloy>
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
		gear: <ore:gearSteel>,
		ingot: <ore:ingotSteel>,
		nugget: <ore:nuggetSteel>,
		plate: <ore:plateSteel>,
		rod: <ore:stickSteel>
	},
	steeleaf: {
		block: <ore:blockSteeleaf>,
		dust: null,
		gear: <ore:gearSteeleaf>,
		ingot: <ore:ingotSteeleaf>,
		nugget: null,
		plate: <ore:plateSteeleaf>,
		rod: <ore:rodSteeleaf>
	},
	tin: {
		block: <ore:blockTin>,
		dust: <ore:dustTin>,
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
		nugget: <ore:nuggetUranium>,
		plate: <ore:plateUranium>,
		rod: null
	}
};
