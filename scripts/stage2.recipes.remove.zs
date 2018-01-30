import crafttweaker.item.IItemStack;

var removeItems as IItemStack[] = [
	<actuallyadditions:block_smiley_cloud>,
	<appliedenergistics2:crank>,
	<appliedenergistics2:grindstone>,
	<astralsorcery:itemwand>,
	<betterbuilderswands:wandiron>,
	<betterwithaddons:redstone_emitter>,
	<betterwithmods:aesthetic:12>,
	<ironbackpacks:backpack>,
	<pickletweaks:watering_can>,
	<prospectors:prospector_low>,
	<stevescarts:cartmodule>,
	<storagedrawers:upgrade_storage>,
	<storagedrawers:upgrade_template>,
	<twilightforest:magic_map_focus>,
	<uppers:upper>,
	<weirdinggadget:weirding_gadget>,

	//Minecraft
	<minecraft:acacia_boat>,
	<minecraft:bed:*>,
	<minecraft:birch_boat>,
	<minecraft:boat>,
	<minecraft:clock>,
	<minecraft:compass>,
	<minecraft:dark_oak_boat>,
	<minecraft:golden_axe>,
	<minecraft:golden_boots>,
	<minecraft:golden_chestplate>,
	<minecraft:golden_helmet>,
	<minecraft:golden_hoe>,
	<minecraft:golden_leggings>,
	<minecraft:golden_pickaxe>,
	<minecraft:golden_shovel>,
	<minecraft:golden_sword>,
	<minecraft:hopper>,
	<minecraft:iron_axe>,
	<minecraft:iron_bars>,
	<minecraft:iron_boots>,
	<minecraft:iron_chestplate>,
	<minecraft:iron_helmet>,
	<minecraft:iron_hoe>,
	<minecraft:iron_leggings>,
	<minecraft:iron_pickaxe>,
	<minecraft:iron_shovel>,
	<minecraft:iron_sword>,
	<minecraft:jungle_boat>,
	<minecraft:paper>,
	<minecraft:piston>,
	<minecraft:spruce_boat>,
	<minecraft:stone_slab:5>,
	<minecraft:wool:*>,

	//Tinkers
	<tconstruct:materials:16>,
	<tconstruct:piggybackpack>,
	<tconstruct:seared_furnace_controller>,
	<tconstruct:smeltery_controller>,
	<tconstruct:tinker_tank_controller>,

	//Info Accessories
	<infoaccessories:info_accessory:2>,
	<infoaccessories:info_accessory:6>,
	<infoaccessories:info_accessory>
];

for item in removeItems {
	recipes.remove(item);
}
