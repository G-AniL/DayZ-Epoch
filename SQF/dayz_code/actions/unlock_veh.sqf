private["_vehicle","_key"];
_vehicle = (_this select 3) select 0; 
_key = (_this select 3) select 1;

if(TradeInprogress) exitWith { cutText [(localize "str_epoch_player_37") , "PLAIN DOWN"]; };
TradeInprogress = true;

{player removeAction _x} forEach s_player_lockunlock;s_player_lockunlock = [];
s_player_lockUnlock_crtl = 1;

PVDZE_veh_Lock = [_vehicle,false];
if(player distance _vehicle < 10) then {
	if (local _vehicle) then {
		PVDZE_veh_Lock spawn local_lockUnlock
	} else {
		publicVariable "PVDZE_veh_Lock";
	};

	cutText [format["[%1] used to unlock vehicle.",_key], "PLAIN"];
};

s_player_lockUnlock_crtl = -1;
TradeInprogress = false;