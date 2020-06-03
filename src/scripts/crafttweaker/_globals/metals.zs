#priority 4100

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
		ore: <ore:oreAluminum>,
		plate: <ore:plateAluminum>,
		rod: <ore:rodAluminum>
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
		dust: <ore:dustArdite>,
		gear: null,
		ingot: <ore:ingotArdite>,
		nugget: <ore:nuggetArdite>,
		ore: <ore:oreArdite>,
		plate: null,
		rod: null
	},
	blackIron: {
		block: <ore:blockBlackIron>,
		dust: null,
		gear: null,
		ingot: <ore:ingotBlackIron>,
		nugget: <ore:nuggetBlackIron>,
		plate: <ore:plateBlackIron>,
		rod: <ore:rodBlackIron>
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
		dust: <ore:dustCobalt>,
		gear: <ore:gearCobalt>,
		ingot: <ore:ingotCobalt>,
		nugget: <ore:nuggetCobalt>,
		ore: <ore:oreCobalt>,
		plate: <ore:plateCobalt>,
		rod: <ore:rodCobalt>
	},
	compressedIron: {
		block: <ore:blockCompressedIron>,
		dust: null,
		gear: <ore:gearCompressedIron>,
		ingot: <ore:ingotCompressedIron>,
		nugget: null,
		plate: <ore:plateCompressedIron>,
		rod: <ore:rodCompressedIron>
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
		clump: <ore:clumpCopper>,
		crystal: <ore:crystalCopper>,
		dirtyDust: <ore:dustDirtyCopper>,
		dust: <ore:dustCopper>,
		gear: <ore:gearCopper>,
		ingot: <ore:ingotCopper>,
		nugget: <ore:nuggetCopper>,
		ore: <ore:oreCopper>,
		plate: <ore:plateCopper>,
		rod: <ore:rodCopper>,
		shard: <ore:shardCopper>
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
	enhancedGalgadorian: {
		block: <ore:blockEnhancedGalgadorian>,
		dust: null,
		gear: <ore:gearEnhancedGalgadorian>,
		ingot: <ore:ingotEnhancedGalgadorian>,
		nugget: null,
		plate: <ore:plateEnhancedGalgadorian>,
		rod: <ore:rodEnhancedGalgadorian>
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
	galgadorian: {
		block: <ore:blockGalgadorian>,
		dust: null,
		gear: <ore:gearGalgadorian>,
		ingot: <ore:ingotGalgadorian>,
		nugget: null,
		plate: <ore:plateGalgadorian>,
		rod: <ore:rodGalgadorian>
	},
	gold: {
		block: <ore:blockGold>,
		clump: <ore:clumpGold>,
		crystal: <ore:crystalGold>,
		dirtyDust: <ore:dustDirtyGold>,
		dust: <ore:dustGold>,
		gear: <ore:gearGold>,
		ingot: <ore:ingotGold>,
		nugget: <ore:nuggetGold>,
		ore: <ore:oreGold>,
		plate: <ore:plateGold>,
		rod: <ore:rodGold>,
		shard: <ore:shardGold>
	},
	invar: {
		block: <ore:blockInvar>,
		dust: <ore:dustInvar>,
		gear: <ore:gearInvar>,
		ingot: <ore:ingotInvar>,
		nugget: <ore:nuggetInvar>,
		plate: <ore:plateInvar>,
		rod: <ore:rodInvar>
	},
	iron: {
		block: <ore:blockIron>,
		clump: <ore:clumpIron>,
		crystal: <ore:crystalIron>,
		dirtyDust: <ore:dustDirtyIron>,
		dust: <ore:dustIron>,
		gear: <ore:gearIron>,
		ingot: <ore:ingotIron>,
		nugget: <ore:nuggetIron>,
		ore: <ore:oreIron>,
		plate: <ore:plateIron>,
		rod: <ore:rodIron>,
		shard: <ore:shardIron>
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
		clump: <ore:clumpLead>,
		crystal: <ore:crystalLead>,
		dirtyDust: <ore:dustDirtyLead>,
		dust: <ore:dustLead>,
		gear: <ore:gearLead>,
		ingot: <ore:ingotLead>,
		nugget: <ore:nuggetLead>,
		ore: <ore:oreLead>,
		plate: <ore:plateLead>,
		rod: <ore:rodLead>,
		shard: <ore:shardLead>
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
	meteoricIron: {
		block: <ore:blockMeteoricIron>,
		dust: <ore:dustMeteoricIron>,
		gear: null,
		ingot: <ore:ingotMeteoricIron>,
		nugget: null,
		ore: <ore:oreMeteoricIron>,
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
		ore: <ore:oreNickel>,
		plate: <ore:plateNickel>,
		rod: null
	},
	osmium: {
		block: <ore:blockOsmium>,
		clump: <ore:clumpOsmium>,
		crystal: <ore:crystalOsmium>,
		dirtyDust: <ore:dustDirtyOsmium>,
		dust: <ore:dustOsmium>,
		gear: null,
		ingot: <ore:ingotOsmium>,
		nugget: <ore:nuggetOsmium>,
		ore: <ore:oreOsmium>,
		plate: null,
		rod: null,
		shard: <ore:shardOsmium>
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
		dust: <ore:dustPlatinum>,
		gear: <ore:gearPlatinum>,
		ingot: <ore:ingotPlatinum>,
		nugget: null,
		ore: <ore:orePlatinum>,
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
	reinforcedMetal: {
		block: <ore:blockReinforcedMetal>,
		dust: null,
		gear: <ore:gearReinforcedMetal>,
		ingot: <ore:ingotReinforcedMetal>,
		nugget: null,
		plate: <ore:plateReinforcedMetal>,
		rod: <ore:rodReinforcedMetal>
	},
	silver: {
		block: <ore:blockSilver>,
		clump: <ore:clumpSilver>,
		crystal: <ore:crystalSilver>,
		dirtyDust: <ore:dustDirtySilver>,
		dust: <ore:dustSilver>,
		gear: <ore:gearSilver>,
		ingot: <ore:ingotSilver>,
		nugget: <ore:nuggetSilver>,
		ore: <ore:oreSilver>,
		plate: <ore:plateSilver>,
		rod: <ore:rodSilver>,
		shard: <ore:shardSilver>
	},
	spacePlatinum: {
		block: <ore:blockSpacePlatinum>,
		dust: <ore:dustSpacePlatinum>,
		gear: null,
		ingot: <ore:ingotSpacePlatinum>,
		nugget: null,
		plate: null,
		rod: null
	},
	steel: {
		block: <ore:blockSteel>,
		dust: <ore:dustSteel>,
		gear: <ore:gearSteel>,
		ingot: <ore:ingotSteel>,
		nugget: <ore:nuggetSteel>,
		plate: <ore:plateSteel>,
		rod: <ore:rodSteel>
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
		clump: <ore:clumpTin>,
		crystal: <ore:crystalTin>,
		dirtyDust: <ore:dustDirtyTin>,
		dust: <ore:dustTin>,
		gear: <ore:gearTin>,
		ingot: <ore:ingotTin>,
		nugget: <ore:nuggetTin>,
		ore: <ore:oreTin>,
		plate: <ore:plateTin>,
		rod: <ore:rodTin>,
		shard: <ore:shardTin>
	},
	titanium: {
		block: <ore:blockTitanium>,
		dust: <ore:dustTitanium>,
		gear: null,
		ingot: <ore:ingotTitanium>,
		nugget: null,
		ore: <ore:oreIlmenite>,
		plate: null,
		rod: null
	},
	uranium: {
		block: <ore:blockUranium>,
		dust: <ore:dustUranium>,
		gear: null,
		ingot: <ore:ingotUranium>,
		nugget: <ore:nuggetUranium>,
		ore: <ore:oreUranium>,
		plate: <ore:plateUranium>,
		rod: null
	},
	zinc: {
		block: <ore:blockZinc>,
		dust: <ore:dustZinc>,
		gear: null,
		ingot: <ore:ingotZinc>,
		nugget: <ore:nuggetZinc>,
		ore: <ore:oreZinc>,
		plate: <ore:plateZinc>,
		rod: null
	}
};
