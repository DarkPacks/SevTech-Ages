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

	<twilightforest:liveroot>: [
		"Found in Twilight Forest Caves, Worldgen,",
		"Twilight Forest Loot Chests,",
		"or via Bonsai Trees"
	]
};

function init() {
	for item, descriptionArray in descriptionPairs {
		JEI.addDescription(item, descriptionArray);
	}
}
