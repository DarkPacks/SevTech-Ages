#priority 850

import crafttweaker.item.IIngredient;

var allDyes as IIngredient =
	<ore:dyeWhite> |
	<ore:dyeOrange> |
	<ore:dyeMagenta> |
	<ore:dyeLightBlue> |
	<ore:dyeYellow> |
	<ore:dyeLime> |
	<ore:dyePink> |
	<ore:dyeGray> |
	<ore:dyeLightGray> |
	<ore:dyeCyan> |
	<ore:dyePurple> |
	<ore:dyeBlue> |
	<ore:dyeBrown> |
	<ore:dyeGreen> |
	<ore:dyeRed> |
	<ore:dyeBlack>;

for dyeItem in allDyes.items {
	<ore:dye>.add(dyeItem);
}
