#priority 1000
#loader contenttweaker
//////////
// Calls
//////////
import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.Material;

//////////////
// Variables
//////////////
var metal_list = [
	MaterialSystem.getMaterialBuilder().setName("Bronze").setColor(13467442).build(),
	MaterialSystem.getMaterialBuilder().setName("Cobalt").setColor(18347).build(),
	MaterialSystem.getMaterialBuilder().setName("Copper").setColor(15766817).build(),
	MaterialSystem.getMaterialBuilder().setName("Lead").setColor(5658219).build(),
	MaterialSystem.getMaterialBuilder().setName("Silver").setColor(15592941).build(),
	MaterialSystem.getMaterialBuilder().setName("Tin").setColor(10275286).build()
] as Material[];
var part_names = ["gear", "plate", "beam", "bolt", "rod"] as string[];
//var ore_types = ["ore", "poor_ore", "dense_ore"] as string[];

///////////////////////////
// Material registration
///////////////////////////

for i, metal in metal_list {
    metal.registerParts(part_names);

//    var ores = metal.registerParts(ore_types);
//    for i, ore in ores {
//        var oreData = ore.getData();
//        oreData.addDataValue("variants", "minecraft:stone,minecraft:end_stone,minecraft:netherrack");
//        oreData.addDataValue("hardness", "3,3,3");
//        oreData.addDataValue("resistance", "15,15,15");
//        oreData.addDataValue("harvestTool", "pickaxe,pickaxe,pickaxe");
//        oreData.addDataValue("harvestLevel", "1,1,1");
//    }
//
//   var blockData = metal.registerPart("block").getData();
//   blockData.addDataValue("hardness", "5");
//   blockData.addDataValue("resistance", "30");
//   blockData.addDataValue("harvestTool", "pickaxe");
//   blockData.addDataValue("harvestLevel", "1");
}

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

//Redstone Alloy
var redalloy = MaterialSystem.getMaterialBuilder().setName("Redstone Alloy").setColor(15157577).build();
var redparts = ["gear", "plate", "beam", "bolt", "rod", "ingot", "block"] as string[];
redalloy.registerParts(redparts);

//Platinum
var platinum = MaterialSystem.getMaterialBuilder().setName("Platinum").setColor(15066338).build();
var platParts = ["gear", "plate", "beam", "bolt", "rod", "ingot", "block"] as string[];
platinum.registerParts(platParts);

//Steeleaf
var steeleaf = MaterialSystem.getMaterialBuilder().setName("Steeleaf").setColor(4283598394).build();
var steelparts = ["gear", "plate", "beam", "bolt", "rod"] as string[];
steeleaf.registerParts(steelparts);

//Fiery
var fiery = MaterialSystem.getMaterialBuilder().setName("Fiery").setColor(2891807).setHasEffect(true).build();
var fieryparts = ["gear", "plate", "beam", "bolt", "rod"] as string[];
fiery.registerParts(fieryparts);

//Invar
var invar = MaterialSystem.getMaterialBuilder().setName("Invar").setColor(9872012).build();
var invarParts = ["gear", "plate", "beam", "bolt", "rod", "ingot", "block"] as string[];
invar.registerParts(invarParts);

//Modularium
var modularium = MaterialSystem.getMaterialBuilder().setName("Modularium").setColor(16730368).build();
var modulariumParts = ["gear", "plate", "beam", "bolt", "rod"] as string[];
modularium.registerParts(modulariumParts);

//Compressed Iron
var compressedIron = MaterialSystem.getMaterialBuilder().setName("Compressed Iron").setColor(8947848).build();
var compressedIronParts = ["gear", "plate", "beam", "bolt", "rod"] as string[];
compressedIron.registerParts(compressedIronParts);

//Fluids
var fluidMaterials = [steeleaf, fiery, platinum, redalloy, invar, modularium] as Material[];
for i, fluid in fluidMaterials {
   var fluidMaterialsData = fluid.registerPart("molten").getData();
   fluidMaterialsData.addDataValue("density", "4000");
   fluidMaterialsData.addDataValue("viscosity", "3000");
   fluidMaterialsData.addDataValue("temperature", "550");
   fluidMaterialsData.addDataValue("vaporize", "false");
}


/*
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;

var pulp = VanillaFactory.createItem("pulp");
zsItem.maxStackSize = 64;
zsItem.register();
*/
