#loader contenttweaker

/*
	SevTech: Ages ContentTweaker Large Scale Script.

	This script is intended for large scale registration.

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
	// ==================================
	// Add default parts for materials
	var materailsForDefaultParts as Material[] = [
		materials.bronze,
		materials.cobalt,
		materials.compressedIron,
		materials.copper,
		materials.enhancedGalgadorian,
		materials.fiery,
		materials.galgadorian,
		materials.lead,
		materials.modularium,
		materials.reinforcedMetal,
		materials.silver,
		materials.steeleaf,
		materials.tin
	];

	var defaultPartNames as string[] = [
		"gear",
		"plate",
		"rod"
	];

	for i, metal in materailsForDefaultParts {
		metal.registerParts(defaultPartNames);
	}

	// ==================================
	// Apply Molten to Materials
	var fluidMaterials as Material[] = [
		materials.enhancedGalgadorian,
		materials.galgadorian,
		materials.invar,
		materials.modularium,
		materials.osmium,
		materials.platinum,
		materials.redstoneAlloy,
		materials.reinforcedMetal,
		materials.steeleaf
	];

	for i, fluid in fluidMaterials {
		var fluidMaterialsData as MaterialPartData = fluid.registerPart("molten").getData();
		addDefaultMoltenData(fluidMaterialsData);
	}

	// ==================================
	// Custom gears to keep the same look
	var gearMaterialList as Material[] = [
		materials.diamond,
		materials.gold,
		materials.iron,
		materials.steel
	];

	for material in gearMaterialList {
		material.registerPart("gear");
	}

	// ==================================
	// Ore Samples
	var oreSampleMaterials as Material[] = [
		materials.osmium,
		materials.silicon
	];

	var oreSampleDrops as string[Material] = {
		materials.osmium: "geolosys:cluster:12",
		materials.silicon: "galacticraftcore:basic_item:2"
	};

	for material in oreSampleMaterials {
		var sampleData as MaterialPartData = material.registerPart("ore_sample").getData();
		sampleData.addDataValue("drops", oreSampleDrops[material]);
	}

	// ==================================
	// Clusters
	var clusters as Material[] = [
		materials.titanium
	];

	for material in clusters {
		material.registerPart("cluster");
	}

	// ==================================
	// Dust
	var dusts as Material[] = [
		materials.ardite,
		materials.cobalt
	];

	for material in dusts {
		material.registerPart("dust");
	}
}
