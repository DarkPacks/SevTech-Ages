/*
	SevTech: Ages Mobs Script

	This script handles the staging of mobs to set stages for them to appear.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import mods.sevtweaks.stager.Stage;
import mods.sevtweaks.stager.Stager;

var stageOne as Stage = STAGES.one;
var stageTwo as Stage = STAGES.two;
var stageThree as Stage = STAGES.three;
var stageFour as Stage = STAGES.four;

// ==================================
// Mobs Staging
static mobsMap as string[][string] = {
	stageOne.stage: [
		"emberroot:rainbowslime",
		"emberroot:slime",
		"minecraft:skeleton",
		"minecraft:skeleton_horse"
	],

	stageTwo.stage: [
		"emberroot:enderminy",
		"emberroot:fallenmount",
		"emberroot:hero",
		"emberroot:knight_fallen",
		"emberroot:skeleton_frozen",
		"emberroot:withercat",
		"emberroot:witherwitch",
		"minecraft:enderman"
	],

	stageThree.stage: [
		"fat_cat:fat_cat"
	],

	stageFour.stage: [
		"playerskins:playermob"
	]
};

/*
	Init method to perform the logic for the script.
*/
function init() {
	for _stage, mobs in scripts.staging.mobs.mobsMap {
		Stager.getStage(_stage).addMob(mobs);
	}
}
