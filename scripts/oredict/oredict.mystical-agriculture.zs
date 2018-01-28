#priority 1050

import crafttweaker.item.IItemStack;

var mysticalAgricultureCrops as IItemStack[] = itemUtils.getItemsByRegexRegistryName("^.*mysticalagriculture:.*_crop$");
var mysticalAgradditionsCrops as IItemStack[] = itemUtils.getItemsByRegexRegistryName("^.*mysticalagradditions:.*_crop$");

for crop in mysticalAgricultureCrops {
	<ore:cropEssence>.add(crop);
}

for crop in mysticalAgradditionsCrops {
	<ore:cropEssence>.add(crop);
}
