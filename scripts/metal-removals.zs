import crafttweaker.item.IItemStack;

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
	mods.immersiveengineering.ArcFurnace.removeRecipe(ingot);
}
