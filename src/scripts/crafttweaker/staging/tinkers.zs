/*
	SevTech: Ages Tinkers Staging Script

	This script handles the staging of Tinker's parts, materials, and modifiers.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IItemStack;

import mods.zenstages.Stage;
import mods.zenstages.ZenStager;
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

// ==================================
// Material Stage
// Prevents the material from being used.
static modifierForStage as string[][string] = {
	stageThree.stage: [
		"haste",
		"luck",
		"mending_moss",
		"oreexcavate"
	],

	stageFive.stage: [
		"hitech"
	],

	stageDisabled.stage: [
		"gardening"
	]
};

/*
	Part Item Staging
*/
static partsStages as IItemStack[][string] = {
	stageTwo.stage: [
		<conarm:armor_plate:0>,
		<conarm:armor_trim:0>,
		<conarm:boots_core:0>,
		<conarm:chest_core:0>,
		<conarm:helmet_core:0>,
		<conarm:leggings_core:0>,
		<conarm:polishing_kit:0>,
		<tconstruct:arrow_head:0>,
		<tconstruct:arrow_shaft:0>,
		<tconstruct:axe_head:0>,
		<tconstruct:binding:0>,
		<tconstruct:bow_limb:0>,
		<tconstruct:bow_string:0>,
		<tconstruct:broad_axe_head:0>,
		<tconstruct:cross_guard:0>,
		<tconstruct:excavator_head:0>,
		<tconstruct:fletching:0>,
		<tconstruct:hammer_head:0>,
		<tconstruct:hand_guard:0>,
		<tconstruct:large_plate:0>,
		<tconstruct:pan_head:0>,
		<tconstruct:pick_head:0>,
		<tconstruct:scythe_head:0>,
		<tconstruct:sharpening_kit:0>,
		<tconstruct:shovel_head:0>,
		<tconstruct:sign_head:0>,
		<tconstruct:sword_blade:0>,
		<tconstruct:tool_rod:0>,
		<tconstruct:tough_binding:0>,
		<tconstruct:tough_tool_rod:0>,
		<tconstruct:wide_guard:0>
	],

	stageThree.stage: [
		<tcomplement:chisel_head:0>,
		<tconstruct:knife_blade:0>,
		<tconstruct:large_sword_blade:0>,
		<yoyos:yoyo_axle:0>,
		<yoyos:yoyo_body:0>,
		<yoyos:yoyo_cord:0>
	],

	stageDisabled.stage: [
		<tconstruct:kama_head:0>
	]
};

/*
	Init method to perform the logic for the script.
*/
function init() {
	// Add the tool types to be staged.
	for _stage, toolTypes in toolTypeStages {
		ZenStager.getStage(_stage).addTiCToolTypes(toolTypes);
	}

	// Add the modifiers to be staged.
	for _stage, materials in modifierForStage {
		ZenStager.getStage(_stage).addTiCModifier(materials);
	}

	// Add the materials to be staged.
	for _stage, materials in materialsForStage {
		ZenStager.getStage(_stage).addTiCMaterials(materials);
	}

	// Add the part items to be staged.
	for partStageName, parts in partsStages {
		var partStage as Stage = ZenStager.getStage(partStageName);

		for part in parts {
			// Stage pattern/cast
			partStage.addIngredient(<tconstruct:pattern:0>.withTag({PartType: part.definition.id}));
			partStage.addIngredient(<tconstruct:cast:0>.withTag({PartType: part.definition.id}));
			partStage.addIngredient(<tconstruct:clay_cast:0>.withTag({PartType: part.definition.id}));

			// Stage part materials
			for subItem in part.definition.subItems {
				if (!isNull(subItem.tag) & !isNull(subItem.tag.Material)) {
					var subItemMaterial as string = subItem.tag.Material.asString();
					var materialStage as Stage = ZenStager.getTiCMaterialStage(subItemMaterial);
					var materialPartStage as Stage = scripts.crafttweaker.utils.getHighestStage(partStage, materialStage);

					materialPartStage.addIngredient(subItem);
				}
			}
		}
	}
}
