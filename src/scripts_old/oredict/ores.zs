#priority 1050

/*
	Geolosys Ores
*/
<ore:oreGeolosysAutunite>.add(<geolosys:ore:9>);
<ore:oreGeolosysAzurite>.add(<geolosys:ore:3>);
<ore:oreGeolosysBauxite>.add(<geolosys:ore:7>);
<ore:oreGeolosysBeryl>.add(<geolosys:ore_vanilla:6>);
<ore:oreGeolosysCassiterite>.add(<geolosys:ore:4>);
<ore:oreGeolosysCinnabar>.add(<geolosys:ore_vanilla:1>);
<ore:oreGeolosysCoal>.add(<geolosys:ore_vanilla>);
<ore:oreGeolosysGalena>.add(<geolosys:ore:6>);
<ore:oreGeolosysGold>.add(<geolosys:ore_vanilla:2>);
<ore:oreGeolosysGold>.add(<materialpart:gold:ore_galacticraftplanets_bottom>);
<ore:oreGeolosysHematite>.add(<geolosys:ore>);
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

// Remove ore oredict on geolosys-styled CoT ores.
<ore:oreGold>.remove(<materialpart:gold:ore_galacticraftplanets_bottom>);
<ore:oreIron>.remove(<materialpart:iron:ore_galacticraftcore_bottom>);
<ore:oreOsmium>.remove(<materialpart:osmium:ore_minecraft_stone>);

// Remove Geolosys Zinc ore from oredict
<ore:oreZinc>.remove(<geolosys:cluster:10>);

/*
	Oredicts for Scannable
*/
<ore:oreMeteoricIron>.add(<galacticraftcore:basic_block_core:12>);
<ore:oreMeteoricIron>.add(<galacticraftcore:fallen_meteor>);
<ore:oreRockCrystal>.add(<astralsorcery:blockcustomore>);

// Add oredict to GC Ores missing them
<ore:oreAluminum>.add(<galacticraftcore:basic_block_core:7>);
<ore:oreAluminum>.add(<galacticraftplanets:asteroids_block:3>);
<ore:oreAluminum>.add(<galacticraftplanets:venus:6>);
<ore:oreCopper>.add(<galacticraftplanets:mars>);
<ore:oreCopper>.add(<galacticraftplanets:venus:7>);
<ore:oreIron>.add(<galacticraftplanets:mars:3>);
<ore:oreLead>.add(<galacticraftplanets:venus:8>);
<ore:oreTin>.add(<galacticraftplanets:mars:1>);
<ore:oreTin>.add(<galacticraftplanets:venus:11>);

// Add this oredict to differentiate between the two ores
<ore:oreBasicCertusQuartz>.add(<appliedenergistics2:quartz_ore>);
