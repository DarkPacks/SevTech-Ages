/*
	SevTech: Ages Tinkers Script

	This script handles the staging of Tinker's parts, materials, and modifiers.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import mods.sevtweaks.stager.Stage;
import mods.sevtweaks.stager.Stager;
import mods.TinkerStages;

var stageOne as Stage = STAGES.one;
var stageTwo as Stage = STAGES.two;
var stageThree as Stage = STAGES.three;
var stageFour as Stage = STAGES.four;
var stageFive as Stage = STAGES.five;
var stageDisabled as Stage = STAGES.disabled;

/*
	GENERAL RESTRICTIONS
*/
// Prevents all tools unless the stage is unlocked.
TinkerStages.addGeneralCraftingStage(stageTwo.stage);

// Prevents all tool swapping unless the stage is unlocked.
TinkerStages.addGeneralPartReplacingStage(stageTwo.stage);

// Prvents all part building unless the stage is unlocked.
TinkerStages.addGeneralPartBuildingStage(stageTwo.stage);

// Prevents applying any tool modifiers unless the stage is unlocked.
TinkerStages.addGeneralModifierStage(stageThree.stage);

/*
	SPECIFIC RESTRICTIONS
*/
// ==================================
// Tool Type Stage
// Prevents a specific tool type from being crafted at the tool station.
static toolTypeStages as string[][string] = {
	stageTwo.stage: [
		"tconstruct:arrow",
		"tconstruct:battlesign",
		"tconstruct:bolt",
		"tconstruct:broadsword",
		"tconstruct:crossbow",
		"tconstruct:excavator",
		"tconstruct:frypan",
		"tconstruct:hammer",
		"tconstruct:hatchet",
		"tconstruct:longsword",
		"tconstruct:lumberaxe",
		"tconstruct:mattock",
		"tconstruct:pickaxe",
		"tconstruct:rapier",
		"tconstruct:scythe",
		"tconstruct:shortbow",
		"tconstruct:shovel"
	],

	stageThree.stage: [
		"tcomplement:chisel",
		"tconstruct:cleaver",
		"tconstruct:longbow",
		"tconstruct:shuriken",
		"yoyos:yoyo"
	],

	stageDisabled.stage: [
		"tconstruct:kama"
	]
};

// ==================================
// Material Stage
// Prevents the material from being used.
static materialsForStage as string[][string] = {
	stageOne.stage: [
		"bone",
		"cactus",
		"flint",
		"stone",
		"wood"
	],

	stageTwo.stage: [
		"abyssalnite",
		"blueslime",
		"bronze",
		"copper",
		"dreadium",
		"feather",
		"fierymetal",
		"hemp",
		"ice",
		"iron",
		"knightmetal",
		"leaf",
		"nagascale",
		"nagascale",
		"prismarine",
		"raven_feather",
		"reed",
		"refined_coralium",
		"silver",
		"slime",
		"slimeleaf_blue",
		"slimeleaf_orange",
		"slimeleaf_purple",
		"slimevine_blue",
		"slimevine_purple",
		"sponge",
		"steeleaf",
		"string",
		"vine"
	],

	stageThree.stage: [
		"blaze",
		"constantan",
		"electrum",
		"endstone",
		"firewood",
		"lead",
		"magmaslime",
		"netherrack",
		"obsidian",
		"paper",
		"pigiron",
		"steel",
		"treatedwood"
	],

	stageFour.stage: [
		"ardite",
		"cobalt",
		"endrod",
		"knightslime",
		"manyullyn"
	],

	stageFive.stage: [
		"ma.base_essence",
		"ma.inferium",
		"ma.intermedium",
		"ma.prosperity",
		"ma.prudentium",
		"ma.soulium",
		"ma.superium",
		"ma.supremium"
	]
};

/*
	Init method to perform the logic for the script.
*/
function init() {
	// Add the tool types to be staged.
	for _stage, toolTypes in scripts.staging.tinkers.toolTypeStages {
		for toolType in toolTypes {
			Stager.getStage(_stage).addTiCToolType(toolType);
		}
	}

	// Add the materials to be staged.
	for _stage, materials in scripts.staging.tinkers.materialsForStage {
		for material in materials {
			Stager.getStage(_stage).addTiCMaterial(material);
		}
	}
}
