import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

import mods.betterwithmods.Saw;
import mods.horsepower.ChoppingBlock;
import mods.mekanism.sawmill;
import mods.primaltech.WaterSaw;

var plankLogPairs as IIngredient[][IItemStack]  = {
	<abyssalcraft:dltplank>: [
		<abyssalcraft:dltlog>
	],
	<abyssalcraft:dreadplanks>: [
		<abyssalcraft:dreadlog>
	],
	<betterwithaddons:planks_mulberry>: [
		<betterwithaddons:log_mulberry>
	],
	<betterwithaddons:planks_sakura>: [
		<betterwithaddons:log_sakura>
	],
	<minecraft:planks:1>: [
		<thebetweenlands:log_sap>,
		<minecraft:log:1>,
		<primal:logs_stripped:1>,
		<twilightforest:magic_log>,
		<twilightforest:twilight_log:1>,
		<twilightforest:twilight_log:3>
	],
	<minecraft:planks:2>: [
		<betterwithaddons:log_luretree_face>,
		<betterwithaddons:log_luretree>,
		<minecraft:log:2>,
		<primal:logs_stripped:2>,
		<twilightforest:magic_log:2>,
		<twilightforest:twilight_log:2>
	],
	<minecraft:planks:3>: [
		<betterwithmods:blood_log>,
		<minecraft:log:3>,
		<primal:logs_stripped:3>
	],
	<minecraft:planks:4>: [
		<minecraft:log2>,
		<primal:logs_stripped:4>
	],
	<minecraft:planks:5>: [
		<minecraft:log2:1>,
		<primal:logs_stripped:5>,
		<twilightforest:magic_log:3>
	],
	<minecraft:planks>: [
		<minecraft:log>,
		<primal:logs_stripped>,
		<twilightforest:twilight_log>
	],
	<natura:nether_planks:1>: [
		<natura:nether_logs2:15>,
		<natura:nether_logs2>
	],
	<natura:nether_planks:2>: [
		<natura:nether_logs:1>
	],
	<natura:nether_planks:3>: [
		<natura:nether_logs:2>
	],
	<natura:nether_planks>: [
		<natura:nether_logs>
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
		<natura:overworld_logs2>
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
	<natura:overworld_planks>: [
		<natura:overworld_logs>
	],
	<primal:planks>: [
		<primal:logs>,
		<primal:logs_stripped:6>
	],
	<primal:planks:1>: [
		<primal:logs:1>,
		<primal:logs_stripped:7>
	],
	<rustic:planks:1>: [
		<rustic:log:1>
	],
	<rustic:planks>: [
		<rustic:log>
	],
	<thebetweenlands:weedwood_planks>: [
		<thebetweenlands:log_weedwood:12>,
		<thebetweenlands:log_weedwood>,
		<thebetweenlands:weedwood>
	],
	<totemic:cedar_plank>: [
		<totemic:cedar_log>,
		<totemic:stripped_cedar_log>
	],
	<traverse:fir_planks>: [
		<traverse:fir_log>
	],
	<thebetweenlands:rubber_tree_planks>: [
		<thebetweenlands:log_rubber>
	],
	<thebetweenlands:giant_root_planks>: [
		<thebetweenlands:giant_root>
	],
	<integrateddynamics:menril_planks>: [
		<integrateddynamics:menril_log>,
		<integrateddynamics:menril_log_filled>
	],
	<extraplanets:kepler22b_planks>: [
		<extraplanets:kepler22b_maple_logs>
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
		<extraplanets:kepler22b_maple_logs2>
	],
	<extraplanets:kepler22b_planks:5>: [
		<extraplanets:kepler22b_maple_logs2:1>
	]
};

for plank, logs in plankLogPairs {
	for log in logs {
		//Horsepower
		//Add recipe for manual and automatic with different times for each. Makes it consistent for all
		ChoppingBlock.add(log, plank * 4, 4, true);
		ChoppingBlock.add(log, plank * 4, 2, false);

		//Primal Tech
		WaterSaw.addRecipe(plank, log, 80);

		//Mekanism
		sawmill.removeRecipe(log); //TODO: Try just removing the oredict

		//For any recipes that need logs as an IItemStack
		for logItem in log.items {
			//Better With Mods
			Saw.builder()
				.buildRecipe(log, [plank * 6, <ore:dustWood>.firstItem * 2])
				.setInputBlockDrop(logItem as IItemStack)
				.build();

			//Mekanism
			sawmill.addRecipe(logItem, plank * 6, <ore:dustWood>.firstItem * 2);
		}
	}
}

/*
	This array listing should only contain logs which don't have planks from the mod or don't make sense to convert to Vanilla Planks.

	This will then remove the log from processig recipes (in higher tech) to not turn out as chopping blocks.
*/
var logsToRemove as IItemStack[] = [
	<natura:redwood_logs:2>,
	<natura:redwood_logs>,
	<thebetweenlands:log_nibbletwig>,
	<twilightforest:magic_log:1>
];

for log in logsToRemove {
	sawmill.removeRecipe(log);
}
