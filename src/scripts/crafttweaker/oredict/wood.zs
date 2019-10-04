#priority 2605

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
<ore:logWood>.add(<minecraft:log2:0>);
<ore:logWood>.add(<minecraft:log:1>);
<ore:logWood>.add(<minecraft:log:2>);
<ore:logWood>.add(<minecraft:log:3>);
<ore:logWood>.add(<minecraft:log:0>);
<ore:logWood>.add(<natura:nether_logs2:15>);
<ore:logWood>.add(<natura:nether_logs2:0>);
<ore:logWood>.add(<natura:nether_logs:1>);
<ore:logWood>.add(<natura:nether_logs:2>);
<ore:logWood>.add(<natura:nether_logs:0>);
<ore:logWood>.add(<natura:overworld_logs2:1>);
<ore:logWood>.add(<natura:overworld_logs2:2>);
<ore:logWood>.add(<natura:overworld_logs2:3>);
<ore:logWood>.add(<natura:overworld_logs2:0>);
<ore:logWood>.add(<natura:overworld_logs:1>);
<ore:logWood>.add(<natura:overworld_logs:2>);
<ore:logWood>.add(<natura:overworld_logs:3>);
<ore:logWood>.add(<natura:overworld_logs:0>);
<ore:logWood>.add(<natura:redwood_logs:1>);
<ore:logWood>.add(<natura:redwood_logs:2>);
<ore:logWood>.add(<natura:redwood_logs:0>);
<ore:logWood>.add(<twilightforest:magic_log:1>);
<ore:logWood>.add(<twilightforest:magic_log:2>);
<ore:logWood>.add(<twilightforest:magic_log:3>);
<ore:logWood>.add(<twilightforest:magic_log:0>);
<ore:logWood>.add(<twilightforest:twilight_log:1>);
<ore:logWood>.add(<twilightforest:twilight_log:2>);
<ore:logWood>.add(<twilightforest:twilight_log:3>);
<ore:logWood>.add(<twilightforest:twilight_log:0>);

// Add these to ensure theyre in oredict at CrT time
<ore:logWood>.add(<betterwithaddons:log_mulberry:0>);
<ore:logWood>.add(<betterwithaddons:log_sakura:0>);
<ore:logWood>.add(<betterwithmods:blood_log:0>);
<ore:logWood>.add(<totemic:cedar_log:0>);
<ore:logWood>.add(<traverse:fir_log:0>);

// Add to oredict
<ore:logWood>.add(<betterwithaddons:log_luretree:0>);
<ore:logWood>.add(<betterwithaddons:log_luretree_face:0>);
<ore:logWood>.add(<extraplanets:kepler22b_maple_logs2:1>);
<ore:logWood>.add(<extraplanets:kepler22b_maple_logs2:0>);
<ore:logWood>.add(<extraplanets:kepler22b_maple_logs:1>);
<ore:logWood>.add(<extraplanets:kepler22b_maple_logs:2>);
<ore:logWood>.add(<extraplanets:kepler22b_maple_logs:3>);
<ore:logWood>.add(<extraplanets:kepler22b_maple_logs:0>);
<ore:logWood>.add(<primal:logs:0>);
<ore:logWood>.add(<primal:logs_stripped:1>);
<ore:logWood>.add(<primal:logs_stripped:2>);
<ore:logWood>.add(<primal:logs_stripped:3>);
<ore:logWood>.add(<primal:logs_stripped:4>);
<ore:logWood>.add(<primal:logs_stripped:5>);
<ore:logWood>.add(<primal:logs_stripped:6>);
<ore:logWood>.add(<primal:logs_stripped:7>);
<ore:logWood>.add(<primal:logs_stripped:0>);
<ore:logWood>.add(<thebetweenlands:log_rubber:0>);
<ore:logWood>.add(<thebetweenlands:log_sap:0>);
<ore:logWood>.add(<thebetweenlands:log_weedwood:12>);
<ore:logWood>.add(<thebetweenlands:log_weedwood:0>);
<ore:logWood>.add(<totemic:stripped_cedar_log:0>);

/*
	Wood Planks
*/

// Add these to ensure theyre in oredict at CrT time
<ore:plankWood>.add(<betterwithaddons:planks_mulberry:0>);
<ore:plankWood>.add(<betterwithaddons:planks_sakura:0>);
<ore:plankWood>.add(<totemic:cedar_plank:0>);
<ore:plankWood>.add(<traverse:fir_planks:0>);

// Remove from oredict
<ore:plankWood>.add(<primal:planks:1>);

// Add to oredict
<ore:plankWood>.add(<extraplanets:kepler22b_planks:*>);
<ore:plankWood>.add(<primal:planks:*>);
<ore:plankWood>.add(<thebetweenlands:rubber_tree_planks:0>);
<ore:plankWood>.add(<thebetweenlands:weedwood_planks:0>);
<ore:plankWood>.add(<natura:overworld_planks>);
<ore:plankWood>.add(<natura:overworld_planks:1>);
<ore:plankWood>.add(<natura:overworld_planks:2>);
<ore:plankWood>.add(<natura:overworld_planks:3>);
<ore:plankWood>.add(<natura:overworld_planks:4>);
<ore:plankWood>.add(<natura:overworld_planks:5>);
<ore:plankWood>.add(<natura:overworld_planks:6>);
<ore:plankWood>.add(<natura:overworld_planks:7>);
<ore:plankWood>.add(<natura:overworld_planks:8>);


/*
	Bark Wood
*/
<ore:barkWood>.add(<betterwithmods:bark:*>);

/*
	Slab Wood
*/
<ore:slabWood>.add(<abyssalcraft:dltslab1:0>);
<ore:slabWood>.add(<primal:slab_yew:0>);
<ore:slabWood>.add(<natura:overworld_slab>);
<ore:slabWood>.add(<natura:overworld_slab:1>);
<ore:slabWood>.add(<natura:overworld_slab:2>);
<ore:slabWood>.add(<natura:overworld_slab:3>);
<ore:slabWood>.add(<natura:overworld_slab:4>);
<ore:slabWood>.add(<natura:overworld_slab2>);
<ore:slabWood>.add(<natura:overworld_slab2:1>);
<ore:slabWood>.add(<natura:overworld_slab2:2>);
<ore:slabWood>.add(<natura:overworld_slab2:3>);

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
<ore:stickWood>.add(<primal:yew_stick:0>);
<ore:stickWood>.add(<thebetweenlands:items_misc:20>);

/*
	Misc
*/
<ore:dustWood>.add(<betterwithmods:material:22>);
