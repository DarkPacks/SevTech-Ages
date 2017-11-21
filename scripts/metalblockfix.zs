//Stop Chisel Blocks from becoming the 
//chosen block for mods when processing

import crafttweaker.item.IItemStack;

//[oreDict, chiselBlock, count]
var oreDictChiselPairs = [
	[<ore:blockAluminum>, <chisel:blockaluminum>, 7],
	[<ore:blockBronze>, <chisel:blockbronze>, 7],
	[<ore:blockCobalt>, <chisel:blockcobalt>, 7],
	[<ore:blockCopper>, <chisel:blockcopper>, 7],
	[<ore:blockDiamond>, <chisel:diamond>, 12],
	[<ore:blockElectrum>, <chisel:blockelectrum>, 7],
	[<ore:blockEmerald>, <chisel:emerald>, 14],
	[<ore:blockGold>, <chisel:gold>, 15],
	[<ore:blockIron>, <chisel:iron>, 15],
	[<ore:blockLapis>, <chisel:lapis>, 9],
	[<ore:blockLead>, <chisel:blocklead>, 7],
	[<ore:blockNickel>, <chisel:blocknickel>, 7],
	[<ore:blockPlatinum>, <chisel:blockplatinum>, 7],
	[<ore:blockRedstone>, <chisel:redstone>, 16],
	[<ore:blockRedstone>, <chisel:redstone1>, 12],
	[<ore:blockSilver>, <chisel:blocksilver>, 7],
	[<ore:blockSteel>, <chisel:blocksteel>, 7],
	[<ore:blockTin>, <chisel:blocktin>, 7]

]

for pair in oreDictChiselPairs {
	//pair[2] = count
	for i in 0 to pair[2] {
		//If 0 use the chiselBlock, otherwise add the metadata
		var chiselBlock = i == 0 ? pair[1] : pair[1].definition.makeStack(pair[2]);
		pair[0].remove(chiselBlock);
	}
}
