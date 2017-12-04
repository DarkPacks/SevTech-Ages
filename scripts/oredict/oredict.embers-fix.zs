#priority 900

/*
	Fix Embers
	Embers is doing something weird with ore dict registration.
	Even though they are registered in game, when looping through the IOreDictEntries,
	the item does not appear.
*/

//Copper
metals.copper.block.add(<embers:block_copper>);
metals.copper.ingot.add(<embers:ingot_copper>);
metals.copper.nugget.add(<embers:nugget_copper>);
metals.copper.plate.add(<embers:plate_copper>);

//Lead
metals.lead.block.add(<embers:block_lead>);
metals.lead.ingot.add(<embers:ingot_lead>);
metals.lead.nugget.add(<embers:nugget_lead>);
metals.lead.plate.add(<embers:plate_lead>);

//Silver
metals.silver.block.add(<embers:block_silver>);
metals.silver.ingot.add(<embers:ingot_silver>);
metals.silver.nugget.add(<embers:nugget_silver>);
metals.silver.plate.add(<embers:plate_silver>);

//Dawnstone
metals.dawnstone.block.add(<embers:block_dawnstone>);
metals.dawnstone.ingot.add(<embers:ingot_dawnstone>);
metals.dawnstone.nugget.add(<embers:nugget_dawnstone>);
metals.dawnstone.plate.add(<embers:plate_dawnstone>);

//Mithril
<ore:blockMithril>.add(<embers:block_mithril>);
<ore:ingotMithril>.add(<embers:ingot_mithril>);
<ore:nuggetMithril>.add(<embers:nugget_mithril>);
<ore:plateMithril>.add(<embers:plate_mithril>);

//Aluminum
metals.aluminum.block.add(<embers:block_aluminum>);
metals.aluminum.ingot.add(<embers:ingot_aluminum>);
metals.aluminum.nugget.add(<embers:nugget_aluminum>);
metals.aluminum.plate.add(<embers:plate_aluminum>);

//Bronze
metals.bronze.block.add(<embers:block_bronze>);
metals.bronze.ingot.add(<embers:ingot_bronze>);
metals.bronze.nugget.add(<embers:nugget_bronze>);
metals.bronze.plate.add(<embers:plate_bronze>);

//Nickel
metals.nickel.block.add(<embers:block_nickel>);
metals.nickel.ingot.add(<embers:ingot_nickel>);
metals.nickel.nugget.add(<embers:nugget_nickel>);
metals.nickel.plate.add(<embers:plate_nickel>);

//Tin
metals.tin.block.add(<embers:block_tin>);
metals.tin.ingot.add(<embers:ingot_tin>);
metals.tin.nugget.add(<embers:nugget_tin>);
metals.tin.plate.add(<embers:plate_tin>);

//Ore
<ore:oreNickel>.add(<embers:ore_nickel>);
<ore:oreQuartz>.add(<embers:ore_quartz>);
<ore:oreTin>.add(<embers:ore_tin>);

//Other
metals.gold.plate.add(<embers:plate_gold>);
metals.iron.plate.add(<embers:plate_iron>);
