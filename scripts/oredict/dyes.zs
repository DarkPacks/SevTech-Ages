#priority 1050

import crafttweaker.item.IItemStack;

/*
	Remove oredicts on dyes
*/
for i in 0 to 16 {
	var artificialDye as IItemStack = <industrialforegoing:artificial_dye>.definition.makeStack(i);

	for oreDictEntry in artificialDye.ores {
		oreDictEntry.remove(artificialDye);
	}
}

// This item does everything apparently..
<ore:dyeBlack>.remove(<primal:sinuous_resin>);
