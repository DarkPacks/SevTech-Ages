import crafttweaker.item.IItemStack;
import mods.refinedstorage.Solderer;

/*
	Solderer

	mods.refinedstorage.Solderer.addRecipe(IItemStack output, int time, IItemStack[3] rows);
	mods.refinedstorage.Solderer.removeRecipe(IItemStack output);
*/

/*
//Remove Silicon
Solderer.removeRecipe(<refinedstorage:processor:6>);

var printedBasic as IItemStack = <refinedstorage:processor>;
var printedImproved as IItemStack = <refinedstorage:processor:1>;
var printedAdvanced as IItemStack = <refinedstorage:processor:2>;

var processorBasic as IItemStack = <refinedstorage:processor:3>;
var processorImproved as IItemStack = <refinedstorage:processor:4>;
var processorAdvanced as IItemStack = <refinedstorage:processor:5>;

Solderer.removeRecipe(processorBasic);
Solderer.addRecipe(processorBasic, 10, [printedBasic, <minecraft:redstone>, <ore:waferSilicon>.firstItem]);

Solderer.removeRecipe(processorImproved);
Solderer.addRecipe(processorImproved, 10, [printedImproved, <minecraft:redstone>, <ore:waferSilicon>.firstItem]);

Solderer.removeRecipe(processorAdvanced);
Solderer.addRecipe(processorAdvanced, 10, [printedAdvanced, <minecraft:redstone>, <ore:waferSilicon>.firstItem]);
*/
