import scripts.mod_integrations.modular_machinery.base.createRecipeName;
import scripts.utils.squareNum;

var machineName = "industrial_drying_unit";

var machineCount = 3; //How many in total (base and upgraded versions)

//How much to multiply the base energyPerTick to get mk2 and up
var energyScalingMultiplier as int[] = [
	1, //Mk1 (default)
	4,
	8
];

for i in 0 to machineCount {
	var machineNameComplete as string = i > 0 ? machineName + "_mk" + (i + 1) : machineName;

	var defaultTimeScaler = (i + 1) > 2 ? squareNum(2, i - 1) : i + 1;

	mods.modularmachinery.RecipeBuilder.newBuilder(createRecipeName(machineNameComplete, "leather_drying"), machineNameComplete, 600 / defaultTimeScaler)
		.addEnergyPerTickInput(5 * energyScalingMultiplier[i])
		.addItemOutput(leather * 4)
		.addItemInput(<ore:hideTanned>, 4)
		.build();

	mods.modularmachinery.RecipeBuilder.newBuilder(createRecipeName(machineNameComplete, "paper_drying"), machineNameComplete, 600 / defaultTimeScaler)
		.addEnergyPerTickInput(5 * energyScalingMultiplier[i])
		.addItemOutput(<minecraft:paper> * 4)
		.addItemInput(<primal:plant_fiber_pulp> * 4)
		.build();

	mods.modularmachinery.RecipeBuilder.newBuilder(createRecipeName(machineNameComplete, "salted_hide_drying"), machineNameComplete, 600 / defaultTimeScaler)
		.addEnergyPerTickInput(5 * energyScalingMultiplier[i])
		.addItemOutput(<ore:hideDry>, 4)
		.addItemInput(<ore:hideSalted>, 4)
		.build();
}
