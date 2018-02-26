import mods.mekanism.infuser as Infuser;

/*
	Metallurgic Infuser

	http://crafttweaker.readthedocs.io/en/latest/#Mods/Mekanism/Metallurgic_Infuser/
*/
Infuser.addRecipe("OBSIDIAN", 20, <ore:oreCheese>.firstItem, <appliedenergistics2:sky_stone_block> * 2);
Infuser.addRecipe("OBSIDIAN", 20, <galacticraftcore:cheese_curd>, <appliedenergistics2:sky_stone_block>);

//Correct steel dust
Infuser.addRecipe("CARBON", 10, <mekanism:enrichediron>, metals.steel.dust.firstItem);
