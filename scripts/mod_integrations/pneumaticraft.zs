import mods.pneumaticcraft.assembly as Assembly;
import mods.pneumaticcraft.liquidfuel as LiquidFuel;
import mods.pneumaticcraft.refinery as Refinery;
import mods.pneumaticcraft.thermopneumaticprocessingplant as ThermopneumaticProcessingPlant;

ThermopneumaticProcessingPlant.removeAllRecipes();

Refinery.removeAllRecipes();

/*
	Fuels

	http://crafttweaker.readthedocs.io/en/latest/#Mods/PneumaticCraft_Repressurized/LiquidFuels/

	Defaults:
	LPG - 1800
	Gasoline - 1500
	Kerosene - 1100
	Diesel - 700
*/
LiquidFuel.removeAllFuels();
LiquidFuel.addFuel(<liquid:gasoline>, 1500 * 1000);
LiquidFuel.addFuel(<liquid:kerosene>, 1100 * 1000);
LiquidFuel.addFuel(<liquid:diesel>, 700 * 1000);

/*
	Assemby

	http://crafttweaker.readthedocs.io/en/latest/#Mods/PneumaticCraft_Repressurized/Assembly/
*/
//Presses available in stage 4
Assembly.addDrillRecipe(<darkutils:pearl_block>, <appliedenergistics2:material:15>); //Inscriber Logic Press
Assembly.addDrillRecipe(<quark:biotite_block>, <appliedenergistics2:material:19>); //Insciber Silicon Press
Assembly.addDrillRecipe(<minecraft:purpur_block>, <appliedenergistics2:material:14>); //Inscriber Engineering Press
Assembly.addDrillRecipe(<galacticraftcore:basic_block_moon:14>, <appliedenergistics2:material:13>); //Inscriber Calculation Press

// Remove Rose Red recipe
Assembly.removeDrillRecipe(<minecraft:dye:1>);

//Removing coal to diamond in pressure chamber
mods.pneumaticcraft.pressurechamber.removeRecipe([<minecraft:diamond>]);
