import crafttweaker.liquid.ILiquidStack;

import scripts.utils.capitalize;

var partsToRemove as string[] = [
	"block",
	"dust",
	"ingot",
	"nugget",
	"plate"
];

var metalsToRemove as ILiquidStack[string] = {
	brass: <liquid:brass>,
	pigIron: null,
	vanadium: null,
	wootz: null
};

for metalName, metalLiquid in metalsToRemove {
	//Hide liquid
	if (metalLiquid as bool) {
		mods.jei.JEI.hide(metalLiquid);
	}

	for partName in partsToRemove {
		scripts.unify.base.unifyWithPreferredItem(oreDict.get(partName ~ capitalize(metalName)), null, metalLiquid);
	}
}
