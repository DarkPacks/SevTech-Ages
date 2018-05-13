import mods.tconstruct.Drying;

/*
	Drying

	http://crafttweaker.readthedocs.io/en/latest/#Mods/Modtweaker/TConstruct/Drying/
*/
Drying.addRecipe(<betterwithaddons:japanmat:9>, <betterwithaddons:japanmat:8>, 2400);
Drying.addRecipe(<minecraft:paper>, <primal:plant_fiber_pulp>, 2400);

Drying.addRecipe(<primal:fish_salmon_dried>, <minecraft:fish:1>, 1600);
Drying.addRecipe(<primal:shark_meat_dried>, <primal:shark_meat_raw>, 1600);

Drying.removeRecipe(<minecraft:leather>);
Drying.addRecipe(<minecraft:leather>, <primal:hide_tanned>, 2400);

Drying.addRecipe(<primal:hide_dried>, <primal:hide_salted>, 2400);
