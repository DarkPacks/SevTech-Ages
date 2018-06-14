/*
	SevTech: Ages Tinkers Script

	This script handles the staging of Tinker's parts, materials, and modifiers.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import mods.sevtweaks.stager.Stage;
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
TinkerStages.addGeneralCraftingStage(stageTwo.getStage());

// Prevents all tool swapping unless the stage is unlocked.
TinkerStages.addGeneralPartReplacingStage(stageTwo.getStage());

// Prvents all part building unless the stage is unlocked.
TinkerStages.addGeneralPartBuildingStage(stageTwo.getStage());

// Prevents applying any tool modifiers unless the stage is unlocked.
TinkerStages.addGeneralModifierStage(stageThree.getStage());

/*
	SPECIFIC RESTRICTIONS
*/
// ==================================
// Tool Type Stage
// Prevents a specific tool type from being crafted at the tool station.
var toolTypeStages as string[][Stage] = {
	stageTwo: [
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

	stageThree: [
		"tcomplement:chisel",
		"tconstruct:cleaver",
		"tconstruct:longbow",
		"tconstruct:shuriken",
		"yoyos:yoyo"
	],

	stageDisabled: [
		"tconstruct:kama"
	]
};

for stage, toolTypes in toolTypeStages {
	for toolType in toolTypes {
		stage.addTiCToolType(toolType);
	}
}

// ==================================
// Material Stage
// Prevents the material from being used.
static materialsForStage as string[][Stage] = {
	stageOne: [
		"bone",
		"cactus",
		"flint",
		"stone",
		"wood"
	],

	stageTwo: [
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

	stageThree: [
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

	stageFour: [
		"ardite",
		"cobalt",
		"endrod",
		"knightslime",
		"manyullyn"
	],

	stageFive: [
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

for stage, materials in materialsForStage {
	for material in materials {
		stage.addTiCMaterial(material);
	}
}

// ==================================
// Functions
function getMaterialStage(inMaterial as string) as string {
	for materialStage, materials in scripts.staging.tinkers.materialsForStage {
		if (materials has inMaterial.toLowerCase()) {
			return materialStage;
		}
	}
}
