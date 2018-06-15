#priority 2600

/*
	SevTech: Ages OreDict Other Script.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IItemStack;

/*
	Misc
*/
<ore:rock>.add(<immcraft:rock>);

<ore:dung>.remove(<betterwithmods:material:5>);

<ore:table>.add(<bibliocraft:table>);
<ore:table>.add(<bibliocraft:table:1>);
<ore:table>.add(<bibliocraft:table:2>);
<ore:table>.add(<bibliocraft:table:3>);
<ore:table>.add(<bibliocraft:table:4>);
<ore:table>.add(<bibliocraft:table:5>);

// AS Crystal
<ore:asCrystal>.add(<astralsorcery:itemrockcrystalsimple>);
<ore:asCrystal>.add(<astralsorcery:itemcelestialcrystal>);
<ore:asCrystal>.add(<astralsorcery:itemtunedcelestialcrystal>);

// Hide
<ore:hideTanned>.remove(<betterwithmods:material:6>);
<ore:hideScoured>.remove(<betterwithmods:material:7>);

// Fiery bottles
<ore:bottleFiery>.add(<twilightforest:fiery_blood>);
<ore:bottleFiery>.add(<twilightforest:fiery_tears>);

// Natura oredicts glass wrong
<ore:glass>.remove(<natura:nether_glass>);
<ore:glass>.remove(<natura:nether_glass:1>);
<ore:glassBlock>.add(<natura:nether_glass:*>);

// Sulfur
<ore:dustSulphur>.remove(<natura:materials:4>);
<ore:dustSulfur>.add(<natura:materials:4>);

//Processors
<ore:processorCalculation>.add(<appliedenergistics2:material:23>);
<ore:processorEngineering>.add(<appliedenergistics2:material:24>);
<ore:processorLogic>.add(<appliedenergistics2:material:22>);

// Quartz Dust
<ore:dustQuartz>.add(<appliedenergistics2:material:2>); //Certus Quartz

// Add BWM Diamond Nugget to be removed in unification
<ore:nuggetDiamond>.add(<betterwithmods:material:46>);

// Remove Cut Leather oredict
<ore:leather>.remove(<betterwithmods:material:31>);
<ore:hideTanned>.remove(<betterwithmods:material:32>);

// The Betweenlands
<ore:stoneLimestone>.add(<thebetweenlands:limestone>);
<ore:stoneLimestone>.add(<thebetweenlands:limestone_chiseled>);
<ore:stoneLimestone>.add(<thebetweenlands:cracked_limestone_bricks>);
<ore:stoneLimestone>.add(<thebetweenlands:limestone_bricks>);
<ore:stoneLimestone>.add(<thebetweenlands:limestone_tiles>);
<ore:stoneLimestone>.add(<thebetweenlands:mossy_limestone_bricks>);
<ore:stoneLimestonePolished>.add(<thebetweenlands:polished_limestone>);
<ore:stoneLimestonePolished>.add(<thebetweenlands:weak_polished_limestone>);

// Cobblestone Slab
<ore:slabCobblestone>.add(<minecraft:stone_slab:3>);
<ore:slabCobblestone>.add(<abyssalcraft:darkcobbleslab1>);
<ore:slabCobblestone>.add(<traverse:red_rock_cobblestone_slab>);
<ore:slabCobblestone>.add(<traverse:blue_rock_cobblestone_slab>);

// String
<ore:string>.add(<natura:materials:7>);
