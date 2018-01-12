import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.embers.DawnstoneAnvil;
import mods.embers.Melter;

//mods.embers.DawnstoneAnvil.add([<minecraft:potato>*2],<minecraft:carrot>,<minecraft:carrot>);
//mods.embers.DawnstoneAnvil.add([output1,output2,...],inputBottom,inputTop);

//copper
DawnstoneAnvil.add([metals.copper.plate.firstItem * 2], metals.copper.ingot, metals.copper.ingot);
DawnstoneAnvil.add([metals.copper.plate.firstItem], metals.copper.ingot, null);
//Platinum
DawnstoneAnvil.add([metals.platinum.plate.firstItem * 2], metals.platinum.ingot, metals.platinum.ingot);
DawnstoneAnvil.add([metals.platinum.plate.firstItem], metals.platinum.ingot, null);
//Bronze
DawnstoneAnvil.add([metals.bronze.plate.firstItem * 2], metals.bronze.ingot, metals.bronze.ingot);
DawnstoneAnvil.add([metals.bronze.plate.firstItem], metals.bronze.ingot, null);
//Iron
DawnstoneAnvil.add([metals.iron.plate.firstItem * 2], metals.iron.ingot, metals.iron.ingot);
DawnstoneAnvil.add([metals.iron.plate.firstItem], metals.iron.ingot, null);
//Redstone Alloy
DawnstoneAnvil.add([metals.redstoneAlloy.plate.firstItem * 2], metals.redstoneAlloy.ingot, metals.redstoneAlloy.ingot);
DawnstoneAnvil.add([metals.redstoneAlloy.plate.firstItem], metals.redstoneAlloy.ingot, null);

/*
	Melter

	Wipe out Embers Melter
	Melter is removed - remove all recipes
*/
var melterInputItems as IItemStack[] = [
	<minecraft:sugar>
];

var melterInputOreDictItems as IOreDictEntry[] = [
	<ore:oreAluminum>,
	<ore:oreBauxite>,
	<ore:oreCopper>,
	<ore:oreGold>,
	<ore:oreIron>,
	<ore:oreLead>,
	<ore:oreNickel>,
	<ore:oreSilver>,
	<ore:oreTin>
];

for melterInputItem in melterInputItems {
	Melter.remove(melterInputItem);
}

for melterInputOreDictItem in melterInputOreDictItems {
	Melter.remove(melterInputOreDictItem);
}

for metalName, metal in metals {
	for metalPartName, metalPartOreDict in metal {
		if (metalPartOreDict as bool) {
			Melter.remove(metalPartOreDict);
		}
	}
}
