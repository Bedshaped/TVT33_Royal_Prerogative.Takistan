if (!isDedicated) then {

	waitUntil {!isNull (findDisplay 46)};

	_viewMode = ["3rdPersonCam", 0] call BIS_fnc_getParamValue;

	if( (difficultyOption "thirdPersonView") isEqualTo 1) then
	{
		while {true} do {

			waitUntil {cameraView == "EXTERNAL" || cameraView == "GROUP"};

			if  ((vehicle player) == player && _viewMode != 2) then {
				player switchCamera "INTERNAL";
				systemChat "Server Message : Third Person is Disabled on Foot"
			};
			sleep 0.1;

			if ((vehicle player) isKindOf "LandVehicle" && _viewMode == 0) then {
				(vehicle player) switchCamera "Internal";
				systemChat "Server Message : Third Person is Disabled in Vehicles"
			};
			sleep 0.1;

            if ((vehicle player) isKindOf "Helicopter" && _viewMode == 0) then {
				(vehicle player) switchCamera "Internal";
				systemChat "Server Message : Third Person is Disabled in Vehicles"
			};
            sleep 0.1;

            if ((vehicle player) isKindOf "Plane" && _viewMode == 0) then {
				(vehicle player) switchCamera "Internal";
				systemChat "Server Message : Third Person is Disabled in Vehicles"
			};
            sleep 0.1;

			if ((vehicle player) isKindOf "Ship" && _viewMode == 0) then {
				(vehicle player) switchCamera "Internal";
				systemChat "Server Message : Third Person is Disabled in Vehicles"
			};
			sleep 0.1;


		};
	};

};