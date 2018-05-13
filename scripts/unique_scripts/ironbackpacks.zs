import crafttweaker.data.IData;
import crafttweaker.recipes.IRecipeFunction;

var blankBackpackUpgrade = <ironbackpacks:upgrade>;
var chest = <minecraft:chest>;

var backpackRecipeFunction as IRecipeFunction = function(out, ins, cInfo) {
	var currentTag = ins.bag.tag;

	var packInfoData as IData = {
		spec: out.tag.packInfo.spec,
		type: out.tag.packInfo.type
	};

	var mergeData as IData = {
		packInfo: currentTag.packInfo.update(packInfoData)
	};

	var newTag = currentTag.update(mergeData);

	return out.withTag(newTag);
};

/*
	Iron Backpacks
*/
//Upgrade Spec
recipes.addShaped(
	"ct-ironbackpacks-iron-upgrade_spec",
	<ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:iron", spec: "UPGRADE"}}),
	[
		[metals.iron.plate, blankBackpackUpgrade, metals.iron.plate],
		[
			metals.iron.plate,
			<ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:basic", spec: "NONE"}}).onlyWithTag({packInfo: {type: "ironbackpacks:basic"}}).marked("bag"),
			metals.iron.plate
		],
		[metals.iron.plate, metals.iron.plate, metals.iron.plate]
	],

	//Recipe Function
	backpackRecipeFunction,

	//recipeAction (null)
	null
);

//Stroage Spec
recipes.addShaped(
	"ct-ironbackpacks-iron-storage_spec",
	<ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:iron", spec: "STORAGE"}}),
	[
		[metals.iron.plate, chest, metals.iron.plate],
		[
			metals.iron.plate, //Middle-Left
			<ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:basic", spec: "NONE"}}).onlyWithTag({packInfo: {type: "ironbackpacks:basic"}}).marked("bag"),
			metals.iron.plate //Middle-Right
		],
		[metals.iron.plate, metals.iron.plate, metals.iron.plate]
	],

	//Recipe Function
	backpackRecipeFunction,

	//recipeAction (null)
	null
);

/*
	Gold Backpacks
*/
//Upgrade Spec
recipes.addShaped(
	"ct-ironbackpacks-gold-upgrade_spec",
	<ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:gold", spec: "UPGRADE"}}),
	[
		[metals.gold.plate, blankBackpackUpgrade, metals.gold.plate],
		[
			metals.gold.plate,
			<ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:iron", spec: "UPGRADE"}}).onlyWithTag({packInfo: {type: "ironbackpacks:iron", spec: "UPGRADE"}}).marked("bag"),
			metals.gold.plate
		],
		[metals.gold.plate, metals.gold.plate, metals.gold.plate]
	],

	//Recipe Function
	backpackRecipeFunction,

	//recipeAction (null)
	null
);

//Stroage Spec
recipes.addShaped(
	"ct-ironbackpacks-gold-storage_spec",
	<ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:gold", spec: "STORAGE"}}),
	[
		[metals.gold.plate, chest, metals.gold.plate],
		[
			metals.gold.plate, //Middle-Left
			<ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:iron", spec: "STORAGE"}}).onlyWithTag({packInfo: {type: "ironbackpacks:iron", spec: "STORAGE"}}).marked("bag"),
			metals.gold.plate //Middle-Right
		],
		[metals.gold.plate, metals.gold.plate, metals.gold.plate]
	],

	//Recipe Function
	backpackRecipeFunction,

	//recipeAction (null)
	null
);

/*
	Diamond Backpacks
*/
//Upgrade Spec
recipes.addShaped(
	"ct-ironbackpacks-diamond-upgrade_spec",
	<ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:diamond", spec: "UPGRADE"}}),
	[
		[<minecraft:diamond>, blankBackpackUpgrade, <minecraft:diamond>],
		[
			<minecraft:diamond>,
			<ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:gold", spec: "UPGRADE"}}).onlyWithTag({packInfo: {type: "ironbackpacks:gold", spec: "UPGRADE"}}).marked("bag"),
			<minecraft:diamond>
		],
		[<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>]
	],

	//Recipe Function
	backpackRecipeFunction,

	//recipeAction (null)
	null
);

//Stroage Spec
recipes.addShaped(
	"ct-ironbackpacks-diamond-storage_spec",
	<ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:diamond", spec: "STORAGE"}}),
	[
		[<minecraft:diamond>, chest, <minecraft:diamond>],
		[
			<minecraft:diamond>, //Middle-Left
			<ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:gold", spec: "STORAGE"}}).onlyWithTag({packInfo: {type: "ironbackpacks:gold", spec: "STORAGE"}}).marked("bag"),
			<minecraft:diamond> //Middle-Right
		],
		[<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>]
	],

	//Recipe Function
	backpackRecipeFunction,

	//recipeAction (null)
	null
);
