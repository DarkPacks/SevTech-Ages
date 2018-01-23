import mods.tconstruct.Drying;

/*
	Drying

	http://crafttweaker.readthedocs.io/en/latest/#Mods/Modtweaker/TConstruct/Drying/
*/
Drying.addRecipe(<betterwithaddons:japanmat:9>, <betterwithaddons:japanmat:8>, 3200);
Drying.addRecipe(<minecraft:paper>, <primal:plant_fiber_pulp>, 3200);

Drying.removeRecipe(<minecraft:leather>);
//Drying rack temp recipes
Drying.addRecipe(<minecraft:leather>, <primal:hide_tanned>, 3600);
Drying.addRecipe(<primal:hide_dried>, <primal:hide_salted>, 3600);
Drying.addRecipe(<roots:straw>, <minecraft:tallgrass:1>, 3600);
