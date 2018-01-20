import mods.pneumaticcraft.thermopneumaticprocessingplant as ThermopneumaticProcessingPlant;
import mods.pneumaticcraft.assembly as Assembly;
import mods.pneumaticcraft.refinery as Refinery;
import mods.pneumaticcraft.liquidfuel as LiquidFuel;

ThermopneumaticProcessingPlant.removeAllRecipes();

Refinery.removeAllRecipes();

/*
	Fuels

	mods.pneumaticcraft.liquidfuel.addFuel(ILiquidStack fuelLiquid, double mLPerBucket);
	mods.pneumaticcraft.liquidfuel.removeFuel(ILiquidstack fuelLiquid);

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
*/
//Presses available in stage 4
Assembly.addDrillRecipe(<darkutils:pearl_block>, <appliedenergistics2:material:15>); //Inscriber Logic Press
Assembly.addDrillRecipe(<quark:biotite_block>, <appliedenergistics2:material:19>); //Insciber Silicon Press
Assembly.addDrillRecipe(<minecraft:purpur_block>, <appliedenergistics2:material:14>); //Inscriber Engineering Press
