/*
	SevTech: Ages Item Descriptions Script

	This script allows for the addition of JEI Descriptions to ItemStacks.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IItemStack;

import mods.jei.JEI;

static descriptionPairs as string[][IItemStack] = {
	<environmentaltech:solar_cont_1:0>: [
		"Materials Needed:",
		"4 x Null Modifier",
		"16 x Structure Frame tier 1 or above",
		"9 x Solar Cell of any type"
	],
	<environmentaltech:solar_cont_2:0>: [
		"Materials Needed:",
		"4 x Null Modifier",
		"24 x Structure Frame tier 2 or above",
		"25 x Solar Cell of any type"
	],
	<environmentaltech:solar_cont_3:0>: [
		"Materials Needed:",
		"8 x Null Modifier",
		"32 x Structure Frame tier 3 or above",
		"49 x Solar Cell of any type"
	],
	<environmentaltech:solar_cont_4:0>: [
		"Materials Needed:",
		"8 x Null Modifier",
		"40 x Structure Frame tier 4 or above",
		"81 x Solar Cell of any type"
	],
	<environmentaltech:solar_cont_5:0>: [
		"Materials Needed:",
		"12 x Null Modifier",
		"48 x Structure Frame tier 5 or above",
		"121 x Solar Cell of any type"
	],
	<environmentaltech:solar_cont_6:0>: [
		"Materials Needed:",
		"12 x Null Modifier",
		"56 x Structure Frame tier 6 or above",
		"169 x Solar Cell of any type"
	],
	<environmentaltech:void_botanic_miner_cont_1:0>: [
		"Materials Needed:",
		"24 x Structure Frame tier 1 or above",
		"20 x Structure Panel",
		"2 x Laser Core",
		"1 x Laser Lens of any type"
	],
	<environmentaltech:void_botanic_miner_cont_2:0>: [
		"Materials Needed:",
		"4 x Null Modifier",
		"32 x Structure Frame tier 2 or above",
		"16 x Structure Panel",
		"3 x Laser Core",
		"1 x Laser Lens of any type"
	],
	<environmentaltech:void_botanic_miner_cont_3:0>: [
		"Materials Needed:",
		"8 x Null Modifier",
		"56 x Structure Frame tier 3 or above",
		"52 x Structure Panel",
		"4 x Laser Core",
		"1 x Laser Lens of any type"
	],
	<environmentaltech:void_botanic_miner_cont_4:0>: [
		"Materials Needed:",
		"12 x Null Modifier",
		"56 x Structure Frame tier 4 or above",
		"56 x Structure Panel",
		"5 x Laser Core",
		"1 x Laser Lens of any type"
	],
	<environmentaltech:void_botanic_miner_cont_5:0>: [
		"Materials Needed:",
		"16 x Null Modifier",
		"72 x Structure Frame tier 5 or above",
		"36 x Structure Panel",
		"6 x Laser Core",
		"1 x Laser Lens of any type"
	],
	<environmentaltech:void_botanic_miner_cont_6:0>: [
		"Materials Needed:",
		"20 x Null Modifier",
		"92 x Structure Frame tier 6 or above",
		"56 x Structure Panel",
		"6 x Laser Core",
		"1 x Laser Lens of any type"
	],
	<environmentaltech:void_ore_miner_cont_1:0>: [
		"Materials Needed:",
		"24 x Structure Frame tier 1 or above",
		"20 x Structure Panel",
		"2 x Laser Core",
		"1 x Laser Lens of any type"
	],
	<environmentaltech:void_ore_miner_cont_2:0>: [
		"Materials Needed:",
		"4 x Null Modifier",
		"32 x Structure Frame tier 2 or above",
		"16 x Structure Panel",
		"3 x Laser Core",
		"1 x Laser Lens of any type"
	],
	<environmentaltech:void_ore_miner_cont_3:0>: [
		"Materials Needed:",
		"8 x Null Modifier",
		"56 x Structure Frame tier 3 or above",
		"52 x Structure Panel",
		"4 x Laser Core",
		"1 x Laser Lens of any type"
	],
	<environmentaltech:void_ore_miner_cont_4:0>: [
		"Materials Needed:",
		"12 x Null Modifier",
		"56 x Structure Frame tier 4 or above",
		"56 x Structure Panel",
		"5 x Laser Core",
		"1 x Laser Lens of any type"
	],
	<environmentaltech:void_ore_miner_cont_5:0>: [
		"Materials Needed:",
		"16 x Null Modifier",
		"72 x Structure Frame tier 5 or above",
		"36 x Structure Panel",
		"6 x Laser Core",
		"1 x Laser Lens of any type"
	],
	<environmentaltech:void_ore_miner_cont_6:0>: [
		"Materials Needed:",
		"20 x Null Modifier",
		"92 x Structure Frame tier 6 or above",
		"56 x Structure Panel",
		"6 x Laser Core",
		"1 x Laser Lens of any type"
	],
	<environmentaltech:void_res_miner_cont_1:0>: [
		"Materials Needed:",
		"24 x Structure Frame tier 1 or above",
		"20 x Structure Panel",
		"2 x Laser Core",
		"1 x Laser Lens of any type"
	],
	<environmentaltech:void_res_miner_cont_2:0>: [
		"Materials Needed:",
		"4 x Null Modifier",
		"32 x Structure Frame tier 2 or above",
		"16 x Structure Panel",
		"3 x Laser Core",
		"1 x Laser Lens of any type"
	],
	<environmentaltech:void_res_miner_cont_3:0>: [
		"Materials Needed:",
		"8 x Null Modifier",
		"56 x Structure Frame tier 3 or above",
		"52 x Structure Panel",
		"4 x Laser Core",
		"1 x Laser Lens of any type"
	],
	<environmentaltech:void_res_miner_cont_4:0>: [
		"Materials Needed:",
		"12 x Null Modifier",
		"56 x Structure Frame tier 4 or above",
		"56 x Structure Panel",
		"5 x Laser Core",
		"1 x Laser Lens of any type"
	],
	<environmentaltech:void_res_miner_cont_5:0>: [
		"Materials Needed:",
		"16 x Null Modifier",
		"72 x Structure Frame tier 5 or above",
		"36 x Structure Panel",
		"6 x Laser Core",
		"1 x Laser Lens of any type"
	],
	<environmentaltech:void_res_miner_cont_6:0>: [
		"Materials Needed:",
		"20 x Null Modifier",
		"92 x Structure Frame tier 6 or above",
		"56 x Structure Panel",
		"6 x Laser Core",
		"1 x Laser Lens of any type"
	],

	<environmentaltech:lightning_cont_1:0>: [
		"Materials Needed:",
		"4 x Structure Frame tier 1 or above",
		"3 x Lightning Rod",
		"3 x Insulated Lightning Rod"
	],
	<environmentaltech:lightning_cont_2:0>: [
		"Materials Needed:",
		"4 x Structure Frame tier 2 or above",
		"4 x Lightning Rod",
		"4 x Insulated Lightning Rod"
	],
	<environmentaltech:lightning_cont_3:0>: [
		"Materials Needed:",
		"4 x Structure Frame tier 3 or above",
		"5 x Lightning Rod",
		"5 x Insulated Lightning Rod"
	],
	<environmentaltech:lightning_cont_4:0>: [
		"Materials Needed:",
		"13 x Structure Frame tier 4 or above",
		"4 x Lightning Rod",
		"16 x Insulated Lightning Rod"
	],
	<environmentaltech:lightning_cont_5:0>: [
		"Materials Needed:",
		"13 x Structure Frame tier 5 or above",
		"6 x Lightning Rod",
		"22 x Insulated Lightning Rod"
	],
	<environmentaltech:lightning_cont_6:0>: [
		"Materials Needed:",
		"13 x Structure Frame tier 5 or above",
		"8 x Lightning Rod",
		"28 x Insulated Lightning Rod"
	],

	<environmentaltech:nano_cont_personal_1:0>: [
		"Materials Needed:",
		"4 x Null Modifier",
		"20 x Structure Frame tier 1 or above",
		"12 x Structure Panel"
	],
	<environmentaltech:nano_cont_personal_2:0>: [
		"Materials Needed:",
		"8 x Null Modifier",
		"36 x Structure Frame tier 2 or above",
		"24 x Structure Panel"
	],
	<environmentaltech:nano_cont_personal_3:0>: [
		"Materials Needed:",
		"12 x Null Modifier",
		"56 x Structure Frame tier 3 or above",
		"40 x Structure Panel"
	],
	<environmentaltech:nano_cont_personal_4:0>: [
		"Materials Needed:",
		"16 x Null Modifier",
		"80 x Structure Frame tier 4 or above",
		"60 x Structure Panel"
	],
	<environmentaltech:nano_cont_personal_5:0>: [
		"Materials Needed:",
		"20 x Null Modifier",
		"108 x Structure Frame tier 5 or above",
		"84 x Structure Panel"
	],
	<environmentaltech:nano_cont_personal_6:0>: [
		"Materials Needed:",
		"24 x Null Modifier",
		"140 x Structure Frame tier 5 or above",
		"112 x Structure Panel"
	],
	<twilightforest:raven_feather>: [
		"Summon a Raven using an",
		"Abyssalcraft Ritual. Check",
		"the Necronomicon for information"
	],

	/*
		Location Descriptions for Ore and Samples
	*/
	// Malachite
	<geolosys:ore:2>: [
		"Found in",
		"Forest Biome Islands"
	],
	<geolosys:ore_sample:2>: [
		"Found in",
		"Forest Biome Islands"
	],
	// Azurite
	<geolosys:ore:3> : [
		"Found in",
		"Darklands Biome Islands"
	],
	<geolosys:ore_sample:3> : [
		"Found in",
		"Darklands Biome Islands"
	],
	// Cassiterite
	<geolosys:ore:4>: [
		"Found in",
		"Birch Forest & Plains Biome Islands"
	],
	<geolosys:ore_sample:4>: [
		"Found in",
		"Birch Forest & Plains Biome Islands"
	],
	// Teallite
	<geolosys:ore:5>: [
		"Found in",
		"Roofed Forest & Savannah Biome Islands"
	],
	<geolosys:ore_sample:5>: [
		"Found in",
		"Roofed Forest & Savannah Biome Islands"
	],
	// Coal
	<geolosys:ore_vanilla:0>: [
		"Found in",
		"Darklands, Forest, & Roofed Forest Biome Islands"
	],
	<geolosys:ore_sample_vanilla:0>: [
		"Found in",
		"Darklands, Forest, & Roofed Forest Biome Islands"
	],
	// Hematite
	<geolosys:ore:0>: [
		"Found in",
		"Meadow, Plains, Savannah, & Swampland Biome Islands"
	],
	<geolosys:ore_sample:0>: [
		"Found in",
		"Meadow, Plains, Savannah, & Swampland Biome Islands"
	],
	// Rock Crystal
	<astralsorcery:blockcustomore>: [
		"Found in",
		"Cold Taiga & Snowy Coniferous Forest Biome Islands"
	],
	<astralsorcery:blockgeolosyssamplecluster>: [
		"Found in",
		"Cold Taiga & Snowy Coniferous Forest Biome Islands"
	],
	// Lapis
	<geolosys:ore_vanilla:3>: [
		"Found in",
		"Green Swamp, Swampland, Temperate Rainforest, & Mushroom Biome Islands"
	],
	<geolosys:ore_sample_vanilla:3>: [
		"Found in",
		"Green Swamp, Swampland, Temperate Rainforest, & Mushroom Biome Islands"
	],
	// Gold
	<geolosys:ore_vanilla:2>: [
		"Found in",
		"Badlands & Mesa Biome Islands"
	],
	<geolosys:ore_sample_vanilla:2>: [
		"Found in",
		"Badlands & Mesa Biome Islands"
	],
	// Platinum
	<geolosys:ore:8>: [
		"Found in",
		"Rocky Plateau Biome Islands"
	],
	<geolosys:ore_sample:8>: [
		"Found in",
		"Rocky Plateau Biome Islands"
	],
	// Limonite
	<geolosys:ore:1>  : [
		"Found in",
		"Autumnal Woods & Jungle Biome Islands"
	],
	<geolosys:ore_sample:1>: [
		"Found in",
		"Autumnal Woods & Jungle Biome Islands"
	],
	// Galena
	<geolosys:ore:6>: [
		"Found in",
		"Darklands Forest & Glacier Biome Islands"
	],
	<geolosys:ore_sample:6>: [
		"Found in",
		"Darklands Forest & Glacier Biome Islands"
	],
	// Redstone / Cinnabar
	<geolosys:ore_vanilla:1>: [
		"Found in",
		"Desert & Redwood Taiga Hills Biome Islands"
	],
	<mundaneredstone:redstone_ore>: [
		"Found in",
		"Taiga Biome Islands"
	],
	<geolosys:ore_sample_vanilla:1>: [
		"Found in",
		"Desert, Redwood Taiga Hills,"
		"& Taiga Biome Islands"
	],
	// Bauxite
	<geolosys:ore:7>: [
		"Found in",
		"Mini Jungle, Mutated Birch Forest, & Woodlansd Biome Islands"
	],
	<geolosys:ore_sample:7>: [
		"Found in",
		"Mini Jungle, Mutated Birch Forest, & Woodlansd Biome Islands"
	],
	// Quartz
	<geolosys:ore_vanilla:4>: [
		"Found in",
		"meneglin & Lush Hills Biome Islands"
	],
	<geolosys:ore_sample_vanilla:4>: [
		"Found in",
		"meneglin & Lush Hills Biome Islands"
	],
	// Silicon
	<galacticraftcore:basic_block_core:8>: [
		"Found in",
		"Jungle & Mutated Plains Biome Islands"
	],
	<contenttweaker:sub_block_holder_0:5>: [
		"Found in",
		"Jungle & Mutated Plains Biome Islands"
	],
	// Diamond
	<geolosys:ore_vanilla:5>: [
		"Found in",
		"Glacier Spikes Biome Islands"
	],
	<geolosys:ore_sample_vanilla:5>: [
		"Found in",
		"Glacier Spikes Biome Islands"
	],
	// Osmium
	<contenttweaker:sub_block_holder_0:4>: [
		"Found in",
		"Mutated Forest & Ice Flats Biome Islands"
	],
	<contenttweaker:sub_block_holder_0:6>: [
		"Found in",
		"Mutated Forest & Ice Flats Biome Islands"
	],
	// Emerald
	<geolosys:ore_vanilla:6>: [
		"Found in",
		"Extreme Hills Biome Islands"
	],
	<geolosys:ore_sample_vanilla:6>: [
		"Found in",
		"Extreme Hills Biome Islands"
	],
	// Uranium
	<geolosys:ore:9>: [
		"Found in",
		"Coralium Infested Swamp Biome Islands"
	],
	<geolosys:ore_sample:9>: [
		"Found in",
		"Coralium Infested Swamp Biome Islands"
	],

	<twilightforest:liveroot>: [
		"Found in Twilight Forest Loot Chests",
		"or via Bonsai Trees"
	]
};

function init() {
	for item, descriptionArray in descriptionPairs {
		JEI.addDescription(item, descriptionArray);
	}
}
