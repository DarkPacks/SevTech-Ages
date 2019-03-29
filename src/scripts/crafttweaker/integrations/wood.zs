/*
	SevTech: Ages Wood Script

	This script handles adding/removing recipes for logs to planks.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

import mods.betterwithmods.Kiln;
import mods.betterwithmods.Saw;
import mods.primaltech.WaterSaw;

/*
	This listing contains the pairs for the Logs -> Planks.
*/
static plankLogPairs as IIngredient[][IItemStack] = {
	<abyssalcraft:dltplank:0>: [
		<abyssalcraft:dltlog:0>
	],
	<abyssalcraft:dreadplanks:0>: [
		<abyssalcraft:dreadlog:0>
	],
	<betterwithaddons:planks_mulberry:0>: [
		<betterwithaddons:log_mulberry:0>
	],
	<betterwithaddons:planks_sakura:0>: [
		<betterwithaddons:log_sakura:0>
	],
	<minecraft:planks:1>: [
		<thebetweenlands:log_sap:0>,
		<minecraft:log:1>,
		<primal:logs_stripped:1>,
		<twilightforest:magic_log:0>,
		<twilightforest:twilight_log:1>,
		<twilightforest:twilight_log:3>
	],
	<minecraft:planks:2>: [
		<betterwithaddons:log_luretree_face:0>,
		<betterwithaddons:log_luretree:0>,
		<minecraft:log:2>,
		<primal:logs_stripped:2>,
		<twilightforest:magic_log:2>,
		<twilightforest:twilight_log:2>
	],
	<minecraft:planks:3>: [
		<betterwithmods:blood_log:0>,
		<minecraft:log:3>,
		<primal:logs_stripped:3>
	],
	<minecraft:planks:4>: [
		<minecraft:log2:0>,
		<primal:logs_stripped:4>
	],
	<minecraft:planks:5>: [
		<minecraft:log2:1>,
		<primal:logs_stripped:5>,
		<twilightforest:magic_log:3>
	],
	<minecraft:planks:0>: [
		<minecraft:log:0>,
		<primal:logs_stripped:0>,
		<twilightforest:twilight_log:0>
	],
	<natura:nether_planks:1>: [
		<natura:nether_logs2:15>,
		<natura:nether_logs2:0>
	],
	<natura:nether_planks:2>: [
		<natura:nether_logs:1>
	],
	<natura:nether_planks:3>: [
		<natura:nether_logs:2>
	],
	<natura:nether_planks:0>: [
		<natura:nether_logs:0>
	],
	<natura:overworld_planks:1>: [
		<natura:overworld_logs:1>
	],
	<natura:overworld_planks:2>: [
		<natura:overworld_logs:2>
	],
	<natura:overworld_planks:3>: [
		<natura:overworld_logs:3>
	],
	<natura:overworld_planks:4>: [
		<natura:overworld_logs2:0>
	],
	<natura:overworld_planks:5>: [
		<natura:overworld_logs2:1>
	],
	<natura:overworld_planks:6>: [
		<natura:overworld_logs2:2>
	],
	<natura:overworld_planks:7>: [
		<natura:overworld_logs2:3>
	],
	<natura:overworld_planks:8>: [
		<natura:redwood_logs:1>
	],
	<natura:overworld_planks:0>: [
		<natura:overworld_logs:0>
	],
	<primal:planks:0>: [
		<primal:logs:0>,
		<primal:logs_stripped:6>
	],
	<primal:planks:1>: [
		<primal:logs:1>,
		<primal:logs_stripped:7>
	],
	<rustic:planks:1>: [
		<rustic:log:1>
	],
	<rustic:planks:0>: [
		<rustic:log:0>
	],
	<totemic:cedar_plank:0>: [
		<totemic:cedar_log:0>,
		<totemic:stripped_cedar_log:0>
	],
	<traverse:fir_planks:0>: [
		<traverse:fir_log:0>
	],
	<thebetweenlands:giant_root_planks:0>: [
		<thebetweenlands:giant_root:0>
	],
	<thebetweenlands:hearthgrove_planks:0>: [
		<thebetweenlands:log_hearthgrove:1>,
		<thebetweenlands:log_hearthgrove:3>
	],
	<thebetweenlands:nibbletwig_planks:0>: [
		<thebetweenlands:log_nibbletwig:0>,
		<thebetweenlands:log_nibbletwig:12>
	],
	<thebetweenlands:rubber_tree_planks:0>: [
		<thebetweenlands:log_rubber:0>
	],
	<thebetweenlands:weedwood_planks:0>: [
		<thebetweenlands:log_weedwood:12>,
		<thebetweenlands:log_weedwood:0>,
		<thebetweenlands:weedwood:0>
	],
	<integrateddynamics:menril_planks:0>: [
		<integrateddynamics:menril_log:0>,
		<integrateddynamics:menril_log_filled:0>
	],
	<extraplanets:kepler22b_planks:0>: [
		<extraplanets:kepler22b_maple_logs:0>
	],
	<extraplanets:kepler22b_planks:1>: [
		<extraplanets:kepler22b_maple_logs:1>
	],
	<extraplanets:kepler22b_planks:2>: [
		<extraplanets:kepler22b_maple_logs:2>
	],
	<extraplanets:kepler22b_planks:3>: [
		<extraplanets:kepler22b_maple_logs:3>
	],
	<extraplanets:kepler22b_planks:4>: [
		<extraplanets:kepler22b_maple_logs2:0>
	],
	<extraplanets:kepler22b_planks:5>: [
		<extraplanets:kepler22b_maple_logs2:1>
	]
};

/*
	This array listing should only contain logs which don't have planks from the mod or don't make sense to convert to Vanilla Planks.

	This will then remove the log from processig recipes (in higher tech) to not turn out as chopping blocks.
*/
static logsToRemove as IItemStack[] = [
	<natura:redwood_logs:2>,
	<natura:redwood_logs:0>,
	<thebetweenlands:log_nibbletwig:1>,
	<thebetweenlands:log_nibbletwig:2>,
	<thebetweenlands:log_nibbletwig:3>,
	<thebetweenlands:log_nibbletwig:4>,
	<thebetweenlands:log_nibbletwig:5>,
	<thebetweenlands:log_nibbletwig:6>,
	<thebetweenlands:log_nibbletwig:7>,
	<thebetweenlands:log_nibbletwig:8>,
	<thebetweenlands:log_nibbletwig:9>,
	<thebetweenlands:log_nibbletwig:10>,
	<thebetweenlands:log_nibbletwig:11>,
	<thebetweenlands:log_nibbletwig:13>,
	<thebetweenlands:log_nibbletwig:14>,
	<thebetweenlands:log_nibbletwig:15>,
	<thebetweenlands:log_hearthgrove:0>,
	<thebetweenlands:log_hearthgrove:2>,
	<thebetweenlands:log_hearthgrove:4>,
	<thebetweenlands:log_hearthgrove:5>,
	<thebetweenlands:log_hearthgrove:6>,
	<thebetweenlands:log_hearthgrove:7>,
	<thebetweenlands:log_hearthgrove:8>,
	<thebetweenlands:log_hearthgrove:9>,
	<thebetweenlands:log_hearthgrove:10>,
	<thebetweenlands:log_hearthgrove:11>,
	<thebetweenlands:log_hearthgrove:12>,
	<thebetweenlands:log_hearthgrove:13>,
	<thebetweenlands:log_hearthgrove:14>,
	<thebetweenlands:log_hearthgrove:15>,
	<thebetweenlands:log_weedwood:1>,
	<thebetweenlands:log_weedwood:2>,
	<thebetweenlands:log_weedwood:3>,
	<thebetweenlands:log_weedwood:4>,
	<thebetweenlands:log_weedwood:5>,
	<thebetweenlands:log_weedwood:6>,
	<thebetweenlands:log_weedwood:7>,
	<thebetweenlands:log_weedwood:8>,
	<thebetweenlands:log_weedwood:9>,
	<thebetweenlands:log_weedwood:10>,
	<thebetweenlands:log_weedwood:11>,
	<thebetweenlands:log_weedwood:13>,
	<thebetweenlands:log_weedwood:14>,
	<thebetweenlands:log_weedwood:15>,
	<twilightforest:magic_log:1>
];

function init() {
	// Add the recipes needed.
	for plank, logs in plankLogPairs {
		for log in logs {
			// Horse Power
			horsePower.addChopping(plank * 4, log, 4, true);
			horsePower.addChopping(plank * 4, log, 2, false);

			// Primal Tech
			WaterSaw.addRecipe(plank, log, 80);

			// Mekanism
			mekanism.removeSawmill(log);

			// For any recipes that need logs as an IItemStack.
			for logItem in log.items {
				// Better With Mods
				Saw.builder()
					.buildRecipe(log, [plank * 6, <ore:dustWood>.firstItem * 2])
					.setInputBlockDrop(logItem as IItemStack)
					.build();
				Kiln.builder()
					.buildRecipe(log, [<primal_tech:charcoal_block>])
					.setHeat(2)
					.build();

				// Mekanism
				mekanism.addSawmill(logItem, plank * 6, <ore:dustWood>.firstItem * 2, 0.25);
			}
		}
	}

	// Remove the recipes for the log.
	for log in logsToRemove {
		mekanism.removeSawmill(log);
	}

	// Better stick recipes. (Lower tech recipe to use slabs to convert to sticks before players unlock higher tech)
	for slab in <ore:slabWood>.items {
		Saw.builder()
			.buildRecipe(slab, [<minecraft:stick> * 4])
			.build();
	}
}
