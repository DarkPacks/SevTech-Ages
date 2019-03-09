/*
	SevTech: Ages Hardness Modification Script

	This script allows for the modification of an ItemStack's hardness.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IItemStack;

static hardnessItems as float[IItemStack] = {
	<geolosys:ore_vanilla:1>: 5,
	<geolosys:ore_vanilla:2>: 3.5,
	<geolosys:ore_vanilla:3>: 3.5,
	<geolosys:ore_vanilla:4>: 5,
	<geolosys:ore_vanilla:5>: 7,
	<geolosys:ore_vanilla:0>: 3,
	<geolosys:ore:1>: 6,
	<geolosys:ore:2>: 4,
	<geolosys:ore:3>: 4,
	<geolosys:ore:4>: 3.5,
	<geolosys:ore:5>: 3.5,
	<geolosys:ore:6>: 3.5,
	<geolosys:ore:7>: 4,
	<geolosys:ore:8>: 6,
	<geolosys:ore:9>: 6,
	<geolosys:ore:0>: 6,
	<immersivetech:stone_decoration:0>: 2,
	<minecraft:nether_brick:0>: 2,
	<minecraft:netherrack:0>: 2,
	<minecraft:quartz_ore:0>: 2,
	<minecraft:stone_slab:6>: 2,
	<mysticalagriculture:soulstone:0>: 2,
	<nex:basalt:0>: 2,
	<nex:netherrack:0>: 2,
	<nex:netherrack:1>: 2,
	<nex:netherrack:2>: 2,
	<nex:netherrack:3>: 2,
	<poweradapters:mj:0>: 2,
	<primal_tech:leaf_bed:*>: 0.2,
	<primal:scoria_stone:0>: 2,
	<uppers:upper:0>: 3
};

function init() {
	for item, hardness in hardnessItems {
		item.hardness = hardness;
	}
}
