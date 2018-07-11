#priority -2

import crafttweaker.item.IItemStack;

var removeItems as IItemStack[] = [
	<animalium:dog_boots>,
	<mekanism:saltblock>,
	<waterstrainer:garden_trowel>,
	<waterstrainer:strainer_base>,

	//Nature's Compass
	<naturescompass:naturescompass>
];

for item in removeItems {
	recipes.remove(item);
}
