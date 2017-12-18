#priority 1000
#loader contenttweaker

import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.Material;

var metal_list = [
	MaterialSystem.getMaterialBuilder().setName("Bronze").setColor(13467442).build(),
	MaterialSystem.getMaterialBuilder().setName("Cobalt").setColor(18347).build(),
	MaterialSystem.getMaterialBuilder().setName("Copper").setColor(15766817).build(),
	MaterialSystem.getMaterialBuilder().setName("Lead").setColor(5658219).build(),
	MaterialSystem.getMaterialBuilder().setName("Silver").setColor(15592941).build(),
	MaterialSystem.getMaterialBuilder().setName("Tin").setColor(10275286).build(),
	MaterialSystem.getMaterialBuilder().setName("Compressed Iron").setColor(8947848).build()
] as Material[];
var part_names = ["gear", "plate", "beam", "bolt", "rod"] as string[];

for i, metal in metal_list {
    metal.registerParts(part_names);
}

/*
	Misc Part Registration
*/

//Aquamarine Ore
var aquamarine = MaterialSystem.getMaterialBuilder().setName("Aquamarine").setColor(2009855).build();
var aquamarineOre = aquamarine.registerPart("ore");
var oreAMData = aquamarineOre.getData();
oreAMData.addDataValue("variants", "minecraft:stone");
oreAMData.addDataValue("hardness", "5");
oreAMData.addDataValue("resistance", "15");
oreAMData.addDataValue("harvestTool", "pickaxe");
oreAMData.addDataValue("harvestLevel", "2");
oreAMData.addDataValue("drops", "astralsorcery:itemcraftingcomponent");

//Liquid Ender Pearl
var ender = MaterialSystem.getMaterialBuilder().setName("Ender Pearl").setColor(2869678).build();
var enderFluid = ender.registerPart("molten");
var fluidEnderData = enderFluid.getData();
fluidEnderData.addDataValue("density", "4000");
fluidEnderData.addDataValue("viscosity", "3000");
fluidEnderData.addDataValue("temperature", "550");
fluidEnderData.addDataValue("vaporize", "false");

//Liquid Redstone
var redstone = MaterialSystem.getMaterialBuilder().setName("Redstone").setColor(9895936).build();
var redstoneFluid = redstone.registerPart("molten");
var fluidRedstoneData = redstoneFluid.getData();
fluidRedstoneData.addDataValue("density", "8000");
fluidRedstoneData.addDataValue("viscosity", "3000");
fluidRedstoneData.addDataValue("temperature", "1000");
fluidRedstoneData.addDataValue("vaporize", "false");

//Liquid Glowstone
var glowstone = MaterialSystem.getMaterialBuilder().setName("Glowstone").setColor(16708616).build();
var fluidGlowstoneData = glowstone.registerPart("molten").getData();
fluidGlowstoneData.addDataValue("density", "8000");
fluidGlowstoneData.addDataValue("viscosity", "3000");
fluidGlowstoneData.addDataValue("temperature", "1000");
fluidGlowstoneData.addDataValue("vaporize", "false");

//Liquid Ostonium
var ostonium = MaterialSystem.getMaterialBuilder().setName("Ostonium").setColor(9410979).build();
var fluidOstoniumData = ostonium.registerPart("molten").getData();
fluidOstoniumData.addDataValue("density", "4000");
fluidOstoniumData.addDataValue("viscosity", "3000");
fluidOstoniumData.addDataValue("temperature", "550");
fluidOstoniumData.addDataValue("vaporize", "false");

//Naphtha
var naphtha = MaterialSystem.getMaterialBuilder().setName("Naphtha").setColor(10703708).build();
var fluidNaphthaData = naphtha.registerPart("molten").getData();
fluidNaphthaData.addDataValue("density", "4000");
fluidNaphthaData.addDataValue("viscosity", "3000");

//Liquid Plastic
var plastic = MaterialSystem.getMaterialBuilder().setName("Plastic").setColor(16777215).build();
var fluidPlasticData = plastic.registerPart("molten").getData();
fluidPlasticData.addDataValue("density", "4000");
fluidPlasticData.addDataValue("viscosity", "3000");

//Propene "Gas"
var propene = MaterialSystem.getMaterialBuilder().setName("Propene").setColor(8026746).build();
var fluidPropeneData = propene.registerPart("molten").getData();
fluidPropeneData.addDataValue("density", "4000");
fluidPropeneData.addDataValue("viscosity", "3000");

/*
	Materials to add with default molten values
*/
//Redstone Alloy
var redalloy = MaterialSystem.getMaterialBuilder().setName("Redstone Alloy").setColor(15157577).build();
var redParts = ["gear", "plate", "beam", "bolt", "rod", "ingot", "block"] as string[];
redalloy.registerParts(redParts);

//Platinum
var platinum = MaterialSystem.getMaterialBuilder().setName("Platinum").setColor(15066338).build();
var platParts = ["gear", "plate", "beam", "bolt", "rod", "ingot", "block"] as string[];
platinum.registerParts(platParts);

//Steeleaf
var steeleaf = MaterialSystem.getMaterialBuilder().setName("Steeleaf").setColor(4283598394).build();
var steelParts = ["gear", "plate", "beam", "bolt", "rod"] as string[];
steeleaf.registerParts(steelParts);

//Fiery
var fiery = MaterialSystem.getMaterialBuilder().setName("Fiery").setColor(2891807).setHasEffect(true).build();
var fieryParts = ["gear", "plate", "beam", "bolt", "rod"] as string[];
fiery.registerParts(fieryParts);

//Invar
var invar = MaterialSystem.getMaterialBuilder().setName("Invar").setColor(9872012).build();
var invarParts = ["gear", "plate", "beam", "bolt", "rod", "ingot", "block"] as string[];
invar.registerParts(invarParts);

//Modularium
var modularium = MaterialSystem.getMaterialBuilder().setName("Modularium").setColor(16730368).build();
var modulariumParts = ["gear", "plate", "beam", "bolt", "rod"] as string[];
modularium.registerParts(modulariumParts);

//Galgadorian
var galgadorian = MaterialSystem.getMaterialBuilder().setName("Galgadorian").setColor(11625595).build();
var galgadorianParts = ["gear", "plate", "beam", "bolt", "rod"] as string[];
galgadorian.registerParts(galgadorianParts);

//Enhanced Galgadorian
var galgadorianEnhanced = MaterialSystem.getMaterialBuilder().setName("Enhanced Galgadorian").setColor(9850751).build();
var galgadorianEnhancedParts = ["gear", "plate", "beam", "bolt", "rod"] as string[];
galgadorianEnhanced.registerParts(galgadorianEnhancedParts);

//Reinforced Metal
var reinforcedMetal = MaterialSystem.getMaterialBuilder().setName("Reinforced Metal").setColor(7643841).build();
var reinforcedMetalParts = ["gear", "plate", "beam", "bolt", "rod"] as string[];
reinforcedMetal.registerParts(reinforcedMetalParts);

//--------------------------
//Apply Molten to Materials
var fluidMaterials = [steeleaf, fiery, platinum, redalloy, invar, modularium, galgadorian, galgadorianEnhanced, reinforcedMetal] as Material[];
for i, fluid in fluidMaterials {
   var fluidMaterialsData = fluid.registerPart("molten").getData();
   fluidMaterialsData.addDataValue("density", "4000");
   fluidMaterialsData.addDataValue("viscosity", "3000");
   fluidMaterialsData.addDataValue("temperature", "550");
   fluidMaterialsData.addDataValue("vaporize", "false");
}

/*
	Custom gears to keep the same look
*/
var gearMaterialList = [
	MaterialSystem.getMaterialBuilder().setName("Iron").setColor(14211288).build(),
	MaterialSystem.getMaterialBuilder().setName("Gold").setColor(16776971).build(),
	MaterialSystem.getMaterialBuilder().setName("Diamond").setColor(9237730).build(),
	MaterialSystem.getMaterialBuilder().setName("Steel").setColor(4408907).build()
] as Material[];

for material in gearMaterialList {
    material.registerPart("gear");
}
