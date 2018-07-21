/*
	SevTech: Ages Immersive Petroleum Script

	This script handles custom integration control to a mod.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import mods.immersivepetroleum.Distillation;
import mods.immersivepetroleum.Motorboat;
import mods.immersivepetroleum.PortableGenerator;
import mods.immersivepetroleum.Reservoir;

/*
	Support:

	Distillation: http://crafttweaker.readthedocs.io/en/latest/#Mods/Immersive_Petroleum/CraftTweaker_Support/Distillation/
	Reservoir: http://crafttweaker.readthedocs.io/en/latest/#Mods/Immersive_Petroleum/CraftTweaker_Support/Reservoir/
	Fuel Registration: http://crafttweaker.readthedocs.io/en/latest/#Mods/Immersive_Petroleum/CraftTweaker_Support/FuelRegistration/
*/
function init() {
	// Distillation
	Distillation.addRecipe(
		[<liquid:diesel> * 50, <liquid:naphtha> * 50],
		[<immersivepetroleum:material:0>],
		<liquid:oil> * 100,
		2048, 1,
		[0.07]
	);

	Distillation.addRecipe(
		[<liquid:lubricant> * 20, <liquid:gasoline> * 40, <liquid:kerosene> * 40],
		[<immersivepetroleum:material:0>],
		<liquid:diesel> * 100,
		2048, 1,
		[0.07]
	);

	// Reservoir
	Reservoir.registerReservoir("aquifer", <liquid:water>, 5000000, 10000000, 6, 30, [], [0], [], []);
	Reservoir.registerReservoir("oil", <liquid:oil>, 2500000, 15000000, 6, 40, [1], [], [], []);
	Reservoir.registerReservoir("lava", <liquid:lava>, 250000, 1000000, 0, 30, [1], [], [], []);

	// Fuel Registration
	Motorboat.registerMotorboatFuel(<liquid:gasoline>, 1);
	PortableGenerator.registerPortableGenFuel(<liquid:gasoline>, 256, 5);
}
