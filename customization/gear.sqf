#include "core\gearCore.sqf" //DO NOT REMOVE

#define BASIC \
ADDWEAPON("ACE_Map"); \
ADDWEAPON("ItemWatch"); \
ADDWEAPON("ItemCompass"); \
ADDWEAPON("ACRE_PRC343"); \
ADDWEAPON("ACE_Earplugs"); \
[_unit, 1, 1, 0] call ACE_fnc_PackIFAK; \
ADDMAGAZINES("ACE_Morphine"); \
ADDMAGAZINES("ACE_Epinephrine");

switch (_type) do {
	case "SL": {
		BASIC;
		ADDWEAPON("ItemGPS");
		ADDWEAPON("ACE_Map_Tools");
		ADDWEAPON("Binocular");
		ADDMAGAZINES("ACE_30Rnd_556x45_S_Stanag", 7);
		ADDMAGAZINES("ACE_30Rnd_556x45_T_Stanag", 1);
		ADDWEAPON("ACE_M16A4_EOT");
		ADDMAGAZINES("HandGrenade_West", 2);
		ADDMAGAZINES("SmokeShellGreen", 1);
		ADDMAGAZINES("SmokeShell", 1);
		ADDWEAPON("ACRE_PRC117F");
		ADDRUCKMAGAZINES("ACE_30Rnd_556x45_S_Stanag", 5);
		ADDRUCKMAGAZINES("ACE_30Rnd_556x45_T_Stanag", 1);
		ADDRUCKMAGAZINES("SmokeShell", 1);
		ADDRUCKMAGAZINES("SmokeShellGreen", 1);
	};

	case "FL": {
		BASIC;
		ADDWEAPON("Binocular");
		ADDMAGAZINES("ACE_30Rnd_556x45_S_Stanag", 7);
		ADDMAGAZINES("ACE_30Rnd_556x45_T_Stanag", 1);
		ADDMAGAZINES("1Rnd_HE_M203", 4);
		ADDWEAPON("ACE_M16A4_EOT_GL");
		ADDMAGAZINES("1Rnd_Smoke_M203", 2);
		ADDMAGAZINES("HandGrenade_West", 2);
		ADDMAGAZINES("SmokeShell", 2);
		ADDWEAPON("ACE_CharliePack");
		ADDRUCKMAGAZINES("ACE_30Rnd_556x45_S_Stanag", 5);
		ADDRUCKMAGAZINES("ACE_30Rnd_556x45_T_Stanag", 1);
		ADDRUCKMAGAZINES("1Rnd_HE_M203", 12);
		ADDRUCKMAGAZINES("1Rnd_Smoke_M203", 6);
	};

	case "AR": {
		BASIC;
		ADDWEAPON("ACE_SpareBarrel");
		ADDMAGAZINES("ACE_200Rnd_556x45_T_M249", 4);
		ADDWEAPON("ACE_M249_AIM");
		ADDMAGAZINES("HandGrenade_West", 2);
		ADDMAGAZINES("SmokeShell", 2);
		ADDWEAPON("ACE_CharliePack");
	};

	case "LAT": {
		BASIC;
		ADDMAGAZINES("ACE_30Rnd_556x45_S_Stanag", 8);
		ADDWEAPON("ACE_M16A4_EOT");
		ADDMAGAZINES("HandGrenade_West", 2);
		ADDMAGAZINES("SmokeShell", 2);
		ADDWEAPON("ACE_CharliePack");
		ADDRUCKMAGAZINES("ACE_30Rnd_556x45_S_Stanag", 6);
		ADDONBACKWEAPON("ACE_M136_CSRS");
	};

	case "MD": {
		BASIC;
		ADDMAGAZINES("ACE_Tourniquet", 1);
		ADDMAGAZINES("ACE_Medkit", 6);
		ADDMAGAZINES("ACE_30Rnd_556x45_S_Stanag", 8);
		ADDWEAPON("ACE_M16A4_EOT");
		ADDMAGAZINES("SmokeShell", 4);
		ADDWEAPON("ACE_Rucksack_MOLLE_Green_Medic");
		ADDRUCKMAGAZINES("ACE_Medkit", 6);
		ADDRUCKMAGAZINES("ACE_Epinephrine", 12);
		ADDRUCKMAGAZINES("ACE_Morphine", 12);
		ADDRUCKMAGAZINES("ACE_LargeBandage", 8);
		ADDRUCKMAGAZINES("ACE_Bandage", 16);
		ADDRUCKMAGAZINES("ACE_Tourniquet", 2);
	};

	case "ARA": {
		BASIC;
		ADDMAGAZINES("ACE_30Rnd_556x45_S_Stanag", 8);
		ADDWEAPON("ACE_M16A4_EOT");
		ADDMAGAZINES("HandGrenade_West", 2);
		ADDMAGAZINES("SmokeShell", 2);
		ADDWEAPON("ACE_CharliePack");
		ADDRUCKMAGAZINES("ACE_30Rnd_556x45_S_Stanag", 6);
		ADDRUCKMAGAZINES("ACE_200Rnd_556x45_T_M249", 4);
	};
};