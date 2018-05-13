import mods.immersivepetroleum.Distillation;
import mods.immersivepetroleum.Motorboat;
import mods.immersivepetroleum.PortableGenerator;
import mods.immersivepetroleum.Reservoir;

/*
	Distillation

	http://crafttweaker.readthedocs.io/en/latest/#Mods/Immersive_Petroleum/CraftTweaker_Support/Distillation/
*/
Distillation.addRecipe(
	[<liquid:diesel> * 50, <liquid:naphtha> * 50],
	[<immersivepetroleum:material>],
	<liquid:oil> * 100,
	2048, 1,
	[0.07]
);

Distillation.addRecipe(
	[<liquid:lubricant> * 20, <liquid:gasoline> * 40, <liquid:kerosene> * 40],
	[<immersivepetroleum:material>],
	<liquid:diesel> * 100,
	2048, 1,
	[0.07]
);

/*
	Reservoir

	http://crafttweaker.readthedocs.io/en/latest/#Mods/Immersive_Petroleum/CraftTweaker_Support/Reservoir/
*/
Reservoir.registerReservoir("aquifer", <liquid:water>, 5000000, 10000000, 6, 30, [], [0], [], []);
Reservoir.registerReservoir("oil", <liquid:oil>, 2500000, 15000000, 6, 40, [1], [], [], []);
Reservoir.registerReservoir("lava", <liquid:lava>, 250000, 1000000, 0, 30, [1], [], [], []);

/*
	Fuel Registration

	http://crafttweaker.readthedocs.io/en/latest/#Mods/Immersive_Petroleum/CraftTweaker_Support/FuelRegistration/
*/
Motorboat.registerMotorboatFuel(<liquid:gasoline>, 1);
PortableGenerator.registerPortableGenFuel(<liquid:gasoline>, 256, 5);

/*
	Lubricant Registration

	http://crafttweaker.readthedocs.io/en/latest/#Mods/Immersive_Petroleum/CraftTweaker_Support/Lubricant/
*/
