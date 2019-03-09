/*
	SevTech: Ages Immersive Engineering Multiblock Staging Script

	This script handles the staging of Immersive Engineering Multiblocks to set stages
	for them to appear.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageOne;
import scripts.crafttweaker.stages.stageThree;
import scripts.crafttweaker.stages.stageFour;

static multiblockMachinesForStages as string[][string] = {
	stageOne.stage : [
		"IE:AlloySmelter"
	],

	stageThree.stage : [
		"IE:ArcFurnace",
		"IE:AutoWorkbench",
		"IE:BlastFurnace",
		"IE:BlastFurnaceAdvanced",
		"IE:BucketWheel",
		"IE:CokeOven",
		"IT:CokeOvenAdvanced",
		"IE:Crusher",
		"IE:DieselGenerator",
		"IE:Excavator",
		"IE:Fermenter",
		"IE:Lightningrod",
		"IE:MetalPress",
		"IE:Mixer",
		"IE:Refinery",
		"IE:SheetmetalTank",
		"IE:Silo",
		"IE:Squeezer",
		"IP:DistillationTower",
		"IP:Pumpjack",
		"IT:Alternator",
		"IT:Boiler",
		"IT:Distiller",
		"IT:SolarReflector",
		"IT:SolarTower",
		"IT:SteamTurbine"
	],

	stageFour.stage : [
		"IE:Assembler",
		"IE:BottlingMachine"
	]
};

function init() {
	for stageName, multiblockMachines in multiblockMachinesForStages {
		ZenStager.getStage(stageName).addIEMultiBlocks(multiblockMachines);
	}
}
