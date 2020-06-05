#priority 1
/*
	SevTech: Ages Mod Id Staging Script

	This script handles the staging of mods by their Id.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageThree;
import scripts.crafttweaker.stages.stageFour;
import scripts.crafttweaker.stages.stageFive;

static stagedMods as string[][string] = {
	stageTwo.stage : [
		"thebetweenlands",
		"twilightforest",
		"uppers"
	],

	stageThree.stage : [
		"immersivepetroleum",
		"immersivetech",
		"nex",
		"vc"
	],

	stageFour.stage : [
		"advgenerators",
		"elevatorid",
		"indlog",
		"integrateddynamics",
		"modularrouters",
		"simplegenerators",
		"storagenetwork"
	],

	stageFive.stage : [
		"compactmachines3",
		"environmentaltech",
		"mysticalagradditions",
		"mysticalagriculture",
		"rftools",
		"rftoolscontrol",
		"scannable"
	]
};

function init() {
	for stageName, modId in stagedMods {
		ZenStager.getStage(stageName).addModId(modId, true);
	}
}

function containsMod(targetModId as string) as string {
	for stageName, modIds in stagedMods {
		if (modIds has targetModId) {
			return stageName;
		}
	}
	return "";
}
