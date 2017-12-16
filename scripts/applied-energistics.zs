import crafttweaker.item.IItemStack;
import mods.appliedenergistics2.Inscriber;

/*
	Inscriber

	addRecipe(IItemStack output, IIngredient input, boolean inscribe, @Optional IIngredient top, @Optional IIngredient bottom)
	removeRecipe(IItemStack output)
*/

var printedSilicon = <appliedenergistics2:material:20>;
Inscriber.removeRecipe(printedSilicon);

var printedLogic as IItemStack = <appliedenergistics2:material:18>;
var printedCalculation as IItemStack = <appliedenergistics2:material:16>;
var printedEngineering as IItemStack = <appliedenergistics2:material:17>;

var processorLogic as IItemStack = <appliedenergistics2:material:22>;
var processorCalculation as IItemStack = <appliedenergistics2:material:23>;
var processorEngineering as IItemStack = <appliedenergistics2:material:24>;

Inscriber.removeRecipe(processorLogic);
Inscriber.addRecipe(processorLogic, <minecraft:redstone>, true, printedLogic, <ore:waferSilicon>.firstItem);

Inscriber.removeRecipe(processorCalculation);
Inscriber.addRecipe(processorCalculation, <minecraft:redstone>, true, printedCalculation, <ore:waferSilicon>.firstItem);

Inscriber.removeRecipe(processorEngineering);
Inscriber.addRecipe(processorEngineering, <minecraft:redstone>, true, printedEngineering, <ore:waferSilicon>.firstItem);
