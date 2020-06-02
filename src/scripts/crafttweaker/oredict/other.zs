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
<ore:rock>.add(<immcraft:rock:0>);

// Due to this, adobe will be crafted using compost rather than dung
// Doing it this way allows the full range of adobe to be crafted
// See https://ftb.gamepedia.com/Adobe
<ore:dung>.remove(<betterwithmods:material:5>);
<ore:dung>.add(<thebetweenlands:items_misc:2>);
<ore:blockDung>.remove(<betterwithmods:aesthetic:11>);
<ore:blockDung>.add(<thebetweenlands:compost_block:0>);

<ore:table>.add(<bibliocraft:table:0>);
<ore:table>.add(<bibliocraft:table:1>);
<ore:table>.add(<bibliocraft:table:2>);
<ore:table>.add(<bibliocraft:table:3>);
<ore:table>.add(<bibliocraft:table:4>);
<ore:table>.add(<bibliocraft:table:5>);

// AS Crystal
<ore:asCrystal>.add(<astralsorcery:itemrockcrystalsimple:0>);
<ore:asCrystal>.add(<astralsorcery:itemcelestialcrystal:0>);
<ore:asCrystal>.add(<astralsorcery:itemtunedcelestialcrystal:0>);

// Hide
<ore:hideTanned>.remove(<betterwithmods:material:6>);
<ore:hideScoured>.remove(<betterwithmods:material:7>);

// Fiery bottles
<ore:bottleFiery>.add(<twilightforest:fiery_blood:0>);
<ore:bottleFiery>.add(<twilightforest:fiery_tears:0>);

// Natura oredicts glass wrong
<ore:glass>.remove(<natura:nether_glass:0>);
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
<ore:dustQuartz>.remove(<actuallyadditions:item_dust:5>); // No need for two nether quartz dusts
<ore:dustNetherQuartz>.remove(<actuallyadditions:item_dust:5>); // same as above

// Add BWM Diamond Nugget to be removed in unification
<ore:nuggetDiamond>.add(<betterwithmods:material:46>);

// Remove Cut Leather oredict
<ore:leather>.remove(<betterwithmods:material:31>);
<ore:hideTanned>.remove(<betterwithmods:material:32>);

// The Betweenlands
<ore:stoneLimestone>.add(<thebetweenlands:limestone:0>);
<ore:stoneLimestone>.add(<thebetweenlands:limestone_chiseled:0>);
<ore:stoneLimestone>.add(<thebetweenlands:cracked_limestone_bricks:0>);
<ore:stoneLimestone>.add(<thebetweenlands:limestone_bricks:0>);
<ore:stoneLimestone>.add(<thebetweenlands:limestone_tiles:0>);
<ore:stoneLimestone>.add(<thebetweenlands:mossy_limestone_bricks:0>);
<ore:stoneLimestonePolished>.add(<thebetweenlands:polished_limestone:0>);
<ore:stoneLimestonePolished>.add(<thebetweenlands:weak_polished_limestone:0>);

// Cobblestone Slab
<ore:slabCobblestone>.add(<minecraft:stone_slab:3>);
<ore:slabCobblestone>.add(<abyssalcraft:darkcobbleslab1:0>);
<ore:slabCobblestone>.add(<traverse:red_rock_cobblestone_slab:0>);
<ore:slabCobblestone>.add(<traverse:blue_rock_cobblestone_slab:0>);

// String
<ore:string>.add(<natura:materials:7>);

// Fibre Torch
<ore:fibreTorch>.add(<primal_tech:fibre_torch>);
<ore:fibreTorch>.add(<primal_tech:fibre_torch_lit>);
<ore:torch>.add(<primal_tech:fibre_torch_lit>);

// Someone removed this. So let's add it back!
for item in <minecraft:stained_hardened_clay>.definition.subItems {
	<ore:blockStainedHardenedClay>.add(item);
}
<ore:blockStainedHardenedClay>.add(<minecraft:hardened_clay>);

//Volarleaves added to lily pad ore dict
<ore:lilypad>.add(<thebetweenlands:items_plant_drop:36>);
