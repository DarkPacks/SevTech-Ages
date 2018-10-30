#loader contenttweaker

/*
	SevTech: Ages ContentTweaker Misc Script.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import mods.contenttweaker.Material;
import mods.contenttweaker.MaterialPartData;

import scripts.contenttweaker.materials.utils.addDefaultMoltenData;
import scripts.contenttweaker.materials.utils.addDefaultOreData;
import scripts.contenttweaker.materials.init.materials;

function init() {
	// Stone Nugget
	materials.stone.registerPart("nugget");

	// Aquamarine Ore
	var oreAquamarineData = materials.aquamarine.registerPart("ore").getData();
	addDefaultOreData(oreAquamarineData);
	oreAquamarineData.addDataValue("drops", "astralsorcery:itemcraftingcomponent");
	oreAquamarineData.addDataValue("harvestLevel", "1");

	// Osmium Ore
	// Use this over Mekanism's so we can give it the default behavior of Geolosys
	var oreOsmiumData = materials.osmium.registerPart("ore").getData();
	addDefaultOreData(oreOsmiumData);
	oreOsmiumData.addDataValue("drops", "geolosys:cluster:12");

	// Moon Iron Ore
	var oreIronData = materials.iron.registerPart("ore").getData();
	addDefaultOreData(oreIronData);
	oreIronData.addDataValue("variants", "galacticraftcore:bottom");
	oreIronData.addDataValue("drops", "geolosys:cluster");

	// Mars Gold Ore
	var oreGoldData = materials.gold.registerPart("ore").getData();
	addDefaultOreData(oreGoldData);
	oreGoldData.addDataValue("variants", "galacticraftplanets:bottom");
	oreGoldData.addDataValue("drops", "geolosys:cluster:1");

	// Kelper 22b Inferium Ore
	var oreInferiumData = materials.inferium.registerPart("ore").getData();
	addDefaultOreData(oreInferiumData);
	oreInferiumData.addDataValue("variants", "extraplanets:kepler22b_stone");
	oreInferiumData.addDataValue("drops", "mysticalagriculture:crafting");

	// Kelper 22b Prosperity Ore
	var oreProsperityData = materials.prosperity.registerPart("ore").getData();
	addDefaultOreData(oreProsperityData);
	oreProsperityData.addDataValue("variants", "extraplanets:kepler22b_stone");
	oreProsperityData.addDataValue("drops", "mysticalagriculture:crafting:5");

	// Liquid Ender Pearl
	var fluidEnderData = materials.ender.registerPart("molten").getData();
	addDefaultMoltenData(fluidEnderData);

	// Liquid Titanium
	var fluidTitaniumData = materials.titanium.registerPart("molten").getData();
	fluidTitaniumData.addDataValue("density", "8000");
	fluidTitaniumData.addDataValue("viscosity", "3000");
	fluidTitaniumData.addDataValue("temperature", "1000");
	fluidTitaniumData.addDataValue("vaporize", "false");

	// Liquid Redstone
	var fluidRedstoneData = materials.redstone.registerPart("molten").getData();
	fluidRedstoneData.addDataValue("density", "8000");
	fluidRedstoneData.addDataValue("viscosity", "3000");
	fluidRedstoneData.addDataValue("temperature", "1000");
	fluidRedstoneData.addDataValue("vaporize", "false");

	// Liquid Glowstone
	var fluidGlowstoneData = materials.glowstone.registerPart("molten").getData();
	fluidGlowstoneData.addDataValue("density", "8000");
	fluidGlowstoneData.addDataValue("viscosity", "3000");
	fluidGlowstoneData.addDataValue("temperature", "1000");
	fluidGlowstoneData.addDataValue("vaporize", "false");

	// Naphtha
	var fluidNaphthaData = materials.naphtha.registerPart("molten").getData();
	fluidNaphthaData.addDataValue("density", "4000");
	fluidNaphthaData.addDataValue("viscosity", "3000");

	// Liquid Plastic
	var fluidPlasticData = materials.plastic.registerPart("molten").getData();
	fluidPlasticData.addDataValue("density", "4000");
	fluidPlasticData.addDataValue("viscosity", "3000");

	// Propene "Gas"
	var fluidPropeneData = materials.propene.registerPart("molten").getData();
	fluidPropeneData.addDataValue("density", "4000");
	fluidPropeneData.addDataValue("viscosity", "3000");

	// Redstone Alloy
	var redstoneAlloyParts as string[] = [
		"block",
		"gear",
		"ingot",
		"plate",
		"rod"
	];
	materials.redstoneAlloy.registerParts(redstoneAlloyParts);

	// Platinum
	var platinumParts as string[] = [
		"block",
		"dust",
		"gear",
		"ingot",
		"plate",
		"rod"
	];
	materials.platinum.registerParts(platinumParts);

	// Invar
	var invarParts as string[] = [
		"block",
		"gear",
		"ingot",
		"plate",
		"rod"
	];
	materials.invar.registerParts(invarParts);

	// Space Platinum
	materials.spacePlatinum.registerPart("dust");

	// Meteoric Iron
	materials.meteoricIron.registerPart("dust");

	// NOTE! Reduction = Footwear, Leggins, Chestplate, Headslot

	// Copper Armor
	var copperArmor = materials.copper.registerPart("armor").getData();
	copperArmor.addDataValue("durability", "375");
	copperArmor.addDataValue("reduction", "1,3,4,1");
	copperArmor.addDataValue("toughness", "0");

	// Bronze Armor
	var bronzeArmor = materials.bronze.registerPart("armor").getData();
	bronzeArmor.addDataValue("durability", "450");
	bronzeArmor.addDataValue("reduction", "2,4,5,2");
	bronzeArmor.addDataValue("toughness", "0");
}
