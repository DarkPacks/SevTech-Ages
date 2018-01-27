import crafttweaker.item.IItemStack;

//TODO: Really need to do this properly.. probably just use unify script with null as the preferred on oredict

//Remove dusts
var dusts as IItemStack[] = [
	<primal:zinc_dust>,
	<primal:wootz_dust>,
	<primal:vanadium_dust>,
	<primal:brass_dust>
];

var ingots as IItemStack[] = [
	<primal:zinc_ingot>,
	<primal:wootz_ingot>,
	<primal:vanadium_ingot>,
	<primal:brass_ingot>
];

for dust in dusts {
	mods.immersiveengineering.Crusher.removeRecipe(dust);
}

for ingot in ingots {
	mods.immersiveengineering.AlloySmelter.removeRecipe(ingot);
	mods.immersiveengineering.ArcFurnace.removeRecipe(ingot);
}
