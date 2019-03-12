/*
	SevTech: Ages Block Player Logged In Event Script

	This script adds a chat message to user to remind them that they are using
	a beta build of the modpack.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.event.PlayerLoggedInEvent;
import crafttweaker.events.IEventManager;

/*
	Add event listener
*/
function init() {
	events.onPlayerLoggedIn(function (event as PlayerLoggedInEvent) {
		if (isDevelopment) {
			event.player.sendChat(
				"§4Warning!§r you are using a development build of " +
				"§bSevTech: Ages " + scripts.crafttweaker.preInit.PACK_VERSION +
				"§r, please ensure you report any bugs to either Discord or the " +
				"Issue Tracker."
			);
			event.player.sendChat("Thanks again for helping to test new updates!");
		}
	});
}
