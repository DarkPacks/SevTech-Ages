/*
	SevTech: Ages Primal Core Script

	This script handles custom integration control to a mod.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import mods.primal.DryingRack;
import mods.primal.Hibachi;

/*
	Drying Rack: Recipe Removals

	https://github.com/An-Sar/PrimalCore/wiki/CraftTweaker:-Drying-Rack
*/
static dryingRemovals as string[] = [
	"clay_cinis_clump",
	"clay_terra_clump",
	"corn_stalk",
	"daucus_murn_fronds",
	"fish_clown_raw",
	"fish_clown_salted",
	"fish_cod_raw",
	"fish_cod_salted",
	"fish_lava_crawdad_raw",
	"fish_lava_crawdad_salted",
	"fish_lava_worm_raw   ",
	"fish_lava_worm_salted",
	"fish_puffer_raw   ",
	"fish_puffer_salted",
	"fish_salmon_raw",
	"fish_salmon_salted",
	"hide_raw",
	"hide_raw_pigman",
	"hide_salted",
	"hide_salted_pigman",
	"hide_tanned",
	"hide_tanned_pigman",
	"meat_bear_raw",
	"meat_gator_raw",
	"meat_gator_salted",
	"meat_horse_raw",
	"meat_llama_salted",
	"meat_pigman_raw",
	"meat_pigman_salted",
	"meat_shark_raw",
	"meat_shark_salt",
	"meat_steppe_wolf_raw",
	"nether_fiber_pulp",
	"plant_fiber_pulp",
	"thatching",
	"valus_stalk"
];

/*
	Support:

	Hibachi: https://github.com/An-Sar/PrimalCore/wiki/CraftTweaker:-Hibachi
*/
function init() {
	for dryingRecipe in dryingRemovals {
		DryingRack.removeRecipe(dryingRecipe);
	}

	Hibachi.removeRecipe("valus_melon");
}
