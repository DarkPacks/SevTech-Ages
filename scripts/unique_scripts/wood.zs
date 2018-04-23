import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

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
		<minecraft:log:1>,
		<primal:logs_stripped:1>,
		<twilightforest:twilight_log:1>,
		<twilightforest:twilight_log:3>
	],
	<minecraft:planks:2>: [
		<minecraft:log:2>,
		<primal:logs_stripped:2>,
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
		<primal:logs_stripped:5>
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
	]
};

for plank, logs in plankLogPairs {
	for log in logs {
		//Horsepower
		//Add recipe for manual and automatic with different times for each. Makes it consistent for all
		mods.horsepower.ChoppingBlock.add(log, plank * 4, 4, true);
		mods.horsepower.ChoppingBlock.add(log, plank * 4, 2, false);

		//Better With Mods
		mods.betterwithmods.Saw.add(log, [plank * 6, <ore:dustWood>.firstItem * 2]);

		//Primal Tech
		mods.primaltech.WaterSaw.addRecipe(plank, log, 80);

		//Mekanism
		mods.mekanism.sawmill.removeRecipe(log); //TODO: Try just removing the oredict

		//For any recipes that need logs as an IItemStack
		for logItem in log.items {
			mods.mekanism.sawmill.addRecipe(logItem, plank * 6, <ore:dustWood>.firstItem * 2);
		}
	}
}
