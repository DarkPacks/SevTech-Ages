#priority 2550

/*
	SevTech: Ages OreDict Ores Script.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/

/*
	Geolosys Ores
*/
<ore:oreGeolosysAutunite>.add(<geolosys:ore:9>);
<ore:oreGeolosysAzurite>.add(<geolosys:ore:3>);
<ore:oreGeolosysBauxite>.add(<geolosys:ore:7>);
<ore:oreGeolosysBeryl>.add(<geolosys:ore_vanilla:6>);
<ore:oreGeolosysCassiterite>.add(<geolosys:ore:4>);
<ore:oreGeolosysCinnabar>.add(<geolosys:ore_vanilla:1>);
<ore:oreGeolosysCoal>.add(<geolosys:ore_vanilla:0>);
<ore:oreGeolosysGalena>.add(<geolosys:ore:6>);
<ore:oreGeolosysGold>.add(<geolosys:ore_vanilla:2>);
<ore:oreGeolosysGold>.add(<materialpart:gold:ore_galacticraftplanets_bottom>);
<ore:oreGeolosysHematite>.add(<geolosys:ore:0>);
<ore:oreGeolosysHematite>.add(<materialpart:iron:ore_galacticraftcore_bottom>);
<ore:oreGeolosysKimberlite>.add(<geolosys:ore_vanilla:5>);
<ore:oreGeolosysLapis>.add(<geolosys:ore_vanilla:3>);
<ore:oreGeolosysLimonite>.add(<geolosys:ore:1>);
<ore:oreGeolosysMalachite>.add(<geolosys:ore:2>);
<ore:oreGeolosysOsmium>.add(<materialpart:osmium:ore_minecraft_stone>);
<ore:oreGeolosysPlatinum>.add(<geolosys:ore:8>);
<ore:oreGeolosysQuartz>.add(<geolosys:ore_vanilla:4>);
<ore:oreGeolosysSphalerite>.add(<geolosys:ore:10>);
<ore:oreGeolosysTeallite>.add(<geolosys:ore:5>);

// Register all geolosys clusters with unique oredict entries (used by the IE excavator)
<ore:oreClusterAluminum>.add(<geolosys:cluster:6>);
<ore:oreClusterCopper>.add(<geolosys:cluster:2>);
<ore:oreClusterGold>.add(<geolosys:cluster:1>);
<ore:oreClusterIron>.add(<geolosys:cluster:0>);
<ore:oreClusterLead>.add(<geolosys:cluster:5>);
<ore:oreClusterNickel>.add(<geolosys:cluster:7>);
<ore:oreClusterOsmium>.add(<geolosys:cluster:12>);
<ore:oreClusterPlatinum>.add(<geolosys:cluster:8>);
<ore:oreClusterSilver>.add(<geolosys:cluster:4>);
<ore:oreClusterTin>.add(<geolosys:cluster:3>);
<ore:oreClusterUranium>.add(<geolosys:cluster:9>);

// Remove ore oredict on geolosys-styled CoT ores.
<ore:oreOsmium>.remove(<materialpart:osmium:ore_minecraft_stone>);

// Remove Geolosys Zinc ore from oredict
<ore:oreZinc>.remove(<geolosys:cluster:10>);

/*
	Oredicts for Scannable
*/
<ore:oreMeteoricIron>.add(<galacticraftcore:basic_block_core:12>);
<ore:oreMeteoricIron>.add(<galacticraftcore:fallen_meteor:0>);
<ore:oreRockCrystal>.add(<astralsorcery:blockcustomore:0>);

// Add oredict to GC Ores missing them
<ore:oreAluminum>.add(<galacticraftcore:basic_block_core:7>);
<ore:oreAluminum>.add(<galacticraftplanets:asteroids_block:3>);
<ore:oreAluminum>.add(<galacticraftplanets:venus:6>);
<ore:oreCopper>.add(<galacticraftplanets:mars:0>);
<ore:oreCopper>.add(<galacticraftplanets:venus:7>);
<ore:oreIron>.add(<galacticraftplanets:mars:3>);
<ore:oreLead>.add(<galacticraftplanets:venus:8>);
<ore:oreTin>.add(<galacticraftplanets:mars:1>);
<ore:oreTin>.add(<galacticraftplanets:venus:11>);

// Add this oredict to differentiate between the two ores
<ore:oreBasicCertusQuartz>.add(<appliedenergistics2:quartz_ore:0>);

// Space Platinum
<ore:blockPlatinum>.remove(<extraplanets:kepler22b:14>);
<ore:blockSpacePlatinum>.add(<extraplanets:kepler22b:14>);
<ore:ingotPlatinum>.remove(<extraplanets:tier11_items:5>);
<ore:ingotSpacePlatinum>.add(<extraplanets:tier11_items:5>);
<ore:orePlatinum>.remove(<extraplanets:kepler22b:13>);
<ore:oreSpacePlatinum>.add(<extraplanets:kepler22b:13>);

// Black Quartz
<ore:gemQuartzBlack>.remove(<primal:quartz_vitrified>);
<ore:gemQuartzVitrified>.remove(<primal:quartz_vitrified>);
