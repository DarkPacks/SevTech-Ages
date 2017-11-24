import crafttweaker.item.IItemStack;

var hardnessItems = {
	<geolosys:ore> : "6",
	<geolosys:ore:1> : "6",
	<geolosys:ore:2> : "4",
	<geolosys:ore:3> : "4",
	<geolosys:ore:4> : "3.5",
	<geolosys:ore:5> : "3.5",
	<geolosys:ore:6> : "3.5",
	<geolosys:ore:7> : "4",
	<geolosys:ore:8> : "6",
	<geolosys:ore:9> : "6",
	<geolosys:ore_vanilla> : "3",
	<geolosys:ore_vanilla:1> : "5",
	<geolosys:ore_vanilla:2> : "3.5",
	<geolosys:ore_vanilla:3> : "3.5",
	<geolosys:ore_vanilla:4> : "5",
	<geolosys:ore_vanilla:5> : "7"
} as string[IItemStack];

for item in hardnessItems {
	item.hardness = hardnessItems[item] as float;
}
