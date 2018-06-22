#priority 4000

/*
	SevTech: Ages Stages preInit Script

	Functions or Global creations before other scripts are called.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

var PACK_VERSION as string = "3.1.0"; // Keep below 11 characters

var packVersionForLogo as string = "v" ~ PACK_VERSION;
while packVersionForLogo.length < 12 {
	packVersionForLogo = " " ~ packVersionForLogo;
}

printHeader(packVersionForLogo);

// ==================================
// Stage Naming
static stageNames as string[string] = {
	// Core Stages
	tutorial: "tutorial",
	zero: "zero",
	one: "one",
	two: "two",
	three: "three",
	four: "four",
	five: "five",
	creative: "creative",

	// Mob Stages
	zeroMob: "zero_mob",
	oneMob: "one_mob",
	twoMob: "two_mob",
	threeMob: "three_mob",
	fourMob: "four_mob",
	fiveMob: "five_mob",

	// Unique Stages
	baykok: "baykok",
	mapping: "mapping",

	// Unique stage intended to disable existing items/etc
	disabled: "disabled",

	// Stage for unused creative items
	creativeUnused: "creative_unused"
};

// ==================================
// Stage Creation
for key, stage in stageNames {
	ZenStager.initStage(stage);
}

// ==================================
// Functions
function printHeader(packVersionForLogo) {
	// Logo
	print(" ____                     ______               __              ______");
	print("/\\  _`\\                  /\\__  _\\             /\\ \\            /\\  _  \\");
	print("\\ \\,\\L\\_\\     __   __  __\\/_/\\ \\/    __    ___\\ \\ \\___   __   \\ \\ \\L\\ \\     __      __    ____");
	print(" \\/_\\__ \\   /'__`\\/\\ \\/\\ \\  \\ \\ \\  /'__`\\ /'___\\ \\  _ `\\/\\_\\   \\ \\  __ \\  /'_ `\\  /'__`\\ /',__\\");
	print("   /\\ \\L\\ \\/\\  __/\\ \\ \\_/ |  \\ \\ \\/\\  __//\\ \\__/\\ \\ \\ \\ \\/_/_   \\ \\ \\/\\ \\/\\ \\L\\ \\/\\  __//\\__, `\\");
	print("   \\ `\\____\\ \\____\\\\ \\___/    \\ \\_\\ \\____\\ \\____\\\\ \\_\\ \\_\\/\\_\\   \\ \\_\\ \\_\\ \\____ \\ \\____\\/\\____/");
	print("    \\/_____/\\/____/ \\/__/      \\/_/\\/____/\\/____/ \\/_/\\/_/\\/_/    \\/_/\\/_/\\/___L\\ \\/____/\\/___/");
	print("                                                                            /\\____/");
	print("                                                                            \\_/__/  " ~ packVersionForLogo);
	// Our mascot
	print("           `.:+osyo++:.     `.:++oo+:`");
	print("        `:shhyssssssssyo/:+syyysssssyhs:`");
	print("      `/yyo-+ssssyyyyssoshdsssssssss+:+yy-");
	print("     .sysssoshhhhyyyyhhhhsyhosyyyyyyysyssy+`");
	print("    -yysssyhyssssssssssssydmdhyyysyyyyyhhhdh:`");
	print("   :yys+sssssssssyyysssoooosyyyssyyyyyyssssyhy/`");
	print(" `odys+-yssssyyyo:.`         `:hs:..``     `.-oy/");
	print("+yhhss.-yssyy/.`       `+hd+`  -o        -yds- .s/");
	print("ysyyssossshds/.        :mhMd-  :o        hdmm+  /y");
	print("ossssssssssssyhho-.`    `:-.`-/ds-...````.:/--:oh:");
	print(".sssssssssssssyhhhhysooooosyhhhdyyhhyyyyyyyyyyhh:");
	print("osssssssssssssssssyyyyyyysyddyssssssssssssssys:`");
	print("ssssssssssssssssssssssyhhhyssssssyhhhhhhhyhh-");
	print("sssssssssssssssssssssyyssssssssssssshysssssyy:");
	print("sssssssssssssssssssssssssssssssssssssssssssssy:");
	print("sssssssssssssyyyyyyyssssssssssssssssssssssssoyh-");
	print("ssssssssssydhyyyyyyyhhhhhhhyyyyssssssssyhhddhhd+`");
	print("ssssssssshdsssyyyhhyyyyyssyyyyhhhhhhhhyhysssyhs-");
	print("sssssssyssdhyhhyhyyyyyssyyyyyyyyyyyyyyyyyyyyho`");
	print("sssssssshhysssssssyyyyhhhhhhhhyyhhyyyyyyyyys+.");
	print("ssssssssssyysssssssssssssssssssssssssshhs:`");
	print("ddhdhhyyssssssssssssssssssssssssssyys+-");
	print("hddhhhhhhhhhhhhyyyyyhhyyyyyssyhdms-`");
	print("hhhhhhhhddddhhhdhhhhhhyhhhdddddhhdy/`");
	print("hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhdy-");
}
