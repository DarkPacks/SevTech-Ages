import crafttweaker.item.IItemStack;

//Remove dusts
var dusts as IItemStack[] = [
	<primal:zinc_dust>,
	<primal:wootz_dust>,
	<primal:vanadium_dust>,
	<primal:brass_dust>
];

for dust in dusts {
	Crusher.removeRecipe(dust);
}
