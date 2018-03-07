/*
http://crafttweaker.readthedocs.io/en/latest/#Mods/Immersive_Petroleum/Immersive_Petroleum/
*/


mods.immersivepetroleum.Reservoir.registerReservoir("aquifer", <liquid:water>, 5000000, 10000000, 6, 30);
mods.immersivepetroleum.Reservoir.registerReservoir("oil", <liquid:oil>, 2500000, 15000000, 6, 40);
mods.immersivepetroleum.Reservoir.registerReservoir("lava", <liquid:lava>, 250000, 1000000, 0, 30);

mods.immersivepetroleum.Distillation.addRecipe([<liquid:diesel> * 50, <liquid:naphtha> * 50], [<immersivepetroleum:material:1>], <liquid:oil>*100, 2048, 1, [0.07]);
mods.immersivepetroleum.Distillation.addRecipe([<liquid:lubricant> * 20, <liquid:gasoline> * 40, <liquid:kerosene> * 40], [<immersivepetroleum:material:1>], <liquid:diesel>*100, 2048, 1, [0.07]);

mods.immersivepetroleum.PortableGenerator.registerPortableGenFuel(<liquid:gasoline>, 256, 5);
mods.immersivepetroleum.Motorboat.registerMotorboatFuel(<liquid:gasoline>, 1);