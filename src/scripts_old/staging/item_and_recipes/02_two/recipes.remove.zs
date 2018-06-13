#priority -2

import crafttweaker.item.IItemStack;

var removeItems as IItemStack[] = [
	<actuallyadditions:block_smiley_cloud>,
	<appliedenergistics2:crank>,
	<appliedenergistics2:grindstone>,
	<astralsorcery:itemwand>,
	<betterbuilderswands:wandiron>,
	<betterwithaddons:redstone_emitter>,
	<betterwithmods:aesthetic:12>,
	<betterwithmods:material:36>,
	<ferdinandsflowers:block_dye_glass:*>,
	<ironbackpacks:backpack>,
	<pickletweaks:watering_can>,
	<prospectors:prospector_low>,
	<stevescarts:cartmodule>,
	<storagedrawers:upgrade_storage>,
	<storagedrawers:upgrade_template>,
	<supersoundmuffler:sound_muffler>,
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
	<minecraft:heavy_weighted_pressure_plate>,
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
	<minecraft:lapis_block>,
	<minecraft:light_weighted_pressure_plate>,
	<minecraft:paper>,
	<minecraft:piston>,
	<minecraft:redstone_block>,
	<minecraft:spruce_boat>,
	<minecraft:stone_slab:5>,
	<minecraft:wool:*>,

	//Tinkers
	<tconstruct:materials:16>,
	<tconstruct:pattern>,
	<tconstruct:piggybackpack>,
	<tconstruct:seared_furnace_controller>,
	<tconstruct:smeltery_controller>,
	<tconstruct:tinker_tank_controller>,

	//Info Accessories
	<infoaccessories:info_accessory:1>,
	<infoaccessories:info_accessory:2>,
	<infoaccessories:info_accessory:4>,
	<infoaccessories:info_accessory:5>,
	<infoaccessories:info_accessory:6>,
	<infoaccessories:info_accessory>,

	//Abyssalcraft
	<abyssalcraft:gatewaykey>,

	//Blood Magic
	<bloodmagic:experience_tome>,
	<bloodmagic:lava_crystal>,

	//Extended Crafting
	<extendedcrafting:material:14>,
	<extendedcrafting:table_basic>,

	//Extra Planets
	<extraplanets:apple_iron>,

	//Twilight Forest
	<twilightforest:fiery_pickaxe>,
	<twilightforest:fiery_sword>,
	<twilightforest:uncrafting_table>
];

for item in removeItems {
	recipes.remove(item);
}

//Remove only shapeless bibliocraft color recipes
recipes.removeShapeless(<bibliocraft:lanterngold:*>);
recipes.removeShapeless(<bibliocraft:lanterniron:*>);
recipes.removeShapeless(<bibliocraft:lampgold:*>);
recipes.removeShapeless(<bibliocraft:lampiron:*>);
recipes.removeShapeless(<bibliocraft:typewriter:*>);
recipes.removeShapeless(<bibliocraft:swordpedestal:*>);
