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
<ore:foodFlour>.add(<horsepower:flour>);

// Add the salts so our recipe loops work correctly on load.
<ore:foodSalt>.add(<primal:salt_dust_netjry>);
<ore:foodSalt>.add(<primal:salt_dust_rock>);
<ore:foodSalt>.add(<primal:salt_dust_fire>);
<ore:foodSalt>.add(<primal:salt_dust_void>);
<ore:foodSalt>.add(<mekanism:salt>);
<ore:foodSalt>.add(<immersivetech:material>);

// Adding these to the list because THEY ARE COOKED MEAT AND WERE NOT ADDED >:O
<ore:listAllmeatcooked>.add(<betterwithmods:cooked_bat_wing>);
<ore:listAllmeatcooked>.add(<betterwithmods:cooked_wolf_chop>);
<ore:listAllmeatcooked>.add(<animalium:rat_meat_cooked>);
<ore:listAllmeatcooked>.add(<animalium:bear_meat_cooked>);
<ore:listAllmeatcooked>.add(<twilightforest:cooked_meef>);
<ore:listAllmeatcooked>.add(<twilightforest:cooked_venison>);
<ore:listAllmeatcooked>.add(<thebetweenlands:snail_flesh_cooked>);
<ore:listAllmeatcooked>.add(<thebetweenlands:frog_legs_cooked>);
<ore:listAllmeatcooked>.add(<thebetweenlands:angler_meat_cooked>);
<ore:listAllmeatcooked>.add(<nex:food_meat_ghast_cooked>);
<ore:listAllmeatcooked>.add(<natura:edibles:1>);

<ore:cordageGeneral>.remove(<primal:silk_cordage>);
<ore:cordageGeneral>.add(<primal_tech:twine>);
<ore:plantfiber>.add(<primal:plant_fiber>);
<ore:thatchingMaterialBasic>.add(<primal:rush_stems>);

/*
	Seeds
*/
// IF YOU MAKE A SEED ADD IT TO THE ALLSEEDS LIST! >:()
var seedOreDict = <ore:thisIsWhatHappensWhenYouDontFollowOreDictionariesForSeeds>;
var seeds = [
	<actuallyadditions:item_canola_seed>,
	<actuallyadditions:item_coffee_seed>,
	<actuallyadditions:item_flax_seed>,
	<actuallyadditions:item_misc:23>,
	<actuallyadditions:item_misc:24>,
	<actuallyadditions:item_rice_seed>,
	<betterwithaddons:crop_rice>,
	<betterwithaddons:crop_rush>,
	<betterwithmods:hemp>,
	//<cavern:acresia>,
	<minecraft:beetroot_seeds>,
	<minecraft:carrot>,
	<minecraft:melon_seeds>,
	<minecraft:nether_wart>,
	<minecraft:potato>,
	<minecraft:pumpkin_seeds>,
	<minecraft:wheat_seeds>,
	<natura:overworld_seeds:1>,
	<natura:overworld_seeds>,
	<primal:aconite_root>,
	<primal:corn_seeds>,
	<primal:corypha_seed>,
	<primal:daucus_murn_seeds>,
	<primal:dry_grass_seed>,
	<primal:nether_seed>,
	<primal:rush_seeds>,
	<primal:searing_ember>,
	<primal:sinuous_spores>,
	<primal:valus_seed>,
	<primal:void_seed>
] as IItemStack[];

for seed in seeds {
	seedOreDict.add(seed);
}
