import mods.pneumaticcraft.thermopneumaticprocessingplant as ThermopneumaticProcessingPlant;
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
