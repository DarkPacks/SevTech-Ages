#priority 1150
#loader contenttweaker

import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.Material;

var materials as Material[string] = {
	"aquamarine": MaterialSystem.getMaterialBuilder().setName("Aquamarine").setColor(2009855).build(),
	"bronze": MaterialSystem.getMaterialBuilder().setName("Bronze").setColor(13467442).build(),
	"cobalt": MaterialSystem.getMaterialBuilder().setName("Cobalt").setColor(18347).build(),
	"compressedIron": MaterialSystem.getMaterialBuilder().setName("Compressed Iron").setColor(8947848).build(),
	"copper": MaterialSystem.getMaterialBuilder().setName("Copper").setColor(15766817).build(),
	"diamond": MaterialSystem.getMaterialBuilder().setName("Diamond").setColor(9237730).build(),
	"ender": MaterialSystem.getMaterialBuilder().setName("Ender Pearl").setColor(2869678).build(),
	"enhancedGalgadorian": MaterialSystem.getMaterialBuilder().setName("Enhanced Galgadorian").setColor(9850751).build(),
	"fiery": MaterialSystem.getMaterialBuilder().setName("Fiery").setColor(2891807).setHasEffect(true).build(),
	"galgadorian": MaterialSystem.getMaterialBuilder().setName("Galgadorian").setColor(11625595).build(),
	"glowstone": MaterialSystem.getMaterialBuilder().setName("Glowstone").setColor(16708616).build(),
	"gold": MaterialSystem.getMaterialBuilder().setName("Gold").setColor(16776971).build(),
	"invar": MaterialSystem.getMaterialBuilder().setName("Invar").setColor(9872012).build(),
	"iron": MaterialSystem.getMaterialBuilder().setName("Iron").setColor(14211288).build(),
	"lead": MaterialSystem.getMaterialBuilder().setName("Lead").setColor(5658219).build(),
	"modularium": MaterialSystem.getMaterialBuilder().setName("Modularium").setColor(16730368).build(),
	"naphtha": MaterialSystem.getMaterialBuilder().setName("Naphtha").setColor(10703708).build(),
	"ostonium": MaterialSystem.getMaterialBuilder().setName("Ostonium").setColor(9410979).build(),
	"plastic": MaterialSystem.getMaterialBuilder().setName("Plastic").setColor(16777215).build(),
	"platinum": MaterialSystem.getMaterialBuilder().setName("Platinum").setColor(15066338).build(),
	"propene": MaterialSystem.getMaterialBuilder().setName("Propene").setColor(8026746).build(),
	"redstone": MaterialSystem.getMaterialBuilder().setName("Redstone").setColor(9895936).build(),
	"redstoneAlloy": MaterialSystem.getMaterialBuilder().setName("Redstone Alloy").setColor(15157577).build(),
	"reinforcedMetal": MaterialSystem.getMaterialBuilder().setName("Reinforced Metal").setColor(7643841).build(),
	"silver": MaterialSystem.getMaterialBuilder().setName("Silver").setColor(15592941).build(),
	"steel": MaterialSystem.getMaterialBuilder().setName("Steel").setColor(4408907).build(),
	"steeleaf": MaterialSystem.getMaterialBuilder().setName("Steeleaf").setColor(4283598394).build(),
	"stone": MaterialSystem.getMaterialBuilder().setName("Stone").setColor(11117475).build(),
	"tin": MaterialSystem.getMaterialBuilder().setName("Tin").setColor(10275286).build()
};

/*
	Misc Part Registration
*/
//Stone Nugget
materials.stone.registerPart("nugget");

//Aquamarine Ore
var oreAquamarineData = materials.aquamarine.registerPart("ore").getData();
oreAquamarineData.addDataValue("variants", "minecraft:stone");
oreAquamarineData.addDataValue("hardness", "5");
oreAquamarineData.addDataValue("resistance", "15");
oreAquamarineData.addDataValue("harvestTool", "pickaxe");
oreAquamarineData.addDataValue("harvestLevel", "2");
oreAquamarineData.addDataValue("drops", "astralsorcery:itemcraftingcomponent");

//Liquid Ender Pearl
var fluidEnderData = materials.ender.registerPart("molten").getData();
fluidEnderData.addDataValue("density", "4000");
fluidEnderData.addDataValue("viscosity", "3000");
fluidEnderData.addDataValue("temperature", "550");
fluidEnderData.addDataValue("vaporize", "false");

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
fluidOstoniumData.addDataValue("density", "4000");
fluidOstoniumData.addDataValue("viscosity", "3000");
fluidOstoniumData.addDataValue("temperature", "550");
fluidOstoniumData.addDataValue("vaporize", "false");

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
	materials.platinum,
	materials.redstoneAlloy,
	materials.reinforcedMetal,
	materials.steeleaf
];

for i, fluid in fluidMaterials {
   var fluidMaterialsData = fluid.registerPart("molten").getData();
   fluidMaterialsData.addDataValue("density", "4000");
   fluidMaterialsData.addDataValue("viscosity", "3000");
   fluidMaterialsData.addDataValue("temperature", "550");
   fluidMaterialsData.addDataValue("vaporize", "false");
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
