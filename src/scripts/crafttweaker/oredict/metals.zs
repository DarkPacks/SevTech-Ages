#priority 2600

/*
	SevTech: Ages OreDict Metals Script.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
<ore:ingotTamahagane>.remove(<primal:tamahagane_ingot:0>);

<ore:nuggetSoulium>.remove(<mysticalagriculture:crafting:45>);
<ore:nuggetInsanium>.remove(<mysticalagradditions:insanium:3>);

// Add to oredict so it can be removed
<ore:gearCompressedIron>.add(<pneumaticcraft:compressed_iron_gear:0>);

// Remove Primal Metals (We don't need them and they'll cause confusion)
<ore:nuggetNickle>.remove(<primal:nickle_nugget>);
<ore:dustNickle>.remove(<primal:nickle_dust>);
<ore:ingotNickle>.remove(<primal:nickle_ingot>);
<ore:plateNickle>.remove(<primal:nickle_plate>);
<ore:nuggetPlatinum>.remove(<primal:platinum_nugget>);
