#include <setPosAGLS.sqf>

// Sets Harry's initial leg damage to stop him running off

/*_newDamage = 0.5; // How much damage Harry will take to a body part

_damage = (harry getHitPointDamage "HitRightLeg") + _newDamage;

harry spawn {
	sleep 1;
	[harry, "leg_r", _damage, ObjNull, "falling", -1] call ace_medical_fnc_handleDamage;
	};*/

if (!isNil "harry") then {

	harry setHit ["legs", 1];

	// Sets Harry's initial position randomly from a set

	_randMarker = "prince_loc_" + str ( [1,12] call BIS_fnc_randomInt ); // Picks from a random set of marker names

	[wreck_1, (getMarkerPos _randMarker)] call KK_fnc_setPosAGLS;
	wreck_1 setPos (getPos wreck_1); // Resets the orientation to ground

	_wreckSmoke = "test_EmptyObjectForFireBig" createVehicle position wreck_1;

	[harry, (wreck_1 getPos [20, 180])] call KK_fnc_setPosAGLS;

	find_obj_trig setPos (getPos wreck_1);
};