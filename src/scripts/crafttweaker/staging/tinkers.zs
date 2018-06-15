/*
	SevTech: Ages Tinkers Staging Script

	This script handles the staging of Tinker's parts, materials, and modifiers.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IItemStack;

import mods.sevtweaks.stager.Stage;
import mods.sevtweaks.stager.Stager;
import mods.TinkerStages;

import scripts.crafttweaker.stages.stageOne;
import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageThree;
import scripts.crafttweaker.stages.stageFour;
import scripts.crafttweaker.stages.stageFive;
import scripts.crafttweaker.stages.stageDisabled;

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
	Part Item Staging
*/
static partsStages as IItemStack[][string] = {
	stageTwo.stage: [
		<conarm:armor_plate>,
		<conarm:armor_trim>,
		<conarm:boots_core>,
		<conarm:chest_core>,
		<conarm:helmet_core>,
		<conarm:leggings_core>,
		<conarm:polishing_kit>,
		<tconstruct:arrow_head>,
		<tconstruct:arrow_shaft>,
		<tconstruct:axe_head>,
		<tconstruct:binding>,
		<tconstruct:bow_limb>,
		<tconstruct:bow_string>,
		<tconstruct:broad_axe_head>,
		<tconstruct:cross_guard>,
		<tconstruct:excavator_head>,
		<tconstruct:fletching>,
		<tconstruct:hammer_head>,
		<tconstruct:hand_guard>,
		<tconstruct:large_plate>,
		<tconstruct:pan_head>,
		<tconstruct:pick_head>,
		<tconstruct:scythe_head>,
		<tconstruct:sharpening_kit>,
		<tconstruct:shovel_head>,
		<tconstruct:sign_head>,
		<tconstruct:sword_blade>,
		<tconstruct:tool_rod>,
		<tconstruct:tough_binding>,
		<tconstruct:tough_tool_rod>,
		<tconstruct:wide_guard>
	],

	stageThree.stage: [
		<tcomplement:chisel_head>,
		<tconstruct:knife_blade>,
		<tconstruct:large_sword_blade>,
		<yoyos:yoyo_axle>,
		<yoyos:yoyo_body>,
		<yoyos:yoyo_cord>
	],

	stageDisabled.stage: [
		<tconstruct:kama_head>
	]
};

/*
	Init method to perform the logic for the script.
*/
function init() {
	// Add the tool types to be staged.
	for _stage, toolTypes in scripts.crafttweaker.staging.tinkers.toolTypeStages {
		Stager.getStage(_stage).addTiCToolTypes(toolTypes);
	}

	// Add the materials to be staged.
	for _stage, materials in scripts.crafttweaker.staging.tinkers.materialsForStage {
		Stager.getStage(_stage).addTiCMaterials(materials);
	}

	// Add the part items to be staged.
	for partStageName, parts in scripts.crafttweaker.staging.tinkers.partsStages {
		var partStage as Stage = Stager.getStage(partStageName);

		for part in parts {
			// Stage pattern/cast
			partStage.addIngredient(<tconstruct:pattern>.withTag({PartType: part.definition.id}));
			partStage.addIngredient(<tconstruct:cast>.withTag({PartType: part.definition.id}));
			partStage.addIngredient(<tconstruct:clay_cast>.withTag({PartType: part.definition.id}));

			// Stage part materials
			for subItem in part.definition.subItems {
				if (!isNull(subItem.tag) & !isNull(subItem.tag.Material)) {
					var subItemMaterial as string = subItem.tag.Material.asString();
					var materialStage as Stage = Stager.getTiCMaterialStage(subItemMaterial);
					var stage as Stage = scripts.crafttweaker.utils.getHighestStage(partStage, materialStage);

					partStage.addIngredient(subItem);
				}
			}
		}
	}
}
