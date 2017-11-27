#loader contenttweaker
//////////
// Calls
//////////
import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.Material;

//////////////
// Variables
//////////////
var copper = MaterialSystem.getMaterialBuilder().setName("Copper").setColor(15766817).build();
var tin = MaterialSystem.getMaterialBuilder().setName("Tin").setColor(10275286).build();
var silver = MaterialSystem.getMaterialBuilder().setName("Silver").setColor(15592941).build();
var lead = MaterialSystem.getMaterialBuilder().setName("Lead").setColor(5658219).build();
var cobalt = MaterialSystem.getMaterialBuilder().setName("Cobalt").setColor(18347).build();
var bronze = MaterialSystem.getMaterialBuilder().setName("Bronze").setColor(13467442).build();

var metal_list = [copper, tin, silver, lead, cobalt, bronze] as Material[];
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

//Liquid Invar
var ostonium = MaterialSystem.getMaterialBuilder().setName("Ostonium").setColor(9410979).build();
var ostoniumFluid = ostonium.registerPart("molten");
var fluidOstoniumData = ostoniumFluid.getData();
fluidOstoniumData.addDataValue("density", "20000");
fluidOstoniumData.addDataValue("viscosity", "16000");
fluidOstoniumData.addDataValue("luminosity", "15");
fluidOstoniumData.addDataValue("temperature", "1000");
fluidOstoniumData.addDataValue("vaporize", "false");

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

//Fluids
var fluidMaterials = [steeleaf, fiery, platinum, redalloy] as Material[];
for i, fluid in fluidMaterials {
   var fluidMaterialsData = fluid.registerPart("molten").getData();
   fluidMaterialsData.addDataValue("density", "4000");
   fluidMaterialsData.addDataValue("viscosity", "3000");
   fluidMaterialsData.addDataValue("temperature", "550");
   fluidMaterialsData.addDataValue("vaporize", "false");
}



/*
//Invar
var platinum = MaterialSystem.getMaterialBuilder().setName("Platinum").setColor(15066338).build();
var platParts = ["gear", "plate", "beam", "bolt", "rod", "ingot", "block"] as string[];
platinum.registerParts(platParts);
*/


/*
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;

var pulp = VanillaFactory.createItem("pulp");
zsItem.maxStackSize = 64;
zsItem.register();
*/