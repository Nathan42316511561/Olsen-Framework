#include "definitions.sqf" //DO NOT REMOVE

ace_sys_wounds_no_medical_gear = true; //Units spawn without IFAK (the three magical medical slots above the pistol magazines) or any other medical gear
ace_sys_wounds_noai = true; //Disables ace medical for ai (big preformance boost)
enableSaving [false, false];

if (isServer) then {
	
	CREATERESPAWNMARKER("respawn_west");
	CREATERESPAWNMARKER("respawn_east");
	CREATERESPAWNMARKER("respawn_guerrila");
	CREATERESPAWNMARKER("respawn_civilian");
	
	TEAMS = []; //DO NOT REMOVE
	STARTCOUNT = []; //DO NOT REMOVE
	CURRENTCOUNT = []; //DO NOT REMOVE
	missionEnded = false; //Mission has not ended
	
	ace_sys_wounds_enabled = true; //Enables ace medical system
	publicVariable "ace_sys_wounds_enabled";
	
};

if (!isDedicated) then {
	
	//"endScreen" player event sends the received variables to the end screen
	["endScreen", {_this execVM "core\dia\endscreen\dia_endscreen.sqf";}] call CBA_fnc_addEventHandler;
	
	//Various settings
	enableEngineArtillery false; //Disable arma 2 artillery computer
	enableRadio false;
	0 fadeRadio 0; //Lower radio volume to 0
	
	//Anything done using "player" must be past this line for JIP compatibility
	waitUntil {!(isNull player)};
	
	//Creates the briefing notes for the player
	[] execVM "customization\briefing.sqf";
	
	player setVariable ["frameworkDead", false, true]; //Tells the framework the player is alive
	
	spectating = false; //Player is not spectating
	
	//Makes the player go into spectator mode when dead
	killedEh = player addEventHandler ["Killed", {deadBody = player; [] execVM "core\spectatePrep.sqf";}];
	
	//Various settings
	player addRating 100000; //Makes sure ai doesnt turn hostile when teamkilling
	player setVariable ["BIS_noCoreConversations", true]; //Disable scroll wheel conversations
	
};