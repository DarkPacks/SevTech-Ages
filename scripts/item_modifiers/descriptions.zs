import crafttweaker.item.IItemStack;
import mods.jei.JEI;

/*
	Add descriptions to items

	http://crafttweaker.readthedocs.io/en/latest/#Mods/JEI/JEI/#add-description
*/

var descriptionPairs as string[][IItemStack] = {
	<environmentaltech:solar_cont_1>: [
		"Materials Needed:",
		"4 x Null Modifier",
		"16 x Structure Frame tier 1 or above",
		"9 x Solar Cell of any type"
	],
	<environmentaltech:solar_cont_2>: [
		"Materials Needed:",
		"4 x Null Modifier",
		"24 x Structure Frame tier 2 or above",
		"25 x Solar Cell of any type"
	],
	<environmentaltech:solar_cont_3>: [
		"Materials Needed:",
		"8 x Null Modifier",
		"32 x Structure Frame tier 3 or above",
		"49 x Solar Cell of any type"
	],
	<environmentaltech:solar_cont_4>: [
		"Materials Needed:",
		"8 x Null Modifier",
		"40 x Structure Frame tier 4 or above",
		"81 x Solar Cell of any type"
	],
	<environmentaltech:solar_cont_5>: [
		"Materials Needed:",
		"12 x Null Modifier",
		"48 x Structure Frame tier 5 or above",
		"121 x Solar Cell of any type"
	],
	<environmentaltech:solar_cont_6>: [
		"Materials Needed:",
		"12 x Null Modifier",
		"56 x Structure Frame tier 6 or above",
		"169 x Solar Cell of any type"
	],
	<environmentaltech:void_botanic_miner_cont_1>: [
		"Materials Needed:",
		"24 x Structure Frame tier 1 or above",
		"20 x Structure Panel",
		"2 x Laser Core",
		"1 x Laser Lens of any type"
	],
	<environmentaltech:void_botanic_miner_cont_2>: [
		"Materials Needed:",
		"4 x Null Modifier",
		"32 x Structure Frame tier 2 or above",
		"16 x Structure Panel",
		"3 x Laser Core",
		"1 x Laser Lens of any type"
	],
	<environmentaltech:void_botanic_miner_cont_3>: [
		"Materials Needed:",
		"8 x Null Modifier",
		"56 x Structure Frame tier 3 or above",
		"52 x Structure Panel",
		"4 x Laser Core",
		"1 x Laser Lens of any type"
	],
	<environmentaltech:void_botanic_miner_cont_4>: [
		"Materials Needed:",
		"12 x Null Modifier",
		"56 x Structure Frame tier 4 or above",
		"56 x Structure Panel",
		"5 x Laser Core",
		"1 x Laser Lens of any type"
	],
	<environmentaltech:void_botanic_miner_cont_5>: [
		"Materials Needed:",
		"16 x Null Modifier",
		"72 x Structure Frame tier 5 or above",
		"36 x Structure Panel",
		"6 x Laser Core",
		"1 x Laser Lens of any type"
	],
	<environmentaltech:void_botanic_miner_cont_6>: [
		"Materials Needed:",
		"20 x Null Modifier",
		"92 x Structure Frame tier 6 or above",
		"56 x Structure Panel",
		"6 x Laser Core",
		"1 x Laser Lens of any type"
	],
	<environmentaltech:void_ore_miner_cont_1>: [
		"Materials Needed:",
		"24 x Structure Frame tier 1 or above",
		"20 x Structure Panel",
		"2 x Laser Core",
		"1 x Laser Lens of any type"
	],
	<environmentaltech:void_ore_miner_cont_2>: [
		"Materials Needed:",
		"4 x Null Modifier",
		"32 x Structure Frame tier 2 or above",
		"16 x Structure Panel",
		"3 x Laser Core",
		"1 x Laser Lens of any type"
	],
	<environmentaltech:void_ore_miner_cont_3>: [
		"Materials Needed:",
		"8 x Null Modifier",
		"56 x Structure Frame tier 3 or above",
		"52 x Structure Panel",
		"4 x Laser Core",
		"1 x Laser Lens of any type"
	],
	<environmentaltech:void_ore_miner_cont_4>: [
		"Materials Needed:",
		"12 x Null Modifier",
		"56 x Structure Frame tier 4 or above",
		"56 x Structure Panel",
		"5 x Laser Core",
		"1 x Laser Lens of any type"
	],
	<environmentaltech:void_ore_miner_cont_5>: [
		"Materials Needed:",
		"16 x Null Modifier",
		"72 x Structure Frame tier 5 or above",
		"36 x Structure Panel",
		"6 x Laser Core",
		"1 x Laser Lens of any type"
	],
	<environmentaltech:void_ore_miner_cont_6>: [
		"Materials Needed:",
		"20 x Null Modifier",
		"92 x Structure Frame tier 6 or above",
		"56 x Structure Panel",
		"6 x Laser Core",
		"1 x Laser Lens of any type"
	],
	<environmentaltech:void_res_miner_cont_1>: [
		"Materials Needed:",
		"24 x Structure Frame tier 1 or above",
		"20 x Structure Panel",
		"2 x Laser Core",
		"1 x Laser Lens of any type"
	],
	<environmentaltech:void_res_miner_cont_2>: [
		"Materials Needed:",
		"4 x Null Modifier",
		"32 x Structure Frame tier 2 or above",
		"16 x Structure Panel",
		"3 x Laser Core",
		"1 x Laser Lens of any type"
	],
	<environmentaltech:void_res_miner_cont_3>: [
		"Materials Needed:",
		"8 x Null Modifier",
		"56 x Structure Frame tier 3 or above",
		"52 x Structure Panel",
		"4 x Laser Core",
		"1 x Laser Lens of any type"
	],
	<environmentaltech:void_res_miner_cont_4>: [
		"Materials Needed:",
		"12 x Null Modifier",
		"56 x Structure Frame tier 4 or above",
		"56 x Structure Panel",
		"5 x Laser Core",
		"1 x Laser Lens of any type"
	],
	<environmentaltech:void_res_miner_cont_5>: [
		"Materials Needed:",
		"16 x Null Modifier",
		"72 x Structure Frame tier 5 or above",
		"36 x Structure Panel",
		"6 x Laser Core",
		"1 x Laser Lens of any type"
	],
	<environmentaltech:void_res_miner_cont_6>: [
		"Materials Needed:",
		"20 x Null Modifier",
		"92 x Structure Frame tier 6 or above",
		"56 x Structure Panel",
		"6 x Laser Core",
		"1 x Laser Lens of any type"
	]
};

for item, descriptionArray in descriptionPairs {
	JEI.addDescription(item, descriptionArray);
}
