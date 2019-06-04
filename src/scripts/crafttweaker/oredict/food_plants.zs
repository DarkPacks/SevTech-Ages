#priority 2600

/*
	SevTech: Ages OreDict Food / Plants Script.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IItemStack;

// There shall be one and only one FLOUR!
<ore:foodFlour>.remove(<betterwithmods:raw_pastry:3>);
<ore:foodFlour>.add(<horsepower:flour:0>);

// Add the salts so our recipe loops work correctly on load.
<ore:foodSalt>.add(<primal:salt_dust_netjry:0>);
<ore:foodSalt>.add(<primal:salt_dust_rock:0>);
<ore:foodSalt>.add(<primal:salt_dust_fire:0>);
<ore:foodSalt>.add(<primal:salt_dust_void:0>);
<ore:foodSalt>.add(<mekanism:salt:0>);
<ore:foodSalt>.add(<immersivetech:material:0>);

// Adding these to the list because THEY ARE COOKED MEAT AND WERE NOT ADDED >:O
<ore:listAllmeatcooked>.add(<betterwithmods:cooked_bat_wing:0>);
<ore:listAllmeatcooked>.add(<betterwithmods:cooked_wolf_chop:0>);
<ore:listAllmeatcooked>.add(<animalium:rat_meat_cooked:0>);
<ore:listAllmeatcooked>.add(<animalium:bear_meat_cooked:0>);
<ore:listAllmeatcooked>.add(<twilightforest:cooked_meef:0>);
<ore:listAllmeatcooked>.add(<twilightforest:cooked_venison:0>);
<ore:listAllmeatcooked>.add(<thebetweenlands:snail_flesh_cooked:0>);
<ore:listAllmeatcooked>.add(<thebetweenlands:frog_legs_cooked:0>);
<ore:listAllmeatcooked>.add(<thebetweenlands:angler_meat_cooked:0>);
<ore:listAllmeatcooked>.add(<nex:ghast_meat_cooked:0>);
<ore:listAllmeatcooked>.add(<natura:edibles:1>);

<ore:cordageGeneral>.remove(<primal:silk_cordage:0>);
<ore:cordageGeneral>.remove(<primal:void_cordage:0>);
<ore:cordageGeneral>.remove(<primal:sinuous_fiber:0>);
<ore:cordageGeneral>.remove(<primal:sinuous_cordage:0>);
<ore:plantfiber>.add(<primal:plant_fiber:0>);
<ore:thatchingMaterialBasic>.add(<primal:rush_stems:0>);

<ore:string>.remove(<primal_tech:twine>);

/*
	Seeds
*/
// IF YOU MAKE A SEED ADD IT TO THE ALLSEEDS LIST! >:()
var seedOreDict = <ore:thisIsWhatHappensWhenYouDontFollowOreDictionariesForSeeds>;
var seeds = [
	<actuallyadditions:item_canola_seed:0>,
	<actuallyadditions:item_coffee_seed:0>,
	<actuallyadditions:item_flax_seed:0>,
	<actuallyadditions:item_misc:23>,
	<actuallyadditions:item_misc:24>,
	<actuallyadditions:item_rice_seed:0>,
	<betterwithaddons:crop_rice:0>,
	<betterwithaddons:crop_rush:0>,
	<betterwithmods:hemp:0>,
	//<cavern:acresia:0>,
	<minecraft:beetroot_seeds:0>,
	<minecraft:carrot:0>,
	<minecraft:melon_seeds:0>,
	<minecraft:nether_wart:0>,
	<minecraft:potato:0>,
	<minecraft:pumpkin_seeds:0>,
	<minecraft:wheat_seeds:0>,
	<natura:overworld_seeds:1>,
	<natura:overworld_seeds:0>,
	<primal:aconite_root:0>,
	<primal:corn_seeds:0>,
	<primal:corypha_seed:0>,
	<primal:daucus_murn_seeds:0>,
	<primal:dry_grass_seed:0>,
	<primal:nether_seed:0>,
	<primal:rush_seeds:0>,
	<primal:searing_ember:0>,
	<primal:valus_seed:0>,
	<primal:void_seed:0>
] as IItemStack[];

for seed in seeds {
	seedOreDict.add(seed);
}
