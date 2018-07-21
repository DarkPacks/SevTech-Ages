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
	<chisel:blockaluminum:0>: <ore:blockAluminum>,
	<chisel:blockbronze:0>: <ore:blockBronze>,
	<chisel:blockcobalt:0>: <ore:blockCobalt>,
	<chisel:blockcopper:0>: <ore:blockCopper>,
	<chisel:diamond:0>: <ore:blockDiamond>,
	<chisel:blockelectrum:0>: <ore:blockElectrum>,
	<chisel:emerald:0>: <ore:blockEmerald>,
	<chisel:gold:0>: <ore:blockGold>,
	<chisel:iron:0>: <ore:blockIron>,
	<chisel:lapis:0>: <ore:blockLapis>,
	<chisel:blocklead:0>: <ore:blockLead>,
	<chisel:blocknickel:0>: <ore:blockNickel>,
	<chisel:blockplatinum:0>: <ore:blockPlatinum>,
	<chisel:redstone:0>: <ore:blockRedstone>,
	<chisel:redstone1:0>: <ore:blockRedstone>,
	<chisel:blocksilver:0>: <ore:blockSilver>,
	<chisel:blocksteel:0>: <ore:blockSteel>,
	<chisel:blocktin:0>: <ore:blockTin>
};

for chiselBlock, oreDict in oreDictChiselPairs {
	for chiselBlockSubItem in chiselBlock.definition.subItems {
		oreDict.remove(chiselBlockSubItem);
	}
}
