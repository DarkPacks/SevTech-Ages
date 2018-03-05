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

AlchemyArray.removeRecipe(<bloodmagic:component:8>, <minecraft:diamond_sword>);
AlchemyArray.addRecipe(<bloodmagic:bound_sword>, <bloodmagic:component:8>, <minecraft:golden_sword>);

AlchemyArray.removeRecipe(<bloodmagic:component:8>, <minecraft:diamond_pickaxe>);
AlchemyArray.addRecipe(<bloodmagic:bound_pickaxe>, <bloodmagic:component:8>, <minecraft:golden_pickaxe>);

AlchemyArray.removeRecipe(<bloodmagic:component:8>, <minecraft:diamond_axe>);
AlchemyArray.addRecipe(<bloodmagic:bound_axe>, <bloodmagic:component:8>, <minecraft:golden_axe>);

AlchemyArray.removeRecipe(<bloodmagic:component:8>, <minecraft:diamond_shovel>);
AlchemyArray.addRecipe(<bloodmagic:bound_shovel>, <bloodmagic:component:8>, <minecraft:golden_shovel>);

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

TartaricForge.removeRecipe([<bloodmagic:teleposer>, <minecraft:diamond>, <minecraft:ender_pearl>, <minecraft:obsidian>]);
TartaricForge.addRecipe(
	<bloodmagic:component:18>,
	[<bloodmagic:teleposer>, metals.platinum.ingot.firstItem, <minecraft:ender_pearl>, <minecraft:obsidian>],
	1500, 200
);

TartaricForge.removeRecipe([<minecraft:iron_block>, <minecraft:diamond>, <bloodmagic:slate:2>, null]);
TartaricForge.addRecipe(
	<bloodmagic:master_routing_node>,
	[metals.iron.block.firstItem, metals.platinum.ingot.firstItem, <bloodmagic:slate:2>, null],
	400, 200
);

TartaricForge.removeRecipe([<minecraft:diamond_chestplate>, <bloodmagic:soul_gem:1>, <minecraft:iron_block>, <minecraft:obsidian>]);
TartaricForge.addRecipe(
	<bloodmagic:sentient_armour_gem>,
	[<minecraft:golden_chestplate>, <bloodmagic:soul_gem:1>, metals.iron.block.firstItem, <minecraft:obsidian>],
	240, 150
);

TartaricForge.removeRecipe([<minecraft:ghast_tear>, <minecraft:feather>, <minecraft:feather>, null]);
TartaricForge.addRecipe(
	<bloodmagic:component:2>,
	[<minecraft:ghast_tear>, <twilightforest:raven_feather>, <twilightforest:raven_feather>, <minecraft:elytra>],
	128, 20
);

TartaricForge.removeRecipe([<bloodmagic:soul_forge>, <minecraft:stone>, <minecraft:dye:14>, <minecraft:glass>]);
TartaricForge.addRecipe(
	<bloodmagic:demon_crystallizer>,
	[<bloodmagic:soul_forge>, <ore:stone>, metals.manyullyn.ingot.firstItem, <ore:blockGlass>],
	500, 100
);
