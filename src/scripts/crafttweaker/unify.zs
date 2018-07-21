#priority 2450

/*
	SevTech: Ages OreDict Unification Script.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
unifier.unify(<ore:gearWood>, <betterwithmods:material:0>, null);
unifier.unify(<ore:gearStone>, <teslacorelib:gear_stone:0>, null);
unifier.unify(<ore:gearDiamond>, <materialpart:diamond:gear>, null);
unifier.unify(<ore:foodFlour>, <horsepower:flour:0>, null);
unifier.unify(<ore:itemSilicon>, <galacticraftcore:basic_item:2>, null);
unifier.unify(<ore:stickWood>, <minecraft:stick:0>, null);
unifier.unify(<ore:dustCoal>, <betterwithmods:material:18>, null);
unifier.unify(<ore:dustWood>, <betterwithmods:material:22>, null);
unifier.unify(<ore:pulpWood>, <betterwithmods:material:22>, null);
unifier.unify(<ore:dustDiamond>, <mekanism:otherdust:0>, null);
unifier.unify(<ore:dustSulfur>, <immersiveengineering:material:25>, null);
unifier.unify(<ore:blockCharcoal>, <charcoalblock:charcoal_block:0>, null);
unifier.unify(<ore:nuggetDiamond>, <extendedcrafting:material:128>, null);

// ==================================
// Clear ore dicts
unifier.clearOreDict(<ore:dustEmerald>, null, null);