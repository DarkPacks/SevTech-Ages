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

//Two
TinkerStages.addToolTypeStage(STAGES.two, "tconstruct:arrow");
TinkerStages.addToolTypeStage(STAGES.two, "tconstruct:battlesign");
TinkerStages.addToolTypeStage(STAGES.two, "tconstruct:bolt");
TinkerStages.addToolTypeStage(STAGES.two, "tconstruct:broadsword");
TinkerStages.addToolTypeStage(STAGES.two, "tconstruct:crossbow");
TinkerStages.addToolTypeStage(STAGES.two, "tconstruct:excavator");
TinkerStages.addToolTypeStage(STAGES.two, "tconstruct:frypan");
TinkerStages.addToolTypeStage(STAGES.two, "tconstruct:hammer");
TinkerStages.addToolTypeStage(STAGES.two, "tconstruct:hatchet");
TinkerStages.addToolTypeStage(STAGES.two, "tconstruct:kama");
TinkerStages.addToolTypeStage(STAGES.two, "tconstruct:longsword");
TinkerStages.addToolTypeStage(STAGES.two, "tconstruct:lumberaxe");
TinkerStages.addToolTypeStage(STAGES.two, "tconstruct:mattock");
TinkerStages.addToolTypeStage(STAGES.two, "tconstruct:pickaxe");
TinkerStages.addToolTypeStage(STAGES.two, "tconstruct:rapier");
TinkerStages.addToolTypeStage(STAGES.two, "tconstruct:scythe");
TinkerStages.addToolTypeStage(STAGES.two, "tconstruct:shortbow");
TinkerStages.addToolTypeStage(STAGES.two, "tconstruct:shovel");

//Three
TinkerStages.addToolTypeStage(STAGES.three, "tcomplement:chisel");
TinkerStages.addToolTypeStage(STAGES.three, "tconstruct:cleaver");
TinkerStages.addToolTypeStage(STAGES.three, "tconstruct:longbow");
TinkerStages.addToolTypeStage(STAGES.three, "tconstruct:shuriken");
TinkerStages.addToolTypeStage(STAGES.three, "yoyos:yoyo");

//==================================
//Material Stage
//Prevents the material from being used.

//One
TinkerStages.addMaterialStage(STAGES.one, "bone");
TinkerStages.addMaterialStage(STAGES.one, "cactus");
TinkerStages.addMaterialStage(STAGES.one, "flint");
TinkerStages.addMaterialStage(STAGES.one, "stone");
TinkerStages.addMaterialStage(STAGES.one, "wood");

//Two
TinkerStages.addMaterialStage(STAGES.four, "pigiron");
TinkerStages.addMaterialStage(STAGES.two, "abyssalnite");
TinkerStages.addMaterialStage(STAGES.two, "bronze");
TinkerStages.addMaterialStage(STAGES.two, "constantan");
TinkerStages.addMaterialStage(STAGES.two, "copper");
TinkerStages.addMaterialStage(STAGES.two, "dreadium");
TinkerStages.addMaterialStage(STAGES.two, "electrum");
TinkerStages.addMaterialStage(STAGES.two, "iron");
TinkerStages.addMaterialStage(STAGES.two, "prismarine");
TinkerStages.addMaterialStage(STAGES.two, "refined_coralium");
TinkerStages.addMaterialStage(STAGES.two, "silver");
TinkerStages.addMaterialStage(STAGES.two, "slime");
TinkerStages.addMaterialStage(STAGES.two, "sponge");

//Three
TinkerStages.addMaterialStage(STAGES.three, "firewood");
TinkerStages.addMaterialStage(STAGES.three, "lead");
TinkerStages.addMaterialStage(STAGES.three, "magmaslime");
TinkerStages.addMaterialStage(STAGES.three, "netherrack");
TinkerStages.addMaterialStage(STAGES.three, "obsidian");
TinkerStages.addMaterialStage(STAGES.three, "paper");
TinkerStages.addMaterialStage(STAGES.three, "steel");
TinkerStages.addMaterialStage(STAGES.three, "treatedwood");
TinkerStages.addMaterialStage(STAGES.two, "blueslime");
TinkerStages.addMaterialStage(STAGES.two, "knightslime");

//Four
TinkerStages.addMaterialStage(STAGES.four, "ardite");
TinkerStages.addMaterialStage(STAGES.four, "cobalt");
TinkerStages.addMaterialStage(STAGES.four, "manyullyn");
TinkerStages.addMaterialStage(STAGES.three, "endstone");

//==================================
//Modifier Stage
//Prevents the modifier from being applied.

//Three
TinkerStages.addModifierStage(STAGES.three, "haste");
TinkerStages.addModifierStage(STAGES.three, "luck");
TinkerStages.addModifierStage(STAGES.three, "mending_moss");
TinkerStages.addModifierStage(STAGES.three, "oreexcavate");
