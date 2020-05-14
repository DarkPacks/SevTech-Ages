/*
	SevTech: Ages Immersive Engineering Excavator Script

	This script handles custom integration control to a mod.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import mods.immersiveengineering.Excavator;
import mods.immersiveengineering.MineralMix;

function init() {
	// Remove Minerals
	Excavator.removeMineral("Bauxite");
	Excavator.removeMineral("Cinnabar");
	Excavator.removeMineral("Coal");
	Excavator.removeMineral("Copper");
	Excavator.removeMineral("Galena");
	Excavator.removeMineral("Gold");
	Excavator.removeMineral("Iron");
	Excavator.removeMineral("Lapis");
	Excavator.removeMineral("Lead");
	Excavator.removeMineral("Magnetite");
	Excavator.removeMineral("Nickel");
	Excavator.removeMineral("Pyrite");
	Excavator.removeMineral("Quartzite");
	Excavator.removeMineral("Silver");
	Excavator.removeMineral("Uranium");

	// Black Quartzite
	Excavator.addMineral("Black Quartzite", 30, 0.15, [], [], [10], false);
	var blackQuartzite = Excavator.getMineral("Black Quartzite");
	blackQuartzite.addOre("gemQuartzBlack", 0.50);

	// Nether Quartzite
	Excavator.addMineral("Nether Quartzite", 30, 0.15, [], [], [-1], true);
	var netherQuartzite = Excavator.getMineral("Nether Quartzite");
	netherQuartzite.addOre("gemQuartz", 0.50);

	// Certus Quartzite
	Excavator.addMineral("Certus Quartzite", 30, 0.15, [], [], [-1], true);
	var certusQuartzite = Excavator.getMineral("Certus Quartzite");
	certusQuartzite.addOre("crystalCertusQuartz", 0.70);
	certusQuartzite.addOre("crystalCertusQuartzCharged", 0.30);

	// Autunite (Uranium)
	Excavator.addMineral("Autunite", 30, 0.15, [], [], [-1], true);
	var autunite = Excavator.getMineral("Autunite");
	autunite.addOre("oreClusterUranium", 0.50);

	// Azurite (Copper)
	Excavator.addMineral("Azurite", 30, 0.15, [], [], [-1], true);
	var azurite = Excavator.getMineral("Azurite");
	azurite.addOre("oreClusterCopper", 0.50);

	// Bauxite (Aluminum)
	Excavator.addMineral("Bauxite", 30, 0.15, [], [], [-1], true);
	var bauxite = Excavator.getMineral("Bauxite");
	bauxite.addOre("oreClusterAluminum", 0.50);

	// Beryl (Emerald)
	Excavator.addMineral("Beryl", 5, 0.45, [], [], [-1], true);
	var beryl = Excavator.getMineral("Beryl");
	beryl.addOre("gemEmerald", 0.50);

	// Cassiterite (Tin)
	Excavator.addMineral("Cassiterite", 30, 0.15, [], [], [-1], true);
	var cassiterite = Excavator.getMineral("Cassiterite");
	cassiterite.addOre("oreClusterTin", 0.50);

	// Cinnabar (Redstone)
	Excavator.addMineral("Cinnabar", 30, 0.15, [], [], [-1], true);
	var cinnabar = Excavator.getMineral("Cinnabar");
	cinnabar.addOre("dustRedstone", 0.50);

	// Coal
	Excavator.addMineral("Coal", 30, 0.15, [], [], [-1], true);
	var coal = Excavator.getMineral("Coal");
	coal.addOre("coal", 0.50);

	// Galena (Silver and Lead)
	Excavator.addMineral("Galena", 30, 0.15, [], [], [-1], true);
	var galena = Excavator.getMineral("Galena");
	galena.addOre("oreClusterSilver", 0.70);
	galena.addOre("oreClusterLead", 0.30);

	// Gold
	Excavator.addMineral("Gold", 30, 0.15, [], [], [-1], true);
	var gold = Excavator.getMineral("Gold");
	gold.addOre("oreClusterGold", 0.50);

	// Hematite (Iron)
	Excavator.addMineral("Hematite", 30, 0.15, [], [], [-1], true);
	var hematite = Excavator.getMineral("Hematite");
	hematite.addOre("oreClusterIron", 0.50);

	// Kimberlight (Diamond)
	Excavator.addMineral("Kimberlight", 5, 0.45, [], [], [-1], true);
	var kimberlight = Excavator.getMineral("Kimberlight");
	kimberlight.addOre("gemDiamond", 0.50);

	// Lapis
	Excavator.addMineral("Lapis", 30, 0.15, [], [], [-1], true);
	var lapis = Excavator.getMineral("Lapis");
	lapis.addOre("gemLapis", 0.50);

	// Limonite (Iron and Nickel)
	Excavator.addMineral("Limonite", 30, 0.15, [], [], [-1], true);
	var limonite = Excavator.getMineral("Limonite");
	limonite.addOre("oreClusterIron", 0.70);
	limonite.addOre("oreClusterNickel", 0.30);

	// Malachite (Copper)
	Excavator.addMineral("Malachite", 30, 0.15, [], [], [-1], true);
	var malachite = Excavator.getMineral("Malachite");
	malachite.addOre("oreClusterCopper", 0.50);

	// Platinum
	Excavator.addMineral("Platinum", 30, 0.15, [], [], [-1], true);
	var platinum = Excavator.getMineral("Platinum");
	platinum.addOre("oreClusterPlatinum", 0.50);

	// Osmium
	Excavator.addMineral("Osmium", 30, 0.15, [], [], [-1], true);
	var osmium = Excavator.getMineral("Osmium");
	osmium.addOre("oreClusterOsmium", 0.50);

	// Teallite (Tin)
	Excavator.addMineral("Teallite", 30, 0.15, [], [], [-1], true);
	var teallite = Excavator.getMineral("Teallite");
	teallite.addOre("oreClusterTin", 0.50);
}
