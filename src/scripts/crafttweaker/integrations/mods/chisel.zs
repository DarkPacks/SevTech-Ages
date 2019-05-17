/*
	SevTech: Ages Chisel Script

	This script handles custom integration control to a mod.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import mods.chisel.Carving;

function init() {
	/*
		Tinkers' Clear Glass
	*/
	Carving.addVariation("glass", <tconstruct:clear_glass:0>);
	Carving.addVariation("glassdyedwhite", <tconstruct:clear_stained_glass:0>);
	Carving.addVariation("glassdyedorange", <tconstruct:clear_stained_glass:1>);
	Carving.addVariation("glassdyedmagenta", <tconstruct:clear_stained_glass:2>);
	Carving.addVariation("glassdyedlightblue", <tconstruct:clear_stained_glass:3>);
	Carving.addVariation("glassdyedyellow", <tconstruct:clear_stained_glass:4>);
	Carving.addVariation("glassdyedlime", <tconstruct:clear_stained_glass:5>);
	Carving.addVariation("glassdyedpink", <tconstruct:clear_stained_glass:6>);
	Carving.addVariation("glassdyedgray", <tconstruct:clear_stained_glass:7>);
	Carving.addVariation("glassdyedlightgray", <tconstruct:clear_stained_glass:8>);
	Carving.addVariation("glassdyedcyan", <tconstruct:clear_stained_glass:9>);
	Carving.addVariation("glassdyedpurple", <tconstruct:clear_stained_glass:10>);
	Carving.addVariation("glassdyedblue", <tconstruct:clear_stained_glass:11>);
	Carving.addVariation("glassdyedbrown", <tconstruct:clear_stained_glass:12>);
	Carving.addVariation("glassdyedgreen", <tconstruct:clear_stained_glass:13>);
	Carving.addVariation("glassdyedred", <tconstruct:clear_stained_glass:14>);
	Carving.addVariation("glassdyedblack", <tconstruct:clear_stained_glass:15>);

	/*
		BetweenLands Stone/Rock
	*/

	// Add CragRock.
	Carving.addGroup("cragrock");
	Carving.addVariation("cragrock", <thebetweenlands:cragrock_chiseled:0>);
	Carving.addVariation("cragrock", <thebetweenlands:cragrock_bricks:0>);
	Carving.addVariation("cragrock", <thebetweenlands:cragrock_tiles:0>);
	Carving.addVariation("cragrock", <thebetweenlands:smooth_cragrock:0>);

	// Add BetweenStone.
	Carving.addGroup("betweenstone");
	Carving.addVariation("betweenstone", <thebetweenlands:betweenstone_bricks:0>);
	Carving.addVariation("betweenstone", <thebetweenlands:betweenstone_bricks_mirage:0>);
	Carving.addVariation("betweenstone", <thebetweenlands:betweenstone_tiles:0>);
	Carving.addVariation("betweenstone", <thebetweenlands:betweenstone_chiseled:0>);
	Carving.addVariation("betweenstone", <thebetweenlands:cracked_betweenstone_bricks:0>);
	Carving.addVariation("betweenstone", <thebetweenlands:cracked_betweenstone_tiles:0>);
	Carving.addVariation("betweenstone", <thebetweenlands:smooth_betweenstone:0>);
	Carving.addVariation("betweenstone", <thebetweenlands:weak_betweenstone_tiles:0>);

	// Add PitStone.
	Carving.addGroup("pitstone");
	Carving.addVariation("pitstone", <thebetweenlands:pitstone_chiseled:0>);
	Carving.addVariation("pitstone", <thebetweenlands:pitstone_bricks:0>);
	Carving.addVariation("pitstone", <thebetweenlands:pitstone_tiles:0>);
	Carving.addVariation("pitstone", <thebetweenlands:smooth_pitstone:0>);

	// Add Betweenlands Limestone to limestone group
	Carving.addVariation("limestone", <thebetweenlands:limestone:0>);
	Carving.addVariation("limestone", <thebetweenlands:limestone_chiseled:0>);
	Carving.addVariation("limestone", <thebetweenlands:cracked_limestone_bricks:0>);
	Carving.addVariation("limestone", <thebetweenlands:limestone_bricks:0>);
	Carving.addVariation("limestone", <thebetweenlands:limestone_tiles:0>);
	Carving.addVariation("limestone", <thebetweenlands:polished_limestone:0>);
	Carving.addVariation("limestone", <thebetweenlands:weak_polished_limestone:0>);

	// Add NetherEx Basalt to basalt group
	Carving.addVariation("basalt", <nex:basalt:0>);
	Carving.addVariation("basalt", <nex:basalt:1>);
	Carving.addVariation("basalt", <nex:basalt:2>);
	Carving.addVariation("basalt", <nex:basalt:3>);

	/*
		Remove Iron Pane group
		All items are WIP and thus hidden in JEI by us
	*/
	Carving.removeGroup("ironpane");

	/*
		Removals
	*/
	Carving.removeVariation("prismarine", <minecraft:prismarine:2>);
	Carving.removeVariation("prismarine", <minecraft:prismarine:1>);

	/*
		Metals
	*/
	for oreDictEntry, blocks in chiselBlocks {
		var vgName = "vg_" + oreDictEntry.name.toLowerCase();
		for block in blocks {
		  	print("[Chisel] Adding " + block.definition.id + " to " + vgName);
			Carving.addVariation(vgName, block);
		}
	}
}
