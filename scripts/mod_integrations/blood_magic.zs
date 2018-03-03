import mods.bloodmagic.AlchemyArray;
import mods.bloodmagic.AlchemyTable;
import mods.bloodmagic.BloodAltar;
import mods.bloodmagic.TartaricForge;

/*
	Alchemy Array

	http://crafttweaker.readthedocs.io/en/latest/#Mods/Modtweaker/BloodMagic/AlchemyArray/
*/
AlchemyArray.removeRecipe(<minecraft:redstone>, <bloodmagic:slate:3>);

AlchemyArray.addRecipe(<bloodmagic:sigil_divination>, <betterwithaddons:tweakmat>, <bloodmagic:slate>);

/*
	Alchemy Table

	http://crafttweaker.readthedocs.io/en/latest/#Mods/Modtweaker/BloodMagic/AlchemyTable/
*/


/*
	Blood Altar

	http://crafttweaker.readthedocs.io/en/latest/#Mods/Modtweaker/BloodMagic/BloodAltar/
*/
BloodAltar.removeRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:apprentice"}));
BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:apprentice"}), <abyssalcraft:cpearl>, 1, 5000,5,5);

BloodAltar.removeRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:weak"}));
BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:weak"}), <tconstruct:edible:3>, 0, 2000,2,1);

BloodAltar.removeRecipe(<bloodmagic:sanguine_book>);
BloodAltar.addRecipe(<bloodmagic:sanguine_book>, <primal:plant_cloth>, 0, 1000,20,0);

/*
	Tartaric Forge / Hellfire Forge

	http://crafttweaker.readthedocs.io/en/latest/#Mods/Modtweaker/BloodMagic/TartaricForge/
*/
TartaricForge.removeRecipe([<minecraft:redstone>, <minecraft:gunpowder>, <pickletweaks:dye_powder>, <minecraft:coal:1>]);
TartaricForge.addRecipe(
	<bloodmagic:arcane_ashes>,
	[<betterwithaddons:tweakmat>, <minecraft:gunpowder>, <pickletweaks:dye_powder>, <minecraft:coal:1>],
	0, 0
);

TartaricForge.removeRecipe([<minecraft:glowstone>, <minecraft:torch>, <minecraft:redstone>, <minecraft:redstone>]);
TartaricForge.addRecipe(
	<bloodmagic:component:11>,
	[<betterwithmods:candle:*>, <minecraft:torch>, <betterwithaddons:tweakmat>, <betterwithaddons:tweakmat>],
	300, 10
);

TartaricForge.removeRecipe([<minecraft:ice>, <minecraft:snowball>, <minecraft:snowball>, <minecraft:redstone>]);
TartaricForge.addRecipe(
	<bloodmagic:component:32>,
	[<minecraft:snow>, <minecraft:snowball>, <minecraft:snowball>, <betterwithaddons:tweakmat>],
	80, 10
);
