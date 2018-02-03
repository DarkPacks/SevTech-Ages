#priority 1149
#loader contenttweaker

import mods.contenttweaker.Material;
import mods.contenttweaker.MaterialPartData;

import scripts.contenttweaker.base.addDefaultMoltenData;
import scripts.contenttweaker.base.addDefaultOreData;
import scripts.contenttweaker.base.materials;

/*
	Large-scale registration
*/
//==================================
//Add default parts for materials
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
	"beam",
	"bolt",
	"gear",
	"plate",
	"rod"
];

for i, metal in materailsForDefaultParts {
	metal.registerParts(defaultPartNames);
}

//==================================
//Apply Molten to Materials
var fluidMaterials as Material[] = [
	materials.enhancedGalgadorian,
	materials.fiery,
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

//==================================
//Custom gears to keep the same look
var gearMaterialList as Material[] = [
	materials.diamond,
	materials.gold,
	materials.iron,
	materials.steel
];

for material in gearMaterialList {
	material.registerPart("gear");
}

//==================================
//Ore Samples
var oreSampleMaterials as Material[] = [
	materials.osmium,
	materials.silicon
];

for material in oreSampleMaterials {
	material.registerPart("ore_sample");
}
