#priority 1149
#loader contenttweaker

import mods.contenttweaker.Material;
import mods.contenttweaker.MaterialPartData;

import scripts.contenttweaker.base.addDefaultMoltenData;
import scripts.contenttweaker.base.addDefaultOreData;
import scripts.contenttweaker.base.materials;

/*
	Misc Part Registration
*/
//Stone Nugget
materials.stone.registerPart("nugget");

//Aquamarine Ore
var oreAquamarineData = materials.aquamarine.registerPart("ore").getData();
addDefaultOreData(oreAquamarineData);
oreAquamarineData.addDataValue("drops", "astralsorcery:itemcraftingcomponent");

//Osmium Ore
//Use this over Mekanism's so we can give it the default behavior of Geolosys
var oreOsmiumData = materials.osmium.registerPart("ore").getData();
addDefaultOreData(oreOsmiumData);
oreOsmiumData.addDataValue("drops", "geolosys:cluster:12");

//Liquid Ender Pearl
var fluidEnderData = materials.ender.registerPart("molten").getData();
addDefaultMoltenData(fluidEnderData);

//Liquid Redstone
var fluidRedstoneData = materials.redstone.registerPart("molten").getData();
fluidRedstoneData.addDataValue("density", "8000");
fluidRedstoneData.addDataValue("viscosity", "3000");
fluidRedstoneData.addDataValue("temperature", "1000");
fluidRedstoneData.addDataValue("vaporize", "false");

//Liquid Glowstone
var fluidGlowstoneData = materials.glowstone.registerPart("molten").getData();
fluidGlowstoneData.addDataValue("density", "8000");
fluidGlowstoneData.addDataValue("viscosity", "3000");
fluidGlowstoneData.addDataValue("temperature", "1000");
fluidGlowstoneData.addDataValue("vaporize", "false");

//Liquid Ostonium
var fluidOstoniumData = materials.ostonium.registerPart("molten").getData();
addDefaultMoltenData(fluidOstoniumData);

//Naphtha
var fluidNaphthaData = materials.naphtha.registerPart("molten").getData();
fluidNaphthaData.addDataValue("density", "4000");
fluidNaphthaData.addDataValue("viscosity", "3000");

//Liquid Plastic
var fluidPlasticData = materials.plastic.registerPart("molten").getData();
fluidPlasticData.addDataValue("density", "4000");
fluidPlasticData.addDataValue("viscosity", "3000");

//Propene "Gas"
var fluidPropeneData = materials.propene.registerPart("molten").getData();
fluidPropeneData.addDataValue("density", "4000");
fluidPropeneData.addDataValue("viscosity", "3000");

//Redstone Alloy
var redstoneAlloyParts as string[] = ["gear", "plate", "beam", "bolt", "rod", "ingot", "block"];
materials.redstoneAlloy.registerParts(redstoneAlloyParts);

//Platinum
var platinumParts as string[] = ["gear", "plate", "beam", "bolt", "rod", "ingot", "block"];
materials.platinum.registerParts(platinumParts);

//Invar
var invarParts as string[] = ["gear", "plate", "beam", "bolt", "rod", "ingot", "block"];
materials.invar.registerParts(invarParts);
