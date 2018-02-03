import mods.TinkerStages;

/*
	Tinker Stages

	http://crafttweaker.readthedocs.io/en/latest/#Mods/GameStages/TinkerStages/TinkerStages/
*/
/*
	GENERAL RESTRICTIONS
*/
//Prevents all tools unless the stage is unlocked.
TinkerStages.addGeneralCraftingStage(STAGES.two);

//Prevents all tool swapping unless the stage is unlocked.
TinkerStages.addGeneralPartReplacingStage(STAGES.two);

//Prvents all part building unless the stage is unlocked.
TinkerStages.addGeneralPartBuildingStage(STAGES.two);

//Prevents applying any tool modifiers unless the stage is unlocked.
TinkerStages.addGeneralModifierStage(STAGES.three);

/*
	SPECIFIC RESTRICTIONS
*/
//==================================
//Tool Type Stage
//Prevents a specific tool type from being crafted at the tool station.
var toolTypeStages as string[][string] = {
	STAGES.two : [
		"tconstruct:arrow",
		"tconstruct:battlesign",
		"tconstruct:bolt",
		"tconstruct:broadsword",
		"tconstruct:crossbow",
		"tconstruct:excavator",
		"tconstruct:frypan",
		"tconstruct:hammer",
		"tconstruct:hatchet",
		"tconstruct:kama",
		"tconstruct:longsword",
		"tconstruct:lumberaxe",
		"tconstruct:mattock",
		"tconstruct:pickaxe",
		"tconstruct:rapier",
		"tconstruct:scythe",
		"tconstruct:shortbow",
		"tconstruct:shovel"
	],

	STAGES.three : [
		"tcomplement:chisel",
		"tconstruct:cleaver",
		"tconstruct:longbow",
		"tconstruct:shuriken",
		"yoyos:yoyo"
	]
};

for stage, toolTypes in toolTypeStages {
	for toolType in toolTypes {
		TinkerStages.addToolTypeStage(stage, toolType);
	}
}

//==================================
//Material Stage
//Prevents the material from being used.
var materialStages as string[][string] = {
	STAGES.one : [
		"bone",
		"cactus",
		"flint",
		"stone",
		"wood"
	],

	STAGES.two : [
		"abyssalnite",
		"blueslime",
		"bronze",
		"constantan",
		"copper",
		"dreadium",
		"electrum",
		"iron",
		"knightslime",
		"prismarine",
		"refined_coralium",
		"silver",
		"slime",
		"sponge"
	],

	STAGES.three : [
		"endstone",
		"firewood",
		"lead",
		"magmaslime",
		"netherrack",
		"obsidian",
		"paper",
		"steel",
		"treatedwood"
	],

	STAGES.four : [
		"ardite",
		"cobalt",
		"manyullyn",
		"pigiron"
	]
};

for stage, materials in materialStages {
	for material in materials {
		TinkerStages.addToolTypeStage(stage, material);
	}
}

//==================================
//Modifier Stage
//Prevents the modifier from being applied.
var modifierStages as string[][string] = {
	STAGES.three : [
		"haste",
		"luck",
		"mending_moss",
		"oreexcavate"
	]
};

for stage, modifiers in modifierStages {
	for modifier in modifiers {
		TinkerStages.addToolTypeStage(stage, modifier);
	}
}
