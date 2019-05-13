/*
	SevTech: Ages Pneumatic Craft Script

	This script handles custom integration control to a mod.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import mods.pneumaticcraft.assembly as Assembly;
import mods.pneumaticcraft.liquidfuel as LiquidFuel;
import mods.pneumaticcraft.refinery as Refinery;
import mods.pneumaticcraft.thermopneumaticprocessingplant as ThermopneumaticProcessingPlant;
import mods.pneumaticcraft.pressurechamber as PressureChamber;

/*
	Support:

	Fuels: http://crafttweaker.readthedocs.io/en/latest/#Mods/PneumaticCraft_Repressurized/LiquidFuels/
	Assemby: http://crafttweaker.readthedocs.io/en/latest/#Mods/PneumaticCraft_Repressurized/Assembly/
*/
function init() {
	// Remove all recipes from the plant.
	ThermopneumaticProcessingPlant.removeAllRecipes();

	// Remove all recipes from the refinery.
	Refinery.removeAllRecipes();

	/*
		Fuel (Default) Notes:
			LPG - 1800
			Gasoline - 1500
			Kerosene - 1100
			Diesel - 700
	*/

	// Remove all the Fuels.
	LiquidFuel.removeAllFuels();

	// Add back the fuels with our values.
	LiquidFuel.addFuel(<liquid:gasoline>, 1500 * 1000);
	LiquidFuel.addFuel(<liquid:kerosene>, 1100 * 1000);
	LiquidFuel.addFuel(<liquid:diesel>, 700 * 1000);

	// Presses available in stage 4
	Assembly.addDrillRecipe(<darkutils:pearl_block:0>, <appliedenergistics2:material:15>); // Inscriber Logic Press
	Assembly.addDrillRecipe(<quark:biotite_block:0>, <appliedenergistics2:material:19>); // Insciber Silicon Press
	Assembly.addDrillRecipe(<minecraft:purpur_block:0>, <appliedenergistics2:material:14>); // Inscriber Engineering Press
	Assembly.addDrillRecipe(<galacticraftcore:basic_block_moon:14>, <appliedenergistics2:material:13>); // Inscriber Calculation Press

	// Remove Rose Red recipe
	Assembly.removeDrillRecipe(<minecraft:dye:1>);

	// Removing coal to diamond in pressure chamber
	PressureChamber.removeRecipe([<minecraft:diamond:0>]);

	// Slime Ingot (IF)
	PressureChamber.addRecipe([<industrialforegoing:pink_slime> * 4, metals.steel.ingot.firstItem * 1], 3.5, [<industrialforegoing:pink_slime_ingot> * 1]);
}
