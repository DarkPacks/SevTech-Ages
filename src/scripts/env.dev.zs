#priority 4100

/*
	Dev environment only stuff
*/

// This should be changed on release. As this sets a debug message to show in chat to users using the Beta updates.
global isDevelopment as bool = false;

//Enable container output to console
if (isDevelopment) {
	mods.recipestages.Recipes.setPrintContainers(true);
}
