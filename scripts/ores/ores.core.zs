/*
//Excavator
//MineralString, MineralWeight, FailChance, OreStringArray, OreChanceArray, DimensionIDArray, isWhitelistOrBlacklist //true=blacklist; false=whitelist
mods.immersiveengineering.Excavator.addMineral("Sediment", 30, 15, ["sand", "sandstone"], [50, 15], [0, 1], false);
//MineralString
mods.immersiveengineering.Excavator.removeMineral("Bauxite");
//MineralString + OreString, Chance
mods.immersiveengineering.Excavator.getMineral("Magnetite").addOre("oreNickel", 0.75);
//MineralString + OreString
mods.immersiveengineering.Excavator.getMineral("Magnetite").removeOre("oreGold");
*/

/*
	Immersive Engineering Ore Mineral Re-design
*/

//Remove Minerals
mods.immersiveengineering.Excavator.removeMineral("Bauxite");
mods.immersiveengineering.Excavator.removeMineral("Cassiterite");
mods.immersiveengineering.Excavator.removeMineral("Coal");
mods.immersiveengineering.Excavator.removeMineral("Copper");
mods.immersiveengineering.Excavator.removeMineral("Galena");
mods.immersiveengineering.Excavator.removeMineral("Gold");
mods.immersiveengineering.Excavator.removeMineral("Iron");
mods.immersiveengineering.Excavator.removeMineral("Lapis");
mods.immersiveengineering.Excavator.removeMineral("Lead");
mods.immersiveengineering.Excavator.removeMineral("Magnetite");
mods.immersiveengineering.Excavator.removeMineral("Nickel");
mods.immersiveengineering.Excavator.removeMineral("Platinum");
mods.immersiveengineering.Excavator.removeMineral("Pyrite");
mods.immersiveengineering.Excavator.removeMineral("Quartzite");
mods.immersiveengineering.Excavator.removeMineral("Silver");
mods.immersiveengineering.Excavator.removeMineral("Uranium");

//Add Ores
//Quartzite
mods.immersiveengineering.Excavator.addMineral("Quartzite", 30, 15, [], [], [-1], true);
var quartzite = mods.immersiveengineering.Excavator.getMineral("Quartzite");
quartzite.addOre("oreQuartzBlack", 0.50);

//Autunite
mods.immersiveengineering.Excavator.addMineral("Autunite", 30, 15, [], [], [-1], true);
var autunite = mods.immersiveengineering.Excavator.getMineral("Autunite");
autunite.addOre("oreGeolosysAutunite", 0.50);

//Azurite
mods.immersiveengineering.Excavator.addMineral("Azurite", 30, 15, [], [], [-1], true);
var azurite = mods.immersiveengineering.Excavator.getMineral("Azurite");
azurite.addOre("oreGeolosysAzurite", 0.50);

//Bauxite
mods.immersiveengineering.Excavator.addMineral("Bauxite", 30, 15, [], [], [-1], true);
var bauxite = mods.immersiveengineering.Excavator.getMineral("Bauxite");
bauxite.addOre("oreGeolosysBauxite", 0.50);

//Cassiterite
mods.immersiveengineering.Excavator.addMineral("Cassiterite", 30, 15, [], [], [-1], true);
var cassiterite = mods.immersiveengineering.Excavator.getMineral("Cassiterite");
cassiterite.addOre("oreGeolosysCassiterite", 0.50);

//Cinnabar
mods.immersiveengineering.Excavator.addMineral("Cinnabar", 30, 15, [], [], [-1], true);
var cinnabar = mods.immersiveengineering.Excavator.getMineral("Cinnabar");
cinnabar.addOre("oreGeolosysCinnabar", 0.50);

//Coal
mods.immersiveengineering.Excavator.addMineral("Coal", 30, 15, [], [], [-1], true);
var coal = mods.immersiveengineering.Excavator.getMineral("Coal");
coal.addOre("oreGeolosysCoal", 0.50);

//Galena
mods.immersiveengineering.Excavator.addMineral("Galena", 30, 15, [], [], [-1], true);
var galena = mods.immersiveengineering.Excavator.getMineral("Galena");
galena.addOre("oreGeolosysGalena", 0.50);

//Gold
mods.immersiveengineering.Excavator.addMineral("Gold", 30, 15, [], [], [-1], true);
var gold = mods.immersiveengineering.Excavator.getMineral("Gold");
gold.addOre("oreGeolosysGold", 0.50);

//Hematite
mods.immersiveengineering.Excavator.addMineral("Hematite", 30, 15, [], [], [-1], true);
var hematite = mods.immersiveengineering.Excavator.getMineral("Hematite");
hematite.addOre("oreGeolosysHematite", 0.50);

//Lapis
mods.immersiveengineering.Excavator.addMineral("Lapis", 30, 15, [], [], [-1], true);
var lapis = mods.immersiveengineering.Excavator.getMineral("Lapis");
lapis.addOre("oreGeolosysLapis", 0.50);

//Limonite
mods.immersiveengineering.Excavator.addMineral("Limonite", 30, 15, [], [], [-1], true);
var limonite = mods.immersiveengineering.Excavator.getMineral("Limonite");
limonite.addOre("oreGeolosysLimonite", 0.50);

//Malachite
mods.immersiveengineering.Excavator.addMineral("Malachite", 30, 15, [], [], [-1], true);
var malachite = mods.immersiveengineering.Excavator.getMineral("Malachite");
malachite.addOre("oreGeolosysMalachite", 0.50);

//Platinum
mods.immersiveengineering.Excavator.addMineral("Platinum", 30, 15, [], [], [-1], true);
var platinum = mods.immersiveengineering.Excavator.getMineral("Platinum");
platinum.addOre("oreGeolosysPlatinum", 0.50);

//Teallite
mods.immersiveengineering.Excavator.addMineral("Teallite", 30, 15, [], [], [-1], true);
var teallite = mods.immersiveengineering.Excavator.getMineral("Teallite");
teallite.addOre("oreGeolosysTeallite", 0.50);
