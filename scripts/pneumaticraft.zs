import mods.pneumaticcraft.thermopneumaticprocessingplant as ThermopneumaticProcessingPlant;
import mods.pneumaticcraft.refinery as Refinery;
import mods.pneumaticcraft.liquidfuel as LiquidFuel;

ThermopneumaticProcessingPlant.removeAllRecipes();

Refinery.removeAllRecipes();

//Replace PneumaticCraft gasoline with Immersive Petroleum gasoline
LiquidFuel.removeFuel(<liquid:fuel>);
LiquidFuel.addFuel(<liquid:gasoline>, 1500);
