#priority 2600

/*
	SevTech: Ages OreDict Mod Script.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

// Usage: <chiselBlock>: <oreDict>
var oreDictChiselPairs as IOreDictEntry[IItemStack] = {
	<chisel:blockaluminum>: <ore:blockAluminum>,
	<chisel:blockbronze>: <ore:blockBronze>,
	<chisel:blockcobalt>: <ore:blockCobalt>,
	<chisel:blockcopper>: <ore:blockCopper>,
	<chisel:diamond>: <ore:blockDiamond>,
	<chisel:blockelectrum>: <ore:blockElectrum>,
	<chisel:emerald>: <ore:blockEmerald>,
	<chisel:gold>: <ore:blockGold>,
	<chisel:iron>: <ore:blockIron>,
	<chisel:lapis>: <ore:blockLapis>,
	<chisel:blocklead>: <ore:blockLead>,
	<chisel:blocknickel>: <ore:blockNickel>,
	<chisel:blockplatinum>: <ore:blockPlatinum>,
	<chisel:redstone>: <ore:blockRedstone>,
	<chisel:redstone1>: <ore:blockRedstone>,
	<chisel:blocksilver>: <ore:blockSilver>,
	<chisel:blocksteel>: <ore:blockSteel>,
	<chisel:blocktin>: <ore:blockTin>
};

for chiselBlock, oreDict in oreDictChiselPairs {
	for chiselBlockSubItem in chiselBlock.definition.subItems {
		oreDict.remove(chiselBlockSubItem);
	}
}
