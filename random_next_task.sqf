// this scripts generates a random task out of 3 locations to bring your prisoner Bedshaped

_randomTask = [["task_garmarud", "Harry is to be tortured in our safehouse in Garmarud.", "Bring Prisoner to Garmarud", (getPos harry_garmarud_trig)],["task_garmsar", "Harry is to be tortured in our safehouse in Garmsar.", "Bring Prisoner to Garmsar", (getPos harry_garmsar_trig)],["task_ravanay", "Harry is to be tortured in our safehouse in Ravanay.", "Bring Prisoner to Ravanay", (getPos harry_ravanay_trig)]] call BIS_fnc_selectRandom;

_randomTask params ["_taskID", "_taskDesc", "_taskTitle", "_taskLoc"];

[east, _taskID, [_taskDesc, _taskTitle], _taskLoc, true] call BIS_fnc_taskCreate;

tortureTask = _taskID;

torture = false;