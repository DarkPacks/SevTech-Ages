/*
	SevTech: Ages Resources Custom Script

	This script is for specfic changes/overrides which don't warrent the need for a class or mod
	own script. As single one offs can be used in here as long they are doc'd for what is does,
	and what it's needed for. So other developers know what's going on etc...

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

import scripts.crafttweaker.utils;

/*
	Metals which are needing removal from the Game.
*/
function initMetalRemovals() {
	var partsToRemove as string[] = [
		"block",
		"dust",
		"ingot",
		"nugget",
		"plate"
	];
	var metalsToRemove as ILiquidStack[string] = {
		brass: <liquid:brass>,
		pigIron: null,
		vanadium: null,
		wootz: null
	};

	for metalName, metalLiquid in metalsToRemove {
		// Hide liquid
		if (metalLiquid as bool) {
			mods.jei.JEI.hide(metalLiquid);
		}

		for partName in partsToRemove {
			unifier.clearOreDict(oreDict.get(partName ~ utils.capitalize(metalName)), metalLiquid);
		}
	}
}

/*
	Seeds

	http://crafttweaker.readthedocs.io/en/latest/#Vanilla/Recipes/Seeds/#seeds
*/
function initGrass() {
	var seedsToRemove as IItemStack[] = [
		<betterwithmods:hemp:0>,
		<minecraft:beetroot_seeds:0>,
		<minecraft:melon_seeds:0>,
		<minecraft:pumpkin_seeds:0>,
		<minecraft:stick:0>,
		<minecraft:wheat_seeds:0>
	];

	for seed in seedsToRemove {
		vanilla.seeds.removeSeed(seed);
	}
}

function init() {
	// Call other methods.
	initMetalRemovals();
	initGrass();

	// Dimensional Shard Processing. (One not included by default from the Mod)
	immersiveEngineering.addCrusher(<rftools:dimensional_shard:0> * 2, <ore:oreDimensionalShard>);

	/*
		Hardcoded recipe removals from processing. For the ones not handling correctly in the Ore Dict.
	*/
	appliedEnergistics.removeGrindstone(<galacticraftplanets:asteroids_block:4>);
	immersiveEngineering.addCrusher(<appliedenergistics2:material:0> * 3, <ore:oreBasicCertusQuartz>);
	immersiveEngineering.addCrusher(<appliedenergistics2:material:1> * 3, <ore:oreChargedCertusQuartz>);

	// Silcon
	actuallyAdditions.addCrusher(<galacticraftcore:basic_item:2> * 5, <galacticraftplanets:venus:10>);
	immersiveEngineering.addCrusher(<galacticraftcore:basic_item:2> * 5, <galacticraftplanets:venus:10>);
	immersiveEngineering.addCrusher(<galacticraftcore:basic_item:2> * 5, <galacticraftcore:basic_block_core:8>);
}
