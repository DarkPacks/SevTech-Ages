#priority 2600

/*
	SevTech: Ages OreDict Mod Script.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
<ore:ingotDesh>.add(<galacticraftplanets:item_basic_mars:2>);

// Remove Meteoric Iron Block from ore oredict... because... why...
<ore:oreMeteoricIron>.add(<galacticraftcore:basic_block_core:12>);
<ore:oreMeteoricIron>.remove(<galacticraftcore:basic_block_core:12>);

// Add Raw Meteoric Iron to Ore Oredict since it and Fallen Meteor can behave the same.
<ore:oreMeteoricIron>.add(<galacticraftcore:meteoric_iron_raw:0>);
