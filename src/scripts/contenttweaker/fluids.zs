#priority 1150
#loader contenttweaker

import mods.contenttweaker.Color;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.VanillaFactory;

var liquidSlime = VanillaFactory.createFluid("slime", Color.fromHex("3f5329"));
liquidSlime.vaporize = true;
liquidSlime.viscosity = 3000;
liquidSlime.register();
