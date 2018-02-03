import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

/*
	Stop Chisel Blocks from becoming the
	chosen block for mods when processing
*/
//<chiselBlock> : <oreDict>
var oreDictChiselPairs as IOreDictEntry[IItemStack] = {
	<chisel:blockaluminum> : <ore:blockAluminum>,
	<chisel:blockbronze> : <ore:blockBronze>,
	<chisel:blockcobalt> : <ore:blockCobalt>,
	<chisel:blockcopper> : <ore:blockCopper>,
	<chisel:diamond> : <ore:blockDiamond>,
	<chisel:blockelectrum> : <ore:blockElectrum>,
	<chisel:emerald> : <ore:blockEmerald>,
	<chisel:gold> : <ore:blockGold>,
	<chisel:iron> : <ore:blockIron>,
	<chisel:lapis> : <ore:blockLapis>,
	<chisel:blocklead> : <ore:blockLead>,
	<chisel:blocknickel> : <ore:blockNickel>,
	<chisel:blockplatinum> : <ore:blockPlatinum>,
	<chisel:redstone> : <ore:blockRedstone>,
	<chisel:redstone1> : <ore:blockRedstone>,
	<chisel:blocksilver> : <ore:blockSilver>,
	<chisel:blocksteel> : <ore:blockSteel>,
	<chisel:blocktin> : <ore:blockTin>
};

//<chiselBlock> : count
//count = how many blocks there are
var oreDictChiselPairCounts as int[IItemStack] = {
	<chisel:blockaluminum> : 7,
	<chisel:blockbronze> : 7,
	<chisel:blockcobalt> : 7,
	<chisel:blockcopper> : 7,
	<chisel:diamond> : 12,
	<chisel:blockelectrum> : 7,
	<chisel:emerald> : 14,
	<chisel:gold> : 15,
	<chisel:iron> : 15,
	<chisel:lapis> : 9,
	<chisel:blocklead> : 7,
	<chisel:blocknickel> : 7,
	<chisel:blockplatinum> : 7,
	<chisel:redstone> : 16,
	<chisel:redstone1> : 12,
	<chisel:blocksilver> : 7,
	<chisel:blocksteel> : 7,
	<chisel:blocktin> : 7
};

for chiselBlock, oreDict in oreDictChiselPairs {
	//use chiselBlock to reference the count in the map
	var count = oreDictChiselPairCounts[chiselBlock];

	for i in 0 to count {
		var chiselBlockItem = chiselBlock.definition.makeStack(i);
		oreDict.remove(chiselBlockItem);
	}
}
