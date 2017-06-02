// This calculates how long the prisoner has been in the location

_timeNeeded = ["TimeToHold", 270] call BIS_fnc_getParamValue;

if (isNil "tortureTime") then {
	tortureTime = 0;
};

tortureTime = tortureTime + 1;

if (tortureTime == _timeNeeded) then {
	
	[tortureTask, "SUCCEEDED"] spawn BIS_fnc_taskSetState;

	hint format ["Torture completed!%1"];

	"end2" call BIS_fnc_endMission;

} else {

	_percentTime = round ((tortureTime / _timeNeeded) * 100);

	_percentTime = (str _percentTime) + "%";

	hint format ["Torture completion: %1", _percentTime];

};

