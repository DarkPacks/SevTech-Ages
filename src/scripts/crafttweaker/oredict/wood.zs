#priority 2600

/*
	SevTech: Ages OreDict Wood Script.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/

/*
	Wood Logs
*/

// Remove wildcard
<ore:logWood>.remove(<minecraft:log2:*>);
<ore:logWood>.remove(<minecraft:log:*>);
<ore:logWood>.remove(<natura:nether_logs2:*>);
<ore:logWood>.remove(<natura:nether_logs:*>);
<ore:logWood>.remove(<natura:overworld_logs2:*>);
<ore:logWood>.remove(<natura:overworld_logs:*>);
<ore:logWood>.remove(<natura:redwood_logs:*>);
<ore:logWood>.remove(<twilightforest:magic_log:*>);
<ore:logWood>.remove(<twilightforest:twilight_log:*>);

// Add subblocks of wildcarded ones
<ore:logWood>.add(<minecraft:log2:1>);
<ore:logWood>.add(<minecraft:log2>);
<ore:logWood>.add(<minecraft:log:1>);
<ore:logWood>.add(<minecraft:log:2>);
<ore:logWood>.add(<minecraft:log:3>);
<ore:logWood>.add(<minecraft:log>);
<ore:logWood>.add(<natura:nether_logs2:15>);
<ore:logWood>.add(<natura:nether_logs2>);
<ore:logWood>.add(<natura:nether_logs:1>);
<ore:logWood>.add(<natura:nether_logs:2>);
<ore:logWood>.add(<natura:nether_logs>);
<ore:logWood>.add(<natura:overworld_logs2:1>);
<ore:logWood>.add(<natura:overworld_logs2:2>);
<ore:logWood>.add(<natura:overworld_logs2:3>);
<ore:logWood>.add(<natura:overworld_logs2>);
<ore:logWood>.add(<natura:overworld_logs:1>);
<ore:logWood>.add(<natura:overworld_logs:2>);
<ore:logWood>.add(<natura:overworld_logs:3>);
<ore:logWood>.add(<natura:overworld_logs>);
<ore:logWood>.add(<natura:redwood_logs:1>);
<ore:logWood>.add(<natura:redwood_logs:2>);
<ore:logWood>.add(<natura:redwood_logs>);
<ore:logWood>.add(<twilightforest:magic_log:1>);
<ore:logWood>.add(<twilightforest:magic_log:2>);
<ore:logWood>.add(<twilightforest:magic_log:3>);
<ore:logWood>.add(<twilightforest:magic_log>);
<ore:logWood>.add(<twilightforest:twilight_log:1>);
<ore:logWood>.add(<twilightforest:twilight_log:2>);
<ore:logWood>.add(<twilightforest:twilight_log:3>);
<ore:logWood>.add(<twilightforest:twilight_log>);

// Add these to ensure theyre in oredict at CrT time
<ore:logWood>.add(<betterwithaddons:log_mulberry>);
<ore:logWood>.add(<betterwithaddons:log_sakura>);
<ore:logWood>.add(<betterwithmods:blood_log>);
<ore:logWood>.add(<totemic:cedar_log>);
<ore:logWood>.add(<traverse:fir_log>);

// Add to oredict
<ore:logWood>.add(<betterwithaddons:log_luretree>);
<ore:logWood>.add(<betterwithaddons:log_luretree_face>);
<ore:logWood>.add(<extraplanets:kepler22b_maple_logs2:1>);
<ore:logWood>.add(<extraplanets:kepler22b_maple_logs2>);
<ore:logWood>.add(<extraplanets:kepler22b_maple_logs:1>);
<ore:logWood>.add(<extraplanets:kepler22b_maple_logs:2>);
<ore:logWood>.add(<extraplanets:kepler22b_maple_logs:3>);
<ore:logWood>.add(<extraplanets:kepler22b_maple_logs>);
<ore:logWood>.add(<primal:logs>);
<ore:logWood>.add(<primal:logs_stripped:1>);
<ore:logWood>.add(<primal:logs_stripped:2>);
<ore:logWood>.add(<primal:logs_stripped:3>);
<ore:logWood>.add(<primal:logs_stripped:4>);
<ore:logWood>.add(<primal:logs_stripped:5>);
<ore:logWood>.add(<primal:logs_stripped:6>);
<ore:logWood>.add(<primal:logs_stripped:7>);
<ore:logWood>.add(<primal:logs_stripped>);
<ore:logWood>.add(<thebetweenlands:log_rubber>);
<ore:logWood>.add(<thebetweenlands:log_sap>);
<ore:logWood>.add(<thebetweenlands:log_weedwood:12>);
<ore:logWood>.add(<thebetweenlands:log_weedwood>);
<ore:logWood>.add(<totemic:stripped_cedar_log>);

/*
	Wood Planks
*/

// Add these to ensure theyre in oredict at CrT time
<ore:plankWood>.add(<betterwithaddons:planks_mulberry>);
<ore:plankWood>.add(<betterwithaddons:planks_sakura>);
<ore:plankWood>.add(<totemic:cedar_plank>);
<ore:plankWood>.add(<traverse:fir_planks>);

// Remove from oredict
<ore:plankWood>.add(<primal:planks:1>);

// Add to oredict
<ore:plankWood>.add(<extraplanets:kepler22b_planks:*>);
<ore:plankWood>.add(<primal:planks:*>);
<ore:plankWood>.add(<thebetweenlands:rubber_tree_planks>);
<ore:plankWood>.add(<thebetweenlands:weedwood_planks>);

/*
	Bark Wood
*/
<ore:barkWood>.add(<betterwithmods:bark:*>);

/*
	Slab Wood
*/
<ore:slabWood>.add(<abyssalcraft:dltslab1>);
<ore:slabWood>.add(<primal:slab_yew>);

/*
	Sticks
*/

// Add sticks to oredict so we can unify
<ore:stickWood>.add(<natura:sticks:0>);
<ore:stickWood>.add(<natura:sticks:1>);
<ore:stickWood>.add(<natura:sticks:2>);
<ore:stickWood>.add(<natura:sticks:3>);
<ore:stickWood>.add(<natura:sticks:4>);
<ore:stickWood>.add(<natura:sticks:5>);
<ore:stickWood>.add(<natura:sticks:6>);
<ore:stickWood>.add(<natura:sticks:7>);
<ore:stickWood>.add(<natura:sticks:8>);
<ore:stickWood>.add(<natura:sticks:9>);
<ore:stickWood>.add(<natura:sticks:10>);
<ore:stickWood>.add(<natura:sticks:11>);
<ore:stickWood>.add(<natura:sticks:12>);
<ore:stickWood>.add(<primal:yew_stick>);

/*
	Misc
*/
<ore:dustWood>.add(<betterwithmods:material:22>);
