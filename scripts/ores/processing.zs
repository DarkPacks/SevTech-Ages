import crafttweaker.item.IItemStack;
import mods.immersiveengineering.Crusher;

/*
	Add crusher recipes

	Crusher.addRecipe(IItemStack output, IIngredient input, int energy, @Optional IItemStack secondaryOut, @Optional double secondaryChance);
*/

var defaultCrushingEnergy as int = 6000;

var geolosysChunks as IItemStack[string] = {
	aluminum: <geolosys:cluster:6>,
	copper: <geolosys:cluster:2>,
	gold: <geolosys:cluster:1>,
	iron: <geolosys:cluster>,
	lead: <geolosys:cluster:5>,
	nickel: <geolosys:cluster:7>,
	osmium: <geolosys:cluster:12>,
	platinum: <geolosys:cluster:8>,
	silver: <geolosys:cluster:4>,
	tin: <geolosys:cluster:3>,
	uranium: <geolosys:cluster:9>
};

//Crusher.addRecipe(<actuallyadditions:item_misc:5>, <ore:oreQuartzBlack>, defaultCrushingEnergy);
//Crusher.addRecipe(<minecraft:quartz>, <ore:oreQuartz>, defaultCrushingEnergy, <immersiveengineering:material:25>, 15);
Crusher.addRecipe(<appliedenergistics2:material> * 3, <ore:oreBasicCertusQuartz>, defaultCrushingEnergy);
Crusher.addRecipe(<appliedenergistics2:material:1> * 3, <ore:oreChargedCertusQuartz>, defaultCrushingEnergy);

//Chunks / Ore outputs
Crusher.addRecipe(geolosysChunks.uranium * 1, <ore:oreGeolosysAutunite>, defaultCrushingEnergy);
Crusher.addRecipe(geolosysChunks.copper * 1, <ore:oreGeolosysAzurite>, defaultCrushingEnergy);
Crusher.addRecipe(geolosysChunks.aluminum * 1, <ore:oreGeolosysBauxite>, defaultCrushingEnergy);
Crusher.addRecipe(geolosysChunks.tin * 1, <ore:oreGeolosysCassiterite>, defaultCrushingEnergy);
Crusher.addRecipe(<minecraft:redstone_ore> * 1, <ore:oreGeolosysCinnabar>, defaultCrushingEnergy);
Crusher.addRecipe(<minecraft:coal_ore> * 1, <ore:oreGeolosysCoal>, defaultCrushingEnergy);
Crusher.addRecipe(geolosysChunks.silver * 1, <ore:oreGeolosysGalena>, defaultCrushingEnergy, geolosysChunks.lead, 0.50);
Crusher.addRecipe(geolosysChunks.gold * 1, <ore:oreGeolosysGold>, defaultCrushingEnergy);
Crusher.addRecipe(geolosysChunks.iron * 1, <ore:oreGeolosysHematite>, defaultCrushingEnergy);
Crusher.addRecipe(<minecraft:lapis_ore> * 1, <ore:oreGeolosysLapis>, defaultCrushingEnergy);
Crusher.addRecipe(geolosysChunks.iron * 1, <ore:oreGeolosysLimonite>, defaultCrushingEnergy, geolosysChunks.nickel, 0.50);
Crusher.addRecipe(geolosysChunks.copper * 1, <ore:oreGeolosysMalachite>, defaultCrushingEnergy);
Crusher.addRecipe(geolosysChunks.platinum * 1, <ore:oreGeolosysPlatinum>, defaultCrushingEnergy, geolosysChunks.osmium, 0.50);
Crusher.addRecipe(geolosysChunks.tin * 1, <ore:oreGeolosysTeallite>, defaultCrushingEnergy);
