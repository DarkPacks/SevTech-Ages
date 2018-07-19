/*
	SevTech: Ages Blood Magic Tartaric Forge Script

	This script handles custom integration control to a mod.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import mods.bloodmagic.TartaricForge;

function init() {
	TartaricForge.removeRecipe([<minecraft:redstone>, <pickletweaks:dye_powder>, <minecraft:gunpowder>, <minecraft:coal:*>]);
	TartaricForge.addRecipe(
		<bloodmagic:arcane_ashes>,
		[<betterwithaddons:tweakmat>, <minecraft:gunpowder>, <pickletweaks:dye_powder>, <minecraft:coal:1>],
		0, 0
	);

	TartaricForge.removeRecipe([<minecraft:glowstone>, <minecraft:torch>, <minecraft:redstone>, <minecraft:redstone>]);
	TartaricForge.addRecipe(
		<bloodmagic:component:11>,
		[<betterwithmods:candle:*>, <minecraft:torch>, <betterwithaddons:tweakmat>, <betterwithaddons:tweakmat>],
		200, 10
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
		[<bloodmagic:teleposer>, metals.platinum.ingot, <minecraft:ender_pearl>, <minecraft:obsidian>],
		1500, 200
	);

	TartaricForge.removeRecipe([<minecraft:iron_block>, <minecraft:diamond>, <bloodmagic:slate:2>]);
	TartaricForge.addRecipe(
		<bloodmagic:master_routing_node>,
		[metals.iron.block, metals.platinum.ingot, <bloodmagic:slate:2>],
		400, 200
	);

	TartaricForge.removeRecipe([<minecraft:diamond_chestplate>, <bloodmagic:soul_gem:1>, <minecraft:iron_block>, <minecraft:obsidian>]);
	TartaricForge.addRecipe(
		<bloodmagic:sentient_armour_gem>,
		[<minecraft:golden_chestplate>, <bloodmagic:soul_gem:1>, metals.iron.block, <minecraft:obsidian>],
		240, 150
	);

	TartaricForge.removeRecipe([<minecraft:ghast_tear>, <minecraft:feather>, <minecraft:feather>]);
	TartaricForge.addRecipe(
		<bloodmagic:component:2>,
		[<minecraft:ghast_tear>, <twilightforest:raven_feather>, <twilightforest:raven_feather>, <minecraft:elytra>],
		128, 20
	);

	TartaricForge.removeRecipe([<bloodmagic:soul_forge>, <minecraft:stone>, <minecraft:dye:14>, <minecraft:glass>]);
	TartaricForge.addRecipe(
		<bloodmagic:demon_crystallizer>,
		[<bloodmagic:soul_forge>, <ore:stone>, metals.manyullyn.ingot, <ore:blockGlass>],
		500, 100
	);

	TartaricForge.removeRecipe([<bloodmagic:soul_gem>, <minecraft:diamond>, <minecraft:redstone_block>, <minecraft:lapis_block>]);
	TartaricForge.addRecipe(
		<bloodmagic:soul_gem:1>,
		[<bloodmagic:soul_gem>, <abyssalcraft:shadowshard>, metals.bronze.ingot, <minecraft:fermented_spider_eye>],
		60, 20
	);

	TartaricForge.removeRecipe([<bloodmagic:soul_gem:1>, <minecraft:diamond>, <minecraft:gold_block>, <bloodmagic:slate:2>]);
	TartaricForge.addRecipe(
		<bloodmagic:soul_gem:2>,
		[<bloodmagic:soul_gem:1>, <abyssalcraft:shadowgem>, metals.gold.block, <bloodmagic:slate:2>],
		240, 50
	);

	TartaricForge.removeRecipe([<minecraft:stick>, <bloodmagic:slate:1>, <minecraft:dye:4>, <minecraft:dye:4>]);
	TartaricForge.addRecipe(
		<bloodmagic:node_router>,
		[<ore:stickWood>, <bloodmagic:slate:1>, <minecraft:dye:4>, <minecraft:blaze_rod>],
		400, 5
	);

	TartaricForge.removeRecipe([<minecraft:cauldron>, <minecraft:stone>, <minecraft:dye:4>, <minecraft:diamond>]);
	TartaricForge.addRecipe(
		<bloodmagic:demon_crucible>,
		[<minecraft:cauldron>, <ore:stone>, <minecraft:dye:4>, metals.platinum.ingot],
		400, 5
	);

	TartaricForge.removeRecipe([<minecraft:glass>, <bloodmagic:slate>, <minecraft:dye:4>]);
	TartaricForge.addRecipe(
		<bloodmagic:component:10>,
		[<minecraft:glass>, <bloodmagic:slate>, <minecraft:dye:4>, metals.silver.ingot],
		400, 10
	);

	TartaricForge.removeRecipe([<minecraft:redstone>, <minecraft:gold_ingot>, <minecraft:glass>, <minecraft:dye:4>]);
	TartaricForge.addRecipe(
		<bloodmagic:soul_gem>,
		[<betterwithaddons:tweakmat>, metals.bronze.ingot, <pickletweaks:dye_powder:11>, <abyssalcraft:shadowfragment>],
		1, 1
	);

	TartaricForge.addRecipe(
		<astralsorcery:itemcraftingcomponent:2>,
		[<extendedcrafting:material>, <astralsorcery:itemrockcrystalsimple>, <appliedenergistics2:material:46>, <minecraft:dye:4>],
		100, 20
	);

	TartaricForge.addRecipe(
		<bloodmagic:sentient_sword>,
		[<bloodmagic:soul_gem>, <actuallyadditions:item_sword_quartz>],
		0, 0
	);
}
