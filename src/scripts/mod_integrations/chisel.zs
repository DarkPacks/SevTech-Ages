import mods.chisel.Carving;

/*
	Tinkers' Clear Glass
*/
Carving.addVariation("glass", <tconstruct:clear_glass>);
Carving.addVariation("glassdyedwhite", <tconstruct:clear_stained_glass>);
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
Carving.addVariation("cragrock", <thebetweenlands:cragrock_chiseled>);
Carving.addVariation("cragrock", <thebetweenlands:cragrock_bricks>);
Carving.addVariation("cragrock", <thebetweenlands:cragrock_tiles>);
Carving.addVariation("cragrock", <thebetweenlands:smooth_cragrock>);

// Add BetweenStone.
Carving.addGroup("betweenstone");
Carving.addVariation("betweenstone", <thebetweenlands:betweenstone_bricks>);
Carving.addVariation("betweenstone", <thebetweenlands:betweenstone_bricks_mirage>);
Carving.addVariation("betweenstone", <thebetweenlands:betweenstone_tiles>);
Carving.addVariation("betweenstone", <thebetweenlands:betweenstone_chiseled>);
Carving.addVariation("betweenstone", <thebetweenlands:cracked_betweenstone_bricks>);
Carving.addVariation("betweenstone", <thebetweenlands:cracked_betweenstone_tiles>);
Carving.addVariation("betweenstone", <thebetweenlands:smooth_betweenstone>);
Carving.addVariation("betweenstone", <thebetweenlands:weak_betweenstone_tiles>);

// Add PitStone.
Carving.addGroup("pitstone");
Carving.addVariation("pitstone", <thebetweenlands:pitstone_chiseled>);
Carving.addVariation("pitstone", <thebetweenlands:pitstone_bricks>);
Carving.addVariation("pitstone", <thebetweenlands:pitstone_tiles>);
Carving.addVariation("pitstone", <thebetweenlands:smooth_pitstone>);

// Add the Limestone to the already Chisel one.
Carving.addVariation("limestone", <thebetweenlands:limestone>);
Carving.addVariation("limestone", <thebetweenlands:limestone_chiseled>);
Carving.addVariation("limestone", <thebetweenlands:cracked_limestone_bricks>);
Carving.addVariation("limestone", <thebetweenlands:limestone_bricks>);
Carving.addVariation("limestone", <thebetweenlands:limestone_tiles>);
Carving.addVariation("limestone", <thebetweenlands:polished_limestone>);
Carving.addVariation("limestone", <thebetweenlands:weak_polished_limestone>);

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

