#loader contenttweaker

/*
	SevTech: Ages ContentTweaker Fluids Script.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import mods.contenttweaker.Color;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.VanillaFactory;

var liquidSlime = VanillaFactory.createFluid("slime", Color.fromHex("3f5329"));
liquidSlime.vaporize = true;
liquidSlime.viscosity = 3000;
liquidSlime.register();

var liquidCheese = VanillaFactory.createFluid("cheese", Color.fromHex("FFE000"));
liquidCheese.density = 6000;
liquidCheese.viscosity = 1000;
liquidCheese.register();